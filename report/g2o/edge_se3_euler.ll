Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_:bb.a
  %i.as = and <2 x i64> %i.ap, splat (i64 1152921504606846976)
  %i.at = and <2 x i1> %i.aq, %i.ar
  %i.au = icmp ne <2 x i64> %i.as, zeroinitializer
  %i.av = or <2 x i1> %i.at, %i.au
  %i.aw = bitcast <2 x i1> %i.av to i2
  %.not118 = icmp eq i2 %i.aw, 0
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ax = mul nsw i64 %.0810.i, %i.s
  %i.ay = getelementptr [8 x i8], ptr %i.r, i64 %i.ax ; 4 uses
  %i.az = mul nsw i64 %.0810.i, %i.x
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.az ; 4 uses
  %.not118.not = xor i1 %.not118, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not118.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !10, !alias.scope !275
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ay, i64 %index ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <2 x double>, ptr %i.bd, align 8, !tbaa !10, !alias.scope !276
  %wide.load75 = load <2 x double>, ptr %i.be, align 8, !tbaa !10, !alias.scope !276
  %i.bf = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bg = fmul <2 x double> %wide.load75, %broadcast.splat
  %i.bh = getelementptr i8, ptr %i.bc, i64 16     ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.bc, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  %wide.load77 = load <2 x double>, ptr %i.bh, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  %i.bi = fsub <2 x double> %wide.load76, %i.bf
  %i.bj = fsub <2 x double> %wide.load77, %i.bg
  store <2 x double> %i.bi, ptr %i.bc, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  store <2 x double> %i.bj, ptr %i.bh, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bl = getelementptr [8 x i8], ptr %i.ay, i64 %.09.i.ph ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = load double, ptr %i.ba, align 8, !tbaa !10
  %i.bp = fmul double %i.bn, %i.bo
  %i.bq = load double, ptr %i.bl, align 8, !tbaa !10
  %i.br = fsub double %i.bq, %i.bp
  store double %i.br, ptr %i.bl, align 8, !tbaa !10
  %i.bs = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bs, %scalar.ph.prol ]
  %i.bt = icmp eq i64 %i.j, %.neg
  br i1 %i.bt, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bu, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !250

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.ck, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bv = getelementptr [8 x i8], ptr %i.ay, i64 %.09.i ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !10
  %i.by = load double, ptr %i.ba, align 8, !tbaa !10
  %i.bz = fmul double %i.bx, %i.by
  %i.ca = load double, ptr %i.bv, align 8, !tbaa !10
  %i.cb = fsub double %i.ca, %i.bz
  store double %i.cb, ptr %i.bv, align 8, !tbaa !10
  %i.cc = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.ay, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cc
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !10
  %i.cg = load double, ptr %i.ba, align 8, !tbaa !10
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.cd, align 8, !tbaa !10
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.cd, align 8, !tbaa !10
  %i.ck = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ck, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !251

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !100 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !100 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !279, !nonnull !45, !align !125
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !100
  %i.ct = and i64 %i.cs, 1
  %i.cu = icmp sgt i64 %i.co, 0
  br i1 %i.cu, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.cv = lshr exact i64 %i.d, 3
  %i.cw = and i64 %i.cv, 1
  %i.cx = tail call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.cm)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cz = shl i64 %i.cm, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.gu, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.cx, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.da = sub i64 %i.cm, %.03550                  ; 3 uses
  %i.db = and i64 %i.da, -2                       ; 2 uses
  %i.dc = add nsw i64 %i.db, %.03550              ; 6 uses
  %i.dd = icmp sgt i64 %.03550, 0
  br i1 %i.dd, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !280, !nonnull !45, !align !125 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !272, !noalias !281
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !274, !noalias !281, !nonnull !45, !align !125
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !100, !noalias !281
  %i.dl = mul nsw i64 %i.dk, %.03451
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dl
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !270, !noalias !282
  %i.do = load ptr, ptr %0, align 8, !tbaa !283, !nonnull !45, !align !125 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !120
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !100
  %i.ds = mul nsw i64 %i.dr, %.03451
  %i.dt = getelementptr [8 x i8], ptr %i.dp, i64 %i.ds ; 2 uses
  %i.du = load double, ptr %i.dn, align 8, !tbaa !10
  %i.dv = load double, ptr %i.dm, align 8, !tbaa !10
  %i.dw = fmul double %i.du, %i.dv
  %i.dx = load double, ptr %i.dt, align 8, !tbaa !10
  %i.dy = fsub double %i.dx, %i.dw
  store double %i.dy, ptr %i.dt, align 8, !tbaa !10
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dz = icmp sgt i64 %i.da, 1
  br i1 %i.dz, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.ea = icmp slt i64 %i.dc, %i.cm
  br i1 %i.ea, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.eb = load ptr, ptr %0, align 8, !tbaa !283, !nonnull !45, !align !125 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !120 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !100 ; 2 uses
  %i.ef = mul nsw i64 %i.ee, %.03451
  %i.eg = getelementptr [8 x i8], ptr %i.ec, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.cy, align 8, !tbaa !280, !nonnull !45, !align !125 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !270, !noalias !284 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !272, !noalias !285 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 136
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !274, !noalias !285, !nonnull !45, !align !125
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !100, !noalias !285 ; 2 uses
  %i.ep = mul nsw i64 %i.eo, %.03451
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.ep ; 3 uses
  %i.er = add i64 %.03550, %i.db
  %i.es = sub i64 %i.cm, %i.er                    ; 3 uses
  %min.iters.check94 = icmp ult i64 %i.es, 10
  br i1 %min.iters.check94, label %scalar.ph93.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %.lr.ph49
  %i.et = shl i64 %.03451, 3                      ; 2 uses
  %i.eu = mul i64 %i.ee, %i.et                    ; 2 uses
  %i.ev = shl i64 %i.da, 3
  %i.ew = and i64 %i.ev, -16                      ; 2 uses
  %i.ex = shl i64 %.03550, 3                      ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ec, i64 %i.eu
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ex  ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ec, i64 %i.eu
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.cz  ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ei, i64 %i.ew
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.ei, i64 %i.cz
  %bound096 = icmp ult ptr %i.fa, %i.ff
  %bound197 = icmp ult ptr %i.fe, %i.fc
  %found.conflict98 = and i1 %bound096, %bound197
  %1 = mul i64 %i.eo, %i.et
  %2 = getelementptr i8, ptr %i.ek, i64 %1
  %3 = getelementptr i8, ptr %2, i64 8
  %bound099 = icmp ult ptr %i.fa, %3
  %bound1100 = icmp ult ptr %i.eq, %i.fc
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %found.conflict98, %found.conflict101
  br i1 %conflict.rdx102, label %scalar.ph93.preheader, label %vector.ph103

