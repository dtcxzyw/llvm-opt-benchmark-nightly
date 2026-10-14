Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/planarize_quad_mesh?download=true
inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS2_IdLi2ELi1ELi0ELi2ELi1EEEEEvRKT_RKdPd:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %0, align 8, !tbaa !246    ; 8 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !247  ; 10 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph54.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i
  %min.iters.check220 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check220, label %.preheader.i.i.i.i.i.i.i.preheader248, label %vector.ph221

vector.ph221:                                     ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %n.vec222 = and i64 %i.j, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph221
  %index226 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body225 ] ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.g, i64 %index226 ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  %wide.load227 = load <2 x double>, ptr %i.l, align 8, !tbaa !59
  %wide.load228 = load <2 x double>, ptr %i.m, align 8, !tbaa !59
  %i.n = fmul <2 x double> %broadcast.splat224, %wide.load227
  %i.o = fmul <2 x double> %broadcast.splat224, %wide.load228
  store <2 x double> %i.n, ptr %i.l, align 8, !tbaa !59
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !59
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.p, label %middle.block230, label %vector.body225, !llvm.loop !1583

middle.block230:                                  ; preds = %vector.body225
  %cmp.n231 = icmp eq i64 %i.j, %n.vec222
  br i1 %cmp.n231, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.preheader248

.preheader.i.i.i.i.i.i.i.preheader248:            ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %middle.block230
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %n.vec222, %middle.block230 ]
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader248, %.preheader.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.t, %.preheader.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.preheader248 ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %.09.i.i.i.i.i.i.i ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !59
  %i.s = fmul double %i.e, %i.r
  store double %i.s, ptr %i.q, align 8, !tbaa !59
  %i.t = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !1584

.lr.ph54.i.i.i.i.i.i:                             ; preds = %bb.b
  %i.u = lshr exact i64 %i.h, 3
  %i.v = and i64 %i.u, 1
  %i.w = tail call i64 @llvm.smin.i64(i64 %i.v, i64 %i.j) ; 5 uses
  %i.x = insertelement <2 x double> poison, double %i.e, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = sub i64 %i.j, %i.w                       ; 2 uses
  %i.aa = and i64 %i.z, -2                        ; 2 uses
  %i.ab = add nsw i64 %i.aa, %i.w                 ; 5 uses
  %i.ac = icmp sgt i64 %i.w, 0
  br i1 %i.ac, label %.preheader45.loopexit.i.i.i.i.i.i, label %.preheader45.i.i.i.i.i.i

.preheader45.loopexit.i.i.i.i.i.i:                ; preds = %.lr.ph54.i.i.i.i.i.i
  %i.ad = load double, ptr %i.g, align 8, !tbaa !59
  %i.ae = fmul double %i.e, %i.ad
  store double %i.ae, ptr %i.g, align 8, !tbaa !59
  br label %.preheader45.i.i.i.i.i.i

.preheader45.i.i.i.i.i.i:                         ; preds = %.preheader45.loopexit.i.i.i.i.i.i, %.lr.ph54.i.i.i.i.i.i
  %i.af = icmp sgt i64 %i.z, 1
  br i1 %i.af, label %.lr.ph49.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph49.i.i.i.i.i.i, %.preheader45.i.i.i.i.i.i
  %i.ag = icmp slt i64 %i.ab, %i.j
  br i1 %i.ag, label %.lr.ph51.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

.lr.ph51.i.i.i.i.i.i.preheader:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.ah = add i64 %i.w, %i.aa
  %i.ai = sub i64 %i.j, %i.ah                     ; 3 uses
  %min.iters.check234 = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check234, label %.lr.ph51.i.i.i.i.i.i.preheader247, label %vector.ph235

vector.ph235:                                     ; preds = %.lr.ph51.i.i.i.i.i.i.preheader
  %n.vec236 = and i64 %i.ai, -4                   ; 3 uses
  %i.aj = add i64 %i.ab, %n.vec236
  %broadcast.splatinsert237 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat238 = shufflevector <2 x double> %broadcast.splatinsert237, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.g, i64 %i.ab
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph235
  %index240 = phi i64 [ 0, %vector.ph235 ], [ %index.next243, %vector.body239 ] ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %index240 ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %wide.load241 = load <2 x double>, ptr %i.al, align 8, !tbaa !59
  %wide.load242 = load <2 x double>, ptr %i.am, align 8, !tbaa !59
  %i.an = fmul <2 x double> %broadcast.splat238, %wide.load241
  %i.ao = fmul <2 x double> %broadcast.splat238, %wide.load242
  store <2 x double> %i.an, ptr %i.al, align 8, !tbaa !59
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !59
  %index.next243 = add nuw i64 %index240, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.ap, label %middle.block244, label %vector.body239, !llvm.loop !1585

