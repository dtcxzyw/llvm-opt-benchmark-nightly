Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyDynamicsWorld?download=true
inline.NumInlined: 901
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.ry ; 6 uses
  br i1 %i.oi, label %.lr.ph.preheader.i, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit"

.lr.ph.preheader.i:                               ; preds = %bb.bf
  %wide.trip.count.i353 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1127 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check1127, label %.lr.ph.i354.preheader, label %vector.memcheck1128

vector.memcheck1128:                              ; preds = %.lr.ph.preheader.i
  %i.sa = sext i32 %i.mj to i64
  %i.sb = shl nsw i64 %i.sa, 4
  %i.sc = sext i32 %i.mm to i64
  %i.sd = shl nsw i64 %i.sc, 3
  %i.se = shl nsw i64 %i.ry, 2
  %i.sf = add i64 %i.sb, %i.mv
  %i.sg = add i64 %i.sf, %i.sd
  %i.sh = add i64 %i.se, %i.rx
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = add i64 %i.si, 151
  %diff.check1129 = icmp ult i64 %i.sj, 31
  br i1 %diff.check1129, label %.lr.ph.i354.preheader, label %vector.ph1130

vector.ph1130:                                    ; preds = %vector.memcheck1128
  %n.vec1131 = and i64 %wide.trip.count.i353, 2147483640 ; 3 uses
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %vector.ph1130
  %index1133 = phi i64 [ 0, %vector.ph1130 ], [ %index.next1136, %vector.body1132 ] ; 3 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %index1133 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %wide.load1134 = load <4 x float>, ptr %i.sk, align 4, !tbaa !177
  %wide.load1135 = load <4 x float>, ptr %i.sl, align 4, !tbaa !177
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %index1133 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  store <4 x float> %wide.load1134, ptr %i.sm, align 4, !tbaa !177
  store <4 x float> %wide.load1135, ptr %i.sn, align 4, !tbaa !177
  %index.next1136 = add nuw i64 %index1133, 8     ; 2 uses
  %i.so = icmp eq i64 %index.next1136, %n.vec1131
  br i1 %i.so, label %middle.block1137, label %vector.body1132, !llvm.loop !280

middle.block1137:                                 ; preds = %vector.body1132
  %cmp.n1138 = icmp eq i64 %n.vec1131, %wide.trip.count.i353
  br i1 %cmp.n1138, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit", label %.lr.ph.i354.preheader

.lr.ph.i354.preheader:                            ; preds = %vector.memcheck1128, %.lr.ph.preheader.i, %middle.block1137
  %indvars.iv.i355.ph = phi i64 [ 0, %vector.memcheck1128 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec1131, %middle.block1137 ] ; 3 uses
  %xtraiter1232 = and i64 %wide.trip.count.i353, 3 ; 2 uses
  %lcmp.mod1233.not = icmp eq i64 %xtraiter1232, 0
  br i1 %lcmp.mod1233.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol

.lr.ph.i354.prol:                                 ; preds = %.lr.ph.i354.preheader, %.lr.ph.i354.prol
  %indvars.iv.i355.prol = phi i64 [ %indvars.iv.next.i356.prol, %.lr.ph.i354.prol ], [ %indvars.iv.i355.ph, %.lr.ph.i354.preheader ] ; 3 uses
  %prol.iter1234 = phi i64 [ %prol.iter1234.next, %.lr.ph.i354.prol ], [ 0, %.lr.ph.i354.preheader ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv.i355.prol
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !177
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i355.prol
  store float %i.sq, ptr %i.sr, align 4, !tbaa !177
  %indvars.iv.next.i356.prol = add nuw nsw i64 %indvars.iv.i355.prol, 1 ; 2 uses
  %prol.iter1234.next = add i64 %prol.iter1234, 1 ; 2 uses
  %prol.iter1234.cmp.not = icmp eq i64 %prol.iter1234.next, %xtraiter1232
  br i1 %prol.iter1234.cmp.not, label %.lr.ph.i354.prol.loopexit, label %.lr.ph.i354.prol, !llvm.loop !281

.lr.ph.i354.prol.loopexit:                        ; preds = %.lr.ph.i354.prol, %.lr.ph.i354.preheader
  %indvars.iv.i355.unr = phi i64 [ %indvars.iv.i355.ph, %.lr.ph.i354.preheader ], [ %indvars.iv.next.i356.prol, %.lr.ph.i354.prol ]
  %i.ss = sub nsw i64 %indvars.iv.i355.ph, %wide.trip.count.i353
  %i.st = icmp ugt i64 %i.ss, -4
  br i1 %i.st, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit", label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.prol.loopexit, %.lr.ph.i354
  %indvars.iv.i355 = phi i64 [ %indvars.iv.next.i356.3, %.lr.ph.i354 ], [ %indvars.iv.i355.unr, %.lr.ph.i354.prol.loopexit ] ; 6 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv.i355
  %i.sv = load float, ptr %i.su, align 4, !tbaa !177
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i355
  store float %i.sv, ptr %i.sw, align 4, !tbaa !177
  %indvars.iv.next.i356 = add nuw nsw i64 %indvars.iv.i355, 1 ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv.next.i356
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !177
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.next.i356
  store float %i.sy, ptr %i.sz, align 4, !tbaa !177
  %indvars.iv.next.i356.1 = add nuw nsw i64 %indvars.iv.i355, 2 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv.next.i356.1
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !177
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.next.i356.1
  store float %i.tb, ptr %i.tc, align 4, !tbaa !177
  %indvars.iv.next.i356.2 = add nuw nsw i64 %indvars.iv.i355, 3 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv.next.i356.2
  %i.te = load float, ptr %i.td, align 4, !tbaa !177
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.next.i356.2
  store float %i.te, ptr %i.tf, align 4, !tbaa !177
  %indvars.iv.next.i356.3 = add nuw nsw i64 %indvars.iv.i355, 4 ; 2 uses
  %exitcond.not.i357.3 = icmp eq i64 %indvars.iv.next.i356.3, %wide.trip.count.i353
  br i1 %exitcond.not.i357.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit", label %.lr.ph.i354, !llvm.loop !282

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit": ; preds = %.lr.ph.i354.prol.loopexit, %.lr.ph.i354, %middle.block1137, %bb.bf
  %i.tg = load i32, ptr %i.ml, align 8, !tbaa !332 ; 2 uses
  %i.th = icmp sgt i32 %i.tg, -7
  br i1 %i.th, label %.lr.ph.i358, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit"

.lr.ph.i358:                                      ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit"
  %i.ti = add i32 %i.tg, 6                        ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ti, i32 0) ; 2 uses
  %i.tj = add nuw i32 %smax.i, 1
  %wide.trip.count.i359 = zext i32 %i.tj to i64   ; 3 uses
  %min.iters.check1111 = icmp slt i32 %i.ti, 7
  br i1 %min.iters.check1111, label %scalar.ph1110.preheader, label %vector.memcheck1112

vector.memcheck1112:                              ; preds = %.lr.ph.i358
  %i.tk = sext i32 %i.mm to i64
  %i.tl = shl nsw i64 %i.tk, 2
  %i.tm = add nsw i64 %i.tl, 27
  %diff.check1113 = icmp ult i64 %i.tm, 31
  br i1 %diff.check1113, label %scalar.ph1110.preheader, label %vector.ph1114

vector.ph1114:                                    ; preds = %vector.memcheck1112
  %n.vec1115 = and i64 %wide.trip.count.i359, 4294967288 ; 3 uses
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1114
  %index1117 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1120, %vector.body1116 ] ; 3 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index1117 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %wide.load1118 = load <4 x float>, ptr %i.tn, align 4, !tbaa !177
  %wide.load1119 = load <4 x float>, ptr %i.to, align 4, !tbaa !177
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index1117 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  store <4 x float> %wide.load1118, ptr %i.tp, align 4, !tbaa !177
  store <4 x float> %wide.load1119, ptr %i.tq, align 4, !tbaa !177
  %index.next1120 = add nuw i64 %index1117, 8     ; 2 uses
  %i.tr = icmp eq i64 %index.next1120, %n.vec1115
  br i1 %i.tr, label %middle.block1121, label %vector.body1116, !llvm.loop !283

middle.block1121:                                 ; preds = %vector.body1116
  %cmp.n1122 = icmp eq i64 %n.vec1115, %wide.trip.count.i359
  br i1 %cmp.n1122, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", label %scalar.ph1110.preheader

scalar.ph1110.preheader:                          ; preds = %vector.memcheck1112, %.lr.ph.i358, %middle.block1121
  %indvars.iv.i360.ph = phi i64 [ 0, %vector.memcheck1112 ], [ 0, %.lr.ph.i358 ], [ %n.vec1115, %middle.block1121 ] ; 3 uses
  %i.ts = zext nneg i32 %smax.i to i64            ; 2 uses
  %i.tt = add nuw nsw i64 %i.ts, 1
  %i.tu = sub nsw i64 %i.ts, %indvars.iv.i360.ph
  %xtraiter1235 = and i64 %i.tt, 3                ; 2 uses
  %lcmp.mod1236.not = icmp eq i64 %xtraiter1235, 0
  br i1 %lcmp.mod1236.not, label %scalar.ph1110.prol.loopexit, label %scalar.ph1110.prol

