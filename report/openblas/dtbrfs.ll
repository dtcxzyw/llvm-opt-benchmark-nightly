Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtbrfs?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dtbrfs_:bb.a
  %scevgep1086 = getelementptr i8, ptr %14, i64 %i.ml
  %i.mm = getelementptr i8, ptr %14, i64 %i.ml
  %scevgep1087 = getelementptr i8, ptr %i.mm, i64 8
  %i.mn = trunc i64 %indvar1083 to i32
  %i.mo = add i32 %i.ly, %i.mn
  %i.mp = sext i32 %i.mo to i64
  %smin1088 = call i64 @llvm.smin.i64(i64 %i.lz, i64 %i.mp)
  %smax1089 = call i64 @llvm.smax.i64(i64 %smin1088, i64 %indvars.iv781)
  %i.mq = xor i64 %indvar1083, -1
  %i.mr = add i64 %smax1089, %i.mq
  %i.ms = shl nsw i64 %i.mr, 3                    ; 2 uses
  %scevgep1090 = getelementptr i8, ptr %scevgep1087, i64 %i.ms
  %i.mt = trunc i64 %indvar1083 to i32
  %i.mu = mul i32 %i.g, %i.mt
  %i.mv = add i32 %i.mu, %i.be
  %i.mw = sext i32 %i.mv to i64
  %i.mx = shl nsw i64 %i.mw, 3                    ; 2 uses
  %scevgep1092 = getelementptr i8, ptr %scevgep1091, i64 %i.mx
  %i.my = getelementptr i8, ptr %scevgep1093, i64 %i.ms
  %scevgep1094 = getelementptr i8, ptr %i.my, i64 %i.mx
  %i.mz = add i32 %i.ly, %indvar1079
  %i.na = sext i32 %i.mz to i64
  %smin1081 = call i64 @llvm.smin.i64(i64 %i.lx, i64 %i.na)
  %smax1082 = call i64 @llvm.smax.i64(i64 %smin1081, i64 %indvars.iv781)
  %i.nb = xor i64 %indvar1083, -1
  %i.nc = add i64 %smax1082, %i.nb                ; 2 uses
  %i.nd = trunc i64 %indvar1083 to i32
  %i.ne = mul i32 %i.g, %i.nd
  %i.nf = add i32 %i.ne, %i.be                    ; 2 uses
  %gep913 = getelementptr [8 x i8], ptr %invariant.gep912, i64 %indvars.iv781
  %i.ng = load double, ptr %gep913, align 8, !tbaa !64 ; 3 uses
  %i.nh = fcmp oge double %i.ng, 0.000000e+00
  %i.ni = fneg double %i.ng
  %i.nj = select i1 %i.nh, double %i.ng, double %i.ni ; 3 uses
  %i.nk = trunc i64 %indvars.iv781 to i32
  %i.nl = add i32 %i.lv, %i.nk
  %i.nm = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.nl)
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %.not594645 = icmp sgt i64 %indvars.iv781, %i.nn
  br i1 %.not594645, label %._crit_edge649, label %iter.check1123

iter.check1123:                                   ; preds = %bb.y
  %i.no = trunc nuw nsw i64 %indvars.iv781 to i32
  %i.np = mul i32 %.2540651739, %i.no             ; 3 uses
  %min.iters.check1101 = icmp ult i64 %i.mk, 4
  br i1 %min.iters.check1101, label %vec.epilog.scalar.ph1124.preheader, label %vector.scevcheck1078

vector.scevcheck1078:                             ; preds = %iter.check1123
  %i.nq = trunc i64 %i.nc to i32
  %i.nr = add i32 %i.nf, %i.nq
  %i.ns = icmp slt i32 %i.nr, %i.nf
  %i.nt = icmp ugt i64 %i.nc, 4294967295
  %i.nu = or i1 %i.ns, %i.nt
  br i1 %i.nu, label %vec.epilog.scalar.ph1124.preheader, label %vector.memcheck1085

