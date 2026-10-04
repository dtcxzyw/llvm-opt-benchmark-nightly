Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/quadprog?download=true
inline.NumInlined: 4879
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 86
begin_hunk_0_@"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_5clERS3_SB_RNS2_IiLin1ELi1ELi0ELin1ELi1EEES9_iRii":bb.a
  %i.ba = load double, ptr %i.az, align 8, !tbaa !34
  store double %i.ba, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bb
  %i.be = load double, ptr %i.bd, align 8, !tbaa !34
  store double %i.be, ptr %i.bc, align 8, !tbaa !34
  %i.bf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !34
  store double %i.bi, ptr %i.bg, align 8, !tbaa !34
  %i.bj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !34
  store double %i.bm, ptr %i.bk, align 8, !tbaa !34
  %i.bn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bn, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !312

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block91, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = icmp sgt i64 %i.ah, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = icmp slt i64 %i.ak, %i.x
  br i1 %i.bp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.aj
  %i.br = sub i64 %i.x, %i.bq                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.br, 6
  %i.bs = shl i64 %i.x, 3
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond118 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond118, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.br, -4                      ; 3 uses
  %i.bt = add i64 %i.ak, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = add i64 %i.ak, %index                   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bu ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x double>, ptr %i.bw, align 8, !tbaa !34
  %wide.load79 = load <2 x double>, ptr %i.bx, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %wide.load, ptr %i.bv, align 8, !tbaa !34
  store <2 x double> %wide.load79, ptr %i.by, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120:    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ak, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ] ; 4 uses
  %i.ca = sub i64 %i.x, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter124 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120 ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120 ]
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !34
  store double %i.cd, ptr %i.cb, align 8, !tbaa !34
  %i.ce = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !314

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120 ], [ %i.ce, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cf = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.x
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !34
  store double %i.cj, ptr %i.ch, align 8, !tbaa !34
  %i.ck = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ck
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ck
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !34
  store double %i.cn, ptr %i.cl, align 8, !tbaa !34
  %i.co = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.co
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !34
  store double %i.cr, ptr %i.cp, align 8, !tbaa !34
  %i.cs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cs
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !34
  store double %i.cv, ptr %i.ct, align 8, !tbaa !34
  %i.cw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cw, %i.x
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !315

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = load <2 x double>, ptr %i.cy, align 1, !tbaa !39
  store <2 x double> %i.cz, ptr %i.cx, align 16, !tbaa !39
  %i.da = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.db = icmp slt i64 %i.da, %i.ak
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !316

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = load i32, ptr %5, align 4, !tbaa !40    ; 2 uses
  %i.dd = add nsw i32 %i.dc, -1
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp slt i64 %indvars.iv.next37, %i.de
  br i1 %i.df, label %.lr.ph16, label %._crit_edge17, !llvm.loop !317

._crit_edge17:                                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, %._crit_edge.._crit_edge17_crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.._crit_edge17_crit_edge ], [ %i.de, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit ]
  %.lcssa10 = phi i32 [ %i.d, %._crit_edge.._crit_edge17_crit_edge ], [ %i.dc, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit ]
  %i.dg = sext i32 %.lcssa10 to i64
  %i.dh = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !40
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %.pre-phi
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !40
  %i.dl = load i32, ptr %5, align 4, !tbaa !40
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !34
  %i.dq = getelementptr i8, ptr %i.do, i64 -8
  store double %i.dp, ptr %i.dq, align 8, !tbaa !34
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dm
  store i32 0, ptr %i.dr, align 4, !tbaa !40
  %i.ds = load i32, ptr %5, align 4, !tbaa !40    ; 4 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dt
  store double 0.000000e+00, ptr %i.du, align 8, !tbaa !34
  %i.dv = icmp sgt i32 %i.ds, 0
  %i.dw = add nsw i32 %i.ds, -1                   ; 7 uses
  br i1 %i.dv, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %._crit_edge17
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = load ptr, ptr %0, align 8, !tbaa !22
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ea = mul nsw i64 %i.dz, %i.dx
  %invariant.gep = getelementptr [8 x i8], ptr %i.dy, i64 %i.ea
  %i.eb = zext nneg i32 %i.ds to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %invariant.gep, i8 0, i64 %i.ec, i1 false), !tbaa !34
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge17, %.lr.ph22
  store i32 %i.dw, ptr %5, align 4, !tbaa !40
  %i.ed = icmp ne i32 %i.dw, 0
  %i.ee = icmp slt i32 %.0130, %i.dw
  %or.cond = and i1 %i.ed, %i.ee
  br i1 %or.cond, label %.lr.ph30, label %.loopexit9

