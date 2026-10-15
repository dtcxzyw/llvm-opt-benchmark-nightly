Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/typedesc?download=true
inline.NumInlined: 3843
inline.NumDeleted: 993
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN11OpenImageIO4v3_112convert_typeENS0_8TypeDescEPKvS1_Pvi:bb.a
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !42
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06086.i110
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !42
  %i.li = add nuw nsw i64 %.06086.i110, 1         ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !42
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.li
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !42
  %i.lm = add nuw nsw i64 %.06086.i110, 2         ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !42
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lm
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !42
  %i.lq = add nuw nsw i64 %.06086.i110, 3         ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !42
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lq
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !42
  %i.lu = add nuw nsw i64 %.06086.i110, 4         ; 2 uses
  %exitcond105.not.i111.3 = icmp eq i64 %i.lu, %i.if
  br i1 %exitcond105.not.i111.3, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph87.i109, !llvm.loop !626

.lr.ph85.i104:                                    ; preds = %.lr.ph85.i104.preheader1086, %.lr.ph85.i104
  %.05984.i105 = phi i64 [ %i.lz, %.lr.ph85.i104 ], [ %.05984.i105.ph, %.lr.ph85.i104.preheader1086 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05984.i105
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !99
  %i.lx = sext i16 %i.lw to i32
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.05984.i105
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !42
  %i.lz = add nuw nsw i64 %.05984.i105, 1         ; 2 uses
  %exitcond104.not.i106 = icmp eq i64 %i.lz, %i.if
  br i1 %exitcond104.not.i106, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph85.i104, !llvm.loop !627

.lr.ph83.i99:                                     ; preds = %.lr.ph83.i99.preheader1088, %.lr.ph83.i99
  %.05882.i100 = phi i64 [ %i.me, %.lr.ph83.i99 ], [ %.05882.i100.ph, %.lr.ph83.i99.preheader1088 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05882.i100
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !99
  %i.mc = zext i16 %i.mb to i32
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.05882.i100
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !42
  %i.me = add nuw nsw i64 %.05882.i100, 1         ; 2 uses
  %exitcond103.not.i101 = icmp eq i64 %i.me, %i.if
  br i1 %exitcond103.not.i101, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph83.i99, !llvm.loop !628

.lr.ph81.i94:                                     ; preds = %.lr.ph81.i94.prol.loopexit, %.lr.ph81.i94
  %.05780.i95 = phi i64 [ %i.my, %.lr.ph81.i94 ], [ %.05780.i95.unr, %.lr.ph81.i94.prol.loopexit ] ; 6 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 %.05780.i95
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !43
  %i.mh = sext i8 %i.mg to i32
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.05780.i95
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !42
  %i.mj = add nuw nsw i64 %.05780.i95, 1          ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !43
  %i.mm = sext i8 %i.ml to i32
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mj
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !42
  %i.mo = add nuw nsw i64 %.05780.i95, 2          ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !43
  %i.mr = sext i8 %i.mq to i32
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mo
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !42
  %i.mt = add nuw nsw i64 %.05780.i95, 3          ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !43
  %i.mw = sext i8 %i.mv to i32
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mt
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !42
  %i.my = add nuw nsw i64 %.05780.i95, 4          ; 2 uses
  %exitcond102.not.i96.3 = icmp eq i64 %i.my, %i.if
  br i1 %exitcond102.not.i96.3, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph81.i94, !llvm.loop !629

.lr.ph79.i89:                                     ; preds = %.lr.ph79.i89.prol.loopexit, %.lr.ph79.i89
  %.05678.i90 = phi i64 [ %i.ns, %.lr.ph79.i89 ], [ %.05678.i90.unr, %.lr.ph79.i89.prol.loopexit ] ; 6 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 %.05678.i90
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !43
  %i.nb = zext i8 %i.na to i32
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.05678.i90
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !42
  %i.nd = add nuw nsw i64 %.05678.i90, 1          ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !43
  %i.ng = zext i8 %i.nf to i32
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nd
  store i32 %i.ng, ptr %i.nh, align 4, !tbaa !42
  %i.ni = add nuw nsw i64 %.05678.i90, 2          ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !43
  %i.nl = zext i8 %i.nk to i32
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ni
  store i32 %i.nl, ptr %i.nm, align 4, !tbaa !42
  %i.nn = add nuw nsw i64 %.05678.i90, 3          ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !43
  %i.nq = zext i8 %i.np to i32
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nn
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !42
  %i.ns = add nuw nsw i64 %.05678.i90, 4          ; 2 uses
  %exitcond101.not.i91.3 = icmp eq i64 %i.ns, %i.if
  br i1 %exitcond101.not.i91.3, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph79.i89, !llvm.loop !630

.lr.ph77.i84:                                     ; preds = %.lr.ph77.i84.preheader1094, %.lr.ph77.i84
  %.05576.i85 = phi i64 [ %i.nx, %.lr.ph77.i84 ], [ %.05576.i85.ph, %.lr.ph77.i84.preheader1094 ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05576.i85
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !95
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.05576.i85
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !42
  %i.nx = add nuw nsw i64 %.05576.i85, 1          ; 2 uses
  %exitcond100.not.i86 = icmp eq i64 %i.nx, %i.if
  br i1 %exitcond100.not.i86, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph77.i84, !llvm.loop !631

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader1096, %.lr.ph.i78
  %.075.i79 = phi i64 [ %i.oc, %.lr.ph.i78 ], [ %.075.i79.ph, %.lr.ph.i78.preheader1096 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.075.i79
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !95
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.075.i79
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !42
  %i.oc = add nuw nsw i64 %.075.i79, 1            ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %i.oc, %i.if
  br i1 %exitcond.not.i80, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph.i78, !llvm.loop !632

bb.v:                                             ; preds = %bb.g
  %narrow.i.i112 = tail call i32 @llvm.smax.i32(i32 %.sroa.30226.0, i32 1)
  %spec.select.i.i113 = zext nneg i32 %narrow.i.i112 to i64
  %i.od = and i64 %.sroa.11.0.extract.shift, 255  ; 12 uses
  %i.oe = mul nuw nsw i64 %i.od, %spec.select.i.i113
  %narrow.i.i114 = tail call i32 @llvm.smax.i32(i32 %.sroa.29322.0, i32 1)
  %spec.select.i.i115 = zext nneg i32 %narrow.i.i114 to i64 ; 3 uses
  %i.of = and i64 %.sroa.13.0.extract.shift, 255  ; 3 uses
  %i.og = mul nuw nsw i64 %i.of, %spec.select.i.i115 ; 50 uses
  %i.oh = icmp eq i64 %i.oe, %i.og
  br i1 %i.oh, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  switch i8 %.sroa.0241.0.extract.trunc, label %bb.ac [
    i8 11, label %.preheader.i122
    i8 10, label %.preheader99.i
    i8 12, label %.preheader101.i
    i8 6, label %.preheader103.i
    i8 7, label %.preheader105.i
    i8 5, label %.preheader107.i
    i8 4, label %.preheader109.i
    i8 3, label %.preheader111.i
    i8 2, label %.preheader113.i
    i8 9, label %.preheader115.i
    i8 8, label %.preheader117.i
  ]

.preheader117.i:                                  ; preds = %bb.w
  %.not.i119 = icmp eq i64 %i.od, 0
  br i1 %.not.i119, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %.preheader117.i
  %min.iters.check715 = icmp samesign ult i64 %i.og, 2
  br i1 %min.iters.check715, label %.lr.ph.i120.preheader1117, label %vector.ph716

vector.ph716:                                     ; preds = %.lr.ph.i120.preheader
  %n.vec717 = and i64 %i.og, 549755813886         ; 3 uses
  br label %vector.body718

vector.body718:                                   ; preds = %vector.body718, %vector.ph716
  %index719 = phi i64 [ 0, %vector.ph716 ], [ %index.next721, %vector.body718 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index719
  %wide.load720 = load <2 x i64>, ptr %i.oi, align 8, !tbaa !95
  %i.oj = uitofp <2 x i64> %wide.load720 to <2 x float>
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index719
  store <2 x float> %i.oj, ptr %i.ok, align 4, !tbaa !106
  %index.next721 = add nuw i64 %index719, 2       ; 2 uses
  %i.ol = icmp eq i64 %index.next721, %n.vec717
  br i1 %i.ol, label %middle.block722, label %vector.body718, !llvm.loop !633

middle.block722:                                  ; preds = %vector.body718
  %cmp.n723 = icmp eq i64 %i.og, %n.vec717
  br i1 %cmp.n723, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph.i120.preheader1117

.lr.ph.i120.preheader1117:                        ; preds = %.lr.ph.i120.preheader, %middle.block722
  %.0119.i.ph = phi i64 [ 0, %.lr.ph.i120.preheader ], [ %n.vec717, %middle.block722 ]
  br label %.lr.ph.i120

.preheader115.i:                                  ; preds = %bb.w
  %.not140.i = icmp eq i64 %i.od, 0
  br i1 %.not140.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph121.i.preheader

.lr.ph121.i.preheader:                            ; preds = %.preheader115.i
  %min.iters.check726 = icmp samesign ult i64 %i.og, 4
  br i1 %min.iters.check726, label %.lr.ph121.i.preheader1115, label %vector.ph727

vector.ph727:                                     ; preds = %.lr.ph121.i.preheader
  %n.vec728 = and i64 %i.og, 549755813884         ; 3 uses
  br label %vector.body729

vector.body729:                                   ; preds = %vector.body729, %vector.ph727
  %index730 = phi i64 [ 0, %vector.ph727 ], [ %index.next733, %vector.body729 ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index730 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load731 = load <2 x i64>, ptr %i.om, align 8, !tbaa !95
  %wide.load732 = load <2 x i64>, ptr %i.on, align 8, !tbaa !95
  %10 = sitofp <2 x i64> %wide.load731 to <2 x float>
  %11 = sitofp <2 x i64> %wide.load732 to <2 x float>
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index730 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store <2 x float> %10, ptr %i.oo, align 4, !tbaa !106
  store <2 x float> %11, ptr %12, align 4, !tbaa !106
  %index.next733 = add nuw i64 %index730, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next733, %n.vec728
  br i1 %i.op, label %middle.block734, label %vector.body729, !llvm.loop !634

middle.block734:                                  ; preds = %vector.body729
  %cmp.n735 = icmp eq i64 %i.og, %n.vec728
  br i1 %cmp.n735, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph121.i.preheader1115

.lr.ph121.i.preheader1115:                        ; preds = %.lr.ph121.i.preheader, %middle.block734
  %.087120.i.ph = phi i64 [ 0, %.lr.ph121.i.preheader ], [ %n.vec728, %middle.block734 ]
  br label %.lr.ph121.i

.preheader113.i:                                  ; preds = %bb.w
  %.not141.i = icmp eq i64 %i.od, 0
  br i1 %.not141.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph123.i.preheader

.lr.ph123.i.preheader:                            ; preds = %.preheader113.i
  %min.iters.check743 = icmp samesign ult i64 %i.og, 12
  br i1 %min.iters.check743, label %.lr.ph123.i.preheader1113, label %vector.memcheck744

vector.memcheck744:                               ; preds = %.lr.ph123.i.preheader
  %i.oq = mul nuw nsw i64 %i.of, %spec.select.i.i115
  %i.or = shl nuw nsw i64 %i.oq, 2
  %i.os = getelementptr i8, ptr %3, i64 %i.or
  %i.ot = getelementptr i8, ptr %1, i64 %i.og
  %bound0745 = icmp ult ptr %3, %i.ot
  %bound1746 = icmp ult ptr %1, %i.os
  %found.conflict747 = and i1 %bound0745, %bound1746
  br i1 %found.conflict747, label %.lr.ph123.i.preheader1113, label %vector.ph748

vector.ph748:                                     ; preds = %vector.memcheck744
  %n.vec749 = and i64 %i.og, 549755813880         ; 3 uses
  br label %vector.body750

vector.body750:                                   ; preds = %vector.body750, %vector.ph748
  %index751 = phi i64 [ 0, %vector.ph748 ], [ %index.next754, %vector.body750 ] ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 %index751 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %wide.load752 = load <4 x i8>, ptr %i.ou, align 1, !tbaa !43, !alias.scope !701
  %wide.load753 = load <4 x i8>, ptr %i.ov, align 1, !tbaa !43, !alias.scope !701
  %i.ow = uitofp <4 x i8> %wide.load752 to <4 x float>
  %i.ox = uitofp <4 x i8> %wide.load753 to <4 x float>
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index751 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <4 x float> %i.ow, ptr %i.oy, align 4, !tbaa !106, !alias.scope !702, !noalias !701
  store <4 x float> %i.ox, ptr %i.oz, align 4, !tbaa !106, !alias.scope !702, !noalias !701
  %index.next754 = add nuw i64 %index751, 8       ; 2 uses
  %i.pa = icmp eq i64 %index.next754, %n.vec749
  br i1 %i.pa, label %middle.block755, label %vector.body750, !llvm.loop !638

middle.block755:                                  ; preds = %vector.body750
  %cmp.n756 = icmp eq i64 %i.og, %n.vec749
  br i1 %cmp.n756, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph123.i.preheader1113

.lr.ph123.i.preheader1113:                        ; preds = %vector.memcheck744, %.lr.ph123.i.preheader, %middle.block755
  %.088122.i.ph = phi i64 [ 0, %vector.memcheck744 ], [ 0, %.lr.ph123.i.preheader ], [ %n.vec749, %middle.block755 ] ; 3 uses
  %xtraiter1146 = and i64 %i.og, 3                ; 2 uses
  %lcmp.mod1147.not = icmp eq i64 %xtraiter1146, 0
  br i1 %lcmp.mod1147.not, label %.lr.ph123.i.prol.loopexit, label %.lr.ph123.i.prol

.lr.ph123.i.prol:                                 ; preds = %.lr.ph123.i.preheader1113, %.lr.ph123.i.prol
  %.088122.i.prol = phi i64 [ %i.pf, %.lr.ph123.i.prol ], [ %.088122.i.ph, %.lr.ph123.i.preheader1113 ] ; 3 uses
  %prol.iter1148 = phi i64 [ %prol.iter1148.next, %.lr.ph123.i.prol ], [ 0, %.lr.ph123.i.preheader1113 ]
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 %.088122.i.prol
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !43
  %i.pd = uitofp i8 %i.pc to float
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.088122.i.prol
  store float %i.pd, ptr %i.pe, align 4, !tbaa !106
  %i.pf = add nuw nsw i64 %.088122.i.prol, 1      ; 2 uses
  %prol.iter1148.next = add i64 %prol.iter1148, 1 ; 2 uses
  %prol.iter1148.cmp.not = icmp eq i64 %prol.iter1148.next, %xtraiter1146
  br i1 %prol.iter1148.cmp.not, label %.lr.ph123.i.prol.loopexit, label %.lr.ph123.i.prol, !llvm.loop !639

.lr.ph123.i.prol.loopexit:                        ; preds = %.lr.ph123.i.prol, %.lr.ph123.i.preheader1113
  %.088122.i.unr = phi i64 [ %.088122.i.ph, %.lr.ph123.i.preheader1113 ], [ %i.pf, %.lr.ph123.i.prol ]
  %i.pg = sub nsw i64 %.088122.i.ph, %i.og
  %i.ph = icmp ugt i64 %i.pg, -4
  br i1 %i.ph, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph123.i

.preheader111.i:                                  ; preds = %bb.w
  %.not142.i = icmp eq i64 %i.od, 0
  br i1 %.not142.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph125.i.preheader

.lr.ph125.i.preheader:                            ; preds = %.preheader111.i
  %min.iters.check764 = icmp samesign ult i64 %i.og, 12
  br i1 %min.iters.check764, label %.lr.ph125.i.preheader1111, label %vector.memcheck765

vector.memcheck765:                               ; preds = %.lr.ph125.i.preheader
  %i.pi = mul nuw nsw i64 %i.of, %spec.select.i.i115
  %i.pj = shl nuw nsw i64 %i.pi, 2
  %i.pk = getelementptr i8, ptr %3, i64 %i.pj
  %i.pl = getelementptr i8, ptr %1, i64 %i.og
  %bound0766 = icmp ult ptr %3, %i.pl
  %bound1767 = icmp ult ptr %1, %i.pk
  %found.conflict768 = and i1 %bound0766, %bound1767
  br i1 %found.conflict768, label %.lr.ph125.i.preheader1111, label %vector.ph769

vector.ph769:                                     ; preds = %vector.memcheck765
  %n.vec770 = and i64 %i.og, 549755813880         ; 3 uses
  br label %vector.body771

vector.body771:                                   ; preds = %vector.body771, %vector.ph769
  %index772 = phi i64 [ 0, %vector.ph769 ], [ %index.next775, %vector.body771 ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 %index772 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %wide.load773 = load <4 x i8>, ptr %i.pm, align 1, !tbaa !43, !alias.scope !703
  %wide.load774 = load <4 x i8>, ptr %i.pn, align 1, !tbaa !43, !alias.scope !703
  %i.po = sitofp <4 x i8> %wide.load773 to <4 x float>
  %i.pp = sitofp <4 x i8> %wide.load774 to <4 x float>
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index772 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store <4 x float> %i.po, ptr %i.pq, align 4, !tbaa !106, !alias.scope !704, !noalias !703
  store <4 x float> %i.pp, ptr %i.pr, align 4, !tbaa !106, !alias.scope !704, !noalias !703
  %index.next775 = add nuw i64 %index772, 8       ; 2 uses
  %i.ps = icmp eq i64 %index.next775, %n.vec770
  br i1 %i.ps, label %middle.block776, label %vector.body771, !llvm.loop !643

middle.block776:                                  ; preds = %vector.body771
  %cmp.n777 = icmp eq i64 %i.og, %n.vec770
  br i1 %cmp.n777, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph125.i.preheader1111

.lr.ph125.i.preheader1111:                        ; preds = %vector.memcheck765, %.lr.ph125.i.preheader, %middle.block776
  %.089124.i.ph = phi i64 [ 0, %vector.memcheck765 ], [ 0, %.lr.ph125.i.preheader ], [ %n.vec770, %middle.block776 ] ; 3 uses
  %xtraiter1149 = and i64 %i.og, 3                ; 2 uses
  %lcmp.mod1150.not = icmp eq i64 %xtraiter1149, 0
  br i1 %lcmp.mod1150.not, label %.lr.ph125.i.prol.loopexit, label %.lr.ph125.i.prol

.lr.ph125.i.prol:                                 ; preds = %.lr.ph125.i.preheader1111, %.lr.ph125.i.prol
  %.089124.i.prol = phi i64 [ %i.px, %.lr.ph125.i.prol ], [ %.089124.i.ph, %.lr.ph125.i.preheader1111 ] ; 3 uses
  %prol.iter1151 = phi i64 [ %prol.iter1151.next, %.lr.ph125.i.prol ], [ 0, %.lr.ph125.i.preheader1111 ]
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 %.089124.i.prol
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !43
  %i.pv = sitofp i8 %i.pu to float
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.089124.i.prol
  store float %i.pv, ptr %i.pw, align 4, !tbaa !106
  %i.px = add nuw nsw i64 %.089124.i.prol, 1      ; 2 uses
  %prol.iter1151.next = add i64 %prol.iter1151, 1 ; 2 uses
  %prol.iter1151.cmp.not = icmp eq i64 %prol.iter1151.next, %xtraiter1149
  br i1 %prol.iter1151.cmp.not, label %.lr.ph125.i.prol.loopexit, label %.lr.ph125.i.prol, !llvm.loop !644

.lr.ph125.i.prol.loopexit:                        ; preds = %.lr.ph125.i.prol, %.lr.ph125.i.preheader1111
  %.089124.i.unr = phi i64 [ %.089124.i.ph, %.lr.ph125.i.preheader1111 ], [ %i.px, %.lr.ph125.i.prol ]
  %i.py = sub nsw i64 %.089124.i.ph, %i.og
  %i.pz = icmp ugt i64 %i.py, -4
  br i1 %i.pz, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph125.i

.preheader109.i:                                  ; preds = %bb.w
  %.not143.i = icmp eq i64 %i.od, 0
  br i1 %.not143.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph127.i.preheader

.lr.ph127.i.preheader:                            ; preds = %.preheader109.i
  %min.iters.check780 = icmp samesign ult i64 %i.og, 8
  br i1 %min.iters.check780, label %.lr.ph127.i.preheader1109, label %vector.ph781

vector.ph781:                                     ; preds = %.lr.ph127.i.preheader
  %n.vec782 = and i64 %i.og, 549755813880         ; 3 uses
  br label %vector.body783

vector.body783:                                   ; preds = %vector.body783, %vector.ph781
  %index784 = phi i64 [ 0, %vector.ph781 ], [ %index.next787, %vector.body783 ] ; 3 uses
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index784 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %wide.load785 = load <4 x i16>, ptr %i.qa, align 2, !tbaa !99
  %wide.load786 = load <4 x i16>, ptr %i.qb, align 2, !tbaa !99
  %i.qc = uitofp <4 x i16> %wide.load785 to <4 x float>
  %i.qd = uitofp <4 x i16> %wide.load786 to <4 x float>
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index784 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store <4 x float> %i.qc, ptr %i.qe, align 4, !tbaa !106
  store <4 x float> %i.qd, ptr %i.qf, align 4, !tbaa !106
  %index.next787 = add nuw i64 %index784, 8       ; 2 uses
  %i.qg = icmp eq i64 %index.next787, %n.vec782
  br i1 %i.qg, label %middle.block788, label %vector.body783, !llvm.loop !645

middle.block788:                                  ; preds = %vector.body783
  %cmp.n789 = icmp eq i64 %i.og, %n.vec782
  br i1 %cmp.n789, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph127.i.preheader1109

.lr.ph127.i.preheader1109:                        ; preds = %.lr.ph127.i.preheader, %middle.block788
  %.090126.i.ph = phi i64 [ 0, %.lr.ph127.i.preheader ], [ %n.vec782, %middle.block788 ]
  br label %.lr.ph127.i

.preheader107.i:                                  ; preds = %bb.w
  %.not144.i = icmp eq i64 %i.od, 0
  br i1 %.not144.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph129.i.preheader

.lr.ph129.i.preheader:                            ; preds = %.preheader107.i
  %min.iters.check792 = icmp samesign ult i64 %i.og, 8
  br i1 %min.iters.check792, label %.lr.ph129.i.preheader1107, label %vector.ph793

vector.ph793:                                     ; preds = %.lr.ph129.i.preheader
  %n.vec794 = and i64 %i.og, 549755813880         ; 3 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph793
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next799, %vector.body795 ] ; 3 uses
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index796 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %wide.load797 = load <4 x i16>, ptr %i.qh, align 2, !tbaa !99
  %wide.load798 = load <4 x i16>, ptr %i.qi, align 2, !tbaa !99
  %i.qj = sitofp <4 x i16> %wide.load797 to <4 x float>
  %i.qk = sitofp <4 x i16> %wide.load798 to <4 x float>
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index796 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  store <4 x float> %i.qj, ptr %i.ql, align 4, !tbaa !106
  store <4 x float> %i.qk, ptr %i.qm, align 4, !tbaa !106
  %index.next799 = add nuw i64 %index796, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next799, %n.vec794
  br i1 %i.qn, label %middle.block800, label %vector.body795, !llvm.loop !646

middle.block800:                                  ; preds = %vector.body795
  %cmp.n801 = icmp eq i64 %i.og, %n.vec794
  br i1 %cmp.n801, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph129.i.preheader1107

.lr.ph129.i.preheader1107:                        ; preds = %.lr.ph129.i.preheader, %middle.block800
  %.091128.i.ph = phi i64 [ 0, %.lr.ph129.i.preheader ], [ %n.vec794, %middle.block800 ]
  br label %.lr.ph129.i

.preheader105.i:                                  ; preds = %bb.w
  %.not145.i = icmp eq i64 %i.od, 0
  br i1 %.not145.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph131.i.preheader

.lr.ph131.i.preheader:                            ; preds = %.preheader105.i
  %min.iters.check804 = icmp samesign ult i64 %i.og, 8
  br i1 %min.iters.check804, label %.lr.ph131.i.preheader1105, label %vector.ph805

vector.ph805:                                     ; preds = %.lr.ph131.i.preheader
  %n.vec806 = and i64 %i.og, 549755813880         ; 3 uses
  br label %vector.body807

vector.body807:                                   ; preds = %vector.body807, %vector.ph805
  %index808 = phi i64 [ 0, %vector.ph805 ], [ %index.next811, %vector.body807 ] ; 3 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index808 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %wide.load809 = load <4 x i32>, ptr %i.qo, align 4, !tbaa !42
  %wide.load810 = load <4 x i32>, ptr %i.qp, align 4, !tbaa !42
  %i.qq = sitofp <4 x i32> %wide.load809 to <4 x float>
  %i.qr = sitofp <4 x i32> %wide.load810 to <4 x float>
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index808 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <4 x float> %i.qq, ptr %i.qs, align 4, !tbaa !106
  store <4 x float> %i.qr, ptr %i.qt, align 4, !tbaa !106
  %index.next811 = add nuw i64 %index808, 8       ; 2 uses
  %i.qu = icmp eq i64 %index.next811, %n.vec806
  br i1 %i.qu, label %middle.block812, label %vector.body807, !llvm.loop !647

middle.block812:                                  ; preds = %vector.body807
  %cmp.n813 = icmp eq i64 %i.og, %n.vec806
  br i1 %cmp.n813, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph131.i.preheader1105

.lr.ph131.i.preheader1105:                        ; preds = %.lr.ph131.i.preheader, %middle.block812
  %.092130.i.ph = phi i64 [ 0, %.lr.ph131.i.preheader ], [ %n.vec806, %middle.block812 ]
  br label %.lr.ph131.i

.preheader103.i:                                  ; preds = %bb.w
  %.not146.i = icmp eq i64 %i.od, 0
  br i1 %.not146.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph133.i.preheader

.lr.ph133.i.preheader:                            ; preds = %.preheader103.i
  %min.iters.check816 = icmp samesign ult i64 %i.og, 8
  br i1 %min.iters.check816, label %.lr.ph133.i.preheader1103, label %vector.ph817

vector.ph817:                                     ; preds = %.lr.ph133.i.preheader
  %n.vec818 = and i64 %i.og, 549755813880         ; 3 uses
  br label %vector.body819

vector.body819:                                   ; preds = %vector.body819, %vector.ph817
  %index820 = phi i64 [ 0, %vector.ph817 ], [ %index.next823, %vector.body819 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index820 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load821 = load <4 x i32>, ptr %i.qv, align 4, !tbaa !42
  %wide.load822 = load <4 x i32>, ptr %i.qw, align 4, !tbaa !42
  %i.qx = uitofp <4 x i32> %wide.load821 to <4 x float>
  %i.qy = uitofp <4 x i32> %wide.load822 to <4 x float>
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index820 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store <4 x float> %i.qx, ptr %i.qz, align 4, !tbaa !106
  store <4 x float> %i.qy, ptr %i.ra, align 4, !tbaa !106
  %index.next823 = add nuw i64 %index820, 8       ; 2 uses
  %i.rb = icmp eq i64 %index.next823, %n.vec818
  br i1 %i.rb, label %middle.block824, label %vector.body819, !llvm.loop !648

middle.block824:                                  ; preds = %vector.body819
  %cmp.n825 = icmp eq i64 %i.og, %n.vec818
  br i1 %cmp.n825, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph133.i.preheader1103

.lr.ph133.i.preheader1103:                        ; preds = %.lr.ph133.i.preheader, %middle.block824
  %.093132.i.ph = phi i64 [ 0, %.lr.ph133.i.preheader ], [ %n.vec818, %middle.block824 ]
  br label %.lr.ph133.i

.preheader101.i:                                  ; preds = %bb.w
  %.not147.i = icmp eq i64 %i.od, 0
  br i1 %.not147.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph135.i.preheader

.lr.ph135.i.preheader:                            ; preds = %.preheader101.i
  %min.iters.check828 = icmp samesign ult i64 %i.og, 4
  br i1 %min.iters.check828, label %.lr.ph135.i.preheader1101, label %vector.ph829

vector.ph829:                                     ; preds = %.lr.ph135.i.preheader
  %n.vec830 = and i64 %i.og, 549755813884         ; 3 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph829
  %index832 = phi i64 [ 0, %vector.ph829 ], [ %index.next835, %vector.body831 ] ; 3 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index832 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %wide.load833 = load <2 x double>, ptr %i.rc, align 8, !tbaa !108
  %wide.load834 = load <2 x double>, ptr %i.rd, align 8, !tbaa !108
  %13 = fptrunc <2 x double> %wide.load833 to <2 x float>
  %14 = fptrunc <2 x double> %wide.load834 to <2 x float>
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index832 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store <2 x float> %13, ptr %i.re, align 4, !tbaa !106
  store <2 x float> %14, ptr %15, align 4, !tbaa !106
  %index.next835 = add nuw i64 %index832, 4       ; 2 uses
  %i.rf = icmp eq i64 %index.next835, %n.vec830
  br i1 %i.rf, label %middle.block836, label %vector.body831, !llvm.loop !649

middle.block836:                                  ; preds = %vector.body831
  %cmp.n837 = icmp eq i64 %i.og, %n.vec830
  br i1 %cmp.n837, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph135.i.preheader1101

.lr.ph135.i.preheader1101:                        ; preds = %.lr.ph135.i.preheader, %middle.block836
  %.094134.i.ph = phi i64 [ 0, %.lr.ph135.i.preheader ], [ %n.vec830, %middle.block836 ]
  br label %.lr.ph135.i

.preheader99.i:                                   ; preds = %bb.w
  %.not148.i = icmp eq i64 %i.od, 0
  br i1 %.not148.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph137.i

.preheader.i122:                                  ; preds = %bb.w
  %.not149.i = icmp eq i64 %i.od, 0
  br i1 %.not149.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph139.i.preheader

.lr.ph139.i.preheader:                            ; preds = %.preheader.i122
  %min.iters.check842 = icmp samesign ult i64 %i.og, 8
  %i.rg = sub i64 %i.a, %i.b
  %diff.check844 = icmp ugt i64 %i.rg, -32
  %or.cond1069 = or i1 %min.iters.check842, %diff.check844
  br i1 %or.cond1069, label %.lr.ph139.i.preheader1098, label %vector.ph845

vector.ph845:                                     ; preds = %.lr.ph139.i.preheader
  %n.vec846 = and i64 %i.og, 549755813880         ; 3 uses
  br label %vector.body847

vector.body847:                                   ; preds = %vector.body847, %vector.ph845
  %index848 = phi i64 [ 0, %vector.ph845 ], [ %index.next851, %vector.body847 ] ; 3 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index848 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %wide.load849 = load <4 x float>, ptr %i.rh, align 4, !tbaa !106
  %wide.load850 = load <4 x float>, ptr %i.ri, align 4, !tbaa !106
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index848 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store <4 x float> %wide.load849, ptr %i.rj, align 4, !tbaa !106
  store <4 x float> %wide.load850, ptr %i.rk, align 4, !tbaa !106
  %index.next851 = add nuw i64 %index848, 8       ; 2 uses
  %i.rl = icmp eq i64 %index.next851, %n.vec846
  br i1 %i.rl, label %middle.block852, label %vector.body847, !llvm.loop !650

middle.block852:                                  ; preds = %vector.body847
  %cmp.n853 = icmp eq i64 %i.og, %n.vec846
  br i1 %cmp.n853, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph139.i.preheader1098

.lr.ph139.i.preheader1098:                        ; preds = %.lr.ph139.i.preheader, %middle.block852
  %.096138.i.ph = phi i64 [ 0, %.lr.ph139.i.preheader ], [ %n.vec846, %middle.block852 ] ; 3 uses
  %xtraiter1152 = and i64 %i.og, 3                ; 2 uses
  %lcmp.mod1153.not = icmp eq i64 %xtraiter1152, 0
  br i1 %lcmp.mod1153.not, label %.lr.ph139.i.prol.loopexit, label %.lr.ph139.i.prol

.lr.ph139.i.prol:                                 ; preds = %.lr.ph139.i.preheader1098, %.lr.ph139.i.prol
  %.096138.i.prol = phi i64 [ %i.rp, %.lr.ph139.i.prol ], [ %.096138.i.ph, %.lr.ph139.i.preheader1098 ] ; 3 uses
  %prol.iter1154 = phi i64 [ %prol.iter1154.next, %.lr.ph139.i.prol ], [ 0, %.lr.ph139.i.preheader1098 ]
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.096138.i.prol
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !106
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.096138.i.prol
  store float %i.rn, ptr %i.ro, align 4, !tbaa !106
  %i.rp = add nuw nsw i64 %.096138.i.prol, 1      ; 2 uses
  %prol.iter1154.next = add i64 %prol.iter1154, 1 ; 2 uses
  %prol.iter1154.cmp.not = icmp eq i64 %prol.iter1154.next, %xtraiter1152
  br i1 %prol.iter1154.cmp.not, label %.lr.ph139.i.prol.loopexit, label %.lr.ph139.i.prol, !llvm.loop !651

.lr.ph139.i.prol.loopexit:                        ; preds = %.lr.ph139.i.prol, %.lr.ph139.i.preheader1098
  %.096138.i.unr = phi i64 [ %.096138.i.ph, %.lr.ph139.i.preheader1098 ], [ %i.rp, %.lr.ph139.i.prol ]
  %i.rq = sub nsw i64 %.096138.i.ph, %i.og
  %i.rr = icmp ugt i64 %i.rq, -4
  br i1 %i.rr, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %.lr.ph139.i.prol.loopexit, %.lr.ph139.i
  %.096138.i = phi i64 [ %i.sh, %.lr.ph139.i ], [ %.096138.i.unr, %.lr.ph139.i.prol.loopexit ] ; 6 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.096138.i
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !106
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.096138.i
  store float %i.rt, ptr %i.ru, align 4, !tbaa !106
  %i.rv = add nuw nsw i64 %.096138.i, 1           ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !106
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rv
  store float %i.rx, ptr %i.ry, align 4, !tbaa !106
  %i.rz = add nuw nsw i64 %.096138.i, 2           ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rz
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !106
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rz
  store float %i.sb, ptr %i.sc, align 4, !tbaa !106
  %i.sd = add nuw nsw i64 %.096138.i, 3           ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sd
  %i.sf = load float, ptr %i.se, align 4, !tbaa !106
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sd
  store float %i.sf, ptr %i.sg, align 4, !tbaa !106
  %i.sh = add nuw nsw i64 %.096138.i, 4           ; 2 uses
  %exitcond169.not.i.3 = icmp eq i64 %i.sh, %i.og
  br i1 %exitcond169.not.i.3, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph139.i, !llvm.loop !652

.lr.ph137.i:                                      ; preds = %.preheader99.i, %_ZNK9Imath_3_14halfcvfEv.exit.i
  %.095136.i = phi i64 [ %i.tb, %_ZNK9Imath_3_14halfcvfEv.exit.i ], [ 0, %.preheader99.i ] ; 3 uses
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.095136.i
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !103 ; 2 uses
  %i.sk = zext i16 %i.sj to i32
  %i.sl = shl nuw nsw i32 %i.sk, 13
  %i.sm = and i32 %i.sl, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %i.sj to i32
  %i.sn = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.so = icmp samesign ugt i32 %i.sm, 8388607
  br i1 %i.so, label %bb.x, label %bb.aa, !prof !104

bb.x:                                             ; preds = %.lr.ph137.i
  %i.sp = or disjoint i32 %i.sm, %i.sn            ; 2 uses
  %i.sq = icmp samesign ult i32 %i.sm, 260046848
  br i1 %i.sq, label %bb.y, label %bb.z, !prof !104

bb.y:                                             ; preds = %bb.x
  %i.sr = add nuw nsw i32 %i.sp, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ss = or i32 %i.sp, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.aa:                                            ; preds = %.lr.ph137.i
  %.not.i.i.i = icmp eq i32 %i.sm, 0
  br i1 %.not.i.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.st = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sm, i1 true)
  %i.su = add nsw i32 %i.st, -8                   ; 2 uses
  %i.sv = shl i32 %i.sm, %i.su
  %i.sw = or i32 %i.sn, %i.sv
  %i.sx = or i32 %i.sw, 947912704
  %i.sy = shl nuw nsw i32 %i.su, 23
  %i.sz = sub nuw i32 %i.sx, %i.sy
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

_ZNK9Imath_3_14halfcvfEv.exit.i:                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.i.i.i = phi i32 [ %i.sr, %bb.y ], [ %i.ss, %bb.z ], [ %i.sz, %bb.ab ], [ %i.sn, %bb.aa ]
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.095136.i
  store i32 %.sroa.0.0.i.i.i, ptr %i.ta, align 4, !tbaa !106
  %i.tb = add nuw nsw i64 %.095136.i, 1           ; 2 uses
  %exitcond168.not.i = icmp eq i64 %i.tb, %i.og
  br i1 %exitcond168.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph137.i, !llvm.loop !653

.lr.ph135.i:                                      ; preds = %.lr.ph135.i.preheader1101, %.lr.ph135.i
  %.094134.i = phi i64 [ %i.tg, %.lr.ph135.i ], [ %.094134.i.ph, %.lr.ph135.i.preheader1101 ] ; 3 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.094134.i
  %i.td = load double, ptr %i.tc, align 8, !tbaa !108
  %i.te = fptrunc double %i.td to float
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.094134.i
  store float %i.te, ptr %i.tf, align 4, !tbaa !106
  %i.tg = add nuw nsw i64 %.094134.i, 1           ; 2 uses
  %exitcond167.not.i = icmp eq i64 %i.tg, %i.og
  br i1 %exitcond167.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph135.i, !llvm.loop !654

.lr.ph133.i:                                      ; preds = %.lr.ph133.i.preheader1103, %.lr.ph133.i
  %.093132.i = phi i64 [ %i.tl, %.lr.ph133.i ], [ %.093132.i.ph, %.lr.ph133.i.preheader1103 ] ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.093132.i
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !42
  %i.tj = uitofp i32 %i.ti to float
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.093132.i
  store float %i.tj, ptr %i.tk, align 4, !tbaa !106
  %i.tl = add nuw nsw i64 %.093132.i, 1           ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.tl, %i.og
  br i1 %exitcond166.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph133.i, !llvm.loop !655

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader1105, %.lr.ph131.i
  %.092130.i = phi i64 [ %i.tq, %.lr.ph131.i ], [ %.092130.i.ph, %.lr.ph131.i.preheader1105 ] ; 3 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.092130.i
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !42
  %i.to = sitofp i32 %i.tn to float
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.092130.i
  store float %i.to, ptr %i.tp, align 4, !tbaa !106
  %i.tq = add nuw nsw i64 %.092130.i, 1           ; 2 uses
  %exitcond165.not.i = icmp eq i64 %i.tq, %i.og
  br i1 %exitcond165.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph131.i, !llvm.loop !656

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader1107, %.lr.ph129.i
  %.091128.i = phi i64 [ %i.tv, %.lr.ph129.i ], [ %.091128.i.ph, %.lr.ph129.i.preheader1107 ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.091128.i
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !99
  %i.tt = sitofp i16 %i.ts to float
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.091128.i
  store float %i.tt, ptr %i.tu, align 4, !tbaa !106
  %i.tv = add nuw nsw i64 %.091128.i, 1           ; 2 uses
  %exitcond164.not.i = icmp eq i64 %i.tv, %i.og
  br i1 %exitcond164.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph129.i, !llvm.loop !657

.lr.ph127.i:                                      ; preds = %.lr.ph127.i.preheader1109, %.lr.ph127.i
  %.090126.i = phi i64 [ %i.ua, %.lr.ph127.i ], [ %.090126.i.ph, %.lr.ph127.i.preheader1109 ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.090126.i
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !99
  %i.ty = uitofp i16 %i.tx to float
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.090126.i
  store float %i.ty, ptr %i.tz, align 4, !tbaa !106
  %i.ua = add nuw nsw i64 %.090126.i, 1           ; 2 uses
  %exitcond163.not.i = icmp eq i64 %i.ua, %i.og
  br i1 %exitcond163.not.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_19to_floatsIdEEbNS0_8TypeDescEPKvPT_m.exit, label %.lr.ph127.i, !llvm.loop !658

end_hunk_0
