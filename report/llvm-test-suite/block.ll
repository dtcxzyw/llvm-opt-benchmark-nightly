inline.NumInlined: 4
begin_hunk_0_@split_blocks:bb.a
  %i.ib = sext i32 %i.ia to i64
  %.not.i330 = icmp sgt i64 %indvars.iv40.i, %i.ib
  br i1 %.not.i330, label %add_sorted_list.exit, label %.lr.ph34.i, !llvm.loop !38

add_sorted_list.exit:                             ; preds = %.lr.ph34.i, %._crit_edge30.i
  %i.ic = phi i32 [ %i.hv, %._crit_edge30.i ], [ %i.ia, %.lr.ph34.i ]
  %i.id = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.ie = shl nuw nsw i32 %i.fv, 1
  %i.if = add nsw i32 %i.ie, -1
  %i.ig = add i32 %i.ic, %i.z
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.ik = mul nsw i32 %i.ij, %i.if
  %i.il = add nsw i32 %i.ik, %i.id
  %i.im = getelementptr inbounds nuw i8, ptr %i.fj, i64 172
  store i32 %i.il, ptr %i.im, align 4, !tbaa !4
  %i.in = load i32, ptr %i.eh, align 8, !tbaa !4
  %i.io = shl nuw nsw i32 %i.fx, 1
  %i.ip = add nsw i32 %i.io, -1
  %i.iq = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ir = add i32 %i.iq, %i.z
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = mul nsw i32 %i.iu, %i.ip
  %i.iw = add nsw i32 %i.iv, %i.in
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fj, i64 176
  store i32 %i.iw, ptr %i.ix, align 8, !tbaa !4
  %i.iy = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.iz = shl nuw nsw i32 %i.fy, 1
  %i.ja = add nsw i32 %i.iz, -1
  %i.jb = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.jc = add i32 %i.jb, %i.z
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !4
  %i.jg = mul nsw i32 %i.jf, %i.ja
  %i.jh = add nsw i32 %i.jg, %i.iy
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fj, i64 180
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !4
  %i.jj = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jk = mul nuw nsw i32 %i.jj, %i.fv
  %i.jl = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jm = mul nuw nsw i32 %i.jl, %i.fx
  %i.jn = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 5 uses
  %i.jo = mul i32 %i.jn, %i.fy
  %i.jp = load i32, ptr @num_vars, align 4, !tbaa !4 ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.preheader342.lr.ph, label %._crit_edge432

.preheader342.lr.ph:                              ; preds = %add_sorted_list.exit
  %.not324423 = icmp slt i32 %i.jj, 1
  %.not326414 = icmp slt i32 %i.jn, 1
  %.not325419 = icmp slt i32 %i.jl, 1
  %or.cond = select i1 %.not324423, i1 true, i1 %.not325419
  %brmerge = select i1 %or.cond, i1 true, i1 %.not326414
  br i1 %brmerge, label %._crit_edge432, label %.preheader342.lr.ph.split.split.split

.preheader342.lr.ph.split.split.split:            ; preds = %.preheader342.lr.ph
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fj, i64 184
  %i.js = load ptr, ptr %i.es, align 8, !tbaa !39
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !39
  %i.ju = zext i32 %i.jo to i64                   ; 3 uses
  %i.jv = add nuw i32 %i.jn, 1
  %i.jw = zext nneg i32 %i.jm to i64
  %i.jx = add nuw i32 %i.jl, 1
  %i.jy = zext nneg i32 %i.jk to i64
  %i.jz = add nuw i32 %i.jj, 1
  %wide.trip.count548 = zext nneg i32 %i.jp to i64
  %wide.trip.count543 = zext i32 %i.jz to i64
  %wide.trip.count534 = zext i32 %i.jx to i64
  %wide.trip.count525 = zext i32 %i.jv to i64     ; 3 uses
  %i.ka = shl nuw nsw i64 %wide.trip.count525, 4  ; 4 uses
  %i.kb = shl nuw nsw i64 %i.ju, 3
  %i.kc = add nuw nsw i64 %i.ju, %wide.trip.count525
  %i.kd = shl nuw nsw i64 %i.kc, 3
  %i.ke = zext nneg i32 %i.jn to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.jn, 14
  %n.vec = and i64 %i.ke, 2147483646              ; 3 uses
  %i.kf = shl nuw nsw i64 %n.vec, 1
  %i.kg = or disjoint i64 %i.kf, 1
  %i.kh = or i64 %i.ke, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ke
  br label %.preheader342