vector.memcheck1085:                              ; preds = %vector.scevcheck1078
  %bound01095 = icmp ult ptr %scevgep1086, %scevgep1094
  %bound11096 = icmp ult ptr %scevgep1092, %scevgep1090
  %found.conflict1097 = and i1 %bound01095, %bound11096
  br i1 %found.conflict1097, label %vec.epilog.scalar.ph1124.preheader, label %vector.main.loop.iter.check1102

vector.main.loop.iter.check1102:                  ; preds = %vector.memcheck1085
  %min.iters.check1103 = icmp ult i64 %i.mk, 16
  br i1 %min.iters.check1103, label %vec.epilog.ph1127, label %vector.ph1104

vector.ph1104:                                    ; preds = %vector.main.loop.iter.check1102
  %i.nv = and i64 %i.mk, 12
  %n.vec1105 = and i64 %i.mk, -16                 ; 4 uses
  %i.nw = add i64 %indvars.iv781, %n.vec1105
  %broadcast.splatinsert1106 = insertelement <4 x double> poison, double %i.nj, i64 0
  %broadcast.splat1107 = shufflevector <4 x double> %broadcast.splatinsert1106, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op1335 = add i32 1, %i.np
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.ph1104, %vector.body1108
  %index1109 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1118, %vector.body1108 ] ; 2 uses
  %i.nx = add nuw i64 %indvars.iv781, %index1109  ; 2 uses
  %i.ny = trunc i64 %i.nx to i32
  %.reass1336 = add i32 %i.ny, %invariant.op1335
  %i.nz = sext i32 %.reass1336 to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nz ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 64
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 96
  %wide.load1110 = load <4 x double>, ptr %i.oa, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %wide.load1111 = load <4 x double>, ptr %i.ob, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %wide.load1112 = load <4 x double>, ptr %i.oc, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %wide.load1113 = load <4 x double>, ptr %i.od, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %i.oe = fcmp oge <4 x double> %wide.load1110, zeroinitializer
  %i.of = fcmp oge <4 x double> %wide.load1111, zeroinitializer
  %i.og = fcmp oge <4 x double> %wide.load1112, zeroinitializer
  %i.oh = fcmp oge <4 x double> %wide.load1113, zeroinitializer
  %i.oi = fneg <4 x double> %wide.load1110
  %i.oj = fneg <4 x double> %wide.load1111
  %i.ok = fneg <4 x double> %wide.load1112
  %i.ol = fneg <4 x double> %wide.load1113
  %i.om = select <4 x i1> %i.oe, <4 x double> %wide.load1110, <4 x double> %i.oi
  %i.on = select <4 x i1> %i.of, <4 x double> %wide.load1111, <4 x double> %i.oj
  %i.oo = select <4 x i1> %i.og, <4 x double> %wide.load1112, <4 x double> %i.ok
  %i.op = select <4 x i1> %i.oh, <4 x double> %wide.load1113, <4 x double> %i.ol
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.nx ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 64 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 96 ; 2 uses
  %wide.load1114 = load <4 x double>, ptr %i.oq, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %wide.load1115 = load <4 x double>, ptr %i.or, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %wide.load1116 = load <4 x double>, ptr %i.os, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %wide.load1117 = load <4 x double>, ptr %i.ot, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %i.ou = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.om, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1114)
  %i.ov = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.on, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1115)
  %i.ow = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.oo, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1116)
  %i.ox = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.op, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1117)
  store <4 x double> %i.ou, ptr %i.oq, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  store <4 x double> %i.ov, ptr %i.or, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  store <4 x double> %i.ow, ptr %i.os, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  store <4 x double> %i.ox, ptr %i.ot, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %index.next1118 = add nuw i64 %index1109, 16    ; 2 uses
  %i.oy = icmp eq i64 %index.next1118, %n.vec1105
  br i1 %i.oy, label %middle.block1119, label %vector.body1108, !llvm.loop !29

middle.block1119:                                 ; preds = %vector.body1108
  %cmp.n1120 = icmp eq i64 %i.mk, %n.vec1105
  br i1 %cmp.n1120, label %._crit_edge649, label %vec.epilog.iter.check1125