middle.block244:                                  ; preds = %vector.body239
  %cmp.n245 = icmp eq i64 %i.ai, %n.vec236
  br i1 %cmp.n245, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %.lr.ph51.i.i.i.i.i.i.preheader247

.lr.ph51.i.i.i.i.i.i.preheader247:                ; preds = %.lr.ph51.i.i.i.i.i.i.preheader, %middle.block244
  %.050.i.i.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph51.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block244 ]
  br label %.lr.ph51.i.i.i.i.i.i

.lr.ph49.i.i.i.i.i.i:                             ; preds = %.preheader45.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i
  %.03248.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph49.i.i.i.i.i.i ], [ %i.w, %.preheader45.i.i.i.i.i.i ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.g, i64 %.03248.i.i.i.i.i.i ; 2 uses
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !77
  %i.as = fmul <2 x double> %i.y, %i.ar
  store <2 x double> %i.as, ptr %i.aq, align 16, !tbaa !77
  %i.at = add nsw i64 %.03248.i.i.i.i.i.i, 2      ; 2 uses
  %i.au = icmp slt i64 %i.at, %i.ab
  br i1 %i.au, label %.lr.ph49.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !10

.lr.ph51.i.i.i.i.i.i:                             ; preds = %.lr.ph51.i.i.i.i.i.i.preheader247, %.lr.ph51.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph51.i.i.i.i.i.i ], [ %.050.i.i.i.i.i.i.ph, %.lr.ph51.i.i.i.i.i.i.preheader247 ] ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.g, i64 %.050.i.i.i.i.i.i ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !59
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !59
  %i.ay = add nsw i64 %.050.i.i.i.i.i.i, 1        ; 2 uses
  %i.az = icmp slt i64 %i.ay, %i.j
  br i1 %i.az, label %.lr.ph51.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, !llvm.loop !1586

