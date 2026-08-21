Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLi3EE12unblocked_luERNS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
  store i64 %i.dk, ptr %i.j, align 8, !tbaa !193
  store ptr %i.dq, ptr %i.k, align 8, !tbaa !546
  store i64 %i.dk, ptr %i.l, align 8, !tbaa !193
  store i64 1, ptr %i.m, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.ds, ptr %4, align 8, !tbaa !574
  store i64 %i.dk, ptr %i.n, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !576
  store ptr %3, ptr %i.o, align 8, !tbaa !578
  store ptr %6, ptr %i.p, align 8, !tbaa !580
  store ptr %7, ptr %i.q, align 8, !tbaa !582
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.aa, label %bb.c, label %bb.b, !llvm.loop !584
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585, !nonnull !300, !align !587 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !534
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !193  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !300, !align !587 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !300, !align !587 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !574  ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !193  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !588, !noalias !589 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !592, !noalias !593 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !596, !noalias !593, !nonnull !300, !align !587
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !193, !noalias !593 ; 3 uses
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul i64 %i.s, %i.y
  %i.aa = shl i64 %i.j, 3
  %i.ab = add i64 %i.z, %i.j
  %i.ac = shl i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ad = mul i64 %i.x, %i.y
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep64 = getelementptr i8, ptr %i.af, i64 8
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.r, %scevgep63
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound065 = icmp ult ptr %i.r, %scevgep64
  %bound166 = icmp ult ptr %i.u, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %i.ag = or i64 %i.x, %i.s
  %i.ah = and i64 %i.ag, 1152921504606846976
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %found.conflict67, %i.ai
  %conflict.rdx = or i1 %found.conflict, %i.aj
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bh, %._crit_edge.i ] ; 3 uses
  %i.ak = mul nsw i64 %.0810.i, %i.s
  %i.al = getelementptr [8 x i8], ptr %i.r, i64 %i.ak ; 4 uses
  %i.am = mul nsw i64 %.0810.i, %i.x
  %i.an = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.am ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !33, !alias.scope !597
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !33, !alias.scope !600
  %wide.load70 = load <2 x double>, ptr %i.ar, align 8, !tbaa !33, !alias.scope !600
  %i.as = fmul <2 x double> %wide.load, %broadcast.splat
  %i.at = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.au = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.ap, align 8, !tbaa !33, !alias.scope !602, !noalias !604
  %wide.load72 = load <2 x double>, ptr %i.au, align 8, !tbaa !33, !alias.scope !602, !noalias !604
  %i.av = fsub <2 x double> %wide.load71, %i.as
  %i.aw = fsub <2 x double> %wide.load72, %i.at
  store <2 x double> %i.av, ptr %i.ap, align 8, !tbaa !33, !alias.scope !602, !noalias !604
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !33, !alias.scope !602, !noalias !604
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !605

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ay = getelementptr [8 x i8], ptr %i.al, i64 %.09.i.ph ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.ba = load double, ptr %i.az, align 8, !tbaa !33
  %i.bb = load double, ptr %i.an, align 8, !tbaa !33
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !33
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.ay, align 8, !tbaa !33
  %i.bf = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = icmp eq i64 %i.j, %.neg
  br i1 %i.bg, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bh = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !606

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bx, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %i.al, i64 %.09.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !33
  %i.bl = load double, ptr %i.an, align 8, !tbaa !33
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !33
  %i.bo = fsub double %i.bn, %i.bm
  store double %i.bo, ptr %i.bi, align 8, !tbaa !33
  %i.bp = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.al, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !33
  %i.bt = load double, ptr %i.an, align 8, !tbaa !33
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !33
  %i.bw = fsub double %i.bv, %i.bu
  store double %i.bw, ptr %i.bq, align 8, !tbaa !33
  %i.bx = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bx, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !607

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !193 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !193 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !608, !nonnull !300, !align !587
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !193
  %i.cg = and i64 %i.cf, 1
  %i.ch = icmp sgt i64 %i.cb, 0
  br i1 %i.ch, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ci = lshr exact i64 %i.d, 3
  %i.cj = and i64 %i.ci, 1
  %i.ck = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.bz)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cm = shl i64 %i.bz, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.gd, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.ck, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cn = shl i64 %.03451, 3                      ; 2 uses
  %i.co = sub i64 %i.bz, %.03550                  ; 3 uses
  %i.cp = and i64 %i.co, -2                       ; 2 uses
  %i.cq = add nsw i64 %i.cp, %.03550              ; 6 uses
  %i.cr = icmp sgt i64 %.03550, 0
  br i1 %i.cr, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !609, !nonnull !300, !align !587 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !592, !noalias !610
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !596, !noalias !610, !nonnull !300, !align !587
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !193, !noalias !610
  %i.cz = mul nsw i64 %i.cy, %.03451
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cz
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !588, !noalias !613
  %i.dc = load ptr, ptr %0, align 8, !tbaa !616, !nonnull !300, !align !587 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !574
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !193
  %i.dg = mul nsw i64 %i.df, %.03451
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %i.dg ; 2 uses
  %i.di = load double, ptr %i.db, align 8, !tbaa !33
  %i.dj = load double, ptr %i.da, align 8, !tbaa !33
  %i.dk = fmul double %i.di, %i.dj
  %i.dl = load double, ptr %i.dh, align 8, !tbaa !33
  %i.dm = fsub double %i.dl, %i.dk
  store double %i.dm, ptr %i.dh, align 8, !tbaa !33
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dn = icmp sgt i64 %i.co, 1
  br i1 %i.dn, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.do = icmp slt i64 %i.cq, %i.bz
  br i1 %i.do, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dp = load ptr, ptr %0, align 8, !tbaa !616, !nonnull !300, !align !587 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !574 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !193 ; 2 uses
  %i.dt = mul nsw i64 %i.ds, %.03451
  %i.du = getelementptr [8 x i8], ptr %i.dq, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.cl, align 8, !tbaa !609, !nonnull !300, !align !587 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !588, !noalias !617 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !592, !noalias !620 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !596, !noalias !620, !nonnull !300, !align !587
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !193, !noalias !620 ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %.03451
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ed ; 3 uses
  %i.ef = add i64 %.03550, %i.cp
  %i.eg = sub i64 %i.bz, %i.ef                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.eg, 10
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph49
  %i.eh = mul i64 %i.ds, %i.cn                    ; 2 uses
  %i.ei = shl i64 %i.co, 3
  %i.ej = and i64 %i.ei, -16                      ; 2 uses
  %i.ek = shl i64 %.03550, 3                      ; 2 uses
  %i.el = getelementptr i8, ptr %i.dq, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ej
  %scevgep74 = getelementptr i8, ptr %i.em, i64 %i.ek ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.dq, i64 %i.cm
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.eh ; 2 uses
  %i.en = getelementptr i8, ptr %i.dw, i64 %i.ej
  %scevgep77 = getelementptr i8, ptr %i.en, i64 %i.ek
  %scevgep78 = getelementptr i8, ptr %i.dw, i64 %i.cm
  %scevgep79 = getelementptr i8, ptr %i.dy, i64 8
  %i.eo = mul i64 %i.ec, %i.cn
  %scevgep80 = getelementptr i8, ptr %scevgep79, i64 %i.eo
  %bound081 = icmp ult ptr %scevgep74, %scevgep78
  %bound182 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %scevgep74, %scevgep80
  %bound185 = icmp ult ptr %i.ee, %scevgep76
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck73
  %n.vec91 = and i64 %i.eg, -4                    ; 3 uses
  %i.ep = add i64 %i.cq, %n.vec91
  %i.eq = load double, ptr %i.ee, align 8, !tbaa !33, !alias.scope !623
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.eq, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body92 ] ; 2 uses
  %i.er = add i64 %i.cq, %index93                 ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.du, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.er ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load94 = load <2 x double>, ptr %i.et, align 8, !tbaa !33, !alias.scope !626
  %wide.load95 = load <2 x double>, ptr %i.eu, align 8, !tbaa !33, !alias.scope !626
  %i.ev = fmul <2 x double> %wide.load94, %broadcast.splat97
  %i.ew = fmul <2 x double> %wide.load95, %broadcast.splat97
  %i.ex = getelementptr i8, ptr %i.es, i64 16     ; 2 uses
  %wide.load98 = load <2 x double>, ptr %i.es, align 8, !tbaa !33, !alias.scope !628, !noalias !630
  %wide.load99 = load <2 x double>, ptr %i.ex, align 8, !tbaa !33, !alias.scope !628, !noalias !630
  %i.ey = fsub <2 x double> %wide.load98, %i.ev
  %i.ez = fsub <2 x double> %wide.load99, %i.ew
  store <2 x double> %i.ey, ptr %i.es, align 8, !tbaa !33, !alias.scope !628, !noalias !630
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !33, !alias.scope !628, !noalias !630
  %index.next100 = add nuw i64 %index93, 4        ; 2 uses
  %i.fa = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.fa, label %middle.block101, label %vector.body92, !llvm.loop !631