vec.epilog.iter.check1125:                        ; preds = %middle.block1119
  %min.epilog.iters.check1126 = icmp eq i64 %i.nv, 0
  br i1 %min.epilog.iters.check1126, label %vec.epilog.scalar.ph1124.preheader, label %vec.epilog.ph1127, !prof !69

vec.epilog.ph1127:                                ; preds = %vector.main.loop.iter.check1102, %vec.epilog.iter.check1125
  %vec.epilog.resume.val1121 = phi i64 [ %n.vec1105, %vec.epilog.iter.check1125 ], [ 0, %vector.main.loop.iter.check1102 ]
  %n.vec1128 = and i64 %i.mk, -4                  ; 3 uses
  %i.oz = add i64 %indvars.iv781, %n.vec1128
  %broadcast.splatinsert1129 = insertelement <4 x double> poison, double %i.nj, i64 0
  %broadcast.splat1130 = shufflevector <4 x double> %broadcast.splatinsert1129, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op1337 = add i32 1, %i.np
  br label %vec.epilog.vector.body1131

vec.epilog.vector.body1131:                       ; preds = %vec.epilog.vector.body1131, %vec.epilog.ph1127
  %index1132 = phi i64 [ %vec.epilog.resume.val1121, %vec.epilog.ph1127 ], [ %index.next1135, %vec.epilog.vector.body1131 ] ; 2 uses
  %i.pa = add nuw i64 %indvars.iv781, %index1132  ; 2 uses
  %i.pb = trunc i64 %i.pa to i32
  %.reass1338 = add i32 %i.pb, %invariant.op1337
  %i.pc = sext i32 %.reass1338 to i64
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pc
  %wide.load1133 = load <4 x double>, ptr %i.pd, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %i.pe = fcmp oge <4 x double> %wide.load1133, zeroinitializer
  %i.pf = fneg <4 x double> %wide.load1133
  %i.pg = select <4 x i1> %i.pe, <4 x double> %wide.load1133, <4 x double> %i.pf
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.pa ; 2 uses
  %wide.load1134 = load <4 x double>, ptr %i.ph, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %i.pi = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pg, <4 x double> %broadcast.splat1130, <4 x double> %wide.load1134)
  store <4 x double> %i.pi, ptr %i.ph, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %index.next1135 = add nuw i64 %index1132, 4     ; 2 uses
  %i.pj = icmp eq i64 %index.next1135, %n.vec1128
  br i1 %i.pj, label %vec.epilog.middle.block1136, label %vec.epilog.vector.body1131, !llvm.loop !30

vec.epilog.middle.block1136:                      ; preds = %vec.epilog.vector.body1131
  %cmp.n1137 = icmp eq i64 %i.mk, %n.vec1128
  br i1 %cmp.n1137, label %._crit_edge649, label %vec.epilog.scalar.ph1124.preheader

vec.epilog.scalar.ph1124.preheader:               ; preds = %iter.check1123, %vector.scevcheck1078, %vector.memcheck1085, %vec.epilog.iter.check1125, %vec.epilog.middle.block1136
  %indvars.iv783.ph = phi i64 [ %indvars.iv781, %iter.check1123 ], [ %indvars.iv781, %vector.scevcheck1078 ], [ %indvars.iv781, %vector.memcheck1085 ], [ %i.nw, %vec.epilog.iter.check1125 ], [ %i.oz, %vec.epilog.middle.block1136 ]
  br label %vec.epilog.scalar.ph1124

vec.epilog.scalar.ph1124:                         ; preds = %vec.epilog.scalar.ph1124.preheader, %vec.epilog.scalar.ph1124
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %vec.epilog.scalar.ph1124 ], [ %indvars.iv783.ph, %vec.epilog.scalar.ph1124.preheader ] ; 3 uses
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1 ; 2 uses
  %i.pk = trunc nsw i64 %indvars.iv.next784 to i32
  %i.pl = add i32 %i.np, %i.pk
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pm
  %i.po = load double, ptr %i.pn, align 8, !tbaa !64 ; 3 uses
  %i.pp = fcmp oge double %i.po, 0.000000e+00
  %i.pq = fneg double %i.po
  %i.pr = select i1 %i.pp, double %i.po, double %i.pq
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv783 ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !64
  %i.pu = call double @llvm.fmuladd.f64(double %i.pr, double %i.nj, double %i.pt)
  store double %i.pu, ptr %i.ps, align 8, !tbaa !64
  %.not594.not = icmp slt i64 %indvars.iv783, %i.nn
  br i1 %.not594.not, label %vec.epilog.scalar.ph1124, label %._crit_edge649, !llvm.loop !31