vector.ph103:                                     ; preds = %vector.memcheck95
  %n.vec104 = and i64 %i.es, -4                   ; 3 uses
  %i.fg = add i64 %i.dc, %n.vec104
  %i.fh = load double, ptr %i.eq, align 8, !tbaa !10, !alias.scope !286
  %broadcast.splatinsert109 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat110 = shufflevector <2 x double> %broadcast.splatinsert109, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next113, %vector.body105 ] ; 2 uses
  %i.fi = add i64 %i.dc, %index106                ; 2 uses
  %i.fj = getelementptr [8 x i8], ptr %i.eg, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load107 = load <2 x double>, ptr %i.fk, align 8, !tbaa !10, !alias.scope !287
  %wide.load108 = load <2 x double>, ptr %i.fl, align 8, !tbaa !10, !alias.scope !287
  %i.fm = fmul <2 x double> %wide.load107, %broadcast.splat110
  %i.fn = fmul <2 x double> %wide.load108, %broadcast.splat110
  %i.fo = getelementptr i8, ptr %i.fj, i64 16     ; 2 uses
  %wide.load111 = load <2 x double>, ptr %i.fj, align 8, !tbaa !10, !alias.scope !288, !noalias !289
  %wide.load112 = load <2 x double>, ptr %i.fo, align 8, !tbaa !10, !alias.scope !288, !noalias !289
  %i.fp = fsub <2 x double> %wide.load111, %i.fm
  %i.fq = fsub <2 x double> %wide.load112, %i.fn
  store <2 x double> %i.fp, ptr %i.fj, align 8, !tbaa !10, !alias.scope !288, !noalias !289
  store <2 x double> %i.fq, ptr %i.fo, align 8, !tbaa !10, !alias.scope !288, !noalias !289
  %index.next113 = add nuw i64 %index106, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.fr, label %middle.block114, label %vector.body105, !llvm.loop !264