scalar.ph1110.prol:                               ; preds = %scalar.ph1110.preheader, %scalar.ph1110.prol
  %indvars.iv.i360.prol = phi i64 [ %indvars.iv.next.i361.prol, %scalar.ph1110.prol ], [ %indvars.iv.i360.ph, %scalar.ph1110.preheader ] ; 3 uses
  %prol.iter1237 = phi i64 [ %prol.iter1237.next, %scalar.ph1110.prol ], [ 0, %scalar.ph1110.preheader ]
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i360.prol
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !177
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i360.prol
  store float %i.tw, ptr %i.tx, align 4, !tbaa !177
  %indvars.iv.next.i361.prol = add nuw nsw i64 %indvars.iv.i360.prol, 1 ; 2 uses
  %prol.iter1237.next = add i64 %prol.iter1237, 1 ; 2 uses
  %prol.iter1237.cmp.not = icmp eq i64 %prol.iter1237.next, %xtraiter1235
  br i1 %prol.iter1237.cmp.not, label %scalar.ph1110.prol.loopexit, label %scalar.ph1110.prol, !llvm.loop !284

scalar.ph1110.prol.loopexit:                      ; preds = %scalar.ph1110.prol, %scalar.ph1110.preheader
  %indvars.iv.i360.unr = phi i64 [ %indvars.iv.i360.ph, %scalar.ph1110.preheader ], [ %indvars.iv.next.i361.prol, %scalar.ph1110.prol ]
  %i.ty = icmp ult i64 %i.tu, 3
  br i1 %i.ty, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", label %scalar.ph1110

scalar.ph1110:                                    ; preds = %scalar.ph1110.prol.loopexit, %scalar.ph1110
  %indvars.iv.i360 = phi i64 [ %indvars.iv.next.i361.3, %scalar.ph1110 ], [ %indvars.iv.i360.unr, %scalar.ph1110.prol.loopexit ] ; 6 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i360
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !177
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i360
  store float %i.ua, ptr %i.ub, align 4, !tbaa !177
  %indvars.iv.next.i361 = add nuw nsw i64 %indvars.iv.i360, 1 ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i361
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !177
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i361
  store float %i.ud, ptr %i.ue, align 4, !tbaa !177
  %indvars.iv.next.i361.1 = add nuw nsw i64 %indvars.iv.i360, 2 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i361.1
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !177
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i361.1
  store float %i.ug, ptr %i.uh, align 4, !tbaa !177
  %indvars.iv.next.i361.2 = add nuw nsw i64 %indvars.iv.i360, 3 ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i361.2
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !177
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i361.2
  store float %i.uj, ptr %i.uk, align 4, !tbaa !177
  %indvars.iv.next.i361.3 = add nuw nsw i64 %indvars.iv.i360, 4 ; 2 uses
  %exitcond.not.i362.3 = icmp eq i64 %indvars.iv.next.i361.3, %wide.trip.count.i359
  br i1 %exitcond.not.i362.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", label %scalar.ph1110, !llvm.loop !285

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit": ; preds = %scalar.ph1110.prol.loopexit, %scalar.ph1110, %middle.block1121, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit"
  %i.ul = fmul float %i.re, 5.000000e-01          ; 10 uses
  invoke void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef %i.ul, ptr noundef nonnull %i.mx, ptr noundef nonnull %i.my)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit"
  br i1 %i.oi, label %.lr.ph.preheader.i363, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit"

.lr.ph.preheader.i363:                            ; preds = %bb.bg
  %wide.trip.count.i364 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1089 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check1089, label %.lr.ph.i365.preheader, label %vector.memcheck1090

vector.memcheck1090:                              ; preds = %.lr.ph.preheader.i363
  %i.um = sext i32 %i.mj to i64                   ; 2 uses
  %i.un = shl nsw i64 %i.um, 2
  %8 = add nsw i64 %i.un, 23
  %diff.check1091 = icmp ult i64 %8, 31
  %.neg = mul nsw i64 %i.um, -12
  %i.uo = add nsw i64 %.neg, -73
  %diff.check1092 = icmp ult i64 %i.uo, 31
  %conflict.rdx1093 = or i1 %diff.check1091, %diff.check1092
  br i1 %conflict.rdx1093, label %.lr.ph.i365.preheader, label %vector.ph1094

vector.ph1094:                                    ; preds = %vector.memcheck1090
  %n.vec1095 = and i64 %wide.trip.count.i364, 2147483640 ; 3 uses
  %broadcast.splatinsert1096 = insertelement <4 x float> poison, float %i.ul, i64 0
  %broadcast.splat1097 = shufflevector <4 x float> %broadcast.splatinsert1096, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %vector.ph1094
  %index1099 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1104, %vector.body1098 ] ; 4 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index1099 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %wide.load1100 = load <4 x float>, ptr %i.up, align 4, !tbaa !177
  %wide.load1101 = load <4 x float>, ptr %i.uq, align 4, !tbaa !177
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %index1099 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %wide.load1102 = load <4 x float>, ptr %i.ur, align 4, !tbaa !177
  %wide.load1103 = load <4 x float>, ptr %i.us, align 4, !tbaa !177
  %i.ut = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1097, <4 x float> %wide.load1102, <4 x float> %wide.load1100)
  %i.uu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1097, <4 x float> %wide.load1103, <4 x float> %wide.load1101)
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index1099 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  store <4 x float> %i.ut, ptr %i.uv, align 4, !tbaa !177
  store <4 x float> %i.uu, ptr %i.uw, align 4, !tbaa !177
  %index.next1104 = add nuw i64 %index1099, 8     ; 2 uses
  %i.ux = icmp eq i64 %index.next1104, %n.vec1095
  br i1 %i.ux, label %middle.block1105, label %vector.body1098, !llvm.loop !286

middle.block1105:                                 ; preds = %vector.body1098
  %cmp.n1106 = icmp eq i64 %n.vec1095, %wide.trip.count.i364
  br i1 %cmp.n1106, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit", label %.lr.ph.i365.preheader

.lr.ph.i365.preheader:                            ; preds = %vector.memcheck1090, %.lr.ph.preheader.i363, %middle.block1105
  %indvars.iv.i366.ph = phi i64 [ 0, %vector.memcheck1090 ], [ 0, %.lr.ph.preheader.i363 ], [ %n.vec1095, %middle.block1105 ] ; 6 uses
  %xtraiter1238 = and i64 %wide.trip.count.i364, 1
  %lcmp.mod1239.not = icmp eq i64 %xtraiter1238, 0
  br i1 %lcmp.mod1239.not, label %.lr.ph.i365.prol.loopexit, label %.lr.ph.i365.prol

.lr.ph.i365.prol:                                 ; preds = %.lr.ph.i365.preheader
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i366.ph
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !177
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i366.ph
  %i.vb = load float, ptr %i.va, align 4, !tbaa !177
  %i.vc = call float @llvm.fmuladd.f32(float %i.ul, float %i.vb, float %i.uz)
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i366.ph
  store float %i.vc, ptr %i.vd, align 4, !tbaa !177
  %indvars.iv.next.i367.prol = or disjoint i64 %indvars.iv.i366.ph, 1
  br label %.lr.ph.i365.prol.loopexit

.lr.ph.i365.prol.loopexit:                        ; preds = %.lr.ph.i365.prol, %.lr.ph.i365.preheader
  %indvars.iv.i366.unr = phi i64 [ %indvars.iv.i366.ph, %.lr.ph.i365.preheader ], [ %indvars.iv.next.i367.prol, %.lr.ph.i365.prol ]
  %i.ve = add nsw i64 %wide.trip.count.i364, -1
  %i.vf = icmp eq i64 %indvars.iv.i366.ph, %i.ve
  br i1 %i.vf, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit", label %.lr.ph.i365

.lr.ph.i365:                                      ; preds = %.lr.ph.i365.prol.loopexit, %.lr.ph.i365
  %indvars.iv.i366 = phi i64 [ %indvars.iv.next.i367.1, %.lr.ph.i365 ], [ %indvars.iv.i366.unr, %.lr.ph.i365.prol.loopexit ] ; 5 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i366
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !177
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i366
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !177
  %i.vk = call float @llvm.fmuladd.f32(float %i.ul, float %i.vj, float %i.vh)
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i366
  store float %i.vk, ptr %i.vl, align 4, !tbaa !177
  %indvars.iv.next.i367 = add nuw nsw i64 %indvars.iv.i366, 1 ; 3 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i367
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !177
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.next.i367
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !177
  %i.vq = call float @llvm.fmuladd.f32(float %i.ul, float %i.vp, float %i.vn)
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i367
  store float %i.vq, ptr %i.vr, align 4, !tbaa !177
  %indvars.iv.next.i367.1 = add nuw nsw i64 %indvars.iv.i366, 2 ; 2 uses
  %exitcond.not.i368.1 = icmp eq i64 %indvars.iv.next.i367.1, %wide.trip.count.i364
  br i1 %exitcond.not.i368.1, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit", label %.lr.ph.i365, !llvm.loop !287

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit": ; preds = %.lr.ph.i365.prol.loopexit, %.lr.ph.i365, %middle.block1105, %bb.bg
  %i.vs = getelementptr inbounds nuw i8, ptr %i.hv, i64 288 ; 4 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !144 ; 7 uses
  %i.vu = ptrtoaddr ptr %i.vt to i64
  %i.vv = load i32, ptr %i.mi, align 4, !tbaa !182 ; 2 uses
  %i.vw = icmp sgt i32 %i.vv, -6
  br i1 %i.vw, label %.lr.ph.preheader.i369, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit"

.lr.ph.preheader.i369:                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit"
  %i.vx = add i32 %i.vv, 5                        ; 2 uses
  %smax.i370 = call i32 @llvm.smax.i32(i32 %i.vx, i32 0) ; 2 uses
  %i.vy = add nuw i32 %smax.i370, 1
  %wide.trip.count.i371 = zext i32 %i.vy to i64   ; 3 uses
  %min.iters.check1071 = icmp slt i32 %i.vx, 11
  br i1 %min.iters.check1071, label %.lr.ph.i372.preheader, label %vector.memcheck1072