middle.block101:                                  ; preds = %vector.body92
  %cmp.n102 = icmp eq i64 %i.eg, %n.vec91
  br i1 %cmp.n102, label %._crit_edge, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %vector.memcheck73, %.lr.ph49, %middle.block101
  %.048.ph = phi i64 [ %i.cq, %vector.memcheck73 ], [ %i.cq, %.lr.ph49 ], [ %i.ep, %middle.block101 ]
  br label %scalar.ph88

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fz, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !616, !nonnull !300, !align !587 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !574
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !193
  %i.ff = mul nsw i64 %i.fe, %.03451
  %i.fg = getelementptr [8 x i8], ptr %i.fc, i64 %i.ff
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %.03246 ; 2 uses
  %i.fi = load ptr, ptr %i.cl, align 8, !tbaa !609, !nonnull !300, !align !587 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 192
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 216
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !544
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.03246
  %i.fn = load <2 x double>, ptr %i.fm, align 1, !tbaa !17
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !546
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 224
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !193
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr [8 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !33
  %i.fu = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %i.fn, %i.fv
  %i.fx = load <2 x double>, ptr %i.fh, align 16, !tbaa !17
  %i.fy = fsub <2 x double> %i.fx, %i.fw
  store <2 x double> %i.fy, ptr %i.fh, align 16, !tbaa !17
  %i.fz = add nsw i64 %.03246, 2                  ; 2 uses
  %i.ga = icmp slt i64 %i.fz, %i.cq
  br i1 %i.ga, label %.lr.ph47, label %.preheader, !llvm.loop !632

._crit_edge:                                      ; preds = %scalar.ph88, %middle.block101, %.preheader
  %i.gb = add nsw i64 %.03550, %i.cg
  %i.gc = srem i64 %i.gb, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.gc)
  %i.gd = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.gd, %i.cb
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %bb.c, !llvm.loop !633

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %.048 = phi i64 [ %i.gl, %scalar.ph88 ], [ %.048.ph, %scalar.ph88.preheader ] ; 3 uses
  %i.ge = getelementptr [8 x i8], ptr %i.du, i64 %.048 ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.048
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !33
  %i.gh = load double, ptr %i.ee, align 8, !tbaa !33
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = load double, ptr %i.ge, align 8, !tbaa !33
  %i.gk = fsub double %i.gj, %i.gi
  store double %i.gk, ptr %i.ge, align 8, !tbaa !33
  %i.gl = add nsw i64 %.048, 1                    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.bz
  br i1 %i.gm, label %scalar.ph88, label %._crit_edge, !llvm.loop !634

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen12PartialPivLUINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS1_IdLi3ELi1ELi0ELi3ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(106) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.944", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %bb.b, label %.preheader59.preheader.i.i.i.i.i.i.i.i