._crit_edge649:                                   ; preds = %vec.epilog.scalar.ph1124, %middle.block1119, %vec.epilog.middle.block1136, %bb.y
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond788.not = icmp eq i64 %indvars.iv.next782, %wide.trip.count787
  %indvar.next1080 = add i32 %indvar1079, 1
  %indvar.next1084 = add i64 %indvar1083, 1
  br i1 %exitcond788.not, label %.loopexit611, label %bb.y, !llvm.loop !32

bb.z:                                             ; preds = %.lr.ph660, %._crit_edge657
  %indvar = phi i32 [ 0, %.lr.ph660 ], [ %indvar.next, %._crit_edge657 ] ; 6 uses
  %indvars.iv794 = phi i64 [ 1, %.lr.ph660 ], [ %indvars.iv.next795, %._crit_edge657 ] ; 6 uses
  %indvars.iv789 = phi i32 [ 2, %.lr.ph660 ], [ %indvars.iv.next790, %._crit_edge657 ] ; 5 uses
  %i.pv = add i32 %i.me, %indvar
  %i.pw = sext i32 %i.pv to i64
  %smin1037 = call i64 @llvm.smin.i64(i64 %i.mg, i64 %i.pw)
  %i.px = sext i32 %indvars.iv789 to i64          ; 2 uses
  %smax1038 = call i64 @llvm.smax.i64(i64 %smin1037, i64 %i.px)
  %i.py = add i64 %smax1038, 1
  %i.pz = sub i64 %i.py, %i.px                    ; 7 uses
  %i.qa = sext i32 %indvars.iv789 to i64          ; 3 uses
  %i.qb = shl nuw nsw i64 %i.qa, 3
  %scevgep1029 = getelementptr i8, ptr %scevgep, i64 %i.qb
  %i.qc = add i32 %i.me, %indvar
  %i.qd = sext i32 %i.qc to i64
  %smin1030 = call i64 @llvm.smin.i64(i64 %i.mf, i64 %i.qd)
  %smax1031 = call i64 @llvm.smax.i64(i64 %smin1030, i64 %i.qa)
  %i.qe = shl nsw i64 %smax1031, 3                ; 2 uses
  %scevgep1032 = getelementptr i8, ptr %14, i64 %i.qe
  %i.qf = mul i32 %i.g, %indvar
  %i.qg = add i32 %i.bb, %i.qf
  %i.qh = sext i32 %i.qg to i64
  %i.qi = shl nsw i64 %i.qh, 3                    ; 2 uses
  %scevgep1034 = getelementptr i8, ptr %scevgep1033, i64 %i.qi
  %i.qj = add i64 %i.qe, %i.qi
  %17 = shl nsw i64 %i.qa, 3
  %i.qk = sub i64 %i.qj, %17
  %scevgep1036 = getelementptr i8, ptr %scevgep1035, i64 %i.qk
  %i.ql = add i32 %i.me, %indvar
  %i.qm = sext i32 %i.ql to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.md, i64 %i.qm)
  %i.qn = sext i32 %indvars.iv789 to i64          ; 2 uses
  %smax1028 = call i64 @llvm.smax.i64(i64 %smin, i64 %i.qn)
  %i.qo = sub i64 %smax1028, %i.qn                ; 2 uses
  %i.qp = mul i32 %i.g, %indvar
  %i.qq = add i32 %i.bb, %i.qp                    ; 2 uses
  %gep915 = getelementptr [8 x i8], ptr %invariant.gep914, i64 %indvars.iv794
  %i.qr = load double, ptr %gep915, align 8, !tbaa !64 ; 3 uses
  %i.qs = fcmp oge double %i.qr, 0.000000e+00
  %i.qt = fneg double %i.qr
  %i.qu = select i1 %i.qs, double %i.qr, double %i.qt ; 4 uses
  %i.qv = trunc i64 %indvars.iv794 to i32
  %i.qw = add i32 %i.mb, %i.qv
  %i.qx = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.qw)
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1 ; 2 uses
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %.not591653.not = icmp slt i64 %indvars.iv794, %i.qy
  br i1 %.not591653.not, label %iter.check1062, label %._crit_edge657