vector.memcheck1072:                              ; preds = %.lr.ph.preheader.i369
  %i.vz = sext i32 %i.mj to i64
  %i.wa = shl nsw i64 %i.vz, 2
  %i.wb = sext i32 %i.mm to i64
  %i.wc = shl nsw i64 %i.wb, 3
  %i.wd = add i64 %i.wa, %i.mv
  %i.we = add i64 %i.wd, %i.wc
  %i.wf = sub i64 %i.vu, %i.we
  %i.wg = add i64 %i.wf, -81
  %diff.check1073 = icmp ult i64 %i.wg, 31
  br i1 %diff.check1073, label %.lr.ph.i372.preheader, label %vector.ph1074

vector.ph1074:                                    ; preds = %vector.memcheck1072
  %n.vec1075 = and i64 %wide.trip.count.i371, 4294967288 ; 3 uses
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1074
  %index1077 = phi i64 [ 0, %vector.ph1074 ], [ %index.next1080, %vector.body1076 ] ; 3 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index1077 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %wide.load1078 = load <4 x float>, ptr %i.wh, align 4, !tbaa !177
  %wide.load1079 = load <4 x float>, ptr %i.wi, align 4, !tbaa !177
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %index1077 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  store <4 x float> %wide.load1078, ptr %i.wj, align 4, !tbaa !177
  store <4 x float> %wide.load1079, ptr %i.wk, align 4, !tbaa !177
  %index.next1080 = add nuw i64 %index1077, 8     ; 2 uses
  %i.wl = icmp eq i64 %index.next1080, %n.vec1075
  br i1 %i.wl, label %middle.block1081, label %vector.body1076, !llvm.loop !288

middle.block1081:                                 ; preds = %vector.body1076
  %cmp.n1082 = icmp eq i64 %n.vec1075, %wide.trip.count.i371
  br i1 %cmp.n1082, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", label %.lr.ph.i372.preheader

.lr.ph.i372.preheader:                            ; preds = %vector.memcheck1072, %.lr.ph.preheader.i369, %middle.block1081
  %indvars.iv.i373.ph = phi i64 [ 0, %vector.memcheck1072 ], [ 0, %.lr.ph.preheader.i369 ], [ %n.vec1075, %middle.block1081 ] ; 3 uses
  %i.wm = zext nneg i32 %smax.i370 to i64         ; 2 uses
  %i.wn = add nuw nsw i64 %i.wm, 1
  %i.wo = sub nsw i64 %i.wm, %indvars.iv.i373.ph
  %xtraiter1241 = and i64 %i.wn, 3                ; 2 uses
  %lcmp.mod1242.not = icmp eq i64 %xtraiter1241, 0
  br i1 %lcmp.mod1242.not, label %.lr.ph.i372.prol.loopexit, label %.lr.ph.i372.prol

.lr.ph.i372.prol:                                 ; preds = %.lr.ph.i372.preheader, %.lr.ph.i372.prol
  %indvars.iv.i373.prol = phi i64 [ %indvars.iv.next.i374.prol, %.lr.ph.i372.prol ], [ %indvars.iv.i373.ph, %.lr.ph.i372.preheader ] ; 3 uses
  %prol.iter1243 = phi i64 [ %prol.iter1243.next, %.lr.ph.i372.prol ], [ 0, %.lr.ph.i372.preheader ]
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i373.prol
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !177
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv.i373.prol
  store float %i.wq, ptr %i.wr, align 4, !tbaa !177
  %indvars.iv.next.i374.prol = add nuw nsw i64 %indvars.iv.i373.prol, 1 ; 2 uses
  %prol.iter1243.next = add i64 %prol.iter1243, 1 ; 2 uses
  %prol.iter1243.cmp.not = icmp eq i64 %prol.iter1243.next, %xtraiter1241
  br i1 %prol.iter1243.cmp.not, label %.lr.ph.i372.prol.loopexit, label %.lr.ph.i372.prol, !llvm.loop !289

.lr.ph.i372.prol.loopexit:                        ; preds = %.lr.ph.i372.prol, %.lr.ph.i372.preheader
  %indvars.iv.i373.unr = phi i64 [ %indvars.iv.i373.ph, %.lr.ph.i372.preheader ], [ %indvars.iv.next.i374.prol, %.lr.ph.i372.prol ]
  %i.ws = icmp ult i64 %i.wo, 3
  br i1 %i.ws, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", label %.lr.ph.i372

.lr.ph.i372:                                      ; preds = %.lr.ph.i372.prol.loopexit, %.lr.ph.i372
  %indvars.iv.i373 = phi i64 [ %indvars.iv.next.i374.3, %.lr.ph.i372 ], [ %indvars.iv.i373.unr, %.lr.ph.i372.prol.loopexit ] ; 6 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.i373
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !177
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv.i373
  store float %i.wu, ptr %i.wv, align 4, !tbaa !177
  %indvars.iv.next.i374 = add nuw nsw i64 %indvars.iv.i373, 1 ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i374
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !177
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv.next.i374
  store float %i.wx, ptr %i.wy, align 4, !tbaa !177
  %indvars.iv.next.i374.1 = add nuw nsw i64 %indvars.iv.i373, 2 ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i374.1
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !177
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv.next.i374.1
  store float %i.xa, ptr %i.xb, align 4, !tbaa !177
  %indvars.iv.next.i374.2 = add nuw nsw i64 %indvars.iv.i373, 3 ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next.i374.2
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !177
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv.next.i374.2
  store float %i.xd, ptr %i.xe, align 4, !tbaa !177
  %indvars.iv.next.i374.3 = add nuw nsw i64 %indvars.iv.i373, 4 ; 2 uses
  %exitcond.not.i375.3 = icmp eq i64 %indvars.iv.next.i374.3, %wide.trip.count.i371
  br i1 %exitcond.not.i375.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", label %.lr.ph.i372, !llvm.loop !290

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit": ; preds = %.lr.ph.i372.prol.loopexit, %.lr.ph.i372, %middle.block1081, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit"
  %i.xf = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.xg = trunc nuw i8 %i.xf to i1
  %i.xh = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.xi = trunc nuw i8 %i.xh to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.xg, i1 noundef zeroext %i.xi)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit"
  %i.xj = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.xk = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.xl = ptrtoaddr ptr %i.xk to i64
  %i.xm = sext i32 %i.xj to i64                   ; 2 uses
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.xm ; 6 uses
  br i1 %i.oi, label %.lr.ph.preheader.i376, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382"

.lr.ph.preheader.i376:                            ; preds = %bb.bh
  %wide.trip.count.i377 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1055 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check1055, label %.lr.ph.i378.preheader, label %vector.memcheck1056

vector.memcheck1056:                              ; preds = %.lr.ph.preheader.i376
  %i.xo = sext i32 %i.mj to i64
  %i.xp = mul nsw i64 %i.xo, 20
  %i.xq = sext i32 %i.mm to i64
  %i.xr = shl nsw i64 %i.xq, 3
  %i.xs = shl nsw i64 %i.xm, 2
  %i.xt = add i64 %i.xp, %i.mv
  %i.xu = add i64 %i.xt, %i.xr
  %i.xv = add i64 %i.xs, %i.xl
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = add i64 %i.xw, 175
  %diff.check1057 = icmp ult i64 %i.xx, 31
  br i1 %diff.check1057, label %.lr.ph.i378.preheader, label %vector.ph1058