.preheader342:                                    ; preds = %.preheader342.lr.ph.split.split.split, %._crit_edge426.split.split
  %indvars.iv545 = phi i64 [ 0, %.preheader342.lr.ph.split.split.split ], [ %indvars.iv.next546, %._crit_edge426.split.split ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv545
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !40
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv545
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !40
  %invariant.gep687 = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.jy
  br label %.preheader337

.preheader337:                                    ; preds = %.preheader342, %._crit_edge422.split
  %indvars.iv538 = phi i64 [ 1, %.preheader342 ], [ %indvars.iv.next539, %._crit_edge422.split ] ; 2 uses
  %indvars.iv536 = phi i64 [ 1, %.preheader342 ], [ %indvars.iv.next537, %._crit_edge422.split ] ; 2 uses
  %gep688 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep687, i64 %indvars.iv536
  %i.km = load ptr, ptr %gep688, align 8, !tbaa !42
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv538 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !42 ; 2 uses
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !42 ; 2 uses
  %invariant.gep685 = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.jw
  br label %.preheader

.preheader:                                       ; preds = %.preheader337, %._crit_edge418
  %indvars.iv529 = phi i64 [ 1, %.preheader337 ], [ %indvars.iv.next530, %._crit_edge418 ] ; 4 uses
  %indvars.iv527 = phi i64 [ 1, %.preheader337 ], [ %indvars.iv.next528, %._crit_edge418 ] ; 2 uses
  %gep686 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep685, i64 %indvars.iv527
  %i.kr = load ptr, ptr %gep686, align 8, !tbaa !44 ; 3 uses
  %i.ks = add nuw nsw i64 %indvars.iv529, 1       ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ks
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !44 ; 6 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ks
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !44 ; 6 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv529
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !44 ; 6 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv529
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !44 ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.ju ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %scevgep748 = getelementptr i8, ptr %i.ku, i64 -8
  %scevgep749 = getelementptr i8, ptr %scevgep748, i64 %i.ka ; 4 uses
  %scevgep750 = getelementptr nuw i8, ptr %i.kw, i64 8 ; 4 uses
  %scevgep751 = getelementptr i8, ptr %i.kw, i64 -8
  %scevgep752 = getelementptr i8, ptr %scevgep751, i64 %i.ka ; 4 uses
  %scevgep753 = getelementptr nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %scevgep754 = getelementptr i8, ptr %i.ky, i64 -8
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.ka ; 4 uses
  %scevgep756 = getelementptr nuw i8, ptr %i.la, i64 8 ; 4 uses
  %scevgep757 = getelementptr i8, ptr %i.la, i64 -8
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.ka ; 4 uses
  %scevgep759 = getelementptr nuw i8, ptr %i.kr, i64 8
  %scevgep760 = getelementptr nuw i8, ptr %scevgep759, i64 %i.kb ; 4 uses
  %scevgep761 = getelementptr i8, ptr %i.kr, i64 %i.kd ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep752
  %bound1 = icmp ult ptr %scevgep750, %scevgep749
  %found.conflict = and i1 %bound0, %bound1
  %bound0762 = icmp ult ptr %scevgep, %scevgep755
  %bound1763 = icmp ult ptr %scevgep753, %scevgep749
  %found.conflict764 = and i1 %bound0762, %bound1763
  %conflict.rdx = or i1 %found.conflict, %found.conflict764
  %bound0765 = icmp ult ptr %scevgep, %scevgep758
  %bound1766 = icmp ult ptr %scevgep756, %scevgep749
  %found.conflict767 = and i1 %bound0765, %bound1766
  %conflict.rdx768 = or i1 %conflict.rdx, %found.conflict767
  %bound0769 = icmp ult ptr %scevgep, %scevgep761
  %bound1770 = icmp ult ptr %scevgep760, %scevgep749
  %found.conflict771 = and i1 %bound0769, %bound1770
  %conflict.rdx772 = or i1 %conflict.rdx768, %found.conflict771
  %bound0773 = icmp ult ptr %scevgep750, %scevgep755
  %bound1774 = icmp ult ptr %scevgep753, %scevgep752
  %found.conflict775 = and i1 %bound0773, %bound1774
  %conflict.rdx776 = or i1 %conflict.rdx772, %found.conflict775
  %bound0777 = icmp ult ptr %scevgep750, %scevgep758
  %bound1778 = icmp ult ptr %scevgep756, %scevgep752
  %found.conflict779 = and i1 %bound0777, %bound1778
  %conflict.rdx780 = or i1 %conflict.rdx776, %found.conflict779
  %bound0781 = icmp ult ptr %scevgep750, %scevgep761
  %bound1782 = icmp ult ptr %scevgep760, %scevgep752
  %found.conflict783 = and i1 %bound0781, %bound1782
  %conflict.rdx784 = or i1 %conflict.rdx780, %found.conflict783
  %bound0785 = icmp ult ptr %scevgep753, %scevgep758
  %bound1786 = icmp ult ptr %scevgep756, %scevgep755
  %found.conflict787 = and i1 %bound0785, %bound1786
  %conflict.rdx788 = or i1 %conflict.rdx784, %found.conflict787
  %bound0789 = icmp ult ptr %scevgep753, %scevgep761
  %bound1790 = icmp ult ptr %scevgep760, %scevgep755
  %found.conflict791 = and i1 %bound0789, %bound1790
  %conflict.rdx792 = or i1 %conflict.rdx788, %found.conflict791
  %bound0793 = icmp ult ptr %scevgep756, %scevgep761
  %bound1794 = icmp ult ptr %scevgep760, %scevgep758
  %found.conflict795 = and i1 %bound0793, %bound1794
  %conflict.rdx796 = or i1 %conflict.rdx792, %found.conflict795
  br i1 %conflict.rdx796, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.lb = shl i64 %index, 1                       ; 2 uses
  %i.lc = or disjoint i64 %i.lb, 1                ; 4 uses
  %i.ld = or disjoint i64 %i.lb, 3                ; 4 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.lh = getelementptr i8, ptr %i.lg, i64 16
  %i.li = load double, ptr %i.lf, align 8, !tbaa !46, !alias.scope !48
  %i.lj = load double, ptr %i.lh, align 8, !tbaa !46, !alias.scope !48
  %.scalar = fmul double %i.li, 1.250000e-01
  %i.lk = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.scalar815 = fmul double %i.lj, 1.250000e-01
  %i.lm = insertelement <2 x double> poison, double %.scalar815, i64 0
  %i.ln = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lc
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.ld
  store <2 x double> %i.ll, ptr %i.lo, align 8, !tbaa !46, !alias.scope !51, !noalias !53
  store <2 x double> %i.ln, ptr %i.lp, align 8, !tbaa !46, !alias.scope !51, !noalias !53
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.lc
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.ld
  store <2 x double> %i.ll, ptr %i.lq, align 8, !tbaa !46, !alias.scope !57, !noalias !58
  store <2 x double> %i.ln, ptr %i.lr, align 8, !tbaa !46, !alias.scope !57, !noalias !58
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lc
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.ld
  store <2 x double> %i.ll, ptr %i.ls, align 8, !tbaa !46, !alias.scope !59, !noalias !60
  store <2 x double> %i.ln, ptr %i.lt, align 8, !tbaa !46, !alias.scope !59, !noalias !60
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lc
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.ld
  store <2 x double> %i.ll, ptr %i.lu, align 8, !tbaa !46, !alias.scope !61, !noalias !48
  store <2 x double> %i.ln, ptr %i.lv, align 8, !tbaa !46, !alias.scope !61, !noalias !48
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lw = icmp eq i64 %index.next, %n.vec
  br i1 %i.lw, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge418, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv520.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.kg, %middle.block ]
  %indvars.iv518.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.kh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %scalar.ph ], [ %indvars.iv520.ph, %scalar.ph.preheader ] ; 6 uses
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %scalar.ph ], [ %indvars.iv518.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv518
  %i.lx = load double, ptr %gep, align 8, !tbaa !46
  %i.ly = fmul double %i.lx, 1.250000e-01         ; 8 uses
  %i.lz = add nuw nsw i64 %indvars.iv520, 1       ; 4 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lz
  store double %i.ly, ptr %i.ma, align 8, !tbaa !46
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.lz
  store double %i.ly, ptr %i.mb, align 8, !tbaa !46
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lz
  store double %i.ly, ptr %i.mc, align 8, !tbaa !46
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lz
  store double %i.ly, ptr %i.md, align 8, !tbaa !46
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv520
  store double %i.ly, ptr %i.me, align 8, !tbaa !46
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv520
  store double %i.ly, ptr %i.mf, align 8, !tbaa !46
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv520
  store double %i.ly, ptr %i.mg, align 8, !tbaa !46
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv520
  store double %i.ly, ptr %i.mh, align 8, !tbaa !46
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 2
  %exitcond526.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count525
  br i1 %exitcond526.not, label %._crit_edge418, label %scalar.ph, !llvm.loop !63

._crit_edge418:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 2 uses
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 2
  %exitcond535.not = icmp eq i64 %indvars.iv.next528, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge422.split, label %.preheader, !llvm.loop !64

._crit_edge422.split:                             ; preds = %._crit_edge418
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 2
  %exitcond544.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count543
  br i1 %exitcond544.not, label %._crit_edge426.split.split, label %.preheader337, !llvm.loop !65

._crit_edge426.split.split:                       ; preds = %._crit_edge422.split
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %exitcond549.not = icmp eq i64 %indvars.iv.next546, %wide.trip.count548
  br i1 %exitcond549.not, label %._crit_edge432, label %.preheader342, !llvm.loop !66

._crit_edge432:                                   ; preds = %._crit_edge426.split.split, %.preheader342.lr.ph, %add_sorted_list.exit
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %exitcond553.not = icmp eq i64 %indvars.iv.next551, 8
  br i1 %exitcond553.not, label %.preheader348, label %.preheader347, !llvm.loop !67

.preheader346:                                    ; preds = %.preheader348, %.loopexit
  %indvars.iv578 = phi i64 [ 0, %.preheader348 ], [ %indvars.iv.next579, %.loopexit ] ; 43 uses
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr @consolidate_blocks.side, i64 %indvars.iv578 ; 4 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr @split_blocks.off, i64 %indvars.iv578
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !4  ; 4 uses
  %i.ml = load i32, ptr %i.mi, align 16, !tbaa !4 ; 2 uses
  %i.mm = add nsw i32 %i.mk, %i.ml
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 52
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.mt, align 4, !tbaa !4
  %i.mu = sext i32 %i.ml to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !4  ; 6 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 76
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.mx, i64 %indvars.iv578
  store i32 %i.mw, ptr %i.my, align 4, !tbaa !4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !4  ; 2 uses
  %i.nb = add nsw i32 %i.mk, %i.na
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !4
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 52
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.ni, align 4, !tbaa !4
  %i.nj = sext i32 %i.na to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !4  ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 76
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %indvars.iv578
  store i32 %i.nl, ptr %i.nn, align 4, !tbaa !4
  %i.no = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.np = load i32, ptr %i.no, align 8, !tbaa !4  ; 2 uses
  %i.nq = add nsw i32 %i.mk, %i.np
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !4
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.nu ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 52
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.nx, align 4, !tbaa !4
  %i.ny = sext i32 %i.np to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !4  ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 76
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.ob, i64 %indvars.iv578
  store i32 %i.oa, ptr %i.oc, align 4, !tbaa !4
  %i.od = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !4  ; 2 uses
  %i.of = add nsw i32 %i.mk, %i.oe
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !4
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.oj ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 52
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.om, align 4, !tbaa !4
  %i.on = sext i32 %i.oe to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !4  ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 76
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.oq, i64 %indvars.iv578
  store i32 %i.op, ptr %i.or, align 4, !tbaa !4
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv578
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !4  ; 4 uses
  %i.ou = icmp eq i32 %i.ot, -2
  br i1 %i.ou, label %.preheader343, label %bb.x

.preheader343:                                    ; preds = %.preheader346
  %i.ov = sext i32 %i.mw to i64
  %i.ow = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.ov ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 52
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv578
  store i32 -2, ptr %i.oy, align 4, !tbaa !4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 76
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.oz, i64 %indvars.iv578
  store i32 0, ptr %i.pa, align 4, !tbaa !4
  %i.pb = sext i32 %i.nl to i64
  %i.pc = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.pb ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 52
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %indvars.iv578
  store i32 -2, ptr %i.pe, align 4, !tbaa !4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 76
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.pf, i64 %indvars.iv578
  store i32 0, ptr %i.pg, align 4, !tbaa !4
  %i.ph = sext i32 %i.oa to i64
  %i.pi = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.ph ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 52
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv578
  store i32 -2, ptr %i.pk, align 4, !tbaa !4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 76
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %indvars.iv578
  store i32 0, ptr %i.pm, align 4, !tbaa !4
  %i.pn = sext i32 %i.op to i64
  %i.po = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.pn ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 52
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv578
  store i32 -2, ptr %i.pq, align 4, !tbaa !4
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 76
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %indvars.iv578
  store i32 0, ptr %i.ps, align 4, !tbaa !4
  br label %.loopexit

bb.x:                                             ; preds = %.preheader346
  %i.pt = icmp eq i32 %i.ot, %i.ac
  br i1 %i.pt, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %indvars.iv578
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !4  ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, -1
  br i1 %i.pw, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.px = trunc nuw nsw i64 %indvars.iv582 to i32
  %i.py = trunc nuw nsw i64 %indvars.iv578 to i32
  %i.pz = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.qa = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.qb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.pz, i32 noundef %i.px, i32 noundef %i.qa, i32 noundef %i.py, i32 noundef %i.pv) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.qc = zext i32 %i.ot to i64                   ; 2 uses
  %i.qd = icmp eq i64 %indvars.iv585, %i.qc
  br i1 %i.qd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %indvars.iv578
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !4  ; 6 uses
  %i.qg = icmp sgt i32 %i.qf, -1
  br i1 %i.qg, label %.preheader339, label %.loopexit