middle.block114:                                  ; preds = %vector.body105
  %cmp.n115 = icmp eq i64 %i.es, %n.vec104
  br i1 %cmp.n115, label %._crit_edge, label %scalar.ph93.preheader

scalar.ph93.preheader:                            ; preds = %vector.memcheck95, %.lr.ph49, %middle.block114
  %.048.ph = phi i64 [ %i.dc, %vector.memcheck95 ], [ %i.dc, %.lr.ph49 ], [ %i.fg, %middle.block114 ]
  br label %scalar.ph93

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.gq, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.fs = load ptr, ptr %0, align 8, !tbaa !283, !nonnull !45, !align !125 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !120
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !100
  %i.fw = mul nsw i64 %i.fv, %.03451
  %i.fx = getelementptr [8 x i8], ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr [8 x i8], ptr %i.fx, i64 %.03246 ; 2 uses
  %i.fz = load ptr, ptr %i.cy, align 8, !tbaa !280, !nonnull !45, !align !125 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 192
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 216
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !110
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %.03246
  %i.ge = load <2 x double>, ptr %i.gd, align 1, !tbaa !11
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !112
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 224
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !100
  %i.gi = mul nsw i64 %i.gh, %.03451
  %i.gj = getelementptr [8 x i8], ptr %i.gf, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !10
  %i.gl = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.ge, %i.gm
  %i.go = load <2 x double>, ptr %i.fy, align 16, !tbaa !11
  %i.gp = fsub <2 x double> %i.go, %i.gn
  store <2 x double> %i.gp, ptr %i.fy, align 16, !tbaa !11
  %i.gq = add nsw i64 %.03246, 2                  ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dc
  br i1 %i.gr, label %.lr.ph47, label %.preheader, !llvm.loop !265

._crit_edge:                                      ; preds = %scalar.ph93, %middle.block114, %.preheader
  %i.gs = add nsw i64 %.03550, %i.ct
  %i.gt = srem i64 %i.gs, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.cm, i64 %i.gt)
  %i.gu = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.gu, %i.co
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %bb.c, !llvm.loop !266