iter.check1062:                                   ; preds = %bb.z
  %i.qz = sext i32 %indvars.iv789 to i64          ; 7 uses
  %i.ra = trunc nuw nsw i64 %indvars.iv794 to i32
  %i.rb = mul i32 %.3541659740, %i.ra             ; 3 uses
  %min.iters.check1040 = icmp ult i64 %i.pz, 4
  br i1 %min.iters.check1040, label %vec.epilog.scalar.ph1063.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check1062
  %i.rc = trunc i64 %i.qo to i32
  %i.rd = add i32 %i.qq, %i.rc
  %i.re = icmp slt i32 %i.rd, %i.qq
  %i.rf = icmp ugt i64 %i.qo, 4294967295
  %i.rg = or i1 %i.re, %i.rf
  br i1 %i.rg, label %vec.epilog.scalar.ph1063.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep1029, %scevgep1036
  %bound1 = icmp ult ptr %scevgep1034, %scevgep1032
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph1063.preheader, label %vector.main.loop.iter.check1041

vector.main.loop.iter.check1041:                  ; preds = %vector.memcheck
  %min.iters.check1042 = icmp ult i64 %i.pz, 16
  br i1 %min.iters.check1042, label %vec.epilog.ph1066, label %vector.ph1043

vector.ph1043:                                    ; preds = %vector.main.loop.iter.check1041
  %i.rh = and i64 %i.pz, 12
  %n.vec1044 = and i64 %i.pz, -16                 ; 4 uses
  %i.ri = add i64 %n.vec1044, %i.qz
  %broadcast.splatinsert1045 = insertelement <4 x double> poison, double %i.qu, i64 0
  %broadcast.splat1046 = shufflevector <4 x double> %broadcast.splatinsert1045, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op1339 = add i32 1, %i.rb
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.ph1043, %vector.body1047
  %index1048 = phi i64 [ 0, %vector.ph1043 ], [ %index.next1057, %vector.body1047 ] ; 2 uses
  %i.rj = add nuw i64 %index1048, %i.qz           ; 2 uses
  %i.rk = trunc i64 %i.rj to i32
  %.reass1340 = add i32 %i.rk, %invariant.op1339
  %i.rl = sext i32 %.reass1340 to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.rl ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 96
  %wide.load1049 = load <4 x double>, ptr %i.rm, align 8, !tbaa !64, !alias.scope !77 ; 3 uses
  %wide.load1050 = load <4 x double>, ptr %i.rn, align 8, !tbaa !64, !alias.scope !77 ; 3 uses
  %wide.load1051 = load <4 x double>, ptr %i.ro, align 8, !tbaa !64, !alias.scope !77 ; 3 uses
  %wide.load1052 = load <4 x double>, ptr %i.rp, align 8, !tbaa !64, !alias.scope !77 ; 3 uses
  %i.rq = fcmp oge <4 x double> %wide.load1049, zeroinitializer
  %i.rr = fcmp oge <4 x double> %wide.load1050, zeroinitializer
  %i.rs = fcmp oge <4 x double> %wide.load1051, zeroinitializer
  %i.rt = fcmp oge <4 x double> %wide.load1052, zeroinitializer
  %i.ru = fneg <4 x double> %wide.load1049
  %i.rv = fneg <4 x double> %wide.load1050
  %i.rw = fneg <4 x double> %wide.load1051
  %i.rx = fneg <4 x double> %wide.load1052
  %i.ry = select <4 x i1> %i.rq, <4 x double> %wide.load1049, <4 x double> %i.ru
  %i.rz = select <4 x i1> %i.rr, <4 x double> %wide.load1050, <4 x double> %i.rv
  %i.sa = select <4 x i1> %i.rs, <4 x double> %wide.load1051, <4 x double> %i.rw
  %i.sb = select <4 x i1> %i.rt, <4 x double> %wide.load1052, <4 x double> %i.rx
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.rj ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 64 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 96 ; 2 uses
  %wide.load1053 = load <4 x double>, ptr %i.sc, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  %wide.load1054 = load <4 x double>, ptr %i.sd, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  %wide.load1055 = load <4 x double>, ptr %i.se, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  %wide.load1056 = load <4 x double>, ptr %i.sf, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  %i.sg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ry, <4 x double> %broadcast.splat1046, <4 x double> %wide.load1053)
  %i.sh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rz, <4 x double> %broadcast.splat1046, <4 x double> %wide.load1054)
  %i.si = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sa, <4 x double> %broadcast.splat1046, <4 x double> %wide.load1055)
  %i.sj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sb, <4 x double> %broadcast.splat1046, <4 x double> %wide.load1056)
  store <4 x double> %i.sg, ptr %i.sc, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  store <4 x double> %i.sh, ptr %i.sd, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  store <4 x double> %i.si, ptr %i.se, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  store <4 x double> %i.sj, ptr %i.sf, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  %index.next1057 = add nuw i64 %index1048, 16    ; 2 uses
  %i.sk = icmp eq i64 %index.next1057, %n.vec1044
  br i1 %i.sk, label %middle.block1058, label %vector.body1047, !llvm.loop !36