vector.ph1058:                                    ; preds = %vector.memcheck1056
  %n.vec1059 = and i64 %wide.trip.count.i377, 2147483640 ; 3 uses
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1058
  %index1061 = phi i64 [ 0, %vector.ph1058 ], [ %index.next1064, %vector.body1060 ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %index1061 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %wide.load1062 = load <4 x float>, ptr %i.xy, align 4, !tbaa !177
  %wide.load1063 = load <4 x float>, ptr %i.xz, align 4, !tbaa !177
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %index1061 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  store <4 x float> %wide.load1062, ptr %i.ya, align 4, !tbaa !177
  store <4 x float> %wide.load1063, ptr %i.yb, align 4, !tbaa !177
  %index.next1064 = add nuw i64 %index1061, 8     ; 2 uses
  %i.yc = icmp eq i64 %index.next1064, %n.vec1059
  br i1 %i.yc, label %middle.block1065, label %vector.body1060, !llvm.loop !291

middle.block1065:                                 ; preds = %vector.body1060
  %cmp.n1066 = icmp eq i64 %n.vec1059, %wide.trip.count.i377
  br i1 %cmp.n1066, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382", label %.lr.ph.i378.preheader

.lr.ph.i378.preheader:                            ; preds = %vector.memcheck1056, %.lr.ph.preheader.i376, %middle.block1065
  %indvars.iv.i379.ph = phi i64 [ 0, %vector.memcheck1056 ], [ 0, %.lr.ph.preheader.i376 ], [ %n.vec1059, %middle.block1065 ] ; 3 uses
  %xtraiter1244 = and i64 %wide.trip.count.i377, 3 ; 2 uses
  %lcmp.mod1245.not = icmp eq i64 %xtraiter1244, 0
  br i1 %lcmp.mod1245.not, label %.lr.ph.i378.prol.loopexit, label %.lr.ph.i378.prol

.lr.ph.i378.prol:                                 ; preds = %.lr.ph.i378.preheader, %.lr.ph.i378.prol
  %indvars.iv.i379.prol = phi i64 [ %indvars.iv.next.i380.prol, %.lr.ph.i378.prol ], [ %indvars.iv.i379.ph, %.lr.ph.i378.preheader ] ; 3 uses
  %prol.iter1246 = phi i64 [ %prol.iter1246.next, %.lr.ph.i378.prol ], [ 0, %.lr.ph.i378.preheader ]
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %indvars.iv.i379.prol
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !177
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.i379.prol
  store float %i.ye, ptr %i.yf, align 4, !tbaa !177
  %indvars.iv.next.i380.prol = add nuw nsw i64 %indvars.iv.i379.prol, 1 ; 2 uses
  %prol.iter1246.next = add i64 %prol.iter1246, 1 ; 2 uses
  %prol.iter1246.cmp.not = icmp eq i64 %prol.iter1246.next, %xtraiter1244
  br i1 %prol.iter1246.cmp.not, label %.lr.ph.i378.prol.loopexit, label %.lr.ph.i378.prol, !llvm.loop !292

.lr.ph.i378.prol.loopexit:                        ; preds = %.lr.ph.i378.prol, %.lr.ph.i378.preheader
  %indvars.iv.i379.unr = phi i64 [ %indvars.iv.i379.ph, %.lr.ph.i378.preheader ], [ %indvars.iv.next.i380.prol, %.lr.ph.i378.prol ]
  %i.yg = sub nsw i64 %indvars.iv.i379.ph, %wide.trip.count.i377
  %i.yh = icmp ugt i64 %i.yg, -4
  br i1 %i.yh, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382", label %.lr.ph.i378

.lr.ph.i378:                                      ; preds = %.lr.ph.i378.prol.loopexit, %.lr.ph.i378
  %indvars.iv.i379 = phi i64 [ %indvars.iv.next.i380.3, %.lr.ph.i378 ], [ %indvars.iv.i379.unr, %.lr.ph.i378.prol.loopexit ] ; 6 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %indvars.iv.i379
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !177
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.i379
  store float %i.yj, ptr %i.yk, align 4, !tbaa !177
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i379, 1 ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %indvars.iv.next.i380
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !177
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.next.i380
  store float %i.ym, ptr %i.yn, align 4, !tbaa !177
  %indvars.iv.next.i380.1 = add nuw nsw i64 %indvars.iv.i379, 2 ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %indvars.iv.next.i380.1
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !177
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.next.i380.1
  store float %i.yp, ptr %i.yq, align 4, !tbaa !177
  %indvars.iv.next.i380.2 = add nuw nsw i64 %indvars.iv.i379, 3 ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %indvars.iv.next.i380.2
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !177
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.next.i380.2
  store float %i.ys, ptr %i.yt, align 4, !tbaa !177
  %indvars.iv.next.i380.3 = add nuw nsw i64 %indvars.iv.i379, 4 ; 2 uses
  %exitcond.not.i381.3 = icmp eq i64 %indvars.iv.next.i380.3, %wide.trip.count.i377
  br i1 %exitcond.not.i381.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382", label %.lr.ph.i378, !llvm.loop !293

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382": ; preds = %.lr.ph.i378.prol.loopexit, %.lr.ph.i378, %middle.block1065, %bb.bh
  %i.yu = load i32, ptr %i.ml, align 8, !tbaa !332 ; 2 uses
  %i.yv = icmp sgt i32 %i.yu, -7
  br i1 %i.yv, label %.lr.ph.i383, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389"

.lr.ph.i383:                                      ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382"
  %i.yw = add i32 %i.yu, 6                        ; 2 uses
  %smax.i384 = call i32 @llvm.smax.i32(i32 %i.yw, i32 0) ; 2 uses
  %i.yx = add nuw i32 %smax.i384, 1
  %wide.trip.count.i385 = zext i32 %i.yx to i64   ; 3 uses
  %min.iters.check1039 = icmp slt i32 %i.yw, 7
  br i1 %min.iters.check1039, label %scalar.ph1038.preheader, label %vector.memcheck1040

vector.memcheck1040:                              ; preds = %.lr.ph.i383
  %i.yy = sext i32 %i.mm to i64
  %i.yz = shl nsw i64 %i.yy, 2
  %i.za = add nsw i64 %i.yz, 27
  %diff.check1041 = icmp ult i64 %i.za, 31
  br i1 %diff.check1041, label %scalar.ph1038.preheader, label %vector.ph1042

vector.ph1042:                                    ; preds = %vector.memcheck1040
  %n.vec1043 = and i64 %wide.trip.count.i385, 4294967288 ; 3 uses
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %vector.ph1042
  %index1045 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1048, %vector.body1044 ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index1045 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %wide.load1046 = load <4 x float>, ptr %i.zb, align 4, !tbaa !177
  %wide.load1047 = load <4 x float>, ptr %i.zc, align 4, !tbaa !177
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index1045 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  store <4 x float> %wide.load1046, ptr %i.zd, align 4, !tbaa !177
  store <4 x float> %wide.load1047, ptr %i.ze, align 4, !tbaa !177
  %index.next1048 = add nuw i64 %index1045, 8     ; 2 uses
  %i.zf = icmp eq i64 %index.next1048, %n.vec1043
  br i1 %i.zf, label %middle.block1049, label %vector.body1044, !llvm.loop !294

middle.block1049:                                 ; preds = %vector.body1044
  %cmp.n1050 = icmp eq i64 %n.vec1043, %wide.trip.count.i385
  br i1 %cmp.n1050, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", label %scalar.ph1038.preheader

scalar.ph1038.preheader:                          ; preds = %vector.memcheck1040, %.lr.ph.i383, %middle.block1049
  %indvars.iv.i386.ph = phi i64 [ 0, %vector.memcheck1040 ], [ 0, %.lr.ph.i383 ], [ %n.vec1043, %middle.block1049 ] ; 3 uses
  %i.zg = zext nneg i32 %smax.i384 to i64         ; 2 uses
  %i.zh = add nuw nsw i64 %i.zg, 1
  %i.zi = sub nsw i64 %i.zg, %indvars.iv.i386.ph
  %xtraiter1247 = and i64 %i.zh, 3                ; 2 uses
  %lcmp.mod1248.not = icmp eq i64 %xtraiter1247, 0
  br i1 %lcmp.mod1248.not, label %scalar.ph1038.prol.loopexit, label %scalar.ph1038.prol

scalar.ph1038.prol:                               ; preds = %scalar.ph1038.preheader, %scalar.ph1038.prol
  %indvars.iv.i386.prol = phi i64 [ %indvars.iv.next.i387.prol, %scalar.ph1038.prol ], [ %indvars.iv.i386.ph, %scalar.ph1038.preheader ] ; 3 uses
  %prol.iter1249 = phi i64 [ %prol.iter1249.next, %scalar.ph1038.prol ], [ 0, %scalar.ph1038.preheader ]
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i386.prol
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !177
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i386.prol
  store float %i.zk, ptr %i.zl, align 4, !tbaa !177
  %indvars.iv.next.i387.prol = add nuw nsw i64 %indvars.iv.i386.prol, 1 ; 2 uses
  %prol.iter1249.next = add i64 %prol.iter1249, 1 ; 2 uses
  %prol.iter1249.cmp.not = icmp eq i64 %prol.iter1249.next, %xtraiter1247
  br i1 %prol.iter1249.cmp.not, label %scalar.ph1038.prol.loopexit, label %scalar.ph1038.prol, !llvm.loop !295

scalar.ph1038.prol.loopexit:                      ; preds = %scalar.ph1038.prol, %scalar.ph1038.preheader
  %indvars.iv.i386.unr = phi i64 [ %indvars.iv.i386.ph, %scalar.ph1038.preheader ], [ %indvars.iv.next.i387.prol, %scalar.ph1038.prol ]
  %i.zm = icmp ult i64 %i.zi, 3
  br i1 %i.zm, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", label %scalar.ph1038

scalar.ph1038:                                    ; preds = %scalar.ph1038.prol.loopexit, %scalar.ph1038
  %indvars.iv.i386 = phi i64 [ %indvars.iv.next.i387.3, %scalar.ph1038 ], [ %indvars.iv.i386.unr, %scalar.ph1038.prol.loopexit ] ; 6 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i386
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !177
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i386
  store float %i.zo, ptr %i.zp, align 4, !tbaa !177
  %indvars.iv.next.i387 = add nuw nsw i64 %indvars.iv.i386, 1 ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i387
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !177
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i387
  store float %i.zr, ptr %i.zs, align 4, !tbaa !177
  %indvars.iv.next.i387.1 = add nuw nsw i64 %indvars.iv.i386, 2 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i387.1
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !177
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i387.1
  store float %i.zu, ptr %i.zv, align 4, !tbaa !177
  %indvars.iv.next.i387.2 = add nuw nsw i64 %indvars.iv.i386, 3 ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i387.2
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !177
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i387.2
  store float %i.zx, ptr %i.zy, align 4, !tbaa !177
  %indvars.iv.next.i387.3 = add nuw nsw i64 %indvars.iv.i386, 4 ; 2 uses
  %exitcond.not.i388.3 = icmp eq i64 %indvars.iv.next.i387.3, %wide.trip.count.i385
  br i1 %exitcond.not.i388.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", label %scalar.ph1038, !llvm.loop !296

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389": ; preds = %scalar.ph1038.prol.loopexit, %scalar.ph1038, %middle.block1049, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit382"
  invoke void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef %i.ul, ptr noundef nonnull %i.mx, ptr noundef nonnull %i.na)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389"
  br i1 %i.oi, label %.lr.ph.preheader.i390, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396"

.lr.ph.preheader.i390:                            ; preds = %bb.bi
  %wide.trip.count.i391 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check1017 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check1017, label %.lr.ph.i392.preheader, label %vector.memcheck1018