.lr.ph30:                                         ; preds = %._crit_edge23
  %i.ef = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !18  ; 4 uses
  %i.eh = icmp sgt i32 %i.c, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = sext i32 %.0130 to i64                  ; 4 uses
  %i.ek = sext i32 %i.dw to i64                   ; 2 uses
  %wide.trip.count = and i64 %i.b, 2147483647     ; 4 uses
  %i.el = shl nsw i64 %i.ej, 3                    ; 2 uses
  %i.em = shl nuw nsw i64 %wide.trip.count, 3
  %i.en = add nsw i64 %i.el, 8
  %i.eo = shl nsw i64 %i.ej, 4
  %i.ep = getelementptr i8, ptr %i.ef, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %ident.check.not = icmp eq i64 %i.eg, 1
  %i.er = load ptr, ptr %1, align 8               ; 5 uses
  %i.es = load i64, ptr %i.ei, align 8            ; 4 uses
  %min.iters.check100 = icmp samesign ult i64 %wide.trip.count, 2
  %scevgep95 = getelementptr i8, ptr %i.er, i64 %i.em ; 2 uses
  %n.vec102 = and i64 %i.b, 2147483646            ; 3 uses
  %cmp.n113 = icmp eq i64 %wide.trip.count, %n.vec102
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph30, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph30 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %indvars.iv53 = phi i64 [ %i.ej, %.lr.ph30 ], [ %indvars.iv.next54, %.loopexit ] ; 4 uses
  %indvars.iv42.in = phi i64 [ %i.ej, %.lr.ph30 ], [ %indvars.iv42, %.loopexit ]
  %i.et = shl nuw nsw i64 %indvar, 4
  %scevgep116 = getelementptr i8, ptr %i.eq, i64 %i.et
  %i.eu = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.ev = add i64 %i.el, %i.eu
  %i.ew = add i64 %i.en, %i.eu
  %indvars.iv42 = add nsw i64 %indvars.iv42.in, 1 ; 3 uses
  %i.ex = mul nsw i64 %i.eg, %indvars.iv53        ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %i.ef, i64 %indvars.iv53 ; 3 uses
  %i.ez = getelementptr [8 x i8], ptr %i.ey, i64 %i.ex ; 2 uses
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 5 uses
  %i.fa = getelementptr [8 x i8], ptr %i.ef, i64 %indvars.iv.next54 ; 3 uses
  %i.fb = getelementptr [8 x i8], ptr %i.fa, i64 %i.ex
  %i.fc = load <2 x double>, ptr %i.ez, align 8, !tbaa !34 ; 2 uses
  %i.fd = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fc) ; 2 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 1 ; 5 uses
  %i.ff = extractelement <2 x double> %i.fd, i64 0 ; 6 uses
  %i.fg = fcmp ogt double %i.ff, %i.fe
  br i1 %i.fg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fh = fdiv double %i.fe, %i.ff                ; 2 uses
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fh, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.fi)
  %i.fj = fmul double %i.ff, %sqrt.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.g:                                             ; preds = %bb.e
  %i.fk = fcmp ogt double %i.fe, %i.ff
  br i1 %i.fk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fl = fdiv double %i.ff, %i.fe                ; 2 uses
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double 1.000000e+00)
  %sqrt1.i = tail call double @llvm.sqrt.f64(double %i.fm)
  %i.fn = fmul double %i.fe, %sqrt1.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.i:                                             ; preds = %bb.g
  %i.fo = fmul double %i.ff, f0x3FF6A09E667F3BCD
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit": ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi double [ %i.fj, %bb.f ], [ %i.fn, %bb.h ], [ %i.fo, %bb.i ] ; 4 uses
  %i.fp = fcmp oeq double %.0.i, 0.000000e+00
  br i1 %i.fp, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  %i.fq = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = fdiv <2 x double> %i.fc, %i.fr          ; 2 uses
  store double 0.000000e+00, ptr %i.fb, align 8, !tbaa !34
  %i.ft = extractelement <2 x double> %i.fs, i64 0 ; 3 uses
  %i.fu = fcmp olt double %i.ft, 0.000000e+00     ; 3 uses
  %i.fv = fneg double %.0.i
  %i.fw = fneg double %i.ft
  %i.fx = extractelement <2 x double> %i.fs, i64 1 ; 2 uses
  %i.fy = fneg double %i.fx
  %.0.i.sink = select i1 %i.fu, double %i.fv, double %.0.i
  %.0129 = select i1 %i.fu, double %i.fw, double %i.ft ; 5 uses
  %.0 = select i1 %i.fu, double %i.fy, double %i.fx ; 5 uses
  store double %.0.i.sink, ptr %i.ez, align 8, !tbaa !34
  %i.fz = fadd double %.0129, 1.000000e+00
  %i.ga = fdiv double %.0, %i.fz                  ; 4 uses
  %i.gb = icmp slt i64 %indvars.iv.next54, %i.ek
  br i1 %i.gb, label %.lr.ph26.lver.check, label %.preheader

