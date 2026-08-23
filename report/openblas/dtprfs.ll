Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtprfs?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@dtprfs_:bb.a
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.p, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  call void @dtpmv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.bm, ptr noundef nonnull @c__1) #7
  %i.bn = mul nsw i64 %indvars.iv807, %i.au       ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.j, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %3, align 4, !tbaa !8
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.p, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  call void @daxpy_(ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %i.bp, ptr noundef nonnull @c__1, ptr noundef %i.bt, ptr noundef nonnull @c__1) #7
  %i.bu = load i32, ptr %3, align 4, !tbaa !8     ; 34 uses
  %.not519569 = icmp slt i32 %i.bu, 1             ; 10 uses
  br i1 %.not519569, label %._crit_edge, label %iter.check1178

iter.check1178:                                   ; preds = %bb.q
  %i.bv = mul i64 %i.bb, %indvar1159
  %i.bw = add nuw i32 %i.bu, 1
  %wide.trip.count = zext i32 %i.bw to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.bn ; 7 uses
  %i.bx = zext nneg i32 %i.bu to i64              ; 5 uses
  %min.iters.check1162 = icmp ult i32 %i.bu, 4
  %.reass1277 = add i64 %i.bv, %invariant.op1276
  %diff.check = icmp ult i64 %.reass1277, 127
  %or.cond = select i1 %min.iters.check1162, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check1163

vector.main.loop.iter.check1163:                  ; preds = %iter.check1178
  %min.iters.check1164 = icmp ult i32 %i.bu, 16
  br i1 %min.iters.check1164, label %vec.epilog.ph1182, label %vector.ph1165

vector.ph1165:                                    ; preds = %vector.main.loop.iter.check1163
  %i.by = and i64 %i.bx, 12
  %n.vec1166 = and i64 %i.bx, 2147483632          ; 4 uses
  %i.bz = or disjoint i64 %n.vec1166, 1
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1173, %vector.body1167 ] ; 3 uses
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1168 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 40
  %i.cd = getelementptr i8, ptr %i.ca, i64 72
  %i.ce = getelementptr i8, ptr %i.ca, i64 104
  %wide.load1169 = load <4 x double>, ptr %i.cb, align 8, !tbaa !9 ; 3 uses
  %wide.load1170 = load <4 x double>, ptr %i.cc, align 8, !tbaa !9 ; 3 uses
  %wide.load1171 = load <4 x double>, ptr %i.cd, align 8, !tbaa !9 ; 3 uses
  %wide.load1172 = load <4 x double>, ptr %i.ce, align 8, !tbaa !9 ; 3 uses
  %i.cf = fcmp oge <4 x double> %wide.load1169, zeroinitializer
  %i.cg = fcmp oge <4 x double> %wide.load1170, zeroinitializer
  %i.ch = fcmp oge <4 x double> %wide.load1171, zeroinitializer
  %i.ci = fcmp oge <4 x double> %wide.load1172, zeroinitializer
  %i.cj = fneg <4 x double> %wide.load1169
  %i.ck = fneg <4 x double> %wide.load1170
  %i.cl = fneg <4 x double> %wide.load1171
  %i.cm = fneg <4 x double> %wide.load1172
  %i.cn = select <4 x i1> %i.cf, <4 x double> %wide.load1169, <4 x double> %i.cj
  %i.co = select <4 x i1> %i.cg, <4 x double> %wide.load1170, <4 x double> %i.ck
  %i.cp = select <4 x i1> %i.ch, <4 x double> %wide.load1171, <4 x double> %i.cl
  %i.cq = select <4 x i1> %i.ci, <4 x double> %wide.load1172, <4 x double> %i.cm
  %i.cr = getelementptr [8 x i8], ptr %12, i64 %index1168 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  store <4 x double> %i.cn, ptr %i.cr, align 8, !tbaa !9
  store <4 x double> %i.co, ptr %i.cs, align 8, !tbaa !9
  store <4 x double> %i.cp, ptr %i.ct, align 8, !tbaa !9
  store <4 x double> %i.cq, ptr %i.cu, align 8, !tbaa !9
  %index.next1173 = add nuw i64 %index1168, 16    ; 2 uses
  %i.cv = icmp eq i64 %index.next1173, %n.vec1166
  br i1 %i.cv, label %middle.block1174, label %vector.body1167, !llvm.loop !12