bb.c:                                             ; preds = %bb.a
  %i.ba = fcmp une double %i.d, 0.000000e+00
  br i1 %i.ba, label %bb.d, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !247 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.bd = load ptr, ptr %0, align 8, !tbaa !246   ; 4 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 24     ; 12 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !370
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 0, ptr %i.bh, align 8, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 1, ptr %i.bi, align 8, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bj, align 8, !tbaa !1632
  %i.bk = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.bl = and i64 %i.bk, 7
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bl, 0  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bm = lshr exact i64 %i.bk, 3
  %i.bn = and i64 %i.bm, 1
  %i.bo = tail call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bc)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %bb.e ], [ %i.bc, %bb.d ] ; 13 uses
  %i.bp = sub nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bq = sdiv i64 %i.bp, 2                       ; 2 uses
  %i.br = shl nsw i64 %i.bq, 1                    ; 2 uses
  %i.bs = add nsw i64 %i.br, %.0.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.bt = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bu = shl i64 %.0.i.i.i.i.i.i.i.i.i, 3        ; 2 uses
  %i.bv = getelementptr i8, ptr %3, i64 %i.bu     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bd, i64 %i.bu
  %i.bx = getelementptr i8, ptr %i.bw, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %bound0 = icmp ult ptr %3, %i.bx
  %bound1 = icmp ult ptr %i.be, %i.bv
  %found.conflict = and i1 %bound0, %bound1
  %bound073 = icmp ult ptr %3, %i.by
  %bound174 = icmp ult ptr %1, %i.bv
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx = or i1 %found.conflict, %found.conflict75
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %9 = load <1 x double>, ptr %1, align 16
  %broadcast.splat = shufflevector <1 x double> %9, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %10 = load <2 x double>, ptr %1, align 16
  %broadcast.splat80 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <2 x double>, ptr %i.ca, align 8, !tbaa !59, !alias.scope !1633
  %wide.load76 = load <2 x double>, ptr %i.cb, align 8, !tbaa !59, !alias.scope !1633
  %i.cc = fmul <2 x double> %wide.load, %broadcast.splat
  %i.cd = fmul <2 x double> %wide.load76, %broadcast.splat
  %i.ce = getelementptr i8, ptr %i.ca, i64 24
  %i.cf = getelementptr i8, ptr %i.ca, i64 40
  %wide.load77 = load <2 x double>, ptr %i.ce, align 8, !tbaa !59, !alias.scope !1633
  %wide.load78 = load <2 x double>, ptr %i.cf, align 8, !tbaa !59, !alias.scope !1633
  %i.cg = fmul <2 x double> %wide.load77, %broadcast.splat80
  %i.ch = fmul <2 x double> %wide.load78, %broadcast.splat80
  %i.ci = fadd <2 x double> %i.cc, %i.cg
  %i.cj = fadd <2 x double> %i.cd, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x double> %i.ci, ptr %i.bz, align 8, !tbaa !59, !alias.scope !1634, !noalias !1635
  store <2 x double> %i.cj, ptr %i.ck, align 8, !tbaa !59, !alias.scope !1634, !noalias !1635
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !59
  %i.cp = getelementptr i8, ptr %i.cn, i64 24
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !59
  %i.cr = load <2 x double>, ptr %1, align 16, !tbaa !59
  %i.cs = insertelement <2 x double> poison, double %i.co, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cq, i64 1
  %i.cu = fmul <2 x double> %i.ct, %i.cr
  %i.cv = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cu)
  store double %i.cv, ptr %i.cm, align 8, !tbaa !59
  %i.cw = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.cw, %scalar.ph.prol ]
  %i.cx = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %.neg
  br i1 %i.cx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !59
  %i.db = getelementptr i8, ptr %i.cz, i64 24
  %i.dc = load double, ptr %i.db, align 8, !tbaa !59
  %i.dd = load <2 x double>, ptr %1, align 16, !tbaa !59
  %i.de = insertelement <2 x double> poison, double %i.da, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.dc, i64 1
  %i.dg = fmul <2 x double> %i.df, %i.dd
  %i.dh = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dg)
  store double %i.dh, ptr %i.cy, align 8, !tbaa !59
  %i.di = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.di ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !59
  %i.dm = getelementptr i8, ptr %i.dk, i64 24
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !59
  %i.do = load <2 x double>, ptr %1, align 16, !tbaa !59
  %i.dp = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.dn, i64 1
  %i.dr = fmul <2 x double> %i.dq, %i.do
  %i.ds = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dr)
  store double %i.ds, ptr %i.dj, align 8, !tbaa !59
  %i.dt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dt, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !1592

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %i.du = icmp sgt i64 %i.bp, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.dv = icmp slt i64 %i.bs, %i.bc
  br i1 %i.dv, label %.lr.ph.i17.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.dw = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.br
  %i.dx = sub i64 %i.bc, %i.dw                    ; 3 uses
  %min.iters.check94 = icmp ult i64 %i.dx, 10
  br i1 %min.iters.check94, label %scalar.ph93.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i
  %i.dy = shl i64 %i.bq, 4
  %i.dz = shl i64 %.0.i.i.i.i.i.i.i.i.i, 3
  %i.ea = add i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = getelementptr i8, ptr %3, i64 %i.ea     ; 2 uses
  %i.ec = shl i64 %i.bc, 3                        ; 2 uses
  %i.ed = getelementptr i8, ptr %3, i64 %i.ec     ; 2 uses
  %i.ee = getelementptr i8, ptr %i.bd, i64 %i.ea
  %i.ef = getelementptr i8, ptr %i.ee, i64 24
  %i.eg = getelementptr i8, ptr %i.bd, i64 %i.ec
  %i.eh = getelementptr i8, ptr %i.eg, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  %bound096 = icmp ult ptr %i.eb, %i.eh
  %bound197 = icmp ult ptr %i.ef, %i.ed
  %found.conflict98 = and i1 %bound096, %bound197
  %bound099 = icmp ult ptr %i.eb, %i.ei
  %bound1100 = icmp ult ptr %1, %i.ed
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %found.conflict98, %found.conflict101
  br i1 %conflict.rdx102, label %scalar.ph93.preheader, label %vector.ph103