.preheader59.preheader.i.i.i.i.i.i.i.i:           ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !27
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.f = load double, ptr %1, align 8, !tbaa !33
  store double %i.f, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j
  %i.l = load double, ptr %i.g, align 8, !tbaa !33
  store double %i.l, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p
  %i.r = load double, ptr %i.m, align 8, !tbaa !33
  store double %i.r, ptr %i.q, align 8, !tbaa !33
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false), !tbaa !385
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.s = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %i.s, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %.critedge.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.t = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !385, !range !299, !noundef !300
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !635

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.w, align 1, !tbaa !385
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !27
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.x, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.y = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aa, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !33 ; 2 uses
  store double %i.y, ptr %i.z, align 8, !tbaa !33
  store double %i.aa, ptr %i.x, align 8, !tbaa !33
  %i.ab = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.ab, align 1, !tbaa !385
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLi7EE12unblocked_luERNS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
  %.sroa.1090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.1292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.18.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 112
  %.sroa.19.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  %.sroa.21.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %.sroa.22.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 144
  %.sroa.23.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 152
  %.sroa.24.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 160
  %.sroa.26.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 176
  %.sroa.27.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.loopexit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 6, ptr %i.r, align 4, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !671
  %i.t = load i64, ptr %i.a, align 8, !tbaa !193
  %.idx = mul i64 %i.t, 48
  %i.u = getelementptr i8, ptr %i.s, i64 %.idx
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %i.w = load double, ptr %i.v, align 8, !tbaa !33
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  %i.y = icmp eq i64 %.1, -1
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %spec.select = select i1 %i.z, i64 6, i64 %.1
  ret i64 %spec.select

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.loopexit
  %.0171 = phi i64 [ -1, %bb.a ], [ %.1, %.loopexit ] ; 5 uses
  %.052170 = phi i64 [ 0, %bb.a ], [ %i.fe, %.loopexit ] ; 17 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !671, !noalias !673 ; 3 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !193, !noalias !673 ; 8 uses
  %i.ac = mul nsw i64 %i.ab, %.052170
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.052170 ; 8 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !33
  %i.ag = call noundef double @llvm.fabs.f64(double %i.af) ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !33
  %i.aj = call noundef double @llvm.fabs.f64(double %i.ai) ; 3 uses
  %i.ak = fcmp ogt double %i.aj, %i.ag            ; 3 uses
  %.sroa.0.1.i.i = zext i1 %i.ak to i64           ; 2 uses
  %.sroa.7.1.i.i = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.052170, 5
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.al = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %i.am = getelementptr i8, ptr %i.ae, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !33
  %i.ao = call noundef double @llvm.fabs.f64(double %i.an) ; 3 uses
  %i.ap = fcmp ogt double %i.ao, %i.al            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ap, i64 2, i64 %.sroa.0.1.i.i ; 2 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ap, double %i.ao, double %.sroa.7.1.i.i ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %.052170, 4
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.aq = select i1 %i.ap, double %i.ao, double %i.al ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !33
  %i.at = call noundef double @llvm.fabs.f64(double %i.as) ; 3 uses
  %i.au = fcmp ogt double %i.at, %i.aq            ; 3 uses
  %.sroa.0.1.i.i.2 = select i1 %i.au, i64 3, i64 %.sroa.0.1.i.i.1 ; 2 uses
  %.sroa.7.1.i.i.2 = select i1 %i.au, double %i.at, double %.sroa.7.1.i.i.1 ; 2 uses
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %.052170, 3
  br i1 %exitcond.not.i.i.i.i.2, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.av = select i1 %i.au, double %i.at, double %i.aq ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ae, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !33
  %i.ay = call noundef double @llvm.fabs.f64(double %i.ax) ; 3 uses
  %i.az = fcmp ogt double %i.ay, %i.av            ; 3 uses
  %.sroa.0.1.i.i.3 = select i1 %i.az, i64 4, i64 %.sroa.0.1.i.i.2 ; 2 uses
  %.sroa.7.1.i.i.3 = select i1 %i.az, double %i.ay, double %.sroa.7.1.i.i.2 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %.052170, 2
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.ba = select i1 %i.az, double %i.ay, double %i.av ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ae, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !33
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc) ; 3 uses
  %i.be = fcmp ogt double %i.bd, %i.ba            ; 3 uses
  %.sroa.0.1.i.i.4 = select i1 %i.be, i64 5, i64 %.sroa.0.1.i.i.3 ; 2 uses
  %.sroa.7.1.i.i.4 = select i1 %i.be, double %i.bd, double %.sroa.7.1.i.i.3 ; 2 uses
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %.052170, 1
  br i1 %exitcond.not.i.i.i.i.4, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.5

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.bf = select i1 %i.be, double %i.bd, double %i.ba
  %i.bg = getelementptr i8, ptr %i.ae, i64 48
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !33
  %i.bi = call noundef double @llvm.fabs.f64(double %i.bh) ; 2 uses
  %i.bj = fcmp ogt double %i.bi, %i.bf            ; 2 uses
  %.sroa.0.1.i.i.5 = select i1 %i.bj, i64 6, i64 %.sroa.0.1.i.i.4
  %.sroa.7.1.i.i.5 = select i1 %i.bj, double %i.bi, double %.sroa.7.1.i.i.4
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i.1 ], [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.i.i.2 ], [ %.sroa.0.1.i.i.3, %.lr.ph.i.i.i.i.3 ], [ %.sroa.0.1.i.i.4, %.lr.ph.i.i.i.i.4 ], [ %.sroa.0.1.i.i.5, %.lr.ph.i.i.i.i.5 ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i.1 ], [ %.sroa.7.1.i.i.2, %.lr.ph.i.i.i.i.2 ], [ %.sroa.7.1.i.i.3, %.lr.ph.i.i.i.i.3 ], [ %.sroa.7.1.i.i.4, %.lr.ph.i.i.i.i.4 ], [ %.sroa.7.1.i.i.5, %.lr.ph.i.i.i.i.5 ]
  %i.bk = trunc nuw nsw i64 %.052170 to i32
  %i.bl = sub nsw i32 6, %i.bk                    ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.052170 ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.052170
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !27
  %i.bp = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.bp, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.052170 ; 8 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bm ; 8 uses
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !33
  %i.bt = load double, ptr %i.br, align 8, !tbaa !33
  store double %i.bt, ptr %i.bq, align 8, !tbaa !33
  store double %i.bs, ptr %i.br, align 8, !tbaa !33
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ab ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ab ; 2 uses
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !33
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !33
  store double %i.bx, ptr %i.bu, align 8, !tbaa !33
  store double %i.bw, ptr %i.bv, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 4  ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ca = load double, ptr %i.by, align 8, !tbaa !33
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !33
  store double %i.cb, ptr %i.by, align 8, !tbaa !33
  store double %i.ca, ptr %i.bz, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 24 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !33
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !33
  store double %i.cf, ptr %i.cc, align 8, !tbaa !33
  store double %i.ce, ptr %i.cd, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 5 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !33
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !33
  store double %i.cj, ptr %i.cg, align 8, !tbaa !33
  store double %i.ci, ptr %i.ch, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 40 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !33
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !33
  store double %i.cn, ptr %i.ck, align 8, !tbaa !33
  store double %i.cm, ptr %i.cl, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 48 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cq = load double, ptr %i.co, align 8, !tbaa !33
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !33
  store double %i.cr, ptr %i.co, align 8, !tbaa !33
  store double %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cs = load i32, ptr %2, align 4, !tbaa !27
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %2, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cu = sext i32 %i.bl to i64                   ; 10 uses
  %i.cv = sub nsw i64 7, %i.cu                    ; 4 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.cv ; 11 uses
  %i.cx = load double, ptr %i.ae, align 8, !tbaa !33, !noalias !676 ; 9 uses
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = and i64 %i.cy, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.da = lshr exact i64 %i.cy, 3
  %i.db = and i64 %i.da, 1
  %i.dc = call i64 @llvm.smin.i64(i64 %i.db, i64 %i.cu)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.dc, %bb.f ], [ %i.cu, %bb.e ] ; 10 uses
  %i.dd = sub nsw i64 %i.cu, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.de = sdiv i64 %i.dd, 2
  %i.df = shl nsw i64 %i.de, 1                    ; 2 uses
  %i.dg = add nsw i64 %i.df, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.dh = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.di = load double, ptr %i.cw, align 8, !tbaa !33
  %i.dj = fdiv double %i.di, %i.cx
  store double %i.dj, ptr %i.cw, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !33
  %i.dm = fdiv double %i.dl, %i.cx
  store double %i.dm, ptr %i.dk, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.0.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !33
  %i.dp = fdiv double %i.do, %i.cx
  store double %i.dp, ptr %i.dn, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !33
  %i.ds = fdiv double %i.dr, %i.cx
  store double %i.ds, ptr %i.dq, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !33
  %i.dv = fdiv double %i.du, %i.cx
  store double %i.dv, ptr %i.dt, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.4 = icmp eq i64 %.0.i.i.i.i.i.i.i, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i.4, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.i.5:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !33
  %i.dy = fdiv double %i.dx, %i.cx
  store double %i.dy, ptr %i.dw, align 8, !tbaa !33
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.5, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dz = icmp sgt i64 %i.dd, 1
  br i1 %i.dz, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ea = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ec = icmp slt i64 %i.dg, %i.cu
  br i1 %i.ec, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ed = add i64 %.0.i.i.i.i.i.i.i, %i.df
  %i.ee = sub i64 %i.cu, %i.ed                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ee, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ee, -2                      ; 3 uses
  %i.ef = add i64 %i.dg, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = getelementptr [8 x i8], ptr %i.cw, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.eh, align 8, !tbaa !33
  %i.ei = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ei, ptr %i.eh, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader177