.preheader339:                                    ; preds = %bb.ab
  %i.qh = zext nneg i32 %i.qf to i64
  %i.qi = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %i.qh ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 52
  %i.qk = and i64 %indvars.iv578, 4294967295
  %i.ql = xor i64 %i.qk, 1                        ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.ql
  store i32 %i.aa, ptr %i.qm, align 4, !tbaa !4
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 76
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.ql ; 4 uses
  %i.qp = sext i32 %i.mw to i64
  %i.qq = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.qp ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 52
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv578
  store i32 %i.y, ptr %i.qs, align 4, !tbaa !4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 76
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %indvars.iv578
  store i32 %i.qf, ptr %i.qu, align 4, !tbaa !4
  store i32 %i.mw, ptr %i.qo, align 4, !tbaa !4
  %i.qv = sext i32 %i.nl to i64
  %i.qw = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.qv ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 52
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv578
  store i32 %i.y, ptr %i.qy, align 4, !tbaa !4
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 76
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qz, i64 %indvars.iv578
  store i32 %i.qf, ptr %i.ra, align 4, !tbaa !4
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  store i32 %i.nl, ptr %i.rb, align 4, !tbaa !4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.rd = sext i32 %i.oa to i64
  %i.re = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.rd ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 52
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv578
  store i32 %i.y, ptr %i.rg, align 4, !tbaa !4
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 76
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %i.rh, i64 %indvars.iv578
  store i32 %i.qf, ptr %i.ri, align 4, !tbaa !4
  store i32 %i.oa, ptr %i.rc, align 4, !tbaa !4
  %i.rj = sext i32 %i.op to i64
  %i.rk = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.rj ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 52
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv578
  store i32 %i.y, ptr %i.rm, align 4, !tbaa !4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 76
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %indvars.iv578
  store i32 %i.qf, ptr %i.ro, align 4, !tbaa !4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  store i32 %i.op, ptr %i.rp, align 4, !tbaa !4
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.rq = icmp eq i64 %i.p, %i.qc
  br i1 %i.rq, label %.preheader340, label %bb.aj

.preheader340:                                    ; preds = %bb.ac
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %indvars.iv578 ; 4 uses
  %i.rs = and i64 %indvars.iv578, 4294967295
  %i.rt = xor i64 %i.rs, 1                        ; 8 uses
  %i.ru = load i32, ptr %i.rr, align 4, !tbaa !4  ; 3 uses
  %i.rv = icmp sgt i32 %i.ru, -1
  br i1 %i.rv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader340
  %i.rw = sext i32 %i.mw to i64
  %i.rx = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.rw ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 52
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.rz, align 4, !tbaa !4
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 76
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %indvars.iv578
  store i32 %i.ru, ptr %i.sb, align 4, !tbaa !4
  %i.sc = zext nneg i32 %i.ru to i64
  %i.sd = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %i.sc ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 52
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.rt
  store i32 %i.aa, ptr %i.sf, align 4, !tbaa !4
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 76
  %i.sh = getelementptr inbounds nuw [16 x i8], ptr %i.sg, i64 %i.rt
  store i32 %i.mw, ptr %i.sh, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader340, %bb.ad
  %i.si = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4  ; 3 uses
  %i.sk = icmp sgt i32 %i.sj, -1
  br i1 %i.sk, label %bb.af, label %.preheader340.1

bb.af:                                            ; preds = %bb.ae
  %i.sl = sext i32 %i.nl to i64
  %i.sm = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.sl ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 52
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.so, align 4, !tbaa !4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 76
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sp, i64 %indvars.iv578
  store i32 %i.sj, ptr %i.sq, align 4, !tbaa !4
  %i.sr = zext nneg i32 %i.sj to i64
  %i.ss = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %i.sr ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 52
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %i.rt
  store i32 %i.aa, ptr %i.su, align 4, !tbaa !4
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 76
  %i.sw = getelementptr inbounds nuw [16 x i8], ptr %i.sv, i64 %i.rt
  store i32 %i.nl, ptr %i.sw, align 4, !tbaa !4
  br label %.preheader340.1

.preheader340.1:                                  ; preds = %bb.af, %bb.ae
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !4  ; 3 uses
  %i.sz = icmp sgt i32 %i.sy, -1
  br i1 %i.sz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.preheader340.1
  %i.ta = sext i32 %i.oa to i64
  %i.tb = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 52
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.td, align 4, !tbaa !4
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 76
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %indvars.iv578
  store i32 %i.sy, ptr %i.tf, align 4, !tbaa !4
  %i.tg = zext nneg i32 %i.sy to i64
  %i.th = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 52
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.rt
  store i32 %i.aa, ptr %i.tj, align 4, !tbaa !4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 76
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %i.tk, i64 %i.rt
  store i32 %i.oa, ptr %i.tl, align 4, !tbaa !4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.preheader340.1
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rr, i64 12
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !4  ; 3 uses
  %i.to = icmp sgt i32 %i.tn, -1
  br i1 %i.to, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.tp = sext i32 %i.op to i64
  %i.tq = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.tp ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 52
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv578
  store i32 %i.aa, ptr %i.ts, align 4, !tbaa !4
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 76
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.tt, i64 %indvars.iv578
  store i32 %i.tn, ptr %i.tu, align 4, !tbaa !4
  %i.tv = zext nneg i32 %i.tn to i64
  %i.tw = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 52
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.rt
  store i32 %i.aa, ptr %i.ty, align 4, !tbaa !4
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 76
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %i.rt
  store i32 %i.op, ptr %i.ua, align 4, !tbaa !4
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ac
  %i.ub = trunc nuw nsw i64 %indvars.iv582 to i32
  %i.uc = trunc nuw nsw i64 %indvars.iv578 to i32
  %i.ud = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.ue = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.uf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ud, i32 noundef %i.ub, i32 noundef %i.ue, i32 noundef %i.y, i32 noundef %i.uc, i32 noundef %i.ot) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

.loopexit:                                        ; preds = %bb.ah, %bb.ai, %.preheader339, %.preheader343, %bb.ab, %bb.y
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next579, 6
  br i1 %exitcond581.not, label %bb.ak, label %.preheader346, !llvm.loop !68