middle.block1174:                                 ; preds = %vector.body1167
  %cmp.n1175 = icmp eq i64 %n.vec1166, %i.bx
  br i1 %cmp.n1175, label %._crit_edge, label %vec.epilog.iter.check1180

vec.epilog.iter.check1180:                        ; preds = %middle.block1174
  %min.epilog.iters.check1181 = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check1181, label %.lr.ph.preheader, label %vec.epilog.ph1182, !prof !16

vec.epilog.ph1182:                                ; preds = %vector.main.loop.iter.check1163, %vec.epilog.iter.check1180
  %vec.epilog.resume.val1176 = phi i64 [ %n.vec1166, %vec.epilog.iter.check1180 ], [ 0, %vector.main.loop.iter.check1163 ]
  %n.vec1183 = and i64 %i.bx, 2147483644          ; 3 uses
  %i.cw = or disjoint i64 %n.vec1183, 1
  br label %vec.epilog.vector.body1184

vec.epilog.vector.body1184:                       ; preds = %vec.epilog.vector.body1184, %vec.epilog.ph1182
  %index1185 = phi i64 [ %vec.epilog.resume.val1176, %vec.epilog.ph1182 ], [ %index.next1187, %vec.epilog.vector.body1184 ] ; 3 uses
  %i.cx = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1185
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %wide.load1186 = load <4 x double>, ptr %i.cy, align 8, !tbaa !9 ; 3 uses
  %i.cz = fcmp oge <4 x double> %wide.load1186, zeroinitializer
  %i.da = fneg <4 x double> %wide.load1186
  %i.db = select <4 x i1> %i.cz, <4 x double> %wide.load1186, <4 x double> %i.da
  %i.dc = getelementptr [8 x i8], ptr %12, i64 %index1185
  store <4 x double> %i.db, ptr %i.dc, align 8, !tbaa !9
  %index.next1187 = add nuw i64 %index1185, 4     ; 2 uses
  %i.dd = icmp eq i64 %index.next1187, %n.vec1183
  br i1 %i.dd, label %vec.epilog.middle.block1188, label %vec.epilog.vector.body1184, !llvm.loop !17

vec.epilog.middle.block1188:                      ; preds = %vec.epilog.vector.body1184
  %cmp.n1189 = icmp eq i64 %n.vec1183, %i.bx
  br i1 %cmp.n1189, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check1178, %vec.epilog.iter.check1180, %vec.epilog.middle.block1188
  %indvars.iv.ph = phi i64 [ 1, %iter.check1178 ], [ %i.bz, %vec.epilog.iter.check1180 ], [ %i.cw, %vec.epilog.middle.block1188 ] ; 4 uses
  %i.de = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.df = zext nneg i32 %i.bu to i64
  %i.dg = sub nsw i64 %i.df, %indvars.iv.ph
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.dh = load double, ptr %gep.prol, align 8, !tbaa !9 ; 3 uses
  %i.di = fcmp oge double %i.dh, 0.000000e+00
  %i.dj = fneg double %i.dh
  %i.dk = select i1 %i.di, double %i.dh, double %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.prol
  store double %i.dk, ptr %i.dl, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !18

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dm = icmp ult i64 %i.dg, 3
  br i1 %i.dm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dn = load double, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %i.do = fcmp oge double %i.dn, 0.000000e+00
  %i.dp = fneg double %i.dn
  %i.dq = select i1 %i.do, double %i.dn, double %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.dq, ptr %i.dr, align 8, !tbaa !9
  %i.ds = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ds, i64 8
  %i.dt = load double, ptr %gep.1, align 8, !tbaa !9 ; 3 uses
  %i.du = fcmp oge double %i.dt, 0.000000e+00
  %i.dv = fneg double %i.dt
  %i.dw = select i1 %i.du, double %i.dt, double %i.dv
  %i.dx = getelementptr [8 x i8], ptr %12, i64 %indvars.iv
  store double %i.dw, ptr %i.dx, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dy = load double, ptr %gep.2, align 8, !tbaa !9 ; 3 uses
  %i.dz = fcmp oge double %i.dy, 0.000000e+00
  %i.ea = fneg double %i.dy
  %i.eb = select i1 %i.dz, double %i.dy, double %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  store double %i.eb, ptr %i.ec, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ed = load double, ptr %gep.3, align 8, !tbaa !9 ; 3 uses
  %i.ee = fcmp oge double %i.ed, 0.000000e+00
  %i.ef = fneg double %i.ed
  %i.eg = select i1 %i.ee, double %i.ed, double %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  store double %i.eg, ptr %i.eh, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1174, %vec.epilog.middle.block1188, %bb.q
  br i1 %.not511, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not514, label %.preheader564, label %.preheader566