.lr.ph.i17.i.i.i.i.i.i.preheader177:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dg, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader177, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader177 ] ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !33
  %i.em = fdiv double %i.el, %i.cx
  store double %i.em, ptr %i.ek, align 8, !tbaa !33
  %i.en = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.en, %i.cu
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !680

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ep = load <2 x double>, ptr %i.eo, align 16, !tbaa !17
  %i.eq = fdiv <2 x double> %i.ep, %i.eb
  store <2 x double> %i.eq, ptr %i.eo, align 16, !tbaa !17
  %i.er = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.es = icmp slt i64 %i.er, %i.dg
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !681

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.et = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.et, i64 %.052170, i64 %.0171
  %.pre = sext i32 %i.bl to i64                   ; 2 uses
  %.pre172 = sub nsw i64 7, %.pre
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %i.cv, %._crit_edge.i.i.i.i.i.i ], [ %i.cv, %middle.block ], [ %i.cv, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.cu, %._crit_edge.i.i.i.i.i.i ], [ %i.cu, %middle.block ], [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %middle.block ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.eu = load ptr, ptr %0, align 8, !tbaa !671, !noalias !682 ; 3 uses
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !193, !noalias !682 ; 8 uses
  %i.ew = mul nsw i64 %i.ev, %.052170
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.pre-phi173 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.052170 ; 2 uses
  %i.fa = mul nsw i64 %i.ev, %.pre-phi173         ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %.pre-phi173
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fa ; 2 uses
  store ptr %i.fd, ptr %7, align 8, !tbaa !685, !alias.scope !687
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !193, !alias.scope !687
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !193, !alias.scope !687
  store ptr %0, ptr %i.d, align 8, !tbaa !690, !alias.scope !687
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !193, !alias.scope !687
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !193, !alias.scope !687
  store i64 %i.ev, ptr %i.g, align 8, !tbaa !692, !alias.scope !687
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ey, ptr %3, align 8
  store i64 %.pre-phi, ptr %.sroa.484.0..sroa_idx, align 8
  store ptr %i.ex, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.888.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.989.0..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.1090.0..sroa_idx, align 8
  store i64 %i.ev, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.1292.0..sroa_idx, align 8
  store i64 %i.ev, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr %i.fb, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %.sroa.18.96..sroa_idx, align 8
  store ptr %i.ez, ptr %.sroa.19.96..sroa_idx, align 8
  store ptr %0, ptr %.sroa.21.96..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.22.96..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.24.96..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.26.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.27.96..sroa_idx, align 8
  store ptr %i.ey, ptr %i.i, align 8, !tbaa !695
  store i64 %i.ev, ptr %i.j, align 8, !tbaa !193
  store ptr %i.fb, ptr %i.k, align 8, !tbaa !697
  store i64 %i.ev, ptr %i.l, align 8, !tbaa !193
  store i64 1, ptr %i.m, align 8, !tbaa !699
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.fd, ptr %4, align 8, !tbaa !725
  store i64 %i.ev, ptr %i.n, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !727
  store ptr %3, ptr %i.o, align 8, !tbaa !729
  store ptr %6, ptr %i.p, align 8, !tbaa !580
  store ptr %7, ptr %i.q, align 8, !tbaa !731
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fe = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fe, 6
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !733
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !734, !nonnull !300, !align !587 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !685
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !193  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !300, !align !587 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !300, !align !587 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !725  ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !193  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !736, !noalias !737 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !740, !noalias !741 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !744, !noalias !741, !nonnull !300, !align !587
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !193, !noalias !741 ; 3 uses
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul i64 %i.s, %i.y
  %i.aa = shl i64 %i.j, 3
  %i.ab = add i64 %i.z, %i.j
  %i.ac = shl i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ad = mul i64 %i.x, %i.y
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep64 = getelementptr i8, ptr %i.af, i64 8
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.r, %scevgep63
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound065 = icmp ult ptr %i.r, %scevgep64
  %bound166 = icmp ult ptr %i.u, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %i.ag = or i64 %i.x, %i.s
  %i.ah = and i64 %i.ag, 1152921504606846976
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %found.conflict67, %i.ai
  %conflict.rdx = or i1 %found.conflict, %i.aj
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bh, %._crit_edge.i ] ; 3 uses
  %i.ak = mul nsw i64 %.0810.i, %i.s
  %i.al = getelementptr [8 x i8], ptr %i.r, i64 %i.ak ; 4 uses
  %i.am = mul nsw i64 %.0810.i, %i.x
  %i.an = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.am ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !33, !alias.scope !745
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !33, !alias.scope !748
  %wide.load70 = load <2 x double>, ptr %i.ar, align 8, !tbaa !33, !alias.scope !748
  %i.as = fmul <2 x double> %wide.load, %broadcast.splat
  %i.at = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.au = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.ap, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  %wide.load72 = load <2 x double>, ptr %i.au, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  %i.av = fsub <2 x double> %wide.load71, %i.as
  %i.aw = fsub <2 x double> %wide.load72, %i.at
  store <2 x double> %i.av, ptr %i.ap, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !753

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ay = getelementptr [8 x i8], ptr %i.al, i64 %.09.i.ph ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.ba = load double, ptr %i.az, align 8, !tbaa !33
  %i.bb = load double, ptr %i.an, align 8, !tbaa !33
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !33
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.ay, align 8, !tbaa !33
  %i.bf = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = icmp eq i64 %i.j, %.neg
  br i1 %i.bg, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bh = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !754

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bx, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %i.al, i64 %.09.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !33
  %i.bl = load double, ptr %i.an, align 8, !tbaa !33
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !33
  %i.bo = fsub double %i.bn, %i.bm
  store double %i.bo, ptr %i.bi, align 8, !tbaa !33
  %i.bp = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.al, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !33
  %i.bt = load double, ptr %i.an, align 8, !tbaa !33
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !33
  %i.bw = fsub double %i.bv, %i.bu
  store double %i.bw, ptr %i.bq, align 8, !tbaa !33
  %i.bx = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bx, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !755

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !193 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !193 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !756, !nonnull !300, !align !587
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !193
  %i.cg = and i64 %i.cf, 1
  %i.ch = icmp sgt i64 %i.cb, 0
  br i1 %i.ch, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ci = lshr exact i64 %i.d, 3
  %i.cj = and i64 %i.ci, 1
  %i.ck = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.bz)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cm = shl i64 %i.bz, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.gd, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.ck, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cn = shl i64 %.03451, 3                      ; 2 uses
  %i.co = sub i64 %i.bz, %.03550                  ; 3 uses
  %i.cp = and i64 %i.co, -2                       ; 2 uses
  %i.cq = add nsw i64 %i.cp, %.03550              ; 6 uses
  %i.cr = icmp sgt i64 %.03550, 0
  br i1 %i.cr, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !757, !nonnull !300, !align !587 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !740, !noalias !758
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !744, !noalias !758, !nonnull !300, !align !587
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !193, !noalias !758
  %i.cz = mul nsw i64 %i.cy, %.03451
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cz
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !736, !noalias !761
  %i.dc = load ptr, ptr %0, align 8, !tbaa !764, !nonnull !300, !align !587 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !725
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !193
  %i.dg = mul nsw i64 %i.df, %.03451
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %i.dg ; 2 uses
  %i.di = load double, ptr %i.db, align 8, !tbaa !33
  %i.dj = load double, ptr %i.da, align 8, !tbaa !33
  %i.dk = fmul double %i.di, %i.dj
  %i.dl = load double, ptr %i.dh, align 8, !tbaa !33
  %i.dm = fsub double %i.dl, %i.dk
  store double %i.dm, ptr %i.dh, align 8, !tbaa !33
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dn = icmp sgt i64 %i.co, 1
  br i1 %i.dn, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.do = icmp slt i64 %i.cq, %i.bz
  br i1 %i.do, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dp = load ptr, ptr %0, align 8, !tbaa !764, !nonnull !300, !align !587 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !725 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !193 ; 2 uses
  %i.dt = mul nsw i64 %i.ds, %.03451
  %i.du = getelementptr [8 x i8], ptr %i.dq, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.cl, align 8, !tbaa !757, !nonnull !300, !align !587 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !736, !noalias !765 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !740, !noalias !768 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !744, !noalias !768, !nonnull !300, !align !587
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !193, !noalias !768 ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %.03451
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ed ; 3 uses
  %i.ef = add i64 %.03550, %i.cp
  %i.eg = sub i64 %i.bz, %i.ef                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.eg, 10
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph49
  %i.eh = mul i64 %i.ds, %i.cn                    ; 2 uses
  %i.ei = shl i64 %i.co, 3
  %i.ej = and i64 %i.ei, -16                      ; 2 uses
  %i.ek = shl i64 %.03550, 3                      ; 2 uses
  %i.el = getelementptr i8, ptr %i.dq, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ej
  %scevgep74 = getelementptr i8, ptr %i.em, i64 %i.ek ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.dq, i64 %i.cm
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.eh ; 2 uses
  %i.en = getelementptr i8, ptr %i.dw, i64 %i.ej
  %scevgep77 = getelementptr i8, ptr %i.en, i64 %i.ek
  %scevgep78 = getelementptr i8, ptr %i.dw, i64 %i.cm
  %scevgep79 = getelementptr i8, ptr %i.dy, i64 8
  %i.eo = mul i64 %i.ec, %i.cn
  %scevgep80 = getelementptr i8, ptr %scevgep79, i64 %i.eo
  %bound081 = icmp ult ptr %scevgep74, %scevgep78
  %bound182 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %scevgep74, %scevgep80
  %bound185 = icmp ult ptr %i.ee, %scevgep76
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck73
  %n.vec91 = and i64 %i.eg, -4                    ; 3 uses
  %i.ep = add i64 %i.cq, %n.vec91
  %i.eq = load double, ptr %i.ee, align 8, !tbaa !33, !alias.scope !771
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.eq, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body92 ] ; 2 uses
  %i.er = add i64 %i.cq, %index93                 ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.du, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.er ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load94 = load <2 x double>, ptr %i.et, align 8, !tbaa !33, !alias.scope !774
  %wide.load95 = load <2 x double>, ptr %i.eu, align 8, !tbaa !33, !alias.scope !774
  %i.ev = fmul <2 x double> %wide.load94, %broadcast.splat97
  %i.ew = fmul <2 x double> %wide.load95, %broadcast.splat97
  %i.ex = getelementptr i8, ptr %i.es, i64 16     ; 2 uses
  %wide.load98 = load <2 x double>, ptr %i.es, align 8, !tbaa !33, !alias.scope !776, !noalias !778
  %wide.load99 = load <2 x double>, ptr %i.ex, align 8, !tbaa !33, !alias.scope !776, !noalias !778
  %i.ey = fsub <2 x double> %wide.load98, %i.ev
  %i.ez = fsub <2 x double> %wide.load99, %i.ew
  store <2 x double> %i.ey, ptr %i.es, align 8, !tbaa !33, !alias.scope !776, !noalias !778
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !33, !alias.scope !776, !noalias !778
  %index.next100 = add nuw i64 %index93, 4        ; 2 uses
  %i.fa = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.fa, label %middle.block101, label %vector.body92, !llvm.loop !779