bb.ak:                                            ; preds = %.loopexit
  store i32 -1, ptr %i.ae, align 8, !tbaa !8
  %i.ug = trunc nuw nsw i64 %indvars.iv582 to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ug, i32 %.3301.lcssa)
  %.pre588 = load i32, ptr @max_active_block, align 4, !tbaa !4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.b, %bb.c, %bb.d
  %i.uh = phi i32 [ %i.ad, %bb.b ], [ %.pre588, %bb.ak ], [ %i.ad, %bb.d ], [ %i.ad, %bb.c ] ; 4 uses
  %.4302 = phi i32 [ %.1299451, %bb.b ], [ %spec.select, %bb.ak ], [ %.1299451, %bb.d ], [ %.1299451, %bb.c ] ; 2 uses
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %i.ui = sext i32 %i.uh to i64
  %i.uj = icmp slt i64 %indvars.iv.next583, %i.ui
  br i1 %i.uj, label %bb.b, label %._crit_edge453.loopexit, !llvm.loop !69

._crit_edge453.loopexit:                          ; preds = %bb.al
  %.pre589 = load i32, ptr @cur_max_level, align 4, !tbaa !4
  br label %._crit_edge453

._crit_edge453:                                   ; preds = %.preheader349.._crit_edge453_crit_edge, %._crit_edge453.loopexit
  %indvars.iv.next586.pre-phi = phi i64 [ %.pre590, %.preheader349.._crit_edge453_crit_edge ], [ %i.p, %._crit_edge453.loopexit ]
  %i.uk = phi i32 [ %i.f, %.preheader349.._crit_edge453_crit_edge ], [ %.pre589, %._crit_edge453.loopexit ] ; 2 uses
  %i.ul = phi i32 [ %i.g, %.preheader349.._crit_edge453_crit_edge ], [ %i.uh, %._crit_edge453.loopexit ]
  %i.um = phi i32 [ %i.h, %.preheader349.._crit_edge453_crit_edge ], [ %i.uh, %._crit_edge453.loopexit ]
  %.1299.lcssa = phi i32 [ %.0298457, %.preheader349.._crit_edge453_crit_edge ], [ %.4302, %._crit_edge453.loopexit ]
  %i.un = sext i32 %i.uk to i64
  %.not.not = icmp slt i64 %indvars.iv585, %i.un
  br i1 %.not.not, label %.preheader349, label %._crit_edge458, !llvm.loop !70

._crit_edge458:                                   ; preds = %._crit_edge453, %.preheader349.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @del_sorted_list(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @sorted_index, align 8, !tbaa !72 ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 3 uses
  %i.e = add nsw i32 %1, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 3 uses
  %i.i = icmp slt i32 %i.d, %i.h
  %.pre = load ptr, ptr @sorted_list, align 8, !tbaa !74 ; 4 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = sext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = icmp eq i32 %0, %i.l
  br i1 %i.m, label %._crit_edge.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.b
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.020.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.n, %._crit_edge.loopexit.split.loop.exit ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = sext i32 %.020.lcssa to i64              ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %.not = icmp eq i32 %0, %i.q
  br i1 %.not, label %.preheader23, label %bb.d

.preheader23:                                     ; preds = %._crit_edge
  %i.r = load i32, ptr @num_refine, align 4, !tbaa !4 ; 2 uses
  %.not2229 = icmp sgt i32 %1, %i.r
  br i1 %.not2229, label %.preheader23..preheader_crit_edge, label %.lr.ph31

.preheader23..preheader_crit_edge:                ; preds = %.preheader23
  %.pre42 = sext i32 %i.r to i64
  br label %.preheader

bb.d:                                             ; preds = %._crit_edge
  %i.s = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.s, i32 noundef %0) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

.preheader:                                       ; preds = %.lr.ph31, %.preheader23..preheader_crit_edge
  %.pre-phi = phi i64 [ %.pre42, %.preheader23..preheader_crit_edge ], [ %i.ac, %.lr.ph31 ]
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %.pre-phi
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = icmp slt i32 %.020.lcssa, %i.w
  br i1 %i.x, label %.lr.ph33, label %._crit_edge34

.lr.ph31:                                         ; preds = %.preheader23, %.lr.ph31
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph31 ], [ %i.f, %.preheader23 ] ; 3 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv36 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !4
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  %i.ab = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %.not22 = icmp sgt i64 %indvars.iv36, %i.ac
  br i1 %.not22, label %.preheader, label %.lr.ph31, !llvm.loop !21

.lr.ph33:                                         ; preds = %.preheader, %.lr.ph33
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.lr.ph33 ], [ %i.o, %.preheader ] ; 2 uses
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1 ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.pre, i64 %indvars.iv.next40
  %i.ae = getelementptr inbounds [8 x i8], ptr %.pre, i64 %indvars.iv39
  %i.af = load <2 x i32>, ptr %i.ad, align 4, !tbaa !4
  store <2 x i32> %i.af, ptr %i.ae, align 4, !tbaa !4
  %i.ag = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.a, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next40, %i.al
  br i1 %i.am, label %.lr.ph33, label %._crit_edge34, !llvm.loop !22

._crit_edge34:                                    ; preds = %.lr.ph33, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @add_sorted_list(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @sorted_index, align 8, !tbaa !72 ; 4 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 3 uses
  %i.e = add nsw i32 %2, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 3 uses
  %i.i = icmp slt i32 %i.d, %i.h
  %.pre.pre = load ptr, ptr @sorted_list, align 8, !tbaa !74 ; 6 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = sext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %._crit_edge.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.b
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.021.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.n, %._crit_edge.loopexit.split.loop.exit ], [ %i.h, %bb.c ] ; 3 uses
  %i.o = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.a, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = icmp sgt i32 %i.s, %.021.lcssa
  br i1 %i.t, label %.lr.ph29, label %._crit_edge.._crit_edge30_crit_edge

._crit_edge.._crit_edge30_crit_edge:              ; preds = %._crit_edge
  %.pre = sext i32 %.021.lcssa to i64
  br label %._crit_edge30

.lr.ph29:                                         ; preds = %._crit_edge
  %i.u = sext i32 %i.s to i64                     ; 4 uses
  %i.v = sext i32 %.021.lcssa to i64              ; 4 uses
  %i.w = sub nsw i64 %i.u, %i.v                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29
  %n.vec = and i64 %i.w, -2                       ; 3 uses
  %i.x = sub nsw i64 %i.u, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 %i.u, %index                     ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %.pre.pre, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %interleaved.vec = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %i.ab = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.y
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  store <4 x i32> %interleaved.vec, ptr %i.ac, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge30, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph29, %middle.block
  %indvars.iv37.ph = phi i64 [ %i.u, %.lr.ph29 ], [ %i.x, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %scalar.ph ], [ %indvars.iv37.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -1 ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %indvars.iv.next38
  %i.af = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %indvars.iv37
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !4
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !4
  %i.ah = icmp sgt i64 %indvars.iv.next38, %i.v
  br i1 %i.ah, label %scalar.ph, label %._crit_edge30, !llvm.loop !76

._crit_edge30:                                    ; preds = %scalar.ph, %middle.block, %._crit_edge.._crit_edge30_crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.._crit_edge30_crit_edge ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %.pre-phi ; 2 uses
  store i32 %1, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %0, ptr %i.aj, align 4, !tbaa !37
  %i.ak = load i32, ptr @num_refine, align 4, !tbaa !4
  %.not31 = icmp sgt i32 %2, %i.ak
  br i1 %.not31, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %._crit_edge30, %.lr.ph34
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph34 ], [ %i.f, %._crit_edge30 ] ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv40 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !4
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1
  %i.ao = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ap = sext i32 %i.ao to i64
  %.not = icmp sgt i64 %indvars.iv40, %i.ap
  br i1 %.not, label %._crit_edge35, label %.lr.ph34, !llvm.loop !38

._crit_edge35:                                    ; preds = %.lr.ph34, %._crit_edge30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @consolidate_blocks() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cur_max_level, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.preheader232.lr.ph, label %._crit_edge286

.preheader232.lr.ph:                              ; preds = %bb.a
  %i.c = load ptr, ptr @parents, align 8          ; 2 uses
  %i.d = load i32, ptr @max_active_parent, align 4, !tbaa !4 ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader232.preheader, label %._crit_edge286

.preheader232.preheader:                          ; preds = %.preheader232.lr.ph
  %i.f = zext nneg i32 %i.a to i64
  br label %.preheader232