vector.memcheck1018:                              ; preds = %.lr.ph.preheader.i390
  %i.zz = sext i32 %i.mj to i64                   ; 2 uses
  %i.aaa = shl nsw i64 %i.zz, 3
  %9 = add nsw i64 %i.aaa, 47
  %diff.check1019 = icmp ult i64 %9, 31
  %.neg1191 = mul nsw i64 %i.zz, -12
  %i.aab = add nsw i64 %.neg1191, -73
  %diff.check1020 = icmp ult i64 %i.aab, 31
  %conflict.rdx1021 = or i1 %diff.check1019, %diff.check1020
  br i1 %conflict.rdx1021, label %.lr.ph.i392.preheader, label %vector.ph1022

vector.ph1022:                                    ; preds = %vector.memcheck1018
  %n.vec1023 = and i64 %wide.trip.count.i391, 2147483640 ; 3 uses
  %broadcast.splatinsert1024 = insertelement <4 x float> poison, float %i.ul, i64 0
  %broadcast.splat1025 = shufflevector <4 x float> %broadcast.splatinsert1024, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1022
  %index1027 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1032, %vector.body1026 ] ; 4 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index1027 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %wide.load1028 = load <4 x float>, ptr %i.aac, align 4, !tbaa !177
  %wide.load1029 = load <4 x float>, ptr %i.aad, align 4, !tbaa !177
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %index1027 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %wide.load1030 = load <4 x float>, ptr %i.aae, align 4, !tbaa !177
  %wide.load1031 = load <4 x float>, ptr %i.aaf, align 4, !tbaa !177
  %i.aag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1025, <4 x float> %wide.load1030, <4 x float> %wide.load1028)
  %i.aah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1025, <4 x float> %wide.load1031, <4 x float> %wide.load1029)
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %index1027 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  store <4 x float> %i.aag, ptr %i.aai, align 4, !tbaa !177
  store <4 x float> %i.aah, ptr %i.aaj, align 4, !tbaa !177
  %index.next1032 = add nuw i64 %index1027, 8     ; 2 uses
  %i.aak = icmp eq i64 %index.next1032, %n.vec1023
  br i1 %i.aak, label %middle.block1033, label %vector.body1026, !llvm.loop !297

middle.block1033:                                 ; preds = %vector.body1026
  %cmp.n1034 = icmp eq i64 %n.vec1023, %wide.trip.count.i391
  br i1 %cmp.n1034, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396", label %.lr.ph.i392.preheader

.lr.ph.i392.preheader:                            ; preds = %vector.memcheck1018, %.lr.ph.preheader.i390, %middle.block1033
  %indvars.iv.i393.ph = phi i64 [ 0, %vector.memcheck1018 ], [ 0, %.lr.ph.preheader.i390 ], [ %n.vec1023, %middle.block1033 ] ; 6 uses
  %xtraiter1250 = and i64 %wide.trip.count.i391, 1
  %lcmp.mod1251.not = icmp eq i64 %xtraiter1250, 0
  br i1 %lcmp.mod1251.not, label %.lr.ph.i392.prol.loopexit, label %.lr.ph.i392.prol

.lr.ph.i392.prol:                                 ; preds = %.lr.ph.i392.preheader
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i393.ph
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !177
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.i393.ph
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !177
  %i.aap = call float @llvm.fmuladd.f32(float %i.ul, float %i.aao, float %i.aam)
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i393.ph
  store float %i.aap, ptr %i.aaq, align 4, !tbaa !177
  %indvars.iv.next.i394.prol = or disjoint i64 %indvars.iv.i393.ph, 1
  br label %.lr.ph.i392.prol.loopexit

.lr.ph.i392.prol.loopexit:                        ; preds = %.lr.ph.i392.prol, %.lr.ph.i392.preheader
  %indvars.iv.i393.unr = phi i64 [ %indvars.iv.i393.ph, %.lr.ph.i392.preheader ], [ %indvars.iv.next.i394.prol, %.lr.ph.i392.prol ]
  %i.aar = add nsw i64 %wide.trip.count.i391, -1
  %i.aas = icmp eq i64 %indvars.iv.i393.ph, %i.aar
  br i1 %i.aas, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396", label %.lr.ph.i392

.lr.ph.i392:                                      ; preds = %.lr.ph.i392.prol.loopexit, %.lr.ph.i392
  %indvars.iv.i393 = phi i64 [ %indvars.iv.next.i394.1, %.lr.ph.i392 ], [ %indvars.iv.i393.unr, %.lr.ph.i392.prol.loopexit ] ; 5 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i393
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !177
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.i393
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !177
  %i.aax = call float @llvm.fmuladd.f32(float %i.ul, float %i.aaw, float %i.aau)
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i393
  store float %i.aax, ptr %i.aay, align 4, !tbaa !177
  %indvars.iv.next.i394 = add nuw nsw i64 %indvars.iv.i393, 1 ; 3 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i394
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !177
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.next.i394
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !177
  %i.abd = call float @llvm.fmuladd.f32(float %i.ul, float %i.abc, float %i.aba)
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i394
  store float %i.abd, ptr %i.abe, align 4, !tbaa !177
  %indvars.iv.next.i394.1 = add nuw nsw i64 %indvars.iv.i393, 2 ; 2 uses
  %exitcond.not.i395.1 = icmp eq i64 %indvars.iv.next.i394.1, %wide.trip.count.i391
  br i1 %exitcond.not.i395.1, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396", label %.lr.ph.i392, !llvm.loop !298

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396": ; preds = %.lr.ph.i392.prol.loopexit, %.lr.ph.i392, %middle.block1033, %bb.bi
  %i.abf = load ptr, ptr %i.vs, align 8, !tbaa !144 ; 7 uses
  %i.abg = ptrtoaddr ptr %i.abf to i64
  %i.abh = load i32, ptr %i.mi, align 4, !tbaa !182 ; 2 uses
  %i.abi = icmp sgt i32 %i.abh, -6
  br i1 %i.abi, label %.lr.ph.preheader.i397, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404"

.lr.ph.preheader.i397:                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396"
  %i.abj = add i32 %i.abh, 5                      ; 2 uses
  %smax.i398 = call i32 @llvm.smax.i32(i32 %i.abj, i32 0) ; 2 uses
  %i.abk = add nuw i32 %smax.i398, 1
  %wide.trip.count.i399 = zext i32 %i.abk to i64  ; 3 uses
  %min.iters.check999 = icmp slt i32 %i.abj, 11
  br i1 %min.iters.check999, label %.lr.ph.i400.preheader, label %vector.memcheck1000

vector.memcheck1000:                              ; preds = %.lr.ph.preheader.i397
  %i.abl = sext i32 %i.mj to i64
  %i.abm = sext i32 %i.mm to i64
  %i.abn = add nsw i64 %i.abl, %i.abm
  %i.abo = shl nsw i64 %i.abn, 3
  %i.abp = add i64 %i.abo, %i.mv
  %i.abq = sub i64 %i.abg, %i.abp
  %i.abr = add i64 %i.abq, -105
  %diff.check1001 = icmp ult i64 %i.abr, 31
  br i1 %diff.check1001, label %.lr.ph.i400.preheader, label %vector.ph1002

vector.ph1002:                                    ; preds = %vector.memcheck1000
  %n.vec1003 = and i64 %wide.trip.count.i399, 4294967288 ; 3 uses
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1002
  %index1005 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1008, %vector.body1004 ] ; 3 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %index1005 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %wide.load1006 = load <4 x float>, ptr %i.abs, align 4, !tbaa !177
  %wide.load1007 = load <4 x float>, ptr %i.abt, align 4, !tbaa !177
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %index1005 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  store <4 x float> %wide.load1006, ptr %i.abu, align 4, !tbaa !177
  store <4 x float> %wide.load1007, ptr %i.abv, align 4, !tbaa !177
  %index.next1008 = add nuw i64 %index1005, 8     ; 2 uses
  %i.abw = icmp eq i64 %index.next1008, %n.vec1003
  br i1 %i.abw, label %middle.block1009, label %vector.body1004, !llvm.loop !299

middle.block1009:                                 ; preds = %vector.body1004
  %cmp.n1010 = icmp eq i64 %n.vec1003, %wide.trip.count.i399
  br i1 %cmp.n1010, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", label %.lr.ph.i400.preheader

.lr.ph.i400.preheader:                            ; preds = %vector.memcheck1000, %.lr.ph.preheader.i397, %middle.block1009
  %indvars.iv.i401.ph = phi i64 [ 0, %vector.memcheck1000 ], [ 0, %.lr.ph.preheader.i397 ], [ %n.vec1003, %middle.block1009 ] ; 3 uses
  %i.abx = zext nneg i32 %smax.i398 to i64        ; 2 uses
  %i.aby = add nuw nsw i64 %i.abx, 1
  %i.abz = sub nsw i64 %i.abx, %indvars.iv.i401.ph
  %xtraiter1253 = and i64 %i.aby, 3               ; 2 uses
  %lcmp.mod1254.not = icmp eq i64 %xtraiter1253, 0
  br i1 %lcmp.mod1254.not, label %.lr.ph.i400.prol.loopexit, label %.lr.ph.i400.prol