vector.ph103:                                     ; preds = %vector.memcheck95
  %n.vec104 = and i64 %i.dx, -4                   ; 3 uses
  %i.ej = add i64 %i.bs, %n.vec104
  %11 = load <1 x double>, ptr %1, align 16
  %broadcast.splat110 = shufflevector <1 x double> %11, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = load <2 x double>, ptr %1, align 16
  %broadcast.splat114 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next115, %vector.body105 ] ; 2 uses
  %i.ek = add i64 %i.bs, %index106                ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ek ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load107 = load <2 x double>, ptr %i.em, align 8, !tbaa !59, !alias.scope !1636
  %wide.load108 = load <2 x double>, ptr %i.en, align 8, !tbaa !59, !alias.scope !1636
  %i.eo = fmul <2 x double> %wide.load107, %broadcast.splat110
  %i.ep = fmul <2 x double> %wide.load108, %broadcast.splat110
  %i.eq = getelementptr i8, ptr %i.em, i64 24
  %i.er = getelementptr i8, ptr %i.em, i64 40
  %wide.load111 = load <2 x double>, ptr %i.eq, align 8, !tbaa !59, !alias.scope !1636
  %wide.load112 = load <2 x double>, ptr %i.er, align 8, !tbaa !59, !alias.scope !1636
  %i.es = fmul <2 x double> %wide.load111, %broadcast.splat114
  %i.et = fmul <2 x double> %wide.load112, %broadcast.splat114
  %i.eu = fadd <2 x double> %i.eo, %i.es
  %i.ev = fadd <2 x double> %i.ep, %i.et
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x double> %i.eu, ptr %i.el, align 8, !tbaa !59, !alias.scope !1637, !noalias !1638
  store <2 x double> %i.ev, ptr %i.ew, align 8, !tbaa !59, !alias.scope !1637, !noalias !1638
  %index.next115 = add nuw i64 %index106, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next115, %n.vec104
  br i1 %i.ex, label %middle.block116, label %vector.body105, !llvm.loop !1597

middle.block116:                                  ; preds = %vector.body105
  %cmp.n117 = icmp eq i64 %i.dx, %n.vec104
  br i1 %cmp.n117, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %scalar.ph93.preheader

scalar.ph93.preheader:                            ; preds = %vector.memcheck95, %.lr.ph.i17.i.i.i.i.i.i.i.i, %middle.block116
  %.05.i18.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bs, %vector.memcheck95 ], [ %i.bs, %.lr.ph.i17.i.i.i.i.i.i.i.i ], [ %i.ej, %middle.block116 ] ; 6 uses
  %i.ey = sub i64 %i.bc, %.05.i18.i.i.i.i.i.i.i.i.ph
  %.neg267 = add i64 %.05.i18.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter254 = and i64 %i.ey, 1
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %scalar.ph93.prol.loopexit, label %scalar.ph93.prol

scalar.ph93.prol:                                 ; preds = %scalar.ph93.preheader
  %i.ez = getelementptr inbounds [8 x i8], ptr %3, i64 %.05.i18.i.i.i.i.i.i.i.i.ph
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !59
  %i.fc = getelementptr i8, ptr %i.fa, i64 24
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !59
  %i.fe = load <2 x double>, ptr %1, align 16, !tbaa !59
  %i.ff = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.fd, i64 1
  %i.fh = fmul <2 x double> %i.fg, %i.fe
  %i.fi = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fh)
  store double %i.fi, ptr %i.ez, align 8, !tbaa !59
  %i.fj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph93.prol.loopexit

scalar.ph93.prol.loopexit:                        ; preds = %scalar.ph93.prol, %scalar.ph93.preheader
  %.05.i18.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.ph, %scalar.ph93.preheader ], [ %i.fj, %scalar.ph93.prol ]
  %i.fk = icmp eq i64 %i.bc, %.neg267
  br i1 %i.fk, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %scalar.ph93

scalar.ph93:                                      ; preds = %scalar.ph93.prol.loopexit, %scalar.ph93
  %.05.i18.i.i.i.i.i.i.i.i = phi i64 [ %i.gg, %scalar.ph93 ], [ %.05.i18.i.i.i.i.i.i.i.i.unr, %scalar.ph93.prol.loopexit ] ; 4 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %3, i64 %.05.i18.i.i.i.i.i.i.i.i
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i.i.i ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !59
  %i.fo = getelementptr i8, ptr %i.fm, i64 24
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !59
  %i.fq = load <2 x double>, ptr %1, align 16, !tbaa !59
  %i.fr = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fp, i64 1
  %i.ft = fmul <2 x double> %i.fs, %i.fq
  %i.fu = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ft)
  store double %i.fu, ptr %i.fl, align 8, !tbaa !59
  %i.fv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fv
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.fv ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !59
  %i.fz = getelementptr i8, ptr %i.fx, i64 24
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !59
  %i.gb = load <2 x double>, ptr %1, align 16, !tbaa !59
  %i.gc = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.ga, i64 1
  %i.ge = fmul <2 x double> %i.gd, %i.gb
  %i.gf = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ge)
  store double %i.gf, ptr %i.fw, align 8, !tbaa !59
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.gg, %i.bc
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %scalar.ph93, !llvm.loop !1598

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS7_IdLi2ELi1ELi0ELi2ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %3, i64 %.021.i.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.021.i.i.i.i.i.i.i.i ; 2 uses
  %i.gj = load <2 x double>, ptr %i.gi, align 1, !tbaa !77
  %i.gk = load <2 x double>, ptr %1, align 16     ; 2 uses
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x double> %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !77
  %i.gp = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gq = fmul <2 x double> %i.go, %i.gp
  %i.gr = fadd <2 x double> %i.gm, %i.gq
  store <2 x double> %i.gr, ptr %i.gh, align 16, !tbaa !77
  %i.gs = add nsw i64 %.021.i.i.i.i.i.i.i.i, 2    ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %i.bs
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !1599

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %scalar.ph93.prol.loopexit, %scalar.ph93, %middle.block116, %._crit_edge.i.i.i.i.i.i.i.i
  %i.gu = load ptr, ptr %0, align 8, !tbaa !246, !noalias !1639 ; 17 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i8