.preheader232:                                    ; preds = %.preheader232.preheader, %._crit_edge284
  %i.g = phi i32 [ %i.d, %.preheader232.preheader ], [ %i.pa, %._crit_edge284 ] ; 2 uses
  %i.h = phi i32 [ %i.d, %.preheader232.preheader ], [ %i.pb, %._crit_edge284 ] ; 2 uses
  %indvars.iv357 = phi i64 [ %i.f, %.preheader232.preheader ], [ %indvars.iv.next358, %._crit_edge284 ] ; 11 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph283, label %._crit_edge284

.lr.ph283:                                        ; preds = %.preheader232
  %i.j = load ptr, ptr @blocks, align 8           ; 22 uses
  %i.k = load ptr, ptr @num_blocks, align 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv357 ; 2 uses
  %i.m = add nuw nsw i64 %indvars.iv357, 1        ; 6 uses
  %i.n = load ptr, ptr @sorted_index, align 8     ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv357
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %.pre.pre.i = load ptr, ptr @sorted_list, align 8 ; 10 uses
  %i.q = add nuw nsw i64 %indvars.iv357, 2        ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  %i.s = trunc nuw nsw i64 %indvars.iv357 to i32  ; 7 uses
  %i.t = trunc nuw i64 %i.m to i32
  %i.u = trunc nuw i64 %i.m to i32
  %i.v = trunc nuw i64 %i.m to i32
  %i.w = trunc nuw i64 %i.m to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph283, %.loopexit230
  %i.x = phi i32 [ %i.g, %.lr.ph283 ], [ %i.ox, %.loopexit230 ] ; 3 uses
  %indvars.iv354 = phi i64 [ 0, %.lr.ph283 ], [ %indvars.iv.next355, %.loopexit230 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [100 x i8], ptr %i.c, i64 %indvars.iv354 ; 11 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.c, label %.loopexit230

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !77
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i64 %indvars.iv357, %i.ad
  br i1 %i.ae, label %bb.d, label %.loopexit230

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %.preheader231, label %.loopexit230

.preheader231:                                    ; preds = %bb.d
  %i.ai = load i32, ptr @max_num_blocks, align 4, !tbaa !4 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader231
  %wide.trip.count = zext nneg i32 %i.ai to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !78

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader231
  %.0.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.an, %._crit_edge.loopexit ] ; 12 uses
  %i.ao = icmp eq i32 %.0.lcssa, %i.ai
  br i1 %i.ao, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.e
  %i.ap = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ap) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.ar = zext nneg i32 %.0.lcssa to i64
  %i.as = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.ar ; 12 uses
  %i.at = load i32, ptr @max_active_block, align 4, !tbaa !4
  %.not = icmp slt i32 %.0.lcssa, %i.at
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = add nuw nsw i32 %.0.lcssa, 1
  store i32 %i.au, ptr @max_active_block, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = load i32, ptr @num_active, align 4, !tbaa !4 ; 3 uses
  %i.aw = load i32, ptr @local_max_b, align 4, !tbaa !4
  %.not211 = icmp slt i32 %i.av, %i.aw
  br i1 %.not211, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = add nsw i32 %i.av, 1
  store i32 %i.ax, ptr @local_max_b, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = add nsw i32 %i.av, -7
  store i32 %i.ay, ptr @num_active, align 4, !tbaa !4
  %i.az = load i32, ptr @num_reformed, align 4, !tbaa !4
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr @num_reformed, align 4, !tbaa !4
  %i.bb = load <2 x i32>, ptr %i.l, align 4, !tbaa !4
  %i.bc = add nsw <2 x i32> %i.bb, <i32 1, i32 -8>
  store <2 x i32> %i.bc, ptr %i.l, align 4, !tbaa !4
  %i.bd = load <2 x i32>, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !23
  store <2 x i32> %i.bd, ptr %i.as, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bg = load <2 x i32>, ptr %i.be, align 4, !tbaa !4
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !79
  store <2 x i32> %i.bg, ptr %i.bf, align 8, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !27
  %i.bl = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds [100 x i8], ptr %i.c, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  store i32 %.0.lcssa, ptr %i.bp, align 4, !tbaa !4
  %i.bq = load i32, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %i.br = load i32, ptr %i.o, align 4, !tbaa !4   ; 3 uses
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !4   ; 3 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.bu = sext i32 %i.br to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = icmp sgt i32 %i.bq, %i.bw
  br i1 %i.bx, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bs, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.k, !llvm.loop !32

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.k
  %i.by = trunc nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %._crit_edge.loopexit.split.loop.exit.i, %bb.j
  %.021.lcssa.i = phi i32 [ %i.br, %bb.j ], [ %i.by, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bs, %bb.l ] ; 3 uses
  %i.bz = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr %i.n, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, %.021.lcssa.i
  br i1 %i.ce, label %.lr.ph29.i, label %._crit_edge.._crit_edge30_crit_edge.i

._crit_edge.._crit_edge30_crit_edge.i:            ; preds = %._crit_edge.i
  %.pre.i = sext i32 %.021.lcssa.i to i64
  br label %._crit_edge30.i

.lr.ph29.i:                                       ; preds = %._crit_edge.i
  %i.cf = sext i32 %i.cd to i64                   ; 4 uses
  %i.cg = sext i32 %.021.lcssa.i to i64           ; 4 uses
  %i.ch = sub nsw i64 %i.cf, %i.cg                ; 3 uses
  %min.iters.check464 = icmp ult i64 %i.ch, 2
  br i1 %min.iters.check464, label %scalar.ph463.preheader, label %vector.ph465

vector.ph465:                                     ; preds = %.lr.ph29.i
  %n.vec467 = and i64 %i.ch, -2                   ; 3 uses
  %i.ci = sub nsw i64 %i.cf, %n.vec467
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph465
  %index469 = phi i64 [ 0, %vector.ph465 ], [ %index.next476, %vector.body468 ] ; 2 uses
  %i.cj = sub i64 %i.cf, %index469                ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %.pre.pre.i, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16
  %interleaved.vec = load <4 x i32>, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %i.cj
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  store <4 x i32> %interleaved.vec, ptr %i.cn, align 4, !tbaa !4
  %index.next476 = add nuw i64 %index469, 2       ; 2 uses
  %i.co = icmp eq i64 %index.next476, %n.vec467
  br i1 %i.co, label %middle.block477, label %vector.body468, !llvm.loop !80

middle.block477:                                  ; preds = %vector.body468
  %cmp.n478 = icmp eq i64 %i.ch, %n.vec467
  br i1 %cmp.n478, label %._crit_edge30.i, label %scalar.ph463.preheader

scalar.ph463.preheader:                           ; preds = %.lr.ph29.i, %middle.block477
  %indvars.iv37.i.ph = phi i64 [ %i.cf, %.lr.ph29.i ], [ %i.ci, %middle.block477 ]
  br label %scalar.ph463

scalar.ph463:                                     ; preds = %scalar.ph463.preheader, %scalar.ph463
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %scalar.ph463 ], [ %indvars.iv37.i.ph, %scalar.ph463.preheader ] ; 2 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 3 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i
  %i.cq = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv37.i
  %i.cr = load <2 x i32>, ptr %i.cp, align 4, !tbaa !4
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !4
  %i.cs = icmp sgt i64 %indvars.iv.next38.i, %i.cg
  br i1 %i.cs, label %scalar.ph463, label %._crit_edge30.i, !llvm.loop !81