.preheader566:                                    ; preds = %bb.s
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph575.preheader

.lr.ph575.preheader:                              ; preds = %.preheader566
  %i.ei = add nuw i32 %i.bu, 1
  %wide.trip.count697 = zext i32 %i.ei to i64
  %invariant.gep843 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  br label %iter.check1142

.preheader564:                                    ; preds = %bb.s
  br i1 %.not519569, label %._crit_edge639.thread, label %.lr.ph584.preheader

.lr.ph584.preheader:                              ; preds = %.preheader564
  %i.ej = add nuw i32 %i.bu, 1
  %wide.trip.count707 = zext i32 %i.ej to i64
  %invariant.gep847 = getelementptr [8 x i8], ptr %i.m, i64 %i.bd
  br label %.lr.ph584

iter.check1142:                                   ; preds = %.lr.ph575.preheader, %.loopexit1192
  %indvar1111 = phi i64 [ 0, %.lr.ph575.preheader ], [ %indvar.next1112, %.loopexit1192 ] ; 2 uses
  %indvars.iv692 = phi i64 [ 1, %.lr.ph575.preheader ], [ %indvars.iv.next693, %.loopexit1192 ] ; 12 uses
  %indvars.iv690 = phi i64 [ 2, %.lr.ph575.preheader ], [ %indvars.iv.next691, %.loopexit1192 ] ; 3 uses
  %.0476574 = phi i32 [ 1, %.lr.ph575.preheader ], [ %i.ht, %.loopexit1192 ] ; 3 uses
  %gep844 = getelementptr [8 x i8], ptr %invariant.gep843, i64 %indvars.iv692
  %i.ek = load double, ptr %gep844, align 8, !tbaa !9 ; 3 uses
  %i.el = fcmp oge double %i.ek, 0.000000e+00
  %i.em = fneg double %i.ek
  %i.en = select i1 %i.el, double %i.ek, double %i.em ; 7 uses
  %i.eo = zext i32 %.0476574 to i64
  %invariant.gep841 = getelementptr [8 x i8], ptr %i.g, i64 %i.eo ; 8 uses
  %min.iters.check1120 = icmp samesign ult i64 %indvars.iv692, 4
  br i1 %min.iters.check1120, label %vec.epilog.scalar.ph1143.preheader, label %vector.memcheck1110

vector.memcheck1110:                              ; preds = %iter.check1142
  %i.ep = shl nuw nsw i64 %indvar1111, 3
  %scevgep1114 = getelementptr i8, ptr %5, i64 %i.ep
  %i.eq = zext i32 %.0476574 to i64
  %i.er = shl nuw nsw i64 %i.eq, 3
  %scevgep1115 = getelementptr i8, ptr %scevgep1114, i64 %i.er
  %15 = shl nuw nsw i64 %indvars.iv692, 3
  %scevgep1113 = getelementptr i8, ptr %12, i64 %15
  %bound01116 = icmp ult ptr %12, %scevgep1115
  %bound11117 = icmp ult ptr %invariant.gep841, %scevgep1113
  %found.conflict1118 = and i1 %bound01116, %bound11117
  br i1 %found.conflict1118, label %vec.epilog.scalar.ph1143.preheader, label %vector.main.loop.iter.check1121