.lr.ph.i400.prol:                                 ; preds = %.lr.ph.i400.preheader, %.lr.ph.i400.prol
  %indvars.iv.i401.prol = phi i64 [ %indvars.iv.next.i402.prol, %.lr.ph.i400.prol ], [ %indvars.iv.i401.ph, %.lr.ph.i400.preheader ] ; 3 uses
  %prol.iter1255 = phi i64 [ %prol.iter1255.next, %.lr.ph.i400.prol ], [ 0, %.lr.ph.i400.preheader ]
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i401.prol
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !177
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %indvars.iv.i401.prol
  store float %i.acb, ptr %i.acc, align 4, !tbaa !177
  %indvars.iv.next.i402.prol = add nuw nsw i64 %indvars.iv.i401.prol, 1 ; 2 uses
  %prol.iter1255.next = add i64 %prol.iter1255, 1 ; 2 uses
  %prol.iter1255.cmp.not = icmp eq i64 %prol.iter1255.next, %xtraiter1253
  br i1 %prol.iter1255.cmp.not, label %.lr.ph.i400.prol.loopexit, label %.lr.ph.i400.prol, !llvm.loop !300

.lr.ph.i400.prol.loopexit:                        ; preds = %.lr.ph.i400.prol, %.lr.ph.i400.preheader
  %indvars.iv.i401.unr = phi i64 [ %indvars.iv.i401.ph, %.lr.ph.i400.preheader ], [ %indvars.iv.next.i402.prol, %.lr.ph.i400.prol ]
  %i.acd = icmp ult i64 %i.abz, 3
  br i1 %i.acd, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", label %.lr.ph.i400

.lr.ph.i400:                                      ; preds = %.lr.ph.i400.prol.loopexit, %.lr.ph.i400
  %indvars.iv.i401 = phi i64 [ %indvars.iv.next.i402.3, %.lr.ph.i400 ], [ %indvars.iv.i401.unr, %.lr.ph.i400.prol.loopexit ] ; 6 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.i401
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !177
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %indvars.iv.i401
  store float %i.acf, ptr %i.acg, align 4, !tbaa !177
  %indvars.iv.next.i402 = add nuw nsw i64 %indvars.iv.i401, 1 ; 2 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i402
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !177
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %indvars.iv.next.i402
  store float %i.aci, ptr %i.acj, align 4, !tbaa !177
  %indvars.iv.next.i402.1 = add nuw nsw i64 %indvars.iv.i401, 2 ; 2 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i402.1
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !177
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %indvars.iv.next.i402.1
  store float %i.acl, ptr %i.acm, align 4, !tbaa !177
  %indvars.iv.next.i402.2 = add nuw nsw i64 %indvars.iv.i401, 3 ; 2 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv.next.i402.2
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !177
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %indvars.iv.next.i402.2
  store float %i.aco, ptr %i.acp, align 4, !tbaa !177
  %indvars.iv.next.i402.3 = add nuw nsw i64 %indvars.iv.i401, 4 ; 2 uses
  %exitcond.not.i403.3 = icmp eq i64 %indvars.iv.next.i402.3, %wide.trip.count.i399
  br i1 %exitcond.not.i403.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", label %.lr.ph.i400, !llvm.loop !301

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404": ; preds = %.lr.ph.i400.prol.loopexit, %.lr.ph.i400, %middle.block1009, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit396"
  %i.acq = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.acr = trunc nuw i8 %i.acq to i1
  %i.acs = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.act = trunc nuw i8 %i.acs to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.acr, i1 noundef zeroext %i.act)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404"
  %i.acu = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.acv = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.acw = ptrtoaddr ptr %i.acv to i64
  %i.acx = sext i32 %i.acu to i64                 ; 2 uses
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %i.acx ; 6 uses
  br i1 %i.oi, label %.lr.ph.preheader.i405, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411"

.lr.ph.preheader.i405:                            ; preds = %bb.bj
  %wide.trip.count.i406 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check983 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check983, label %.lr.ph.i407.preheader, label %vector.memcheck984

vector.memcheck984:                               ; preds = %.lr.ph.preheader.i405
  %i.acz = sext i32 %i.mj to i64
  %i.ada = mul nsw i64 %i.acz, 24
  %i.adb = sext i32 %i.mm to i64
  %i.adc = shl nsw i64 %i.adb, 3
  %i.add = shl nsw i64 %i.acx, 2
  %i.ade = add i64 %i.ada, %i.mv
  %i.adf = add i64 %i.ade, %i.adc
  %i.adg = add i64 %i.add, %i.acw
  %i.adh = sub i64 %i.adf, %i.adg
  %i.adi = add i64 %i.adh, 199
  %diff.check985 = icmp ult i64 %i.adi, 31
  br i1 %diff.check985, label %.lr.ph.i407.preheader, label %vector.ph986

vector.ph986:                                     ; preds = %vector.memcheck984
  %n.vec987 = and i64 %wide.trip.count.i406, 2147483640 ; 3 uses
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next992, %vector.body988 ] ; 3 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %index989 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  %wide.load990 = load <4 x float>, ptr %i.adj, align 4, !tbaa !177
  %wide.load991 = load <4 x float>, ptr %i.adk, align 4, !tbaa !177
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %index989 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  store <4 x float> %wide.load990, ptr %i.adl, align 4, !tbaa !177
  store <4 x float> %wide.load991, ptr %i.adm, align 4, !tbaa !177
  %index.next992 = add nuw i64 %index989, 8       ; 2 uses
  %i.adn = icmp eq i64 %index.next992, %n.vec987
  br i1 %i.adn, label %middle.block993, label %vector.body988, !llvm.loop !302

middle.block993:                                  ; preds = %vector.body988
  %cmp.n994 = icmp eq i64 %n.vec987, %wide.trip.count.i406
  br i1 %cmp.n994, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411", label %.lr.ph.i407.preheader

.lr.ph.i407.preheader:                            ; preds = %vector.memcheck984, %.lr.ph.preheader.i405, %middle.block993
  %indvars.iv.i408.ph = phi i64 [ 0, %vector.memcheck984 ], [ 0, %.lr.ph.preheader.i405 ], [ %n.vec987, %middle.block993 ] ; 3 uses
  %xtraiter1256 = and i64 %wide.trip.count.i406, 3 ; 2 uses
  %lcmp.mod1257.not = icmp eq i64 %xtraiter1256, 0
  br i1 %lcmp.mod1257.not, label %.lr.ph.i407.prol.loopexit, label %.lr.ph.i407.prol

.lr.ph.i407.prol:                                 ; preds = %.lr.ph.i407.preheader, %.lr.ph.i407.prol
  %indvars.iv.i408.prol = phi i64 [ %indvars.iv.next.i409.prol, %.lr.ph.i407.prol ], [ %indvars.iv.i408.ph, %.lr.ph.i407.preheader ] ; 3 uses
  %prol.iter1258 = phi i64 [ %prol.iter1258.next, %.lr.ph.i407.prol ], [ 0, %.lr.ph.i407.preheader ]
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.i408.prol
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !177
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.i408.prol
  store float %i.adp, ptr %i.adq, align 4, !tbaa !177
  %indvars.iv.next.i409.prol = add nuw nsw i64 %indvars.iv.i408.prol, 1 ; 2 uses
  %prol.iter1258.next = add i64 %prol.iter1258, 1 ; 2 uses
  %prol.iter1258.cmp.not = icmp eq i64 %prol.iter1258.next, %xtraiter1256
  br i1 %prol.iter1258.cmp.not, label %.lr.ph.i407.prol.loopexit, label %.lr.ph.i407.prol, !llvm.loop !303

.lr.ph.i407.prol.loopexit:                        ; preds = %.lr.ph.i407.prol, %.lr.ph.i407.preheader
  %indvars.iv.i408.unr = phi i64 [ %indvars.iv.i408.ph, %.lr.ph.i407.preheader ], [ %indvars.iv.next.i409.prol, %.lr.ph.i407.prol ]
  %i.adr = sub nsw i64 %indvars.iv.i408.ph, %wide.trip.count.i406
  %i.ads = icmp ugt i64 %i.adr, -4
  br i1 %i.ads, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411", label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %.lr.ph.i407.prol.loopexit, %.lr.ph.i407
  %indvars.iv.i408 = phi i64 [ %indvars.iv.next.i409.3, %.lr.ph.i407 ], [ %indvars.iv.i408.unr, %.lr.ph.i407.prol.loopexit ] ; 6 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.i408
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !177
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.i408
  store float %i.adu, ptr %i.adv, align 4, !tbaa !177
  %indvars.iv.next.i409 = add nuw nsw i64 %indvars.iv.i408, 1 ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.next.i409
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !177
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.next.i409
  store float %i.adx, ptr %i.ady, align 4, !tbaa !177
  %indvars.iv.next.i409.1 = add nuw nsw i64 %indvars.iv.i408, 2 ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.next.i409.1
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !177
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.next.i409.1
  store float %i.aea, ptr %i.aeb, align 4, !tbaa !177
  %indvars.iv.next.i409.2 = add nuw nsw i64 %indvars.iv.i408, 3 ; 2 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.next.i409.2
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !177
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.next.i409.2
  store float %i.aed, ptr %i.aee, align 4, !tbaa !177
  %indvars.iv.next.i409.3 = add nuw nsw i64 %indvars.iv.i408, 4 ; 2 uses
  %exitcond.not.i410.3 = icmp eq i64 %indvars.iv.next.i409.3, %wide.trip.count.i406
  br i1 %exitcond.not.i410.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411", label %.lr.ph.i407, !llvm.loop !304

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411": ; preds = %.lr.ph.i407.prol.loopexit, %.lr.ph.i407, %middle.block993, %bb.bj
  %i.aef = load i32, ptr %i.ml, align 8, !tbaa !332 ; 2 uses
  %i.aeg = icmp sgt i32 %i.aef, -7
  br i1 %i.aeg, label %.lr.ph.i412, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418"