._crit_edge30.i:                                  ; preds = %scalar.ph463, %middle.block477, %._crit_edge.._crit_edge30_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.._crit_edge30_crit_edge.i ], [ %i.cg, %middle.block477 ], [ %i.cg, %scalar.ph463 ]
  %i.ct = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %.pre-phi.i ; 2 uses
  store i32 %i.bq, ptr %i.ct, align 4, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %.0.lcssa, ptr %i.cu, align 4, !tbaa !37
  %i.cv = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.cw = sext i32 %i.cv to i64
  %.not31.i = icmp sgt i64 %indvars.iv357, %i.cw
  br i1 %.not31.i, label %add_sorted_list.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %._crit_edge30.i, %.lr.ph34.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.lr.ph34.i ], [ %i.m, %._crit_edge30.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv40.i ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !4
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  %i.da = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.db = sext i32 %i.da to i64
  %.not.i = icmp sgt i64 %indvars.iv40.i, %i.db
  br i1 %.not.i, label %add_sorted_list.exit, label %.lr.ph34.i, !llvm.loop !38

add_sorted_list.exit:                             ; preds = %.lr.ph34.i, %._crit_edge30.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.dc, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.as, i64 172
  store i32 %i.de, ptr %i.df, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.as, i64 180
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  br label %bb.m

.preheader229:                                    ; preds = %._crit_edge271
  %i.do = getelementptr inbounds nuw i8, ptr %i.as, i64 76 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.as, i64 52 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 3 uses
  br label %bb.q

bb.m:                                             ; preds = %add_sorted_list.exit, %._crit_edge271
  %indvars.iv340 = phi i64 [ 0, %add_sorted_list.exit ], [ %indvars.iv.next341, %._crit_edge271 ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv340
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.dt ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !8  ; 3 uses
  %i.dw = load i32, ptr %i.p, align 4, !tbaa !4   ; 3 uses
  %i.dx = load i32, ptr %i.r, align 4, !tbaa !4   ; 3 uses
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.i220, label %._crit_edge.i217

.lr.ph.i220:                                      ; preds = %bb.m
  %i.dz = sext i32 %i.dw to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i220
  %indvars.iv.i221 = phi i64 [ %i.dz, %.lr.ph.i220 ], [ %indvars.iv.next.i222, %bb.o ] ; 3 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.i221
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = icmp eq i32 %i.dv, %i.eb
  br i1 %i.ec, label %._crit_edge.loopexit.split.loop.exit.i225, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i222 = add nsw i64 %indvars.iv.i221, 1 ; 2 uses
  %lftr.wideiv.i223 = trunc i64 %indvars.iv.next.i222 to i32
  %exitcond.not.i224 = icmp eq i32 %i.dx, %lftr.wideiv.i223
  br i1 %exitcond.not.i224, label %._crit_edge.i217, label %bb.n, !llvm.loop !19

._crit_edge.loopexit.split.loop.exit.i225:        ; preds = %bb.n
  %i.ed = trunc nsw i64 %indvars.iv.i221 to i32
  br label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit.i225, %bb.m
  %.020.lcssa.i = phi i32 [ %i.dw, %bb.m ], [ %i.ed, %._crit_edge.loopexit.split.loop.exit.i225 ], [ %i.dx, %bb.o ] ; 2 uses
  %i.ee = sext i32 %.020.lcssa.i to i64           ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !17
  %.not.i218 = icmp eq i32 %i.dv, %i.eg
  br i1 %.not.i218, label %.preheader23.i, label %bb.p

.preheader23.i:                                   ; preds = %._crit_edge.i217
  %i.eh = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %.not2229.i.not = icmp slt i64 %indvars.iv357, %i.ei
  br i1 %.not2229.i.not, label %.lr.ph31.i, label %.preheader.i

bb.p:                                             ; preds = %._crit_edge.i217
  %i.ej = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ej, i32 noundef %i.dv) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

.preheader.i:                                     ; preds = %.lr.ph31.i, %.preheader23.i
  %.pre-phi.i219 = phi i64 [ %i.ei, %.preheader23.i ], [ %i.et, %.lr.ph31.i ]
  %i.el = getelementptr [4 x i8], ptr %i.n, i64 %.pre-phi.i219
  %i.em = getelementptr i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %i.eo = icmp slt i32 %.020.lcssa.i, %i.en
  br i1 %i.eo, label %.lr.ph33.i, label %del_sorted_list.exit

.lr.ph31.i:                                       ; preds = %.preheader23.i, %.lr.ph31.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph31.i ], [ %i.q, %.preheader23.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv36.i ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !4
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %i.es = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %.not22.i = icmp sgt i64 %indvars.iv36.i, %i.et
  br i1 %.not22.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !21

.lr.ph33.i:                                       ; preds = %.preheader.i, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph33.i ], [ %i.ee, %.preheader.i ] ; 2 uses
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next40.i
  %i.ev = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv39.i
  %i.ew = load <2 x i32>, ptr %i.eu, align 4, !tbaa !4
  store <2 x i32> %i.ew, ptr %i.ev, align 4, !tbaa !4
  %i.ex = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [4 x i8], ptr %i.n, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next40.i, %i.fc
  br i1 %i.fd, label %.lr.ph33.i, label %del_sorted_list.exit, !llvm.loop !22

del_sorted_list.exit:                             ; preds = %.lr.ph33.i, %.preheader.i
  store i32 -1, ptr %i.du, align 8, !tbaa !8
  %i.fe = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.ff = trunc i64 %indvars.iv340 to i32         ; 2 uses
  %i.fg = trunc i64 %indvars.iv340 to i1
  %i.fh = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.fi = and i32 %i.ff, 2
  %.not212 = icmp eq i32 %i.fi, 0
  %i.fj = select i1 %.not212, i32 0, i32 %i.fh
  %i.fk = lshr i32 %i.ff, 2
  %i.fl = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 5 uses
  %i.fm = mul i32 %i.fl, %i.fk
  %i.fn = load i32, ptr @num_vars, align 4, !tbaa !4 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.preheader228.lr.ph, label %._crit_edge271

.preheader228.lr.ph:                              ; preds = %del_sorted_list.exit
  %.not213262 = icmp slt i32 %i.fe, 1
  %.not215253 = icmp slt i32 %i.fl, 1
  %.not214258 = icmp slt i32 %i.fh, 1
  %or.cond = select i1 %.not213262, i1 true, i1 %.not214258
  %brmerge = select i1 %or.cond, i1 true, i1 %.not215253
  br i1 %brmerge, label %._crit_edge271, label %.preheader228.lr.ph.split.split.split

.preheader228.lr.ph.split.split.split:            ; preds = %.preheader228.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %i.du, i64 184
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !39
  %i.fr = load ptr, ptr %i.dn, align 8, !tbaa !39
  %i.fs = zext i32 %i.fm to i64                   ; 3 uses
  %i.ft = add nuw i32 %i.fl, 1
  %i.fu = zext nneg i32 %i.fj to i64
  %i.fv = add nuw i32 %i.fh, 1
  %i.fw = zext nneg i32 %i.fe to i64
  %i.fx = select i1 %i.fg, i64 %i.fw, i64 0
  %i.fy = add nuw i32 %i.fe, 1
  %wide.trip.count338 = zext nneg i32 %i.fn to i64
  %wide.trip.count333 = zext i32 %i.fy to i64
  %wide.trip.count324 = zext i32 %i.fv to i64
  %wide.trip.count315 = zext i32 %i.ft to i64     ; 3 uses
  %i.fz = shl nuw nsw i64 %i.fs, 3
  %i.ga = add nuw nsw i64 %i.fs, %wide.trip.count315
  %i.gb = shl nuw nsw i64 %i.ga, 3
  %i.gc = shl nuw nsw i64 %wide.trip.count315, 4  ; 4 uses
  %i.gd = zext nneg i32 %i.fl to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.fl, 4
  %n.vec = and i64 %i.gd, 2147483646              ; 3 uses
  %i.ge = shl nuw nsw i64 %n.vec, 1
  %i.gf = or disjoint i64 %i.ge, 1
  %i.gg = or i64 %i.gd, 1
  %cmp.n = icmp eq i64 %n.vec, %i.gd
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph.split.split.split, %._crit_edge265.split.split
  %indvars.iv335 = phi i64 [ 0, %.preheader228.lr.ph.split.split.split ], [ %indvars.iv.next336, %._crit_edge265.split.split ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv335
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !40
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv335
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !40
  %invariant.gep407 = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.fx
  br label %.preheader226

.preheader226:                                    ; preds = %.preheader228, %._crit_edge261.split
  %indvars.iv328 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next329, %._crit_edge261.split ] ; 2 uses
  %indvars.iv326 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next327, %._crit_edge261.split ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv328 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !42 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !42 ; 2 uses
  %gep408 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep407, i64 %indvars.iv326
  %i.gp = load ptr, ptr %gep408, align 8, !tbaa !42
  %invariant.gep405 = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.fu
  br label %.preheader