middle.block101:                                  ; preds = %vector.body92
  %cmp.n102 = icmp eq i64 %i.eg, %n.vec91
  br i1 %cmp.n102, label %._crit_edge, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %vector.memcheck73, %.lr.ph49, %middle.block101
  %.048.ph = phi i64 [ %i.cq, %vector.memcheck73 ], [ %i.cq, %.lr.ph49 ], [ %i.ep, %middle.block101 ]
  br label %scalar.ph88

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fz, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !764, !nonnull !300, !align !587 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !725
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !193
  %i.ff = mul nsw i64 %i.fe, %.03451
  %i.fg = getelementptr [8 x i8], ptr %i.fc, i64 %i.ff
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %.03246 ; 2 uses
  %i.fi = load ptr, ptr %i.cl, align 8, !tbaa !757, !nonnull !300, !align !587 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 192
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 216
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !695
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.03246
  %i.fn = load <2 x double>, ptr %i.fm, align 1, !tbaa !17
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !697
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 224
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !193
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr [8 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !33
  %i.fu = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %i.fn, %i.fv
  %i.fx = load <2 x double>, ptr %i.fh, align 16, !tbaa !17
  %i.fy = fsub <2 x double> %i.fx, %i.fw
  store <2 x double> %i.fy, ptr %i.fh, align 16, !tbaa !17
  %i.fz = add nsw i64 %.03246, 2                  ; 2 uses
  %i.ga = icmp slt i64 %i.fz, %i.cq
  br i1 %i.ga, label %.lr.ph47, label %.preheader, !llvm.loop !780

._crit_edge:                                      ; preds = %scalar.ph88, %middle.block101, %.preheader
  %i.gb = add nsw i64 %.03550, %i.cg
  %i.gc = srem i64 %i.gb, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.gc)
  %i.gd = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.gd, %i.cb
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %bb.c, !llvm.loop !781

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %.048 = phi i64 [ %i.gl, %scalar.ph88 ], [ %.048.ph, %scalar.ph88.preheader ] ; 3 uses
  %i.ge = getelementptr [8 x i8], ptr %i.du, i64 %.048 ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.048
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !33
  %i.gh = load double, ptr %i.ee, align 8, !tbaa !33
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = load double, ptr %i.ge, align 8, !tbaa !33
  %i.gk = fsub double %i.gj, %i.gi
  store double %i.gk, ptr %i.ge, align 8, !tbaa !33
  %i.gl = add nsw i64 %.048, 1                    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.bz
  br i1 %i.gm, label %scalar.ph88, label %._crit_edge, !llvm.loop !782

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEKNS7_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_identity_opIdEES5_EEKNSH_INS0_18scalar_constant_opIdEEKS5_EEEEEEEENS0_9assign_opIddEELi0EEELi0ELi1EE3runERSX_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
.peel.next12:
  %i.a = load ptr, ptr %0, align 8, !tbaa !783, !nonnull !300, !align !587
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !785  ; 49 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !786, !nonnull !300, !align !587 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261  ; 49 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 49 uses
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %i.i = getelementptr i8, ptr %i.b, i64 16
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = getelementptr i8, ptr %i.b, i64 32
  %i.l = getelementptr i8, ptr %i.b, i64 40
  %i.m = getelementptr i8, ptr %i.b, i64 48
  %i.n = load double, ptr %i.g, align 8, !tbaa !169
  %i.o = load double, ptr %i.f, align 8, !tbaa !33
  %i.p = fadd double %i.o, %i.n
  store double %i.p, ptr %i.b, align 8, !tbaa !33
  %i.q = getelementptr i8, ptr %i.f, i64 8
  %i.r = load double, ptr %i.g, align 8, !tbaa !169
  %i.s = fmul double %i.r, 0.000000e+00
  %i.t = load double, ptr %i.q, align 8, !tbaa !33
  %i.u = fadd double %i.t, %i.s
  store double %i.u, ptr %i.h, align 8, !tbaa !33
  %i.v = getelementptr i8, ptr %i.f, i64 16
  %i.w = load double, ptr %i.g, align 8, !tbaa !169
  %i.x = fmul double %i.w, 0.000000e+00
  %i.y = load double, ptr %i.v, align 8, !tbaa !33
  %i.z = fadd double %i.y, %i.x
  store double %i.z, ptr %i.i, align 8, !tbaa !33
  %i.aa = getelementptr i8, ptr %i.f, i64 24
  %i.ab = load double, ptr %i.g, align 8, !tbaa !169
  %i.ac = fmul double %i.ab, 0.000000e+00
  %i.ad = load double, ptr %i.aa, align 8, !tbaa !33
  %i.ae = fadd double %i.ad, %i.ac
  store double %i.ae, ptr %i.j, align 8, !tbaa !33
  %i.af = getelementptr i8, ptr %i.f, i64 32
  %i.ag = load double, ptr %i.g, align 8, !tbaa !169
  %i.ah = fmul double %i.ag, 0.000000e+00
  %i.ai = load double, ptr %i.af, align 8, !tbaa !33
  %i.aj = fadd double %i.ai, %i.ah
  store double %i.aj, ptr %i.k, align 8, !tbaa !33
  %i.ak = getelementptr i8, ptr %i.f, i64 40
  %i.al = load double, ptr %i.g, align 8, !tbaa !169
  %i.am = fmul double %i.al, 0.000000e+00
  %i.an = load double, ptr %i.ak, align 8, !tbaa !33
  %i.ao = fadd double %i.an, %i.am
  store double %i.ao, ptr %i.l, align 8, !tbaa !33
  %i.ap = getelementptr i8, ptr %i.f, i64 48
  %i.aq = load double, ptr %i.g, align 8, !tbaa !169
  %i.ar = fmul double %i.aq, 0.000000e+00
  %i.as = load double, ptr %i.ap, align 8, !tbaa !33
  %i.at = fadd double %i.as, %i.ar
  store double %i.at, ptr %i.m, align 8, !tbaa !33
  %i.au = getelementptr i8, ptr %i.b, i64 56
  %i.av = getelementptr i8, ptr %i.f, i64 56
  %i.aw = load double, ptr %i.g, align 8, !tbaa !169
  %i.ax = fmul double %i.aw, 0.000000e+00
  %i.ay = load double, ptr %i.av, align 8, !tbaa !33
  %i.az = fadd double %i.ay, %i.ax
  store double %i.az, ptr %i.au, align 8, !tbaa !33
  %i.ba = getelementptr i8, ptr %i.b, i64 64
  %i.bb = getelementptr i8, ptr %i.f, i64 64
  %i.bc = load double, ptr %i.g, align 8, !tbaa !169
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !33
  %i.be = fadd double %i.bd, %i.bc
  store double %i.be, ptr %i.ba, align 8, !tbaa !33
  %i.bf = getelementptr i8, ptr %i.b, i64 72
  %i.bg = getelementptr i8, ptr %i.f, i64 72
  %i.bh = load double, ptr %i.g, align 8, !tbaa !169
  %i.bi = fmul double %i.bh, 0.000000e+00
  %i.bj = load double, ptr %i.bg, align 8, !tbaa !33
  %i.bk = fadd double %i.bj, %i.bi
  store double %i.bk, ptr %i.bf, align 8, !tbaa !33
  %i.bl = getelementptr i8, ptr %i.b, i64 80
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEKNS7_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_identity_opIdEES5_EEKNSH_INS0_18scalar_constant_opIdEEKS5_EEEEEEEENS0_9assign_opIddEELi0EEELi0ELi1EE3runERSX_:.peel.next12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.1847", align 8 ; 19 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.1863", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1871", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Block.1779", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit
  %.03254 = phi i64 [ 0, %bb.a ], [ %i.p, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 15 uses
  %i.m = add nsw i64 %.03254, -1                  ; 2 uses
  %i.n = add nsw i64 %.03254, -2
  %i.o = sub nuw nsw i64 6, %.03254               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.p = add nuw nsw i64 %.03254, 1               ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %.03254, 56       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !787
  store i64 %i.o, ptr %i.a, align 8, !tbaa !193
  store ptr %0, ptr %i.b, align 8, !tbaa !272
  store i64 %i.p, ptr %i.c, align 8, !tbaa !193
  store i64 %.03254, ptr %i.d, align 8, !tbaa !193
  store i64 7, ptr %i.e, align 8, !tbaa !789
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.03254 ; 9 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !33 ; 2 uses
  %.not55 = icmp eq i64 %.03254, 0
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.w = fmul double %i.v, %i.v                   ; 3 uses
  %.not52 = icmp eq i64 %.03254, 1
  br i1 %.not52, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.n, 3
  br i1 %i.x, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01725.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i.i.i ] ; 5 uses
  %.02324.i.i.i.i = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i, 56
  %i.y = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !33 ; 2 uses
  %i.aa = fmul double %i.z, %i.z
  %i.ab = fadd double %.02324.i.i.i.i, %i.aa
  %i.ac = mul i64 %.01725.i.i.i.i, 56
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 56
  %i.af = load double, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %i.ag = fmul double %i.af, %i.af
  %i.ah = fadd double %i.ab, %i.ag
  %i.ai = mul i64 %.01725.i.i.i.i, 56
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 112
  %i.al = load double, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = fadd double %i.ah, %i.am
  %i.ao = mul i64 %.01725.i.i.i.i, 56
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 168
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = fadd double %i.an, %i.as                ; 3 uses
  %i.au = add nuw nsw i64 %.01725.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !792

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.01725.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.epil.init = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.01725.i.i.i.i.epil = phi i64 [ %i.az, %.lr.ph.i.i.i.i.epil ], [ %.01725.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.epil = phi double [ %i.ay, %.lr.ph.i.i.i.i.epil ], [ %.02324.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.epil, 56
  %i.av = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.aw = load double, ptr %i.av, align 8, !tbaa !33 ; 2 uses
  %i.ax = fmul double %i.aw, %i.aw
  %i.ay = fadd double %.02324.i.i.i.i.epil, %i.ax ; 2 uses
  %i.az = add nuw nsw i64 %.01725.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !793

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.c
  %.0.i.i = phi double [ %i.w, %bb.c ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.i.i.i.i.epil ]
  %i.ba = fsub double %i.u, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi double [ %i.ba, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.u, %bb.b ] ; 2 uses
  %i.bb = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.bb, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bc = call double @sqrt(double noundef %.0) #26 ; 6 uses
  store double %i.bc, ptr %i.t, align 8, !tbaa !33
  switch i64 %.03254, label %.thread [
    i64 6, label %.loopexit.sink.split
    i64 0, label %bb.f
  ]

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.q, ptr %1, align 8
  store i64 %i.o, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 %.03254, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %i.p, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 7, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %i.s, ptr %i.f, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  store ptr %i.q, ptr %i.g, align 8, !tbaa !794
  store ptr %i.s, ptr %i.h, align 8, !tbaa !796
  store i64 %.03254, ptr %i.i, align 8, !tbaa !798
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.r, ptr %2, align 8, !tbaa !818
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !820
  store ptr %1, ptr %i.j, align 8, !tbaa !822
  store ptr %4, ptr %i.k, align 8, !tbaa !580
  store ptr %5, ptr %i.l, align 8, !tbaa !824
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre = load ptr, ptr %5, align 8, !tbaa !787
  %.pre57 = load i64, ptr %i.a, align 8, !tbaa !193
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.bd = phi i64 [ 6, %bb.e ], [ %.pre57, %.thread ] ; 6 uses
  %i.be = phi ptr [ %i.r, %bb.e ], [ %.pre, %.thread ] ; 6 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = and i64 %i.bf, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bh = lshr exact i64 %i.bf, 3
  %i.bi = and i64 %i.bh, 1
  %i.bj = call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.bd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.g ], [ %i.bd, %bb.f ] ; 9 uses
  %i.bk = sub nsw i64 %i.bd, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.bl = sdiv i64 %i.bk, 2
  %i.bm = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = add nsw i64 %i.bm, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check66 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader79, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec68 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert69 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat70 = shufflevector <2 x double> %broadcast.splatinsert69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph67
  %index72 = phi i64 [ 0, %vector.ph67 ], [ %index.next74, %vector.body71 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index72 ; 2 uses
  %wide.load73 = load <2 x double>, ptr %i.bp, align 8, !tbaa !33
  %i.bq = fdiv <2 x double> %wide.load73, %broadcast.splat70
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !33
  %index.next74 = add nuw i64 %index72, 2         ; 2 uses
  %i.br = icmp eq i64 %index.next74, %n.vec68
  br i1 %i.br, label %middle.block75, label %vector.body71, !llvm.loop !826

middle.block75:                                   ; preds = %vector.body71
  %cmp.n76 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec68
  br i1 %cmp.n76, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader79

.lr.ph.i.i.i.i.i.i.i.preheader79:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block75
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec68, %middle.block75 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader79, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader79 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !33
  %i.bu = fdiv double %i.bt, %i.bc
  store double %i.bu, ptr %i.bs, align 8, !tbaa !33
  %i.bv = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !827

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block75, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.bw = icmp sgt i64 %i.bk, 1
  br i1 %i.bw, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bx = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bz = icmp slt i64 %i.bn, %i.bd
  br i1 %i.bz, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ca = add i64 %.0.i.i.i.i.i.i.i, %i.bm
  %i.cb = sub i64 %i.bd, %i.ca                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, -2                      ; 3 uses
  %i.cc = add i64 %i.bn, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = getelementptr [8 x i8], ptr %i.be, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !33
  %i.cf = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.cf, ptr %i.ce, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !828

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader78

.lr.ph.i17.i.i.i.i.i.i.preheader78:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader78, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !33
  %i.cj = fdiv double %i.ci, %i.bc
  store double %i.cj, ptr %i.ch, align 8, !tbaa !33
  %i.ck = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ck, %i.bd
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !829

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !17
  %i.cn = fdiv <2 x double> %i.cm, %i.by
  store <2 x double> %i.cn, ptr %i.cl, align 16, !tbaa !17
  %i.co = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.bn
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !830

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %exitcond.not = icmp eq i64 %i.p, 7
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %spec.select.ph = phi i64 [ %.03254, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit, %.loopexit.sink.split
  %spec.select = phi i64 [ %spec.select.ph, %.loopexit.sink.split ], [ -1, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit ]
  ret i64 %spec.select
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !831, !nonnull !300, !align !587 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !193  ; 10 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !787
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 3
  %i.i = and i64 %i.h, 1
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 14 uses
  %i.k = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = shl nsw i64 %i.l, 1                      ; 2 uses
  %i.n = add nsw i64 %i.m, %.0.i                  ; 7 uses
  %i.o = icmp sgt i64 %.0.i, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !833, !nonnull !300, !align !587
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !818  ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !834, !nonnull !300, !align !587 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !835, !noalias !836 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !839, !noalias !840 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !193, !noalias !840 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.z = icmp sgt i64 %i.x, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.x, -2
  %xtraiter99 = and i64 %i.aa, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  %unroll_iter = and i64 %i.aa, -4
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %lcmp.mod102 = icmp ne i64 %xtraiter99, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 10
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader
  %i.ad = shl i64 %.0.i, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep57 = getelementptr i8, ptr %i.v, i64 8
  %bound0 = icmp ult ptr %i.q, %scevgep56
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound058 = icmp ult ptr %i.q, %scevgep57
  %bound159 = icmp ult ptr %i.v, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx = or i1 %found.conflict, %found.conflict60
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 3 uses
  %i.ae = load double, ptr %i.v, align 8, !tbaa !33, !alias.scope !843
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !33, !alias.scope !846
  %wide.load61 = load <2 x double>, ptr %i.ag, align 8, !tbaa !33, !alias.scope !846
  %i.ah = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ai = fmul <2 x double> %wide.load61, %broadcast.splat
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %wide.load62 = load <2 x double>, ptr %i.aj, align 8, !tbaa !33, !alias.scope !848, !noalias !850
  %wide.load63 = load <2 x double>, ptr %i.ak, align 8, !tbaa !33, !alias.scope !848, !noalias !850
  %i.al = fsub <2 x double> %wide.load62, %i.ah
  %i.am = fsub <2 x double> %wide.load63, %i.ai
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !33, !alias.scope !848, !noalias !850
  store <2 x double> %i.am, ptr %i.ak, align 8, !tbaa !33, !alias.scope !848, !noalias !850
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i.ph
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !33
  %i.aq = load double, ptr %i.v, align 8, !tbaa !33
  %i.ar = fmul double %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.ph ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !33
  %i.au = fsub double %i.at, %i.ar
  store double %i.au, ptr %i.as, align 8, !tbaa !33
  %i.av = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97 ], [ %i.av, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.aw = icmp eq i64 %.0.i, %.neg
  br i1 %i.aw, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.cn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.us6.i ; 6 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !33
  %i.az = load double, ptr %i.v, align 8, !tbaa !33
  %i.ba = fmul double %i.ay, %i.az                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 5 uses
  %.02324.i.i.i.i.i.us.i = phi double [ %i.cb, %.lr.ph.i.i.i.i.i.us.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.us.i, 56 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !33
  %i.bd = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !33
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = fadd double %.02324.i.i.i.i.i.us.i, %i.bf
  %i.bh = mul i64 %.01725.i.i.i.i.i.us.i, 56
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = add i64 %i.bh, 56 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !33
  %i.bk = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !33
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = fadd double %i.bg, %i.bm
  %i.bo = mul i64 %.01725.i.i.i.i.i.us.i, 56
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = add i64 %i.bo, 112 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !33
  %i.br = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bs = load double, ptr %i.br, align 8, !tbaa !33
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = fadd double %i.bn, %i.bt
  %i.bv = mul i64 %.01725.i.i.i.i.i.us.i, 56
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = add i64 %i.bv, 168 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !33
  %i.by = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.bz = load double, ptr %i.by, align 8, !tbaa !33
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = fadd double %i.bu, %i.ca                ; 3 uses
  %i.cc = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !852

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod100.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi double [ %i.ba, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i.epil = phi double [ %i.ci, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.us.i.epil, 56 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !33
  %i.cf = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !33
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = fadd double %.02324.i.i.i.i.i.us.i.epil, %i.ch ; 2 uses
  %i.cj = add nuw nsw i64 %.01725.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter99
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil, !llvm.loop !853

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa96 = phi double [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.ci, %.lr.ph.i.i.i.i.i.us.i.epil ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.us6.i ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !33
  %i.cm = fsub double %i.cl, %.lcssa96
  store double %i.cm, ptr %i.ck, align 8, !tbaa !33
  %i.cn = add nuw nsw i64 %.05.us6.i, 1           ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.cn, %.0.i
  br i1 %exitcond11.not.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.i.i.i.i.i.preheader.us.i, !llvm.loop !854

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i
  %.05.i = phi i64 [ %i.dd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i ], [ %.05.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !33
  %i.cq = load double, ptr %i.v, align 8, !tbaa !33
  %i.cr = fmul double %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !33
  %i.cu = fsub double %i.ct, %i.cr
  store double %i.cu, ptr %i.cs, align 8, !tbaa !33
  %i.cv = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !33
  %i.cy = load double, ptr %i.v, align 8, !tbaa !33
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cv ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !33
  %i.dc = fsub double %i.db, %i.cz
  store double %i.dc, ptr %i.da, align 8, !tbaa !33
  %i.dd = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dd, %.0.i
  br i1 %exitcond.not.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, !llvm.loop !855

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.lr.ph.i
  %i.de = icmp sgt i64 %i.k, 1
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.dg = icmp slt i64 %i.n, %i.d
  br i1 %i.dg, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.dh = load ptr, ptr %0, align 8, !tbaa !833, !nonnull !300, !align !587
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !818 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !834, !nonnull !300, !align !587 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !835, !noalias !856 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !839, !noalias !859 ; 12 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !193, !noalias !859 ; 4 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.split.i18

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.dr = icmp sgt i64 %i.dp, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.preheader.us.i22.preheader:      ; preds = %.lr.ph.split.i18
  %i.ds = add nsw i64 %i.dp, -1                   ; 2 uses
  %i.dt = add nsw i64 %i.dp, -2
  %xtraiter112 = and i64 %i.ds, 3                 ; 3 uses
  %i.du = icmp ult i64 %i.dt, 3
  %unroll_iter117 = and i64 %i.ds, -4
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i22

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.dv = add i64 %.0.i, %i.m
  %i.dw = sub i64 %i.d, %i.dv                     ; 3 uses
  %min.iters.check78 = icmp ult i64 %i.dw, 14
  br i1 %min.iters.check78, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93, label %vector.memcheck64

vector.memcheck64:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader
  %i.dx = shl i64 %i.l, 4
  %i.dy = shl i64 %.0.i, 3
  %i.dz = add i64 %i.dx, %i.dy                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.di, i64 %i.dz ; 2 uses
  %i.ea = shl i64 %i.d, 3                         ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.di, i64 %i.ea ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.dl, i64 %i.dz
  %scevgep68 = getelementptr i8, ptr %i.dl, i64 %i.ea
  %scevgep69 = getelementptr i8, ptr %i.dn, i64 8
  %bound070 = icmp ult ptr %scevgep65, %scevgep68
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  %bound073 = icmp ult ptr %scevgep65, %scevgep69
  %bound174 = icmp ult ptr %i.dn, %scevgep66
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %found.conflict72, %found.conflict75
  br i1 %conflict.rdx76, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck64
  %n.vec80 = and i64 %i.dw, -4                    ; 3 uses
  %i.eb = add i64 %i.n, %n.vec80
  %i.ec = load double, ptr %i.dn, align 8, !tbaa !33, !alias.scope !862
  %broadcast.splatinsert85 = insertelement <2 x double> poison, double %i.ec, i64 0
  %broadcast.splat86 = shufflevector <2 x double> %broadcast.splatinsert85, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next89, %vector.body81 ] ; 2 uses
  %i.ed = add i64 %i.n, %index82                  ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load83 = load <2 x double>, ptr %i.ee, align 8, !tbaa !33, !alias.scope !865
  %wide.load84 = load <2 x double>, ptr %i.ef, align 8, !tbaa !33, !alias.scope !865
  %i.eg = fmul <2 x double> %wide.load83, %broadcast.splat86
  %i.eh = fmul <2 x double> %wide.load84, %broadcast.splat86
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ed ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %wide.load87 = load <2 x double>, ptr %i.ei, align 8, !tbaa !33, !alias.scope !867, !noalias !869
  %wide.load88 = load <2 x double>, ptr %i.ej, align 8, !tbaa !33, !alias.scope !867, !noalias !869
  %i.ek = fsub <2 x double> %wide.load87, %i.eg
  %i.el = fsub <2 x double> %wide.load88, %i.eh
  store <2 x double> %i.ek, ptr %i.ei, align 8, !tbaa !33, !alias.scope !867, !noalias !869
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !33, !alias.scope !867, !noalias !869
  %index.next89 = add nuw i64 %index82, 4         ; 2 uses
  %i.em = icmp eq i64 %index.next89, %n.vec80
  br i1 %i.em, label %middle.block90, label %vector.body81, !llvm.loop !870

middle.block90:                                   ; preds = %vector.body81
  %cmp.n91 = icmp eq i64 %i.dw, %n.vec80
  br i1 %cmp.n91, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93: ; preds = %vector.memcheck64, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader, %middle.block90
  %.05.i20.ph = phi i64 [ %i.n, %vector.memcheck64 ], [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader ], [ %i.eb, %middle.block90 ] ; 6 uses
  %i.en = sub i64 %i.d, %.05.i20.ph
  %.neg119 = add i64 %.05.i20.ph, 1
  %xtraiter110 = and i64 %i.en, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20.ph
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !33
  %i.eq = load double, ptr %i.dn, align 8, !tbaa !33
  %i.er = fmul double %i.ep, %i.eq
  %i.es = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.i20.ph ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !33
  %i.eu = fsub double %i.et, %i.er
  store double %i.eu, ptr %i.es, align 8, !tbaa !33
  %i.ev = add nsw i64 %.05.i20.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93
  %.05.i20.unr = phi i64 [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader93 ], [ %i.ev, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol ]
  %i.ew = icmp eq i64 %i.d, %.neg119
  br i1 %i.ew, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19

.lr.ph.i.i.i.i.i.preheader.us.i22:                ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29
  %.05.us6.i23 = phi i64 [ %i.gn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29 ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.us6.i23 ; 6 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !33
  %i.ez = load double, ptr %i.dn, align 8, !tbaa !33
  %i.fa = fmul double %i.ey, %i.ez                ; 2 uses
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i24

.lr.ph.i.i.i.i.i.us.i24:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22, %.lr.ph.i.i.i.i.i.us.i24
  %.01725.i.i.i.i.i.us.i25 = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i.us.i24 ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ] ; 5 uses
  %.02324.i.i.i.i.i.us.i26 = phi double [ %i.gb, %.lr.ph.i.i.i.i.i.us.i24 ], [ %i.fa, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %niter118 = phi i64 [ %niter118.next.3, %.lr.ph.i.i.i.i.i.us.i24 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27 = mul i64 %.01725.i.i.i.i.i.us.i25, 56 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !33
  %i.fd = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !33
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = fadd double %.02324.i.i.i.i.i.us.i26, %i.ff
  %i.fh = mul i64 %.01725.i.i.i.i.i.us.i25, 56
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.1 = add i64 %i.fh, 56 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !33
  %i.fk = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !33
  %i.fm = fmul double %i.fj, %i.fl
  %i.fn = fadd double %i.fg, %i.fm
  %i.fo = mul i64 %.01725.i.i.i.i.i.us.i25, 56
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.fo, 112 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !33
  %i.fr = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !33
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = fadd double %i.fn, %i.ft
  %i.fv = mul i64 %.01725.i.i.i.i.i.us.i25, 56
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.fv, 168 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !33
  %i.fy = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !33
  %i.ga = fmul double %i.fx, %i.fz
  %i.gb = fadd double %i.fu, %i.ga                ; 3 uses
  %i.gc = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !852

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod114.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fa, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gi, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter113 = phi i64 [ %epil.iter113.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.us.i25.epil, 56 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !33
  %i.gf = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !33
  %i.gh = fmul double %i.ge, %i.gg
  %i.gi = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.gh ; 2 uses
  %i.gj = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !871

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gi, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.us6.i23 ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !33
  %i.gm = fsub double %i.gl, %.lcssa
  store double %i.gm, ptr %i.gk, align 8, !tbaa !33
  %i.gn = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gn, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !854

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 4 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20
  %i.gp = load double, ptr %i.go, align 8, !tbaa !33
  %i.gq = load double, ptr %i.dn, align 8, !tbaa !33
  %i.gr = fmul double %i.gp, %i.gq
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.i20 ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !33
  %i.gu = fsub double %i.gt, %i.gr
  store double %i.gu, ptr %i.gs, align 8, !tbaa !33
  %i.gv = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !33
  %i.gy = load double, ptr %i.dn, align 8, !tbaa !33
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.gv ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !33
  %i.hc = fsub double %i.hb, %i.gz
  store double %i.hc, ptr %i.ha, align 8, !tbaa !33
  %i.hd = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.hd, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !872

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block90, %._crit_edge, %.lr.ph.i17
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.036 = phi i64 [ %.0.i, %.lr.ph ], [ %i.ir, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.he = load ptr, ptr %0, align 8, !tbaa !833, !nonnull !300, !align !587
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !818
  %i.hg = load ptr, ptr %i.df, align 8, !tbaa !834, !nonnull !300, !align !587 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 144
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !798 ; 5 uses
  %i.hj = icmp sgt i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

end_hunk_2