vector.main.loop.iter.check1121:                  ; preds = %vector.memcheck1110
  %min.iters.check1122 = icmp samesign ult i64 %indvars.iv692, 16
  br i1 %min.iters.check1122, label %vec.epilog.ph1146, label %vector.ph1123

vector.ph1123:                                    ; preds = %vector.main.loop.iter.check1121
  %i.es = and i64 %indvars.iv692, 12
  %n.vec1124 = and i64 %indvars.iv692, 9223372036854775792 ; 4 uses
  %i.et = or disjoint i64 %n.vec1124, 1
  %broadcast.splatinsert1125 = insertelement <4 x double> poison, double %i.en, i64 0
  %broadcast.splat1126 = shufflevector <4 x double> %broadcast.splatinsert1125, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %vector.ph1123
  %index1128 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1137, %vector.body1127 ] ; 3 uses
  %i.eu = getelementptr [8 x i8], ptr %invariant.gep841, i64 %index1128 ; 4 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  %i.ew = getelementptr i8, ptr %i.eu, i64 64
  %i.ex = getelementptr i8, ptr %i.eu, i64 96
  %wide.load1129 = load <4 x double>, ptr %i.eu, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %wide.load1130 = load <4 x double>, ptr %i.ev, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %wide.load1131 = load <4 x double>, ptr %i.ew, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %wide.load1132 = load <4 x double>, ptr %i.ex, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %i.ey = fcmp oge <4 x double> %wide.load1129, zeroinitializer
  %i.ez = fcmp oge <4 x double> %wide.load1130, zeroinitializer
  %i.fa = fcmp oge <4 x double> %wide.load1131, zeroinitializer
  %i.fb = fcmp oge <4 x double> %wide.load1132, zeroinitializer
  %i.fc = fneg <4 x double> %wide.load1129
  %i.fd = fneg <4 x double> %wide.load1130
  %i.fe = fneg <4 x double> %wide.load1131
  %i.ff = fneg <4 x double> %wide.load1132
  %i.fg = select <4 x i1> %i.ey, <4 x double> %wide.load1129, <4 x double> %i.fc
  %i.fh = select <4 x i1> %i.ez, <4 x double> %wide.load1130, <4 x double> %i.fd
  %i.fi = select <4 x i1> %i.fa, <4 x double> %wide.load1131, <4 x double> %i.fe
  %i.fj = select <4 x i1> %i.fb, <4 x double> %wide.load1132, <4 x double> %i.ff
  %i.fk = getelementptr [8 x i8], ptr %12, i64 %index1128 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 96 ; 2 uses
  %wide.load1133 = load <4 x double>, ptr %i.fk, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %wide.load1134 = load <4 x double>, ptr %i.fl, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %wide.load1135 = load <4 x double>, ptr %i.fm, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %wide.load1136 = load <4 x double>, ptr %i.fn, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %i.fo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fg, <4 x double> %broadcast.splat1126, <4 x double> %wide.load1133)
  %i.fp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fh, <4 x double> %broadcast.splat1126, <4 x double> %wide.load1134)
  %i.fq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fi, <4 x double> %broadcast.splat1126, <4 x double> %wide.load1135)
  %i.fr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %broadcast.splat1126, <4 x double> %wide.load1136)
  store <4 x double> %i.fo, ptr %i.fk, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  store <4 x double> %i.fp, ptr %i.fl, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  store <4 x double> %i.fq, ptr %i.fm, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  store <4 x double> %i.fr, ptr %i.fn, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %index.next1137 = add nuw i64 %index1128, 16    ; 2 uses
  %i.fs = icmp eq i64 %index.next1137, %n.vec1124
  br i1 %i.fs, label %middle.block1138, label %vector.body1127, !llvm.loop !26