.preheader:                                       ; preds = %.preheader226, %._crit_edge257
  %indvars.iv319 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next320, %._crit_edge257 ] ; 4 uses
  %indvars.iv317 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next318, %._crit_edge257 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv319
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !44 ; 5 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv319
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !44 ; 5 uses
  %i.gu = add nuw nsw i64 %indvars.iv319, 1       ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !44 ; 5 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gu
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !44 ; 5 uses
  %gep406 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep405, i64 %indvars.iv317
  %i.gz = load ptr, ptr %gep406, align 8, !tbaa !44 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.fs ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr nuw i8, ptr %i.gz, i64 8
  %scevgep427 = getelementptr nuw i8, ptr %scevgep, i64 %i.fz ; 4 uses
  %scevgep428 = getelementptr i8, ptr %i.gz, i64 %i.gb ; 4 uses
  %scevgep429 = getelementptr nuw i8, ptr %i.gr, i64 8
  %scevgep430 = getelementptr i8, ptr %i.gr, i64 -8
  %scevgep431 = getelementptr i8, ptr %scevgep430, i64 %i.gc
  %scevgep432 = getelementptr nuw i8, ptr %i.gt, i64 8
  %scevgep433 = getelementptr i8, ptr %i.gt, i64 -8
  %scevgep434 = getelementptr i8, ptr %scevgep433, i64 %i.gc
  %scevgep435 = getelementptr nuw i8, ptr %i.gw, i64 8
  %scevgep436 = getelementptr i8, ptr %i.gw, i64 -8
  %scevgep437 = getelementptr i8, ptr %scevgep436, i64 %i.gc
  %scevgep438 = getelementptr nuw i8, ptr %i.gy, i64 8
  %scevgep439 = getelementptr i8, ptr %i.gy, i64 -8
  %scevgep440 = getelementptr i8, ptr %scevgep439, i64 %i.gc
  %bound0 = icmp ult ptr %scevgep427, %scevgep431
  %bound1 = icmp ult ptr %scevgep429, %scevgep428
  %found.conflict = and i1 %bound0, %bound1
  %bound0441 = icmp ult ptr %scevgep427, %scevgep434
  %bound1442 = icmp ult ptr %scevgep432, %scevgep428
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx = or i1 %found.conflict, %found.conflict443
  %bound0444 = icmp ult ptr %scevgep427, %scevgep437
  %bound1445 = icmp ult ptr %scevgep435, %scevgep428
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx447 = or i1 %conflict.rdx, %found.conflict446
  %bound0448 = icmp ult ptr %scevgep427, %scevgep440
  %bound1449 = icmp ult ptr %scevgep438, %scevgep428
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx451 = or i1 %conflict.rdx447, %found.conflict450
  br i1 %conflict.rdx451, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ha = shl i64 %index, 1
  %i.hb = or disjoint i64 %i.ha, 1                ; 4 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hb
  %wide.vec = load <4 x double>, ptr %i.hc, align 8, !tbaa !46, !alias.scope !82 ; 2 uses
  %strided.vec452 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hb
  %wide.vec453 = load <4 x double>, ptr %i.hd, align 8, !tbaa !46, !alias.scope !85 ; 2 uses
  %strided.vec455 = shufflevector <4 x double> %wide.vec453, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.he = fadd <4 x double> %wide.vec, %wide.vec453
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hb
  %wide.vec456 = load <4 x double>, ptr %i.hf, align 8, !tbaa !46, !alias.scope !87 ; 2 uses
  %strided.vec458 = shufflevector <4 x double> %wide.vec456, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hg = fadd <4 x double> %i.he, %wide.vec456
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hb
  %wide.vec459 = load <4 x double>, ptr %i.hh, align 8, !tbaa !46, !alias.scope !89 ; 2 uses
  %strided.vec461 = shufflevector <4 x double> %wide.vec459, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hi = fadd <4 x double> %i.hg, %wide.vec459
  %i.hj = shufflevector <4 x double> %i.hi, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.hk = fadd <2 x double> %i.hj, %strided.vec452
  %i.hl = fadd <2 x double> %i.hk, %strided.vec455
  %i.hm = fadd <2 x double> %i.hl, %strided.vec458
  %i.hn = fadd <2 x double> %i.hm, %strided.vec461
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store <2 x double> %i.hn, ptr %i.hp, align 8, !tbaa !46, !alias.scope !91, !noalias !93
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge257, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv310.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gf, %middle.block ]
  %indvars.iv308.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %scalar.ph ], [ %indvars.iv310.ph, %scalar.ph.preheader ] ; 6 uses
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph ], [ %indvars.iv308.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv310
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !46
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv310
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !46
  %i.hv = fadd double %i.hs, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv310
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !46
  %i.hy = fadd double %i.hv, %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv310
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !46
  %i.ib = fadd double %i.hy, %i.ia
  %i.ic = add nuw nsw i64 %indvars.iv310, 1       ; 4 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !46
  %i.if = fadd double %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ic
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !46
  %i.ii = fadd double %i.if, %i.ih
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ic
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !46
  %i.il = fadd double %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.ic
  %i.in = load double, ptr %i.im, align 8, !tbaa !46
  %i.io = fadd double %i.il, %i.in
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv308
  store double %i.io, ptr %gep, align 8, !tbaa !46
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 2
  %exitcond316.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count315
  br i1 %exitcond316.not, label %._crit_edge257, label %scalar.ph, !llvm.loop !95

._crit_edge257:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 2
  %exitcond325.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count324
  br i1 %exitcond325.not, label %._crit_edge261.split, label %.preheader, !llvm.loop !96

._crit_edge261.split:                             ; preds = %._crit_edge257
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 2
  %exitcond334.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count333
  br i1 %exitcond334.not, label %._crit_edge265.split.split, label %.preheader226, !llvm.loop !97

._crit_edge265.split.split:                       ; preds = %._crit_edge261.split
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond339.not = icmp eq i64 %indvars.iv.next336, %wide.trip.count338
  br i1 %exitcond339.not, label %._crit_edge271, label %.preheader228, !llvm.loop !98

._crit_edge271:                                   ; preds = %._crit_edge265.split.split, %.preheader228.lr.ph, %del_sorted_list.exit
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next341, 8
  br i1 %exitcond343.not, label %.preheader229, label %bb.m, !llvm.loop !99

bb.q:                                             ; preds = %.preheader229, %.loopexit
  %indvars.iv350 = phi i64 [ 0, %.preheader229 ], [ %indvars.iv.next351, %.loopexit ] ; 22 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr @consolidate_blocks.side, i64 %indvars.iv350 ; 4 uses
  %i.iq = load i32, ptr %i.ip, align 16, !tbaa !4
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !4  ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.iu ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 52
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv350
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4  ; 2 uses
  %i.iz = icmp eq i32 %i.iy, -2
  br i1 %i.iz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv350
  store i32 -2, ptr %i.ja, align 4, !tbaa !4
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv350
  store i32 0, ptr %i.jb, align 4, !tbaa !4
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.jc = zext i32 %i.iy to i64                   ; 2 uses
  %i.jd = icmp eq i64 %indvars.iv357, %i.jc
  br i1 %i.jd, label %bb.t, label %.preheader227

bb.t:                                             ; preds = %bb.s
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 76
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv350 ; 4 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4  ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, -1
  br i1 %i.jh, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv350
  store i32 %i.jg, ptr %i.ji, align 4, !tbaa !4
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv350
  store i32 %i.s, ptr %i.jj, align 4, !tbaa !4
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv350
  store i32 0, ptr %i.jk, align 4, !tbaa !4
  %i.jl = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 76
  %i.jp = and i64 %indvars.iv350, 4294967295
  %i.jq = xor i64 %i.jp, 1                        ; 3 uses
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.jq
  store i32 %.0.lcssa, ptr %i.jr, align 4, !tbaa !4
  %i.js = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 52
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jq
  store i32 %i.s, ptr %i.jw, align 4, !tbaa !4
  %i.jx = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 28
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.jq
  store i32 0, ptr %i.kb, align 4, !tbaa !4
  br label %.loopexit

.preheader227:                                    ; preds = %bb.s
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv350 ; 4 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv350 ; 4 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv350 ; 4 uses
  %i.kf = and i64 %indvars.iv350, 4294967295
  %i.kg = xor i64 %i.kf, 1                        ; 12 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.iv, i64 76
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kh, i64 %indvars.iv350 ; 4 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !4  ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, -1
  br i1 %i.kk, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.preheader227
  %i.kl = icmp eq i64 %i.q, %i.jc
  br i1 %i.kl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.ae, %bb.ab, %bb.z, %bb.v
  %.lcssa295 = phi i32 [ %i.it, %bb.v ], [ %i.lj, %bb.z ], [ %i.mq, %bb.ab ], [ %i.nv, %bb.ae ]
  %i.km = trunc nuw nsw i64 %indvars.iv350 to i32
  %i.kn = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.ko = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.kp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ko, i32 noundef %i.kn, i32 noundef %.0.lcssa, i32 noundef %.lcssa295, i32 noundef %i.km, i32 noundef %i.s) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.x:                                             ; preds = %bb.v
  store i32 %i.kj, ptr %i.kc, align 4, !tbaa !4
  store i32 %i.t, ptr %i.kd, align 4, !tbaa !4
  store i32 0, ptr %i.ke, align 4, !tbaa !4
  %i.kq = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 76
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.kg
  store i32 %.0.lcssa, ptr %i.ku, align 4, !tbaa !4
  %i.kv = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 52
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kg
  store i32 %i.s, ptr %i.kz, align 4, !tbaa !4
  %i.la = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 28
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.kg
  store i32 0, ptr %i.le, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %.preheader227, %bb.x
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !4
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !4  ; 2 uses
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.lk ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 76
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %indvars.iv350 ; 4 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !4  ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, -1
  br i1 %i.lp, label %bb.z, label %.preheader227.1