.lr.ph26.lver.check:                              ; preds = %bb.j
  br i1 %ident.check.not, label %.lr.ph26.ph, label %.lr.ph26.lver.orig

.lr.ph26.lver.orig:                               ; preds = %.lr.ph26.lver.check, %.lr.ph26.lver.orig
  %indvars.iv44.lver.orig = phi i64 [ %indvars.iv.next45.lver.orig, %.lr.ph26.lver.orig ], [ %indvars.iv42, %.lr.ph26.lver.check ] ; 2 uses
  %i.gc = mul nsw i64 %i.eg, %indvars.iv44.lver.orig ; 2 uses
  %i.gd = getelementptr [8 x i8], ptr %i.ey, i64 %i.gc ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !34 ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.fa, i64 %i.gc ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !34 ; 2 uses
  %i.gh = fmul double %.0, %i.gg
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.ge, double %.0129, double %i.gh) ; 2 uses
  store double %i.gi, ptr %i.gd, align 8, !tbaa !34
  %i.gj = fadd double %i.ge, %i.gi
  %i.gk = fneg double %i.gg
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.gj, double %i.gk)
  store double %i.gl, ptr %i.gf, align 8, !tbaa !34
  %indvars.iv.next45.lver.orig = add nsw i64 %indvars.iv44.lver.orig, 1 ; 2 uses
  %lftr.wideiv47.lver.orig = trunc i64 %indvars.iv.next45.lver.orig to i32
  %exitcond48.not.lver.orig = icmp eq i32 %i.dw, %lftr.wideiv47.lver.orig
  br i1 %exitcond48.not.lver.orig, label %.preheader, label %.lr.ph26.lver.orig, !llvm.loop !318

.lr.ph26.ph:                                      ; preds = %.lr.ph26.lver.check
  %load_initial = load double, ptr %scevgep116, align 8
  br label %.lr.ph26

.preheader:                                       ; preds = %.lr.ph26.lver.orig, %.lr.ph26, %bb.j
  br i1 %i.eh, label %.lr.ph28, label %.loopexit