middle.block1138:                                 ; preds = %vector.body1127
  %cmp.n1139 = icmp eq i64 %indvars.iv692, %n.vec1124
  br i1 %cmp.n1139, label %.loopexit1192, label %vec.epilog.iter.check1144

vec.epilog.iter.check1144:                        ; preds = %middle.block1138
  %min.epilog.iters.check1145 = icmp eq i64 %i.es, 0
  br i1 %min.epilog.iters.check1145, label %vec.epilog.scalar.ph1143.preheader, label %vec.epilog.ph1146, !prof !16

vec.epilog.ph1146:                                ; preds = %vector.main.loop.iter.check1121, %vec.epilog.iter.check1144
  %vec.epilog.resume.val1140 = phi i64 [ %n.vec1124, %vec.epilog.iter.check1144 ], [ 0, %vector.main.loop.iter.check1121 ]
  %n.vec1147 = and i64 %indvars.iv692, 9223372036854775804 ; 3 uses
  %i.ft = or disjoint i64 %n.vec1147, 1
  %broadcast.splatinsert1148 = insertelement <4 x double> poison, double %i.en, i64 0
  %broadcast.splat1149 = shufflevector <4 x double> %broadcast.splatinsert1148, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1150

vec.epilog.vector.body1150:                       ; preds = %vec.epilog.vector.body1150, %vec.epilog.ph1146
  %index1151 = phi i64 [ %vec.epilog.resume.val1140, %vec.epilog.ph1146 ], [ %index.next1154, %vec.epilog.vector.body1150 ] ; 3 uses
  %i.fu = getelementptr [8 x i8], ptr %invariant.gep841, i64 %index1151
  %wide.load1152 = load <4 x double>, ptr %i.fu, align 8, !tbaa !9, !alias.scope !21 ; 3 uses
  %i.fv = fcmp oge <4 x double> %wide.load1152, zeroinitializer
  %i.fw = fneg <4 x double> %wide.load1152
  %i.fx = select <4 x i1> %i.fv, <4 x double> %wide.load1152, <4 x double> %i.fw
  %i.fy = getelementptr [8 x i8], ptr %12, i64 %index1151 ; 2 uses
  %wide.load1153 = load <4 x double>, ptr %i.fy, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %i.fz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fx, <4 x double> %broadcast.splat1149, <4 x double> %wide.load1153)
  store <4 x double> %i.fz, ptr %i.fy, align 8, !tbaa !9, !alias.scope !24, !noalias !21
  %index.next1154 = add nuw i64 %index1151, 4     ; 2 uses
  %i.ga = icmp eq i64 %index.next1154, %n.vec1147
  br i1 %i.ga, label %vec.epilog.middle.block1155, label %vec.epilog.vector.body1150, !llvm.loop !27

vec.epilog.middle.block1155:                      ; preds = %vec.epilog.vector.body1150
  %cmp.n1156 = icmp eq i64 %indvars.iv692, %n.vec1147
  br i1 %cmp.n1156, label %.loopexit1192, label %vec.epilog.scalar.ph1143.preheader

vec.epilog.scalar.ph1143.preheader:               ; preds = %vector.memcheck1110, %iter.check1142, %vec.epilog.iter.check1144, %vec.epilog.middle.block1155
  %indvars.iv683.ph = phi i64 [ 1, %iter.check1142 ], [ 1, %vector.memcheck1110 ], [ %i.et, %vec.epilog.iter.check1144 ], [ %i.ft, %vec.epilog.middle.block1155 ] ; 4 uses
  %i.gb = sub i64 %indvars.iv690, %indvars.iv683.ph
  %i.gc = sub i64 %indvars.iv692, %indvars.iv683.ph
  %xtraiter1208 = and i64 %i.gb, 3                ; 2 uses
  %lcmp.mod1209.not = icmp eq i64 %xtraiter1208, 0
  br i1 %lcmp.mod1209.not, label %vec.epilog.scalar.ph1143.prol.loopexit, label %vec.epilog.scalar.ph1143.prol