bb.f:                                             ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.gv = lshr exact i64 %i.bk, 3
  %i.gw = and i64 %i.gv, 1
  %i.gx = tail call i64 @llvm.smin.i64(i64 %i.gw, i64 %i.bc)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i8

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i8: ; preds = %bb.f, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.gx, %bb.f ], [ %i.bc, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_5BlockINSB_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi2ELb0EEENS2_IdLi2ELi1ELi0ELi2ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit ] ; 13 uses
  %i.gy = sub nsw i64 %i.bc, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.gz = sdiv i64 %i.gy, 2                       ; 2 uses
  %i.ha = shl nsw i64 %i.gz, 1                    ; 2 uses
  %i.hb = add nsw i64 %i.ha, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.hc = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.hc, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i8
  %min.iters.check125 = icmp ult i64 %.0.i.i.i.i.i.i.i, 6
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i.i.i.preheader253, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.hd = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.he = getelementptr i8, ptr %3, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.gu, i64 %i.hd
  %bound0127 = icmp ult ptr %3, %i.hf
  %bound1128 = icmp ult ptr %i.gu, %i.he
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %.lr.ph.i.i.i.i.i.i.i.preheader253, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck126
  %n.vec131 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index133 ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index133 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load134 = load <2 x double>, ptr %i.hh, align 8, !tbaa !59, !alias.scope !1640
  %wide.load135 = load <2 x double>, ptr %i.hi, align 8, !tbaa !59, !alias.scope !1640
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %wide.load136 = load <2 x double>, ptr %i.hg, align 8, !tbaa !59, !alias.scope !1641, !noalias !1640
  %wide.load137 = load <2 x double>, ptr %i.hj, align 8, !tbaa !59, !alias.scope !1641, !noalias !1640
  %i.hk = fadd <2 x double> %wide.load134, %wide.load136
  %i.hl = fadd <2 x double> %wide.load135, %wide.load137
  store <2 x double> %i.hk, ptr %i.hg, align 8, !tbaa !59, !alias.scope !1641, !noalias !1640
  store <2 x double> %i.hl, ptr %i.hj, align 8, !tbaa !59, !alias.scope !1641, !noalias !1640
  %index.next138 = add nuw i64 %index133, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.hm, label %middle.block139, label %vector.body132, !llvm.loop !1605

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec131
  br i1 %cmp.n140, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader253

.lr.ph.i.i.i.i.i.i.i.preheader253:                ; preds = %vector.memcheck126, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block139
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck126 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec131, %middle.block139 ] ; 3 uses
  %xtraiter256 = and i64 %.0.i.i.i.i.i.i.i, 3     ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader253, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader253 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader253 ]
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.i.prol ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.05.i.i.i.i.i.i.i.prol
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !59
  %i.hq = load double, ptr %i.hn, align 8, !tbaa !59
  %i.hr = fadd double %i.hp, %i.hq
  store double %i.hr, ptr %i.hn, align 8, !tbaa !59
  %i.hs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1606

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader253
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader253 ], [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ht = sub nsw i64 %.05.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.05.i.i.i.i.i.i.i
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !59
  %i.hy = load double, ptr %i.hv, align 8, !tbaa !59
  %i.hz = fadd double %i.hx, %i.hy
  store double %i.hz, ptr %i.hv, align 8, !tbaa !59
  %i.ia = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ia ; 2 uses
end_hunk_0