.lr.ph.i412:                                      ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411"
  %i.aeh = add i32 %i.aef, 6                      ; 2 uses
  %smax.i413 = call i32 @llvm.smax.i32(i32 %i.aeh, i32 0) ; 2 uses
  %i.aei = add nuw i32 %smax.i413, 1
  %wide.trip.count.i414 = zext i32 %i.aei to i64  ; 3 uses
  %min.iters.check967 = icmp slt i32 %i.aeh, 7
  br i1 %min.iters.check967, label %scalar.ph966.preheader, label %vector.memcheck968

vector.memcheck968:                               ; preds = %.lr.ph.i412
  %i.aej = sext i32 %i.mm to i64
  %i.aek = shl nsw i64 %i.aej, 2
  %i.ael = add nsw i64 %i.aek, 27
  %diff.check969 = icmp ult i64 %i.ael, 31
  br i1 %diff.check969, label %scalar.ph966.preheader, label %vector.ph970

vector.ph970:                                     ; preds = %vector.memcheck968
  %n.vec971 = and i64 %wide.trip.count.i414, 4294967288 ; 3 uses
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %vector.ph970
  %index973 = phi i64 [ 0, %vector.ph970 ], [ %index.next976, %vector.body972 ] ; 3 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index973 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %wide.load974 = load <4 x float>, ptr %i.aem, align 4, !tbaa !177
  %wide.load975 = load <4 x float>, ptr %i.aen, align 4, !tbaa !177
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index973 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  store <4 x float> %wide.load974, ptr %i.aeo, align 4, !tbaa !177
  store <4 x float> %wide.load975, ptr %i.aep, align 4, !tbaa !177
  %index.next976 = add nuw i64 %index973, 8       ; 2 uses
  %i.aeq = icmp eq i64 %index.next976, %n.vec971
  br i1 %i.aeq, label %middle.block977, label %vector.body972, !llvm.loop !305

middle.block977:                                  ; preds = %vector.body972
  %cmp.n978 = icmp eq i64 %n.vec971, %wide.trip.count.i414
  br i1 %cmp.n978, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", label %scalar.ph966.preheader

scalar.ph966.preheader:                           ; preds = %vector.memcheck968, %.lr.ph.i412, %middle.block977
  %indvars.iv.i415.ph = phi i64 [ 0, %vector.memcheck968 ], [ 0, %.lr.ph.i412 ], [ %n.vec971, %middle.block977 ] ; 3 uses
  %i.aer = zext nneg i32 %smax.i413 to i64        ; 2 uses
  %i.aes = add nuw nsw i64 %i.aer, 1
  %i.aet = sub nsw i64 %i.aer, %indvars.iv.i415.ph
  %xtraiter1259 = and i64 %i.aes, 3               ; 2 uses
  %lcmp.mod1260.not = icmp eq i64 %xtraiter1259, 0
  br i1 %lcmp.mod1260.not, label %scalar.ph966.prol.loopexit, label %scalar.ph966.prol

scalar.ph966.prol:                                ; preds = %scalar.ph966.preheader, %scalar.ph966.prol
  %indvars.iv.i415.prol = phi i64 [ %indvars.iv.next.i416.prol, %scalar.ph966.prol ], [ %indvars.iv.i415.ph, %scalar.ph966.preheader ] ; 3 uses
  %prol.iter1261 = phi i64 [ %prol.iter1261.next, %scalar.ph966.prol ], [ 0, %scalar.ph966.preheader ]
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i415.prol
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !177
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i415.prol
  store float %i.aev, ptr %i.aew, align 4, !tbaa !177
  %indvars.iv.next.i416.prol = add nuw nsw i64 %indvars.iv.i415.prol, 1 ; 2 uses
  %prol.iter1261.next = add i64 %prol.iter1261, 1 ; 2 uses
  %prol.iter1261.cmp.not = icmp eq i64 %prol.iter1261.next, %xtraiter1259
  br i1 %prol.iter1261.cmp.not, label %scalar.ph966.prol.loopexit, label %scalar.ph966.prol, !llvm.loop !306

scalar.ph966.prol.loopexit:                       ; preds = %scalar.ph966.prol, %scalar.ph966.preheader
  %indvars.iv.i415.unr = phi i64 [ %indvars.iv.i415.ph, %scalar.ph966.preheader ], [ %indvars.iv.next.i416.prol, %scalar.ph966.prol ]
  %i.aex = icmp ult i64 %i.aet, 3
  br i1 %i.aex, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", label %scalar.ph966

scalar.ph966:                                     ; preds = %scalar.ph966.prol.loopexit, %scalar.ph966
  %indvars.iv.i415 = phi i64 [ %indvars.iv.next.i416.3, %scalar.ph966 ], [ %indvars.iv.i415.unr, %scalar.ph966.prol.loopexit ] ; 6 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.i415
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !177
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.i415
  store float %i.aez, ptr %i.afa, align 4, !tbaa !177
  %indvars.iv.next.i416 = add nuw nsw i64 %indvars.iv.i415, 1 ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i416
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !177
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i416
  store float %i.afc, ptr %i.afd, align 4, !tbaa !177
  %indvars.iv.next.i416.1 = add nuw nsw i64 %indvars.iv.i415, 2 ; 2 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i416.1
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !177
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i416.1
  store float %i.aff, ptr %i.afg, align 4, !tbaa !177
  %indvars.iv.next.i416.2 = add nuw nsw i64 %indvars.iv.i415, 3 ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv.next.i416.2
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !177
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next.i416.2
  store float %i.afi, ptr %i.afj, align 4, !tbaa !177
  %indvars.iv.next.i416.3 = add nuw nsw i64 %indvars.iv.i415, 4 ; 2 uses
  %exitcond.not.i417.3 = icmp eq i64 %indvars.iv.next.i416.3, %wide.trip.count.i414
  br i1 %exitcond.not.i417.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", label %scalar.ph966, !llvm.loop !307

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418": ; preds = %scalar.ph966.prol.loopexit, %scalar.ph966, %middle.block977, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_1clEPKfPfii.exit411"
  invoke void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef %i.re, ptr noundef nonnull %i.mx, ptr noundef nonnull %i.nb)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418"
  br i1 %i.oi, label %.lr.ph.preheader.i419, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"

.lr.ph.preheader.i419:                            ; preds = %bb.bk
  %wide.trip.count.i420 = zext i32 %i.mk to i64   ; 5 uses
  %min.iters.check945 = icmp ult i32 %i.mk, 8
  br i1 %min.iters.check945, label %.lr.ph.i421.preheader, label %vector.memcheck946

vector.memcheck946:                               ; preds = %.lr.ph.preheader.i419
  %i.afk = sext i32 %i.mj to i64
  %i.afl = mul nsw i64 %i.afk, 12                 ; 2 uses
  %10 = add nsw i64 %i.afl, 71
  %diff.check947 = icmp ult i64 %10, 31
  %i.afm = add nsw i64 %i.afl, 103
  %diff.check948 = icmp ult i64 %i.afm, 31
  %conflict.rdx949 = or i1 %diff.check947, %diff.check948
  br i1 %conflict.rdx949, label %.lr.ph.i421.preheader, label %vector.ph950

vector.ph950:                                     ; preds = %vector.memcheck946
  %n.vec951 = and i64 %wide.trip.count.i420, 2147483640 ; 3 uses
  %broadcast.splatinsert952 = insertelement <4 x float> poison, float %i.re, i64 0
  %broadcast.splat953 = shufflevector <4 x float> %broadcast.splatinsert952, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph950
  %index955 = phi i64 [ 0, %vector.ph950 ], [ %index.next960, %vector.body954 ] ; 4 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index955 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %wide.load956 = load <4 x float>, ptr %i.afn, align 4, !tbaa !177
  %wide.load957 = load <4 x float>, ptr %i.afo, align 4, !tbaa !177
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %index955 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %wide.load958 = load <4 x float>, ptr %i.afp, align 4, !tbaa !177
  %wide.load959 = load <4 x float>, ptr %i.afq, align 4, !tbaa !177
  %i.afr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat953, <4 x float> %wide.load958, <4 x float> %wide.load956)
  %i.afs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat953, <4 x float> %wide.load959, <4 x float> %wide.load957)
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index955 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  store <4 x float> %i.afr, ptr %i.aft, align 4, !tbaa !177
  store <4 x float> %i.afs, ptr %i.afu, align 4, !tbaa !177
  %index.next960 = add nuw i64 %index955, 8       ; 2 uses
  %i.afv = icmp eq i64 %index.next960, %n.vec951
  br i1 %i.afv, label %middle.block961, label %vector.body954, !llvm.loop !308

middle.block961:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %n.vec951, %wide.trip.count.i420
  br i1 %cmp.n962, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425", label %.lr.ph.i421.preheader

.lr.ph.i421.preheader:                            ; preds = %vector.memcheck946, %.lr.ph.preheader.i419, %middle.block961
  %indvars.iv.i422.ph = phi i64 [ 0, %vector.memcheck946 ], [ 0, %.lr.ph.preheader.i419 ], [ %n.vec951, %middle.block961 ] ; 6 uses
  %xtraiter1262 = and i64 %wide.trip.count.i420, 1
  %lcmp.mod1263.not = icmp eq i64 %xtraiter1262, 0
  br i1 %lcmp.mod1263.not, label %.lr.ph.i421.prol.loopexit, label %.lr.ph.i421.prol

.lr.ph.i421.prol:                                 ; preds = %.lr.ph.i421.preheader
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i422.ph
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !177
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.i422.ph
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !177
  %i.aga = call float @llvm.fmuladd.f32(float %i.re, float %i.afz, float %i.afx)
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i422.ph
  store float %i.aga, ptr %i.agb, align 4, !tbaa !177
  %indvars.iv.next.i423.prol = or disjoint i64 %indvars.iv.i422.ph, 1
  br label %.lr.ph.i421.prol.loopexit