scalar.ph93:                                      ; preds = %scalar.ph93.preheader, %scalar.ph93
  %.048 = phi i64 [ %i.hc, %scalar.ph93 ], [ %.048.ph, %scalar.ph93.preheader ] ; 3 uses
  %i.gv = getelementptr [8 x i8], ptr %i.eg, i64 %.048 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.048
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !10
  %i.gy = load double, ptr %i.eq, align 8, !tbaa !10
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = load double, ptr %i.gv, align 8, !tbaa !10
  %i.hb = fsub double %i.ha, %i.gz
  store double %i.hb, ptr %i.gv, align 8, !tbaa !10
  %i.hc = add nsw i64 %.048, 1                    ; 2 uses
  %i.hd = icmp slt i64 %i.hc, %i.cm
  br i1 %i.hd, label %scalar.ph93, label %._crit_edge, !llvm.loop !267

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !95     ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96   ; 2 uses
  %.not156 = icmp eq ptr %i.v, null
  br i1 %.not156, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.w = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.x = icmp samesign ult i64 %i.f, 16385
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #25 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 3 uses
  %i.af = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26call_dense_assignment_loopINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEENS_7ProductINS_9TransposeIKNS2_IS4_Li16ES6_EEEENS9_IKNS8_ISC_S4_Li0EEEEELi1EEENS0_13add_assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %shift16 = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fadd <2 x double> %i.be, %shift16
  %i.bf = extractelement <2 x double> %foldExtExtBinop17, i64 0
  store double %i.bf, ptr %gep.2.i.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !10
  %gep.3.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.bg = load <2 x double>, ptr %i.m, align 16, !tbaa !11
  %i.bh = load <2 x double>, ptr %i.v, align 16, !tbaa !11
  %i.bi = fmul <2 x double> %i.bg, %i.bh
  %i.bj = load <2 x double>, ptr %i.n, align 16, !tbaa !11
  %i.bk = load <2 x double>, ptr %i.w, align 16, !tbaa !11
  %i.bl = fmul <2 x double> %i.bj, %i.bk
  %i.bm = load <2 x double>, ptr %i.o, align 16, !tbaa !11
  %i.bn = load <2 x double>, ptr %i.x, align 16, !tbaa !11
  %i.bo = fmul <2 x double> %i.bm, %i.bn
  %i.bp = fadd <2 x double> %i.bl, %i.bo
  %i.bq = fadd <2 x double> %i.bi, %i.bp          ; 2 uses
  %shift19 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fadd <2 x double> %i.bq, %shift19
  %i.br = extractelement <2 x double> %foldExtExtBinop20, i64 0
  store double %i.br, ptr %gep.3.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !10
  %gep.4.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.bs = load <2 x double>, ptr %i.p, align 16, !tbaa !11
  %i.bt = load <2 x double>, ptr %i.v, align 16, !tbaa !11
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = load <2 x double>, ptr %i.q, align 16, !tbaa !11
  %i.bw = load <2 x double>, ptr %i.w, align 16, !tbaa !11
  %i.bx = fmul <2 x double> %i.bv, %i.bw
  %i.by = load <2 x double>, ptr %i.r, align 16, !tbaa !11
  %i.bz = load <2 x double>, ptr %i.x, align 16, !tbaa !11
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = fadd <2 x double> %i.bx, %i.ca
  %i.cc = fadd <2 x double> %i.bu, %i.cb          ; 2 uses
  %shift22 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23 = fadd <2 x double> %i.cc, %shift22
  %i.cd = extractelement <2 x double> %foldExtExtBinop23, i64 0
  store double %i.cd, ptr %gep.4.i.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !10
  %gep.5.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.ce = load <2 x double>, ptr %i.s, align 16, !tbaa !11
  %i.cf = load <2 x double>, ptr %i.v, align 16, !tbaa !11
  %i.cg = fmul <2 x double> %i.ce, %i.cf
  %i.ch = load <2 x double>, ptr %i.t, align 16, !tbaa !11
  %i.ci = load <2 x double>, ptr %i.w, align 16, !tbaa !11
  %i.cj = fmul <2 x double> %i.ch, %i.ci
  %i.ck = load <2 x double>, ptr %i.u, align 16, !tbaa !11
  %i.cl = load <2 x double>, ptr %i.x, align 16, !tbaa !11
  %i.cm = fmul <2 x double> %i.ck, %i.cl
  %i.cn = fadd <2 x double> %i.cj, %i.cm
  %i.co = fadd <2 x double> %i.cg, %i.cn          ; 2 uses
  %shift25 = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fadd <2 x double> %i.co, %shift25
  %i.cp = extractelement <2 x double> %foldExtExtBinop26, i64 0
  store double %i.cp, ptr %gep.5.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !10
  %i.cq = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !483