vec.epilog.scalar.ph1143.prol:                    ; preds = %vec.epilog.scalar.ph1143.preheader, %vec.epilog.scalar.ph1143.prol
  %indvars.iv683.prol = phi i64 [ %indvars.iv.next684.prol, %vec.epilog.scalar.ph1143.prol ], [ %indvars.iv683.ph, %vec.epilog.scalar.ph1143.preheader ] ; 3 uses
  %prol.iter1210 = phi i64 [ %prol.iter1210.next, %vec.epilog.scalar.ph1143.prol ], [ 0, %vec.epilog.scalar.ph1143.preheader ]
  %gep842.prol = getelementptr [8 x i8], ptr %invariant.gep841, i64 %indvars.iv683.prol
  %i.gd = getelementptr i8, ptr %gep842.prol, i64 -8
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !9 ; 3 uses
  %i.gf = fcmp oge double %i.ge, 0.000000e+00
  %i.gg = fneg double %i.ge
  %i.gh = select i1 %i.gf, double %i.ge, double %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv683.prol ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !9
  %i.gk = call double @llvm.fmuladd.f64(double %i.gh, double %i.en, double %i.gj)
  store double %i.gk, ptr %i.gi, align 8, !tbaa !9
  %indvars.iv.next684.prol = add nuw nsw i64 %indvars.iv683.prol, 1 ; 2 uses
  %prol.iter1210.next = add i64 %prol.iter1210, 1 ; 2 uses
  %prol.iter1210.cmp.not = icmp eq i64 %prol.iter1210.next, %xtraiter1208
  br i1 %prol.iter1210.cmp.not, label %vec.epilog.scalar.ph1143.prol.loopexit, label %vec.epilog.scalar.ph1143.prol, !llvm.loop !28

vec.epilog.scalar.ph1143.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1143.prol, %vec.epilog.scalar.ph1143.preheader
  %indvars.iv683.unr = phi i64 [ %indvars.iv683.ph, %vec.epilog.scalar.ph1143.preheader ], [ %indvars.iv.next684.prol, %vec.epilog.scalar.ph1143.prol ]
  %i.gl = icmp ult i64 %i.gc, 3
  br i1 %i.gl, label %.loopexit1192, label %vec.epilog.scalar.ph1143