middle.block1058:                                 ; preds = %vector.body1047
  %cmp.n1059 = icmp eq i64 %i.pz, %n.vec1044
  br i1 %cmp.n1059, label %._crit_edge657, label %vec.epilog.iter.check1064

vec.epilog.iter.check1064:                        ; preds = %middle.block1058
  %min.epilog.iters.check1065 = icmp eq i64 %i.rh, 0
  br i1 %min.epilog.iters.check1065, label %vec.epilog.scalar.ph1063.preheader, label %vec.epilog.ph1066, !prof !69

vec.epilog.ph1066:                                ; preds = %vector.main.loop.iter.check1041, %vec.epilog.iter.check1064
  %vec.epilog.resume.val1060 = phi i64 [ %n.vec1044, %vec.epilog.iter.check1064 ], [ 0, %vector.main.loop.iter.check1041 ]
  %n.vec1067 = and i64 %i.pz, -4                  ; 3 uses
  %i.sl = add i64 %n.vec1067, %i.qz
  %broadcast.splatinsert1068 = insertelement <4 x double> poison, double %i.qu, i64 0
  %broadcast.splat1069 = shufflevector <4 x double> %broadcast.splatinsert1068, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op1341 = add i32 1, %i.rb
  br label %vec.epilog.vector.body1070

vec.epilog.vector.body1070:                       ; preds = %vec.epilog.vector.body1070, %vec.epilog.ph1066
  %index1071 = phi i64 [ %vec.epilog.resume.val1060, %vec.epilog.ph1066 ], [ %index.next1074, %vec.epilog.vector.body1070 ] ; 2 uses
  %i.sm = add nuw i64 %index1071, %i.qz           ; 2 uses
  %i.sn = trunc i64 %i.sm to i32
  %.reass1342 = add i32 %i.sn, %invariant.op1341
  %i.so = sext i32 %.reass1342 to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.so
  %wide.load1072 = load <4 x double>, ptr %i.sp, align 8, !tbaa !64, !alias.scope !77 ; 3 uses
  %i.sq = fcmp oge <4 x double> %wide.load1072, zeroinitializer
  %i.sr = fneg <4 x double> %wide.load1072
  %i.ss = select <4 x i1> %i.sq, <4 x double> %wide.load1072, <4 x double> %i.sr
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.sm ; 2 uses
  %wide.load1073 = load <4 x double>, ptr %i.st, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  %i.su = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ss, <4 x double> %broadcast.splat1069, <4 x double> %wide.load1073)
  store <4 x double> %i.su, ptr %i.st, align 8, !tbaa !64, !alias.scope !78, !noalias !77
  %index.next1074 = add nuw i64 %index1071, 4     ; 2 uses
  %i.sv = icmp eq i64 %index.next1074, %n.vec1067
  br i1 %i.sv, label %vec.epilog.middle.block1075, label %vec.epilog.vector.body1070, !llvm.loop !37