.lr.ph.i421.prol.loopexit:                        ; preds = %.lr.ph.i421.prol, %.lr.ph.i421.preheader
  %indvars.iv.i422.unr = phi i64 [ %indvars.iv.i422.ph, %.lr.ph.i421.preheader ], [ %indvars.iv.next.i423.prol, %.lr.ph.i421.prol ]
  %i.agc = add nsw i64 %wide.trip.count.i420, -1
  %i.agd = icmp eq i64 %indvars.iv.i422.ph, %i.agc
  br i1 %i.agd, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425", label %.lr.ph.i421

.lr.ph.i421:                                      ; preds = %.lr.ph.i421.prol.loopexit, %.lr.ph.i421
  %indvars.iv.i422 = phi i64 [ %indvars.iv.next.i423.1, %.lr.ph.i421 ], [ %indvars.iv.i422.unr, %.lr.ph.i421.prol.loopexit ] ; 5 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i422
  %i.agf = load float, ptr %i.age, align 4, !tbaa !177
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.i422
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !177
  %i.agi = call float @llvm.fmuladd.f32(float %i.re, float %i.agh, float %i.agf)
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i422
  store float %i.agi, ptr %i.agj, align 4, !tbaa !177
  %indvars.iv.next.i423 = add nuw nsw i64 %indvars.iv.i422, 1 ; 3 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i423
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !177
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.next.i423
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !177
  %i.ago = call float @llvm.fmuladd.f32(float %i.re, float %i.agn, float %i.agl)
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i423
  store float %i.ago, ptr %i.agp, align 4, !tbaa !177
  %indvars.iv.next.i423.1 = add nuw nsw i64 %indvars.iv.i422, 2 ; 2 uses
  %exitcond.not.i424.1 = icmp eq i64 %indvars.iv.next.i423.1, %wide.trip.count.i420
  br i1 %exitcond.not.i424.1, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425", label %.lr.ph.i421, !llvm.loop !309

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425": ; preds = %.lr.ph.i421.prol.loopexit, %.lr.ph.i421, %middle.block961, %bb.bk
  %i.agq = load ptr, ptr %i.vs, align 8, !tbaa !144 ; 7 uses
  %i.agr = ptrtoaddr ptr %i.agq to i64
  %i.ags = load i32, ptr %i.mi, align 4, !tbaa !182 ; 2 uses
  %i.agt = icmp sgt i32 %i.ags, -6
  br i1 %i.agt, label %.lr.ph.preheader.i426, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433"

.lr.ph.preheader.i426:                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"
  %i.agu = add i32 %i.ags, 5                      ; 2 uses
  %smax.i427 = call i32 @llvm.smax.i32(i32 %i.agu, i32 0) ; 2 uses
  %i.agv = add nuw i32 %smax.i427, 1
  %wide.trip.count.i428 = zext i32 %i.agv to i64  ; 3 uses
  %min.iters.check927 = icmp slt i32 %i.agu, 11
  br i1 %min.iters.check927, label %.lr.ph.i429.preheader, label %vector.memcheck928

vector.memcheck928:                               ; preds = %.lr.ph.preheader.i426
  %i.agw = sext i32 %i.mm to i64
  %i.agx = shl nsw i64 %i.agw, 3
  %i.agy = sext i32 %i.mj to i64
  %.neg1192 = mul nsw i64 %i.agy, -12
  %i.agz = add i64 %i.agr, -128
  %i.aha = add i64 %i.agx, %i.mv
  %i.ahb = sub i64 %i.agz, %i.aha
  %i.ahc = add i64 %.neg1192, %i.ahb
  %i.ahd = add i64 %i.ahc, -1
  %diff.check929 = icmp ult i64 %i.ahd, 31
  br i1 %diff.check929, label %.lr.ph.i429.preheader, label %vector.ph930

vector.ph930:                                     ; preds = %vector.memcheck928
  %n.vec931 = and i64 %wide.trip.count.i428, 4294967288 ; 3 uses
  br label %vector.body932

vector.body932:                                   ; preds = %vector.body932, %vector.ph930
  %index933 = phi i64 [ 0, %vector.ph930 ], [ %index.next936, %vector.body932 ] ; 3 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index933 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  %wide.load934 = load <4 x float>, ptr %i.ahe, align 4, !tbaa !177
  %wide.load935 = load <4 x float>, ptr %i.ahf, align 4, !tbaa !177
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %index933 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  store <4 x float> %wide.load934, ptr %i.ahg, align 4, !tbaa !177
  store <4 x float> %wide.load935, ptr %i.ahh, align 4, !tbaa !177
  %index.next936 = add nuw i64 %index933, 8       ; 2 uses
  %i.ahi = icmp eq i64 %index.next936, %n.vec931
  br i1 %i.ahi, label %middle.block937, label %vector.body932, !llvm.loop !310

middle.block937:                                  ; preds = %vector.body932
  %cmp.n938 = icmp eq i64 %n.vec931, %wide.trip.count.i428
  br i1 %cmp.n938, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429.preheader

.lr.ph.i429.preheader:                            ; preds = %vector.memcheck928, %.lr.ph.preheader.i426, %middle.block937
  %indvars.iv.i430.ph = phi i64 [ 0, %vector.memcheck928 ], [ 0, %.lr.ph.preheader.i426 ], [ %n.vec931, %middle.block937 ] ; 3 uses
  %i.ahj = zext nneg i32 %smax.i427 to i64        ; 2 uses
  %i.ahk = add nuw nsw i64 %i.ahj, 1
  %i.ahl = sub nsw i64 %i.ahj, %indvars.iv.i430.ph
  %xtraiter1265 = and i64 %i.ahk, 3               ; 2 uses
  %lcmp.mod1266.not = icmp eq i64 %xtraiter1265, 0
  br i1 %lcmp.mod1266.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol

.lr.ph.i429.prol:                                 ; preds = %.lr.ph.i429.preheader, %.lr.ph.i429.prol
  %indvars.iv.i430.prol = phi i64 [ %indvars.iv.next.i431.prol, %.lr.ph.i429.prol ], [ %indvars.iv.i430.ph, %.lr.ph.i429.preheader ] ; 3 uses
  %prol.iter1267 = phi i64 [ %prol.iter1267.next, %.lr.ph.i429.prol ], [ 0, %.lr.ph.i429.preheader ]
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i430.prol
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !177
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %indvars.iv.i430.prol
  store float %i.ahn, ptr %i.aho, align 4, !tbaa !177
  %indvars.iv.next.i431.prol = add nuw nsw i64 %indvars.iv.i430.prol, 1 ; 2 uses
  %prol.iter1267.next = add i64 %prol.iter1267, 1 ; 2 uses
  %prol.iter1267.cmp.not = icmp eq i64 %prol.iter1267.next, %xtraiter1265
  br i1 %prol.iter1267.cmp.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol, !llvm.loop !311

.lr.ph.i429.prol.loopexit:                        ; preds = %.lr.ph.i429.prol, %.lr.ph.i429.preheader
  %indvars.iv.i430.unr = phi i64 [ %indvars.iv.i430.ph, %.lr.ph.i429.preheader ], [ %indvars.iv.next.i431.prol, %.lr.ph.i429.prol ]
  %i.ahp = icmp ult i64 %i.ahl, 3
  br i1 %i.ahp, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429
  %indvars.iv.i430 = phi i64 [ %indvars.iv.next.i431.3, %.lr.ph.i429 ], [ %indvars.iv.i430.unr, %.lr.ph.i429.prol.loopexit ] ; 6 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i430
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !177
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %indvars.iv.i430
  store float %i.ahr, ptr %i.ahs, align 4, !tbaa !177
  %indvars.iv.next.i431 = add nuw nsw i64 %indvars.iv.i430, 1 ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i431
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !177
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %indvars.iv.next.i431
  store float %i.ahu, ptr %i.ahv, align 4, !tbaa !177
  %indvars.iv.next.i431.1 = add nuw nsw i64 %indvars.iv.i430, 2 ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i431.1
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !177
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %indvars.iv.next.i431.1
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !177
  %indvars.iv.next.i431.2 = add nuw nsw i64 %indvars.iv.i430, 3 ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i431.2
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !177
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %indvars.iv.next.i431.2
  store float %i.aia, ptr %i.aib, align 4, !tbaa !177
  %indvars.iv.next.i431.3 = add nuw nsw i64 %indvars.iv.i430, 4 ; 2 uses
  %exitcond.not.i432.3 = icmp eq i64 %indvars.iv.next.i431.3, %wide.trip.count.i428
  br i1 %exitcond.not.i432.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429, !llvm.loop !312

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433": ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429, %middle.block937, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"
  %i.aic = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.aid = trunc nuw i8 %i.aic to i1
  %i.aie = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.aif = trunc nuw i8 %i.aie to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.aid, i1 noundef zeroext %i.aif)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433"
  %i.aig = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.aih = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.aii = ptrtoaddr ptr %i.aih to i64
  %i.aij = sext i32 %i.aig to i64                 ; 2 uses
  %i.aik = getelementptr inbounds [4 x i8], ptr %i.aih, i64 %i.aij ; 6 uses
  br i1 %i.oi, label %.lr.ph.preheader.i434, label %.loopexit552

.lr.ph.preheader.i434:                            ; preds = %bb.bl
  %wide.trip.count.i435 = zext i32 %i.mk to i64   ; 7 uses
  %min.iters.check911 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check911, label %.lr.ph.i436.preheader, label %vector.memcheck912

vector.memcheck912:                               ; preds = %.lr.ph.preheader.i434
  %i.ail = sext i32 %i.mj to i64
  %i.aim = mul nsw i64 %i.ail, 28
end_hunk_0