bb.b:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = load <2 x double>, ptr %i.b, align 16, !tbaa !11
  store <2 x double> %i.cs, ptr %i.cr, align 16, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cv = load <2 x double>, ptr %i.cu, align 16, !tbaa !11
  store <2 x double> %i.cv, ptr %i.ct, align 16, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cy = load <2 x double>, ptr %i.cx, align 16, !tbaa !11
  store <2 x double> %i.cy, ptr %i.cw, align 16, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.db = load <2 x double>, ptr %i.da, align 16, !tbaa !11
  store <2 x double> %i.db, ptr %i.cz, align 16, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.de = load <2 x double>, ptr %i.dd, align 16, !tbaa !11
  store <2 x double> %i.de, ptr %i.dc, align 16, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dh = load <2 x double>, ptr %i.dg, align 16, !tbaa !11
  store <2 x double> %i.dh, ptr %i.df, align 16, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !11
  store <2 x double> %i.dk, ptr %i.di, align 16, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.dn = load <2 x double>, ptr %i.dm, align 16, !tbaa !11
  store <2 x double> %i.dn, ptr %i.dl, align 16, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.dq = load <2 x double>, ptr %i.dp, align 16, !tbaa !11
  store <2 x double> %i.dq, ptr %i.do, align 16, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.dt = load <2 x double>, ptr %i.ds, align 16, !tbaa !11
  store <2 x double> %i.dt, ptr %i.dr, align 16, !tbaa !11
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.dw = load <2 x double>, ptr %i.dv, align 16, !tbaa !11
  store <2 x double> %i.dw, ptr %i.du, align 16, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !11
  store <2 x double> %i.dz, ptr %i.dx, align 16, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ec = load <2 x double>, ptr %i.eb, align 16, !tbaa !11
  store <2 x double> %i.ec, ptr %i.ea, align 16, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.ef = load <2 x double>, ptr %i.ee, align 16, !tbaa !11
  store <2 x double> %i.ef, ptr %i.ed, align 16, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ei = load <2 x double>, ptr %i.eh, align 16, !tbaa !11
  store <2 x double> %i.ei, ptr %i.eg, align 16, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.el = load <2 x double>, ptr %i.ek, align 16, !tbaa !11
  store <2 x double> %i.el, ptr %i.ej, align 16, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.eo = load <2 x double>, ptr %i.en, align 16, !tbaa !11
  store <2 x double> %i.eo, ptr %i.em, align 16, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.er = load <2 x double>, ptr %i.eq, align 16, !tbaa !11
  store <2 x double> %i.er, ptr %i.ep, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.et = load ptr, ptr %4, align 16, !tbaa !75
  store ptr %i.et, ptr %i.es, align 16, !tbaa !142
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 320
  store ptr %i.cr, ptr %i.eu, align 16, !tbaa !140
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 328
  store i64 6, ptr %i.ev, align 8, !tbaa !494
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ew = load ptr, ptr %0, align 8, !tbaa !73
  store ptr %i.ew, ptr %5, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %5, ptr %6, align 8, !tbaa !495
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.ex, align 8, !tbaa !496
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.ey, align 8, !tbaa !497
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.ez, align 8, !tbaa !498
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS4_IS6_Li16ES8_EEEENSC_IKNSB_ISF_S6_Li0EEEEELi1EEEEENS0_13add_assign_opIddEELi0EEELi0ELi0EE3runERSN_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS4_IS6_Li16ES8_EEEENSC_IKNSB_ISF_S6_Li0EEEEELi1EEEEENS0_13add_assign_opIddEELi0EEELi0ELi0EE3runERSN_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
vector.memcheck:
  %i.a = load ptr, ptr %0, align 8, !tbaa !507, !nonnull !45, !align !125
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 41 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !508, !nonnull !45, !align !76 ; 20 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !75, !noalias !509 ; 39 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.i = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  %i.j = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  %i.k = getelementptr i8, ptr %i.e, i64 40       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.m = getelementptr i8, ptr %i.e, i64 56       ; 2 uses
  %i.n = getelementptr i8, ptr %i.e, i64 64       ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 72       ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 80       ; 2 uses
  %i.q = getelementptr i8, ptr %i.e, i64 88       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.s = getelementptr i8, ptr %i.e, i64 104      ; 2 uses
  %i.t = getelementptr i8, ptr %i.e, i64 112      ; 2 uses
  %i.u = getelementptr i8, ptr %i.e, i64 120      ; 2 uses
  %i.v = getelementptr i8, ptr %i.e, i64 128      ; 2 uses
  %i.w = getelementptr i8, ptr %i.e, i64 136      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.y = getelementptr i8, ptr %i.e, i64 152      ; 2 uses
  %i.z = getelementptr i8, ptr %i.e, i64 160      ; 2 uses
  %i.aa = getelementptr i8, ptr %i.e, i64 168     ; 2 uses
  %i.ab = getelementptr i8, ptr %i.e, i64 176     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.e, i64 184     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.e, i64 200     ; 2 uses
  %i.af = getelementptr i8, ptr %i.e, i64 208     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.e, i64 216     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.e, i64 224     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.e, i64 232     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.e, i64 248     ; 2 uses
  %i.al = getelementptr i8, ptr %i.e, i64 256     ; 2 uses
  %i.am = getelementptr i8, ptr %i.e, i64 264     ; 2 uses
  %i.an = getelementptr i8, ptr %i.e, i64 272     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.e, i64 280     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 288     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.e, i64 288
  %bound0 = icmp ult ptr %i.b, %i.aq
  %bound0.a = icmp ult ptr %i.e, %i.ap
  %found.conflict = and i1 %bound0, %bound0.a
  %1 = getelementptr i8, ptr %i.d, i64 304
  %bound016 = icmp ult ptr %i.b, %1
  %bound117 = icmp ult ptr %i.f, %i.ap
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx = or i1 %found.conflict, %found.conflict18
  br i1 %conflict.rdx, label %.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.ar = load double, ptr %i.ao, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.as = load double, ptr %i.an, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert90 = insertelement <2 x double> poison, double %i.as, i64 0
  %broadcast.splat91 = shufflevector <2 x double> %broadcast.splatinsert90, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.at = load double, ptr %i.am, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %i.at, i64 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.au = load double, ptr %i.al, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %i.au, i64 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.av = load double, ptr %i.ak, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %i.av, i64 0
  %broadcast.splat85 = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aw = load double, ptr %i.aj, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert82 = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat83 = shufflevector <2 x double> %broadcast.splatinsert82, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ax = load double, ptr %i.ai, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert80 = insertelement <2 x double> poison, double %i.ax, i64 0
  %broadcast.splat81 = shufflevector <2 x double> %broadcast.splatinsert80, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ay = load double, ptr %i.ah, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert78 = insertelement <2 x double> poison, double %i.ay, i64 0
  %broadcast.splat79 = shufflevector <2 x double> %broadcast.splatinsert78, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.az = load double, ptr %i.ag, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert76 = insertelement <2 x double> poison, double %i.az, i64 0
  %broadcast.splat77 = shufflevector <2 x double> %broadcast.splatinsert76, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ba = load double, ptr %i.af, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %i.ba, i64 0
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bb = load double, ptr %i.ae, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.bb, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bc = load double, ptr %i.ad, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bd = load double, ptr %i.ac, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %i.bd, i64 0
  %broadcast.splat69 = shufflevector <2 x double> %broadcast.splatinsert68, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.be = load double, ptr %i.ab, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.be, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bf = load double, ptr %i.aa, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.bf, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = load double, ptr %i.z, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.bg, i64 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bh = load double, ptr %i.y, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert60 = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat61 = shufflevector <2 x double> %broadcast.splatinsert60, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bi = load double, ptr %i.x, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bj = load double, ptr %i.w, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.bj, i64 0
  %broadcast.splat57 = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bk = load double, ptr %i.v, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat55 = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bl = load double, ptr %i.u, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat53 = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bm = load double, ptr %i.t, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert50 = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat51 = shufflevector <2 x double> %broadcast.splatinsert50, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bn = load double, ptr %i.s, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat49 = shufflevector <2 x double> %broadcast.splatinsert48, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bo = load double, ptr %i.r, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %i.bo, i64 0
  %broadcast.splat47 = shufflevector <2 x double> %broadcast.splatinsert46, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bp = load double, ptr %i.q, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bq = load double, ptr %i.p, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %i.bq, i64 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = load double, ptr %i.o, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bs = load double, ptr %i.n, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert38 = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat39 = shufflevector <2 x double> %broadcast.splatinsert38, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bt = load double, ptr %i.m, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %i.bt, i64 0
  %broadcast.splat37 = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bu = load double, ptr %i.l, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat35 = shufflevector <2 x double> %broadcast.splatinsert34, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = load double, ptr %i.k, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert32 = insertelement <2 x double> poison, double %i.bv, i64 0
  %broadcast.splat33 = shufflevector <2 x double> %broadcast.splatinsert32, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bw = load double, ptr %i.j, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert29 = insertelement <2 x double> poison, double %i.bw, i64 0
  %broadcast.splat30 = shufflevector <2 x double> %broadcast.splatinsert29, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = load double, ptr %i.i, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert26 = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat27 = shufflevector <2 x double> %broadcast.splatinsert26, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.by = load double, ptr %i.h, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert23 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat24 = shufflevector <2 x double> %broadcast.splatinsert23, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bz = load double, ptr %i.g, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert20 = insertelement <2 x double> poison, double %i.bz, i64 0
  %broadcast.splat21 = shufflevector <2 x double> %broadcast.splatinsert20, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ca = load double, ptr %i.e, align 8, !tbaa !10, !alias.scope !510
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cb = getelementptr i8, ptr %i.b, i64 48
  %i.cc = getelementptr i8, ptr %i.d, i64 64
  %i.cd = getelementptr i8, ptr %i.d, i64 112
  %i.ce = getelementptr i8, ptr %i.d, i64 160
  %i.cf = getelementptr i8, ptr %i.d, i64 208
  %i.cg = getelementptr i8, ptr %i.d, i64 256
  %wide.load = load <2 x double>, ptr %i.f, align 16, !tbaa !10, !alias.scope !511 ; 6 uses
  %i.ch = fmul <2 x double> %broadcast.splat, %wide.load
  %wide.load19 = load <2 x double>, ptr %i.cc, align 16, !tbaa !10, !alias.scope !511 ; 6 uses
  %i.ci = fmul <2 x double> %broadcast.splat21, %wide.load19
  %wide.load22 = load <2 x double>, ptr %i.cd, align 16, !tbaa !10, !alias.scope !511 ; 6 uses
  %i.cj = fmul <2 x double> %broadcast.splat24, %wide.load22
  %i.ck = fadd <2 x double> %i.ci, %i.cj
  %i.cl = fadd <2 x double> %i.ch, %i.ck
  %wide.load25 = load <2 x double>, ptr %i.ce, align 16, !tbaa !10, !alias.scope !511 ; 6 uses
  %i.cm = fmul <2 x double> %broadcast.splat27, %wide.load25
  %wide.load28 = load <2 x double>, ptr %i.cf, align 16, !tbaa !10, !alias.scope !511 ; 6 uses
  %i.cn = fmul <2 x double> %broadcast.splat30, %wide.load28
  %wide.load31 = load <2 x double>, ptr %i.cg, align 16, !tbaa !10, !alias.scope !511 ; 6 uses
  %i.co = fmul <2 x double> %broadcast.splat33, %wide.load31
  %i.cp = fadd <2 x double> %i.cn, %i.co
  %i.cq = fadd <2 x double> %i.cm, %i.cp
  %i.cr = fadd <2 x double> %i.cl, %i.cq
  %i.cs = load double, ptr %i.b, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.ct = load double, ptr %i.cb, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = fadd <2 x double> %i.cv, %i.cr
  %i.cx = getelementptr i8, ptr %i.b, i64 8
  %i.cy = getelementptr i8, ptr %i.b, i64 56
  %i.cz = fmul <2 x double> %broadcast.splat35, %wide.load
  %i.da = fmul <2 x double> %broadcast.splat37, %wide.load19
  %i.db = fmul <2 x double> %broadcast.splat39, %wide.load22
  %i.dc = fadd <2 x double> %i.da, %i.db
  %i.dd = fadd <2 x double> %i.cz, %i.dc
  %i.de = fmul <2 x double> %broadcast.splat41, %wide.load25
  %i.df = fmul <2 x double> %broadcast.splat43, %wide.load28
  %i.dg = fmul <2 x double> %broadcast.splat45, %wide.load31
  %i.dh = fadd <2 x double> %i.df, %i.dg
  %i.di = fadd <2 x double> %i.de, %i.dh
  %i.dj = fadd <2 x double> %i.dd, %i.di
  %i.dk = load double, ptr %i.cx, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.dl = load double, ptr %i.cy, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.dm = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = fadd <2 x double> %i.dn, %i.dj
  %i.dp = getelementptr i8, ptr %i.b, i64 16
  %i.dq = getelementptr i8, ptr %i.b, i64 64
  %i.dr = fmul <2 x double> %broadcast.splat47, %wide.load
  %i.ds = fmul <2 x double> %broadcast.splat49, %wide.load19
  %i.dt = fmul <2 x double> %broadcast.splat51, %wide.load22
  %i.du = fadd <2 x double> %i.ds, %i.dt
  %i.dv = fadd <2 x double> %i.dr, %i.du
  %i.dw = fmul <2 x double> %broadcast.splat53, %wide.load25
  %i.dx = fmul <2 x double> %broadcast.splat55, %wide.load28
  %i.dy = fmul <2 x double> %broadcast.splat57, %wide.load31
  %i.dz = fadd <2 x double> %i.dx, %i.dy
  %i.ea = fadd <2 x double> %i.dw, %i.dz
  %i.eb = fadd <2 x double> %i.dv, %i.ea
  %i.ec = load double, ptr %i.dp, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.ed = load double, ptr %i.dq, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 1
  %i.eg = fadd <2 x double> %i.ef, %i.eb
  %i.eh = getelementptr i8, ptr %i.b, i64 24
  %i.ei = getelementptr i8, ptr %i.b, i64 72
  %i.ej = fmul <2 x double> %broadcast.splat59, %wide.load
  %i.ek = fmul <2 x double> %broadcast.splat61, %wide.load19
  %i.el = fmul <2 x double> %broadcast.splat63, %wide.load22
  %i.em = fadd <2 x double> %i.ek, %i.el
  %i.en = fadd <2 x double> %i.ej, %i.em
  %i.eo = fmul <2 x double> %broadcast.splat65, %wide.load25
  %i.ep = fmul <2 x double> %broadcast.splat67, %wide.load28
  %i.eq = fmul <2 x double> %broadcast.splat69, %wide.load31
  %i.er = fadd <2 x double> %i.ep, %i.eq
  %i.es = fadd <2 x double> %i.eo, %i.er
  %i.et = fadd <2 x double> %i.en, %i.es
  %i.eu = load double, ptr %i.eh, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.ev = load double, ptr %i.ei, align 8, !tbaa !10, !alias.scope !512, !noalias !513
  %i.ew = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.ev, i64 1
  %i.ey = fadd <2 x double> %i.ex, %i.et
  %i.ez = getelementptr i8, ptr %i.b, i64 32
  %i.fa = getelementptr i8, ptr %i.b, i64 80
  %i.fb = fmul <2 x double> %broadcast.splat71, %wide.load
end_hunk_1