bb.z:                                             ; preds = %bb.y
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 52
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv350
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.lt = zext i32 %i.ls to i64
  %i.lu = icmp eq i64 %i.q, %i.lt
  br i1 %i.lu, label %bb.w, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  store i32 %i.lo, ptr %i.lv, align 4, !tbaa !4
  store i32 %i.u, ptr %i.kd, align 4, !tbaa !4
  store i32 0, ptr %i.ke, align 4, !tbaa !4
  %i.lw = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 76
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.lz, i64 %i.kg
  store i32 %.0.lcssa, ptr %i.ma, align 4, !tbaa !4
  %i.mb = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 52
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.kg
  store i32 %i.s, ptr %i.mf, align 4, !tbaa !4
  %i.mg = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 28
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.kg
  store i32 0, ptr %i.mk, align 4, !tbaa !4
  br label %.preheader227.1

.preheader227.1:                                  ; preds = %bb.aa, %bb.y
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.mn = load i32, ptr %i.ml, align 8, !tbaa !4
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !4  ; 2 uses
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 76
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %indvars.iv350 ; 4 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !4  ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, -1
  br i1 %i.mw, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.preheader227.1
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 52
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv350
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !4
  %i.na = zext i32 %i.mz to i64
  %i.nb = icmp eq i64 %i.q, %i.na
  br i1 %i.nb, label %bb.w, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.mv, ptr %i.mm, align 4, !tbaa !4
  store i32 %i.v, ptr %i.kd, align 4, !tbaa !4
  store i32 0, ptr %i.ke, align 4, !tbaa !4
  %i.nc = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 76
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %i.nf, i64 %i.kg
  store i32 %.0.lcssa, ptr %i.ng, align 4, !tbaa !4
  %i.nh = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 52
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.kg
  store i32 %i.s, ptr %i.nl, align 4, !tbaa !4
  %i.nm = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 28
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.kg
  store i32 0, ptr %i.nq, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader227.1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !4
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !4  ; 2 uses
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.nw ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 76
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %indvars.iv350 ; 4 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !4  ; 2 uses
  %i.ob = icmp sgt i32 %i.oa, -1
  br i1 %i.ob, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 52
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv350
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !4
  %i.of = zext i32 %i.oe to i64
  %i.og = icmp eq i64 %i.q, %i.of
  br i1 %i.og, label %bb.w, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i32 %i.oa, ptr %i.oh, align 4, !tbaa !4
  store i32 %i.w, ptr %i.kd, align 4, !tbaa !4
  store i32 0, ptr %i.ke, align 4, !tbaa !4
  %i.oi = load i32, ptr %i.nz, align 4, !tbaa !4
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 76
  %i.om = getelementptr inbounds nuw [16 x i8], ptr %i.ol, i64 %i.kg
  store i32 %.0.lcssa, ptr %i.om, align 4, !tbaa !4
  %i.on = load i32, ptr %i.nz, align 4, !tbaa !4
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 52
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.kg
  store i32 %i.s, ptr %i.or, align 4, !tbaa !4
  %i.os = load i32, ptr %i.nz, align 4, !tbaa !4
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 28
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.kg
  store i32 0, ptr %i.ow, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.af, %bb.r, %bb.t, %bb.u
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next351, 6
  br i1 %exitcond353.not, label %.loopexit230.loopexit, label %bb.q, !llvm.loop !100

.loopexit230.loopexit:                            ; preds = %.loopexit
  %.pre = load i32, ptr @max_active_parent, align 4, !tbaa !4
  br label %.loopexit230

.loopexit230:                                     ; preds = %.loopexit230.loopexit, %bb.b, %bb.c, %bb.d
  %i.ox = phi i32 [ %.pre, %.loopexit230.loopexit ], [ %i.x, %bb.b ], [ %i.x, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.oy = sext i32 %i.ox to i64
  %i.oz = icmp slt i64 %indvars.iv.next355, %i.oy
  br i1 %i.oz, label %bb.b, label %._crit_edge284, !llvm.loop !101

._crit_edge284:                                   ; preds = %.loopexit230, %.preheader232
  %i.pa = phi i32 [ %i.g, %.preheader232 ], [ %i.ox, %.loopexit230 ]
  %i.pb = phi i32 [ %i.h, %.preheader232 ], [ %i.ox, %.loopexit230 ]
  %indvars.iv.next358 = add nsw i64 %indvars.iv357, -1
  %i.pc = icmp sgt i64 %indvars.iv357, 0
  br i1 %i.pc, label %.preheader232, label %._crit_edge286, !llvm.loop !102

._crit_edge286:                                   ; preds = %._crit_edge284, %.preheader232.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @find_sorted_list(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @sorted_index, align 8, !tbaa !72
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr @sorted_list, align 8, !tbaa !74 ; 2 uses
  %i.i = sext i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.f, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !103

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = icmp eq i32 %0, %i.k
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37
  ret i32 %i.o

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.p, i32 noundef %0) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 52, !6, i64 76, !6, i64 172, !10, i64 184}
!10 = !{!"p4 double", !11, i64 0}
!11 = !{!"any p4 pointer", !12, i64 0}
!12 = !{!"any p3 pointer", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!9, !5, i64 4}
!16 = !{!9, !5, i64 8}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !5, i64 0, !5, i64 4}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = !{!24, !5, i64 0}
!24 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 56, !6, i64 88}
!25 = distinct !{!25, !20}
!26 = !{!9, !5, i64 16}
!27 = !{!9, !5, i64 24}
!28 = !{!24, !5, i64 16}
!29 = !{!24, !5, i64 20}
!30 = distinct !{!30, !20}
!31 = !{!9, !5, i64 20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !20, !35, !34}
!37 = !{!18, !5, i64 4}
!38 = distinct !{!38, !20}
!39 = !{!9, !10, i64 184}
!40 = !{!41, !41, i64 0}
!41 = !{!"p3 double", !12, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"p2 double", !13, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 double", !14, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"double", !6, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50}
!50 = distinct !{!50, !"LVerDomain"}
!51 = !{!52}
!52 = distinct !{!52, !50}
!53 = !{!54, !55, !56, !49}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = !{!54}
!58 = !{!55, !56, !49}
!59 = !{!55}
!60 = !{!56, !49}
!61 = !{!56}
!62 = distinct !{!62, !20, !34, !35}
!63 = distinct !{!63, !20, !34}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20, !71}
!71 = !{!"llvm.loop.unswitch.partial.disable"}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 int", !14, i64 0}
!74 = !{!14, !14, i64 0}
!75 = distinct !{!75, !20, !34, !35}
!76 = distinct !{!76, !20, !35, !34}
!77 = !{!24, !5, i64 4}
!78 = distinct !{!78, !20}
!79 = !{!24, !5, i64 8}
!80 = distinct !{!80, !20, !34, !35}
!81 = distinct !{!81, !20, !35, !34}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = !{!88}
!88 = distinct !{!88, !84}
!89 = !{!90}
!90 = distinct !{!90, !84}
!91 = !{!92}
!92 = distinct !{!92, !84}
!93 = !{!83, !86, !88, !90}
!94 = distinct !{!94, !20, !34, !35}
!95 = distinct !{!95, !20, !34}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20, !71}
!103 = distinct !{!103, !20}
end_hunk_0