vec.epilog.middle.block1075:                      ; preds = %vec.epilog.vector.body1070
  %cmp.n1076 = icmp eq i64 %i.pz, %n.vec1067
  br i1 %cmp.n1076, label %._crit_edge657, label %vec.epilog.scalar.ph1063.preheader

vec.epilog.scalar.ph1063.preheader:               ; preds = %iter.check1062, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check1064, %vec.epilog.middle.block1075
  %indvars.iv791.ph = phi i64 [ %i.qz, %iter.check1062 ], [ %i.qz, %vector.scevcheck ], [ %i.qz, %vector.memcheck ], [ %i.ri, %vec.epilog.iter.check1064 ], [ %i.sl, %vec.epilog.middle.block1075 ]
  br label %vec.epilog.scalar.ph1063

vec.epilog.scalar.ph1063:                         ; preds = %vec.epilog.scalar.ph1063.preheader, %vec.epilog.scalar.ph1063
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %vec.epilog.scalar.ph1063 ], [ %indvars.iv791.ph, %vec.epilog.scalar.ph1063.preheader ] ; 3 uses
  %indvars.iv.next792 = add nuw nsw i64 %indvars.iv791, 1 ; 2 uses
  %i.sw = trunc nsw i64 %indvars.iv.next792 to i32
  %i.sx = add i32 %i.rb, %i.sw
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.sy
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !64 ; 3 uses
  %i.tb = fcmp oge double %i.ta, 0.000000e+00
  %i.tc = fneg double %i.ta
  %i.td = select i1 %i.tb, double %i.ta, double %i.tc
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv791 ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !64
  %i.tg = call double @llvm.fmuladd.f64(double %i.td, double %i.qu, double %i.tf)
  store double %i.tg, ptr %i.te, align 8, !tbaa !64
  %.not591.not = icmp slt i64 %indvars.iv791, %i.qy
  br i1 %.not591.not, label %vec.epilog.scalar.ph1063, label %._crit_edge657, !llvm.loop !38

._crit_edge657:                                   ; preds = %vec.epilog.scalar.ph1063, %middle.block1058, %vec.epilog.middle.block1075, %bb.z
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv794 ; 2 uses
  %i.ti = load double, ptr %i.th, align 8, !tbaa !64
  %i.tj = fadd double %i.qu, %i.ti
  store double %i.tj, ptr %i.th, align 8, !tbaa !64
  %indvars.iv.next790 = add nuw i32 %indvars.iv789, 1
  %exitcond798.not = icmp eq i64 %indvars.iv.next795, %wide.trip.count797
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond798.not, label %.loopexit611, label %bb.z, !llvm.loop !39

bb.aa:                                            ; preds = %._crit_edge
  br i1 %.not, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not568, label %.preheader614, label %.preheader616

.preheader616:                                    ; preds = %bb.ab
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph669

.lr.ph669:                                        ; preds = %.preheader616
  %i.tk = load i32, ptr %4, align 4, !tbaa !62    ; 3 uses
  %i.tl = sub i32 1, %i.tk
  %i.tm = add nuw i32 %i.ci, 1
  %wide.trip.count808 = zext i32 %i.tm to i64
  %.not587661 = icmp slt i32 %i.tk, 0
  %invariant.op918 = add i32 %i.tk, 1
  %invariant.gep916 = getelementptr [8 x i8], ptr %i.o, i64 %i.br
  br label %bb.ac

.preheader614:                                    ; preds = %bb.ab
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph679

.lr.ph679:                                        ; preds = %.preheader614
  %i.tn = load i32, ptr %4, align 4, !tbaa !62    ; 3 uses
  %i.to = sub i32 1, %i.tn
  %i.tp = add nuw i32 %i.ci, 1
end_hunk_0