vec.epilog.scalar.ph1143:                         ; preds = %vec.epilog.scalar.ph1143.prol.loopexit, %vec.epilog.scalar.ph1143
  %indvars.iv683 = phi i64 [ %indvars.iv.next684.3, %vec.epilog.scalar.ph1143 ], [ %indvars.iv683.unr, %vec.epilog.scalar.ph1143.prol.loopexit ] ; 7 uses
  %gep842 = getelementptr [8 x i8], ptr %invariant.gep841, i64 %indvars.iv683
  %i.gm = getelementptr i8, ptr %gep842, i64 -8
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9 ; 3 uses
  %i.go = fcmp oge double %i.gn, 0.000000e+00
  %i.gp = fneg double %i.gn
  %i.gq = select i1 %i.go, double %i.gn, double %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv683 ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !9
  %i.gt = call double @llvm.fmuladd.f64(double %i.gq, double %i.en, double %i.gs)
  store double %i.gt, ptr %i.gr, align 8, !tbaa !9
  %i.gu = getelementptr [8 x i8], ptr %invariant.gep841, i64 %indvars.iv683
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !9 ; 3 uses
  %i.gw = fcmp oge double %i.gv, 0.000000e+00
  %i.gx = fneg double %i.gv
  %i.gy = select i1 %i.gw, double %i.gv, double %i.gx
  %i.gz = getelementptr [8 x i8], ptr %12, i64 %indvars.iv683 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !9
  %i.hb = call double @llvm.fmuladd.f64(double %i.gy, double %i.en, double %i.ha)
  store double %i.hb, ptr %i.gz, align 8, !tbaa !9
  %indvars.iv.next684.1 = add nuw nsw i64 %indvars.iv683, 2 ; 2 uses
  %gep842.2 = getelementptr [8 x i8], ptr %invariant.gep841, i64 %indvars.iv.next684.1
  %i.hc = getelementptr i8, ptr %gep842.2, i64 -8
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !9 ; 3 uses
  %i.he = fcmp oge double %i.hd, 0.000000e+00
  %i.hf = fneg double %i.hd
  %i.hg = select i1 %i.he, double %i.hd, double %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next684.1 ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !9
  %i.hj = call double @llvm.fmuladd.f64(double %i.hg, double %i.en, double %i.hi)
  store double %i.hj, ptr %i.hh, align 8, !tbaa !9
  %indvars.iv.next684.2 = add nuw nsw i64 %indvars.iv683, 3 ; 2 uses
  %gep842.3 = getelementptr [8 x i8], ptr %invariant.gep841, i64 %indvars.iv.next684.2
  %i.hk = getelementptr i8, ptr %gep842.3, i64 -8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9 ; 3 uses
  %i.hm = fcmp oge double %i.hl, 0.000000e+00
  %i.hn = fneg double %i.hl
  %i.ho = select i1 %i.hm, double %i.hl, double %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next684.2 ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !9
  %i.hr = call double @llvm.fmuladd.f64(double %i.ho, double %i.en, double %i.hq)
  store double %i.hr, ptr %i.hp, align 8, !tbaa !9
  %indvars.iv.next684.3 = add nuw nsw i64 %indvars.iv683, 4 ; 2 uses
  %exitcond689.not.3 = icmp eq i64 %indvars.iv.next684.3, %indvars.iv690
  br i1 %exitcond689.not.3, label %.loopexit1192, label %vec.epilog.scalar.ph1143, !llvm.loop !29

.loopexit1192:                                    ; preds = %vec.epilog.scalar.ph1143.prol.loopexit, %vec.epilog.scalar.ph1143, %vec.epilog.middle.block1155, %middle.block1138
  %i.hs = trunc nuw nsw i64 %indvars.iv692 to i32
  %i.ht = add nuw nsw i32 %.0476574, %i.hs
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1
  %exitcond698.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count697
  %indvar.next1112 = add i64 %indvar1111, 1
  br i1 %exitcond698.not, label %.loopexit553, label %iter.check1142, !llvm.loop !30

.lr.ph584:                                        ; preds = %.lr.ph584.preheader, %._crit_edge580
  %indvar1063 = phi i64 [ 0, %.lr.ph584.preheader ], [ %indvar.next1064, %._crit_edge580 ] ; 10 uses
  %indvars.iv704 = phi i64 [ 1, %.lr.ph584.preheader ], [ %indvars.iv.next705, %._crit_edge580 ] ; 7 uses
  %.1583 = phi i32 [ 1, %.lr.ph584.preheader ], [ %i.lh, %._crit_edge580 ] ; 3 uses
  %i.hu = shl nuw nsw i64 %indvar1063, 3          ; 2 uses
  %scevgep1065 = getelementptr i8, ptr %12, i64 %i.hu
  %i.hv = getelementptr i8, ptr %5, i64 %i.hu
  %scevgep1066 = getelementptr i8, ptr %i.hv, i64 -8
  %i.hw = zext i32 %.1583 to i64
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.hx
  %gep848 = getelementptr [8 x i8], ptr %invariant.gep847, i64 %indvars.iv704
  %i.hy = load double, ptr %gep848, align 8, !tbaa !9 ; 3 uses
  %i.hz = fcmp oge double %i.hy, 0.000000e+00
  %i.ia = fneg double %i.hy
  %i.ib = select i1 %i.hz, double %i.hy, double %i.ia ; 8 uses
  %.not537.not576 = icmp samesign ugt i64 %indvars.iv704, 1
  br i1 %.not537.not576, label %iter.check1094, label %._crit_edge580

end_hunk_0