.lr.ph28:                                         ; preds = %.preheader
  %i.gm = mul nsw i64 %i.es, %indvars.iv53        ; 2 uses
  %i.gn = mul nsw i64 %i.es, %indvars.iv.next54   ; 2 uses
  br i1 %min.iters.check100, label %scalar.ph99.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph28
  %i.go = mul i64 %i.es, %i.ev                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.er, i64 %i.go
  %scevgep96 = getelementptr i8, ptr %scevgep95, i64 %i.go
  %i.gp = mul i64 %i.es, %i.ew                    ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.er, i64 %i.gp
  %scevgep98 = getelementptr i8, ptr %scevgep95, i64 %i.gp
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph99.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck94
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %.0129, i64 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.ga, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph101
  %index108 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body107 ] ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %i.er, i64 %index108 ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %i.gq, i64 %i.gm ; 2 uses
  %wide.load109 = load <2 x double>, ptr %i.gr, align 8, !tbaa !34, !alias.scope !326, !noalias !327 ; 2 uses
  %i.gs = getelementptr [8 x i8], ptr %i.gq, i64 %i.gn ; 2 uses
  %wide.load110 = load <2 x double>, ptr %i.gs, align 8, !tbaa !34, !alias.scope !327 ; 2 uses
  %i.gt = fmul <2 x double> %broadcast.splat, %wide.load110
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load109, <2 x double> %broadcast.splat104, <2 x double> %i.gt) ; 2 uses
  store <2 x double> %i.gu, ptr %i.gr, align 8, !tbaa !34, !alias.scope !326, !noalias !327
  %i.gv = fadd <2 x double> %wide.load109, %i.gu
  %i.gw = fneg <2 x double> %wide.load110
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %i.gv, <2 x double> %i.gw)
  store <2 x double> %i.gx, ptr %i.gs, align 8, !tbaa !34, !alias.scope !327
  %index.next111 = add nuw i64 %index108, 2       ; 2 uses
  %i.gy = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.gy, label %middle.block112, label %vector.body107, !llvm.loop !322

middle.block112:                                  ; preds = %vector.body107
  br i1 %cmp.n113, label %.loopexit, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %vector.memcheck94, %.lr.ph28, %middle.block112
  %indvars.iv49.ph = phi i64 [ 0, %vector.memcheck94 ], [ 0, %.lr.ph28 ], [ %n.vec102, %middle.block112 ]
  br label %scalar.ph99

.lr.ph26:                                         ; preds = %.lr.ph26.ph, %.lr.ph26
  %store_forwarded = phi double [ %load_initial, %.lr.ph26.ph ], [ %i.hh, %.lr.ph26 ] ; 2 uses
  %indvars.iv44 = phi i64 [ %indvars.iv42, %.lr.ph26.ph ], [ %indvars.iv.next45, %.lr.ph26 ] ; 2 uses
  %i.gz = mul nuw nsw i64 %i.eg, %indvars.iv44    ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.ey, i64 %i.gz
  %i.hb = getelementptr [8 x i8], ptr %i.fa, i64 %i.gz ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !34 ; 2 uses
  %i.hd = fmul double %.0, %i.hc
  %i.he = tail call double @llvm.fmuladd.f64(double %store_forwarded, double %.0129, double %i.hd) ; 2 uses
  store double %i.he, ptr %i.ha, align 8, !tbaa !34
  %i.hf = fadd double %store_forwarded, %i.he
  %i.hg = fneg double %i.hc
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.hf, double %i.hg) ; 2 uses
  store double %i.hh, ptr %i.hb, align 8, !tbaa !34
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv47 = trunc i64 %indvars.iv.next45 to i32
  %exitcond48.not = icmp eq i32 %i.dw, %lftr.wideiv47
  br i1 %exitcond48.not, label %.preheader, label %.lr.ph26, !llvm.loop !318

scalar.ph99:                                      ; preds = %scalar.ph99.preheader, %scalar.ph99
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph99 ], [ %indvars.iv49.ph, %scalar.ph99.preheader ] ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.er, i64 %indvars.iv49 ; 2 uses
  %i.hj = getelementptr [8 x i8], ptr %i.hi, i64 %i.gm ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !34 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hi, i64 %i.gn ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !34 ; 2 uses
  %i.hn = fmul double %.0, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hk, double %.0129, double %i.hn) ; 2 uses
  store double %i.ho, ptr %i.hj, align 8, !tbaa !34
  %i.hp = fadd double %i.hk, %i.ho
  %i.hq = fneg double %i.hm
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.hp, double %i.hq)
  store double %i.hr, ptr %i.hl, align 8, !tbaa !34
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond52.not, label %.loopexit, label %scalar.ph99, !llvm.loop !323

.loopexit:                                        ; preds = %scalar.ph99, %middle.block112, %.preheader, %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %i.ek
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond57.not, label %.loopexit9, label %bb.e, !llvm.loop !324

.loopexit9:                                       ; preds = %.loopexit, %._crit_edge23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS_9TransposeIKNS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISE_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Transpose", align 8  ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
end_hunk_0
