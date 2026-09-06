Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtbrfs?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dtbrfs_:bb.a
  %i.ja = add i32 %smax1142, %i.iz                ; 2 uses
  %gep909 = getelementptr [8 x i8], ptr %invariant.gep908, i64 %indvars.iv776
  %i.jb = load double, ptr %gep909, align 8, !tbaa !64 ; 3 uses
  %i.jc = fcmp oge double %i.jb, 0.000000e+00
  %i.jd = fneg double %i.jb
  %i.je = select i1 %i.jc, double %i.jb, double %i.jd ; 4 uses
  %i.jf = trunc i64 %indvars.iv776 to i32
  %i.jg = sub i32 %i.jf, %i.fa
  %i.jh = call i32 @llvm.smax.i32(i32 %i.jg, i32 1)
  %i.ji = zext nneg i32 %i.jh to i64
  %.not597.not637 = icmp samesign ugt i64 %indvars.iv776, %i.ji
  br i1 %.not597.not637, label %iter.check1179, label %._crit_edge641

iter.check1179:                                   ; preds = %bb.w
  %smax772 = call i32 @llvm.smax.i32(i32 %indvars.iv770, i32 1)
  %i.jj = zext nneg i32 %smax772 to i64           ; 7 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv776 to i32
  %reass.sub737 = mul i32 %.1539643738, %i.jk
  %.reass911 = add i32 %reass.sub737, %invariant.op910 ; 3 uses
  %min.iters.check1157 = icmp ult i64 %i.ik, 4
  br i1 %min.iters.check1157, label %vec.epilog.scalar.ph1180.preheader, label %vector.scevcheck1139

vector.scevcheck1139:                             ; preds = %iter.check1179
  %i.jl = trunc i64 %i.iw to i32
  %i.jm = add i32 %i.ja, %i.jl
  %i.jn = icmp slt i32 %i.jm, %i.ja
  %i.jo = icmp ugt i64 %i.iw, 4294967295
  %i.jp = or i1 %i.jn, %i.jo
  br i1 %i.jp, label %vec.epilog.scalar.ph1180.preheader, label %vector.memcheck1143

vector.memcheck1143:                              ; preds = %vector.scevcheck1139
  %bound01152 = icmp ult ptr %scevgep1146, %scevgep1151
  %bound11153 = icmp ult ptr %scevgep1149, %scevgep1147
  %found.conflict1154 = and i1 %bound01152, %bound11153
  br i1 %found.conflict1154, label %vec.epilog.scalar.ph1180.preheader, label %vector.main.loop.iter.check1158

vector.main.loop.iter.check1158:                  ; preds = %vector.memcheck1143
  %min.iters.check1159 = icmp ult i64 %i.ik, 16
  br i1 %min.iters.check1159, label %vec.epilog.ph1183, label %vector.ph1160

vector.ph1160:                                    ; preds = %vector.main.loop.iter.check1158
  %i.jq = and i64 %i.ik, 12
  %n.vec1161 = and i64 %i.ik, -16                 ; 4 uses
  %i.jr = add i64 %n.vec1161, %i.jj
  %broadcast.splatinsert1162 = insertelement <4 x double> poison, double %i.je, i64 0
  %broadcast.splat1163 = shufflevector <4 x double> %broadcast.splatinsert1162, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %vector.ph1160
  %index1165 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1174, %vector.body1164 ] ; 2 uses
  %i.js = add nuw i64 %index1165, %i.jj           ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = add i32 %.reass911, %i.jt
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jv ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 96
  %wide.load1166 = load <4 x double>, ptr %i.jw, align 8, !tbaa !64, !alias.scope !73 ; 3 uses
  %wide.load1167 = load <4 x double>, ptr %i.jx, align 8, !tbaa !64, !alias.scope !73 ; 3 uses
  %wide.load1168 = load <4 x double>, ptr %i.jy, align 8, !tbaa !64, !alias.scope !73 ; 3 uses
  %wide.load1169 = load <4 x double>, ptr %i.jz, align 8, !tbaa !64, !alias.scope !73 ; 3 uses
  %i.ka = fcmp oge <4 x double> %wide.load1166, zeroinitializer
  %i.kb = fcmp oge <4 x double> %wide.load1167, zeroinitializer
  %i.kc = fcmp oge <4 x double> %wide.load1168, zeroinitializer
  %i.kd = fcmp oge <4 x double> %wide.load1169, zeroinitializer
  %i.ke = fneg <4 x double> %wide.load1166
  %i.kf = fneg <4 x double> %wide.load1167
  %i.kg = fneg <4 x double> %wide.load1168
  %i.kh = fneg <4 x double> %wide.load1169
  %i.ki = select <4 x i1> %i.ka, <4 x double> %wide.load1166, <4 x double> %i.ke
  %i.kj = select <4 x i1> %i.kb, <4 x double> %wide.load1167, <4 x double> %i.kf
  %i.kk = select <4 x i1> %i.kc, <4 x double> %wide.load1168, <4 x double> %i.kg
  %i.kl = select <4 x i1> %i.kd, <4 x double> %wide.load1169, <4 x double> %i.kh
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.js ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 64 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 96 ; 2 uses
  %wide.load1170 = load <4 x double>, ptr %i.km, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  %wide.load1171 = load <4 x double>, ptr %i.kn, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  %wide.load1172 = load <4 x double>, ptr %i.ko, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  %wide.load1173 = load <4 x double>, ptr %i.kp, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  %i.kq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ki, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1170)
  %i.kr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kj, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1171)
  %i.ks = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1172)
  %i.kt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kl, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1173)
  store <4 x double> %i.kq, ptr %i.km, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  store <4 x double> %i.kr, ptr %i.kn, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  store <4 x double> %i.ks, ptr %i.ko, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  store <4 x double> %i.kt, ptr %i.kp, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  %index.next1174 = add nuw i64 %index1165, 16    ; 2 uses
  %i.ku = icmp eq i64 %index.next1174, %n.vec1161
  br i1 %i.ku, label %middle.block1175, label %vector.body1164, !llvm.loop !22

middle.block1175:                                 ; preds = %vector.body1164
  %cmp.n1176 = icmp eq i64 %i.ik, %n.vec1161
  br i1 %cmp.n1176, label %._crit_edge641, label %vec.epilog.iter.check1181

vec.epilog.iter.check1181:                        ; preds = %middle.block1175
  %min.epilog.iters.check1182 = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check1182, label %vec.epilog.scalar.ph1180.preheader, label %vec.epilog.ph1183, !prof !69

vec.epilog.ph1183:                                ; preds = %vector.main.loop.iter.check1158, %vec.epilog.iter.check1181
  %vec.epilog.resume.val1177 = phi i64 [ %n.vec1161, %vec.epilog.iter.check1181 ], [ 0, %vector.main.loop.iter.check1158 ]
  %n.vec1184 = and i64 %i.ik, -4                  ; 3 uses
  %i.kv = add i64 %n.vec1184, %i.jj
  %broadcast.splatinsert1185 = insertelement <4 x double> poison, double %i.je, i64 0
  %broadcast.splat1186 = shufflevector <4 x double> %broadcast.splatinsert1185, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1187

vec.epilog.vector.body1187:                       ; preds = %vec.epilog.vector.body1187, %vec.epilog.ph1183
  %index1188 = phi i64 [ %vec.epilog.resume.val1177, %vec.epilog.ph1183 ], [ %index.next1191, %vec.epilog.vector.body1187 ] ; 2 uses
  %i.kw = add nuw i64 %index1188, %i.jj           ; 2 uses
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = add i32 %.reass911, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.kz
  %wide.load1189 = load <4 x double>, ptr %i.la, align 8, !tbaa !64, !alias.scope !73 ; 3 uses
  %i.lb = fcmp oge <4 x double> %wide.load1189, zeroinitializer
  %i.lc = fneg <4 x double> %wide.load1189
  %i.ld = select <4 x i1> %i.lb, <4 x double> %wide.load1189, <4 x double> %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.kw ; 2 uses
  %wide.load1190 = load <4 x double>, ptr %i.le, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  %i.lf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ld, <4 x double> %broadcast.splat1186, <4 x double> %wide.load1190)
  store <4 x double> %i.lf, ptr %i.le, align 8, !tbaa !64, !alias.scope !74, !noalias !73
  %index.next1191 = add nuw i64 %index1188, 4     ; 2 uses
  %i.lg = icmp eq i64 %index.next1191, %n.vec1184
  br i1 %i.lg, label %vec.epilog.middle.block1192, label %vec.epilog.vector.body1187, !llvm.loop !23

vec.epilog.middle.block1192:                      ; preds = %vec.epilog.vector.body1187
  %cmp.n1193 = icmp eq i64 %i.ik, %n.vec1184
  br i1 %cmp.n1193, label %._crit_edge641, label %vec.epilog.scalar.ph1180.preheader

vec.epilog.scalar.ph1180.preheader:               ; preds = %vector.memcheck1143, %vector.scevcheck1139, %iter.check1179, %vec.epilog.iter.check1181, %vec.epilog.middle.block1192
  %indvars.iv773.ph = phi i64 [ %i.jj, %iter.check1179 ], [ %i.jj, %vector.scevcheck1139 ], [ %i.jj, %vector.memcheck1143 ], [ %i.jr, %vec.epilog.iter.check1181 ], [ %i.kv, %vec.epilog.middle.block1192 ]
  br label %vec.epilog.scalar.ph1180

vec.epilog.scalar.ph1180:                         ; preds = %vec.epilog.scalar.ph1180.preheader, %vec.epilog.scalar.ph1180
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %vec.epilog.scalar.ph1180 ], [ %indvars.iv773.ph, %vec.epilog.scalar.ph1180.preheader ] ; 3 uses
  %i.lh = trunc nuw nsw i64 %indvars.iv773 to i32
  %i.li = add i32 %.reass911, %i.lh
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.lj
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !64 ; 3 uses
  %i.lm = fcmp oge double %i.ll, 0.000000e+00
  %i.ln = fneg double %i.ll
  %i.lo = select i1 %i.lm, double %i.ll, double %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv773 ; 2 uses
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !64
  %i.lr = call double @llvm.fmuladd.f64(double %i.lo, double %i.je, double %i.lq)
  store double %i.lr, ptr %i.lp, align 8, !tbaa !64
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1 ; 2 uses
  %.not597.not = icmp samesign ult i64 %indvars.iv.next774, %indvars.iv776
  br i1 %.not597.not, label %vec.epilog.scalar.ph1180, label %._crit_edge641, !llvm.loop !24

._crit_edge641:                                   ; preds = %vec.epilog.scalar.ph1180, %middle.block1175, %vec.epilog.middle.block1192, %bb.w
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv776 ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !64
  %i.lu = fadd double %i.je, %i.lt
  store double %i.lu, ptr %i.ls, align 8, !tbaa !64
  %indvars.iv.next777 = add nuw nsw i64 %indvars.iv776, 1 ; 2 uses
  %indvars.iv.next771 = add i32 %indvars.iv770, 1
  %exitcond780.not = icmp eq i64 %indvars.iv.next777, %wide.trip.count779
  %indvar.next1141 = add i64 %indvar1140, 1
  br i1 %exitcond780.not, label %.loopexit611, label %bb.w, !llvm.loop !25

bb.x:                                             ; preds = %bb.t
  br i1 %.not568, label %.preheader618, label %.preheader620

.preheader620:                                    ; preds = %bb.x
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph652

.lr.ph652:                                        ; preds = %.preheader620
  %i.lv = load i32, ptr %4, align 4, !tbaa !62    ; 2 uses
  %i.lw = add nuw i32 %i.ci, 1
  %wide.trip.count787 = zext i32 %i.lw to i64
  %invariant.gep912 = getelementptr [8 x i8], ptr %i.o, i64 %i.br
  %i.lx = zext nneg i32 %i.ci to i64
  %i.ly = add i32 %i.lv, 1                        ; 3 uses
  %i.lz = zext nneg i32 %i.ci to i64
  %i.ma = zext nneg i32 %i.ci to i64
  br label %bb.y

.preheader618:                                    ; preds = %bb.x
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph660

.lr.ph660:                                        ; preds = %.preheader618
  %i.mb = load i32, ptr %4, align 4, !tbaa !62    ; 2 uses
  %i.mc = add nuw i32 %i.ci, 1
  %wide.trip.count797 = zext i32 %i.mc to i64
  %invariant.gep914 = getelementptr [8 x i8], ptr %i.o, i64 %i.br
  %i.md = zext nneg i32 %i.ci to i64
  %i.me = add i32 %i.mb, 1                        ; 3 uses
  %i.mf = zext nneg i32 %i.ci to i64
  %i.mg = zext nneg i32 %i.ci to i64
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph652, %._crit_edge649
  %indvar1083 = phi i64 [ 0, %.lr.ph652 ], [ %indvar.next1084, %._crit_edge649 ] ; 9 uses
  %indvar1079 = phi i32 [ 0, %.lr.ph652 ], [ %indvar.next1080, %._crit_edge649 ] ; 2 uses
  %indvars.iv781 = phi i64 [ 1, %.lr.ph652 ], [ %indvars.iv.next782, %._crit_edge649 ] ; 16 uses
  %i.mh = trunc i64 %indvar1083 to i32
  %i.mi = add i32 %i.ly, %i.mh
  %i.mj = sext i32 %i.mi to i64
  %smin1098 = call i64 @llvm.smin.i64(i64 %i.ma, i64 %i.mj)
  %smax1099 = call i64 @llvm.smax.i64(i64 %smin1098, i64 %indvars.iv781)
  %i.mk = sub i64 %smax1099, %indvar1083          ; 7 uses
  %i.ml = shl nuw nsw i64 %indvar1083, 3
  %scevgep1086 = getelementptr i8, ptr %14, i64 %i.ml
  %17 = shl nuw nsw i64 %indvars.iv781, 3
  %scevgep1087 = getelementptr i8, ptr %14, i64 %17
  %i.mm = trunc i64 %indvar1083 to i32
  %i.mn = add i32 %i.ly, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %smin1088 = call i64 @llvm.smin.i64(i64 %i.lz, i64 %i.mo)
  %smax1089 = call i64 @llvm.smax.i64(i64 %smin1088, i64 %indvars.iv781)
  %i.mp = xor i64 %indvar1083, -1
  %i.mq = add i64 %smax1089, %i.mp
  %i.mr = shl nsw i64 %i.mq, 3                    ; 2 uses
  %scevgep1090 = getelementptr i8, ptr %scevgep1087, i64 %i.mr
  %i.ms = trunc i64 %indvar1083 to i32
  %i.mt = mul i32 %i.g, %i.ms
  %i.mu = add i32 %i.mt, %i.be
  %i.mv = sext i32 %i.mu to i64
  %i.mw = shl nsw i64 %i.mv, 3                    ; 2 uses
  %scevgep1092 = getelementptr i8, ptr %scevgep1091, i64 %i.mw
  %i.mx = getelementptr i8, ptr %scevgep1093, i64 %i.mr
  %scevgep1094 = getelementptr i8, ptr %i.mx, i64 %i.mw
  %i.my = add i32 %i.ly, %indvar1079
  %i.mz = sext i32 %i.my to i64
  %smin1081 = call i64 @llvm.smin.i64(i64 %i.lx, i64 %i.mz)
  %smax1082 = call i64 @llvm.smax.i64(i64 %smin1081, i64 %indvars.iv781)
  %i.na = xor i64 %indvar1083, -1
  %i.nb = add i64 %smax1082, %i.na                ; 2 uses
  %i.nc = trunc i64 %indvar1083 to i32
  %i.nd = mul i32 %i.g, %i.nc
  %i.ne = add i32 %i.nd, %i.be                    ; 2 uses
  %gep913 = getelementptr [8 x i8], ptr %invariant.gep912, i64 %indvars.iv781
  %i.nf = load double, ptr %gep913, align 8, !tbaa !64 ; 3 uses
  %i.ng = fcmp oge double %i.nf, 0.000000e+00
  %i.nh = fneg double %i.nf
  %i.ni = select i1 %i.ng, double %i.nf, double %i.nh ; 3 uses
  %i.nj = trunc i64 %indvars.iv781 to i32
  %i.nk = add i32 %i.lv, %i.nj
  %i.nl = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.nk)
  %i.nm = sext i32 %i.nl to i64                   ; 2 uses
  %.not594645 = icmp sgt i64 %indvars.iv781, %i.nm
  br i1 %.not594645, label %._crit_edge649, label %iter.check1123

iter.check1123:                                   ; preds = %bb.y
  %i.nn = trunc nuw nsw i64 %indvars.iv781 to i32
  %i.no = mul i32 %.2540651739, %i.nn             ; 3 uses
  %min.iters.check1101 = icmp ult i64 %i.mk, 4
  br i1 %min.iters.check1101, label %vec.epilog.scalar.ph1124.preheader, label %vector.scevcheck1078

vector.scevcheck1078:                             ; preds = %iter.check1123
  %i.np = trunc i64 %i.nb to i32
  %i.nq = add i32 %i.ne, %i.np
  %i.nr = icmp slt i32 %i.nq, %i.ne
  %i.ns = icmp ugt i64 %i.nb, 4294967295
  %i.nt = or i1 %i.nr, %i.ns
  br i1 %i.nt, label %vec.epilog.scalar.ph1124.preheader, label %vector.memcheck1085

vector.memcheck1085:                              ; preds = %vector.scevcheck1078
  %bound01095 = icmp ult ptr %scevgep1086, %scevgep1094
  %bound11096 = icmp ult ptr %scevgep1092, %scevgep1090
  %found.conflict1097 = and i1 %bound01095, %bound11096
  br i1 %found.conflict1097, label %vec.epilog.scalar.ph1124.preheader, label %vector.main.loop.iter.check1102

vector.main.loop.iter.check1102:                  ; preds = %vector.memcheck1085
  %min.iters.check1103 = icmp ult i64 %i.mk, 16
  br i1 %min.iters.check1103, label %vec.epilog.ph1127, label %vector.ph1104

vector.ph1104:                                    ; preds = %vector.main.loop.iter.check1102
  %i.nu = and i64 %i.mk, 12
  %n.vec1105 = and i64 %i.mk, -16                 ; 4 uses
  %i.nv = add i64 %indvars.iv781, %n.vec1105
  %broadcast.splatinsert1106 = insertelement <4 x double> poison, double %i.ni, i64 0
  %broadcast.splat1107 = shufflevector <4 x double> %broadcast.splatinsert1106, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op1335 = add i32 1, %i.no
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.body1108, %vector.ph1104
  %index1109 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1118, %vector.body1108 ] ; 2 uses
  %i.nw = add nuw i64 %indvars.iv781, %index1109  ; 2 uses
  %i.nx = trunc i64 %i.nw to i32
  %.reass1336 = add i32 %i.nx, %invariant.op1335
  %i.ny = sext i32 %.reass1336 to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ny ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 96
  %wide.load1110 = load <4 x double>, ptr %i.nz, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %wide.load1111 = load <4 x double>, ptr %i.oa, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %wide.load1112 = load <4 x double>, ptr %i.ob, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %wide.load1113 = load <4 x double>, ptr %i.oc, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %i.od = fcmp oge <4 x double> %wide.load1110, zeroinitializer
  %i.oe = fcmp oge <4 x double> %wide.load1111, zeroinitializer
  %i.of = fcmp oge <4 x double> %wide.load1112, zeroinitializer
  %i.og = fcmp oge <4 x double> %wide.load1113, zeroinitializer
  %i.oh = fneg <4 x double> %wide.load1110
  %i.oi = fneg <4 x double> %wide.load1111
  %i.oj = fneg <4 x double> %wide.load1112
  %i.ok = fneg <4 x double> %wide.load1113
  %i.ol = select <4 x i1> %i.od, <4 x double> %wide.load1110, <4 x double> %i.oh
  %i.om = select <4 x i1> %i.oe, <4 x double> %wide.load1111, <4 x double> %i.oi
  %i.on = select <4 x i1> %i.of, <4 x double> %wide.load1112, <4 x double> %i.oj
  %i.oo = select <4 x i1> %i.og, <4 x double> %wide.load1113, <4 x double> %i.ok
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.nw ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 32 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 64 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 96 ; 2 uses
  %wide.load1114 = load <4 x double>, ptr %i.op, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %wide.load1115 = load <4 x double>, ptr %i.oq, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %wide.load1116 = load <4 x double>, ptr %i.or, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %wide.load1117 = load <4 x double>, ptr %i.os, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %i.ot = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ol, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1114)
  %i.ou = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.om, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1115)
  %i.ov = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.on, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1116)
  %i.ow = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.oo, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1117)
  store <4 x double> %i.ot, ptr %i.op, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  store <4 x double> %i.ou, ptr %i.oq, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  store <4 x double> %i.ov, ptr %i.or, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  store <4 x double> %i.ow, ptr %i.os, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %index.next1118 = add nuw i64 %index1109, 16    ; 2 uses
  %i.ox = icmp eq i64 %index.next1118, %n.vec1105
  br i1 %i.ox, label %middle.block1119, label %vector.body1108, !llvm.loop !29

middle.block1119:                                 ; preds = %vector.body1108
  %cmp.n1120 = icmp eq i64 %i.mk, %n.vec1105
  br i1 %cmp.n1120, label %._crit_edge649, label %vec.epilog.iter.check1125

vec.epilog.iter.check1125:                        ; preds = %middle.block1119
  %min.epilog.iters.check1126 = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check1126, label %vec.epilog.scalar.ph1124.preheader, label %vec.epilog.ph1127, !prof !69

vec.epilog.ph1127:                                ; preds = %vector.main.loop.iter.check1102, %vec.epilog.iter.check1125
  %vec.epilog.resume.val1121 = phi i64 [ %n.vec1105, %vec.epilog.iter.check1125 ], [ 0, %vector.main.loop.iter.check1102 ]
  %n.vec1128 = and i64 %i.mk, -4                  ; 3 uses
  %i.oy = add i64 %indvars.iv781, %n.vec1128
  %broadcast.splatinsert1129 = insertelement <4 x double> poison, double %i.ni, i64 0
  %broadcast.splat1130 = shufflevector <4 x double> %broadcast.splatinsert1129, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op1337 = add i32 1, %i.no
  br label %vec.epilog.vector.body1131

vec.epilog.vector.body1131:                       ; preds = %vec.epilog.vector.body1131, %vec.epilog.ph1127
  %index1132 = phi i64 [ %vec.epilog.resume.val1121, %vec.epilog.ph1127 ], [ %index.next1135, %vec.epilog.vector.body1131 ] ; 2 uses
  %i.oz = add nuw i64 %indvars.iv781, %index1132  ; 2 uses
  %i.pa = trunc i64 %i.oz to i32
  %.reass1338 = add i32 %i.pa, %invariant.op1337
  %i.pb = sext i32 %.reass1338 to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pb
  %wide.load1133 = load <4 x double>, ptr %i.pc, align 8, !tbaa !64, !alias.scope !75 ; 3 uses
  %i.pd = fcmp oge <4 x double> %wide.load1133, zeroinitializer
  %i.pe = fneg <4 x double> %wide.load1133
  %i.pf = select <4 x i1> %i.pd, <4 x double> %wide.load1133, <4 x double> %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.oz ; 2 uses
  %wide.load1134 = load <4 x double>, ptr %i.pg, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %i.ph = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pf, <4 x double> %broadcast.splat1130, <4 x double> %wide.load1134)
  store <4 x double> %i.ph, ptr %i.pg, align 8, !tbaa !64, !alias.scope !76, !noalias !75
  %index.next1135 = add nuw i64 %index1132, 4     ; 2 uses
  %i.pi = icmp eq i64 %index.next1135, %n.vec1128
  br i1 %i.pi, label %vec.epilog.middle.block1136, label %vec.epilog.vector.body1131, !llvm.loop !30

vec.epilog.middle.block1136:                      ; preds = %vec.epilog.vector.body1131
  %cmp.n1137 = icmp eq i64 %i.mk, %n.vec1128
  br i1 %cmp.n1137, label %._crit_edge649, label %vec.epilog.scalar.ph1124.preheader

vec.epilog.scalar.ph1124.preheader:               ; preds = %vector.memcheck1085, %vector.scevcheck1078, %iter.check1123, %vec.epilog.iter.check1125, %vec.epilog.middle.block1136
  %indvars.iv783.ph = phi i64 [ %indvars.iv781, %iter.check1123 ], [ %indvars.iv781, %vector.scevcheck1078 ], [ %indvars.iv781, %vector.memcheck1085 ], [ %i.nv, %vec.epilog.iter.check1125 ], [ %i.oy, %vec.epilog.middle.block1136 ]
  br label %vec.epilog.scalar.ph1124

vec.epilog.scalar.ph1124:                         ; preds = %vec.epilog.scalar.ph1124.preheader, %vec.epilog.scalar.ph1124
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %vec.epilog.scalar.ph1124 ], [ %indvars.iv783.ph, %vec.epilog.scalar.ph1124.preheader ] ; 3 uses
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1 ; 2 uses
  %i.pj = trunc nsw i64 %indvars.iv.next784 to i32
  %i.pk = add i32 %i.no, %i.pj
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pl
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !64 ; 3 uses
  %i.po = fcmp oge double %i.pn, 0.000000e+00
  %i.pp = fneg double %i.pn
  %i.pq = select i1 %i.po, double %i.pn, double %i.pp
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv783 ; 2 uses
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !64
  %i.pt = call double @llvm.fmuladd.f64(double %i.pq, double %i.ni, double %i.ps)
  store double %i.pt, ptr %i.pr, align 8, !tbaa !64
  %.not594.not = icmp slt i64 %indvars.iv783, %i.nm
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
  %i.pu = add i32 %i.me, %indvar
  %i.pv = sext i32 %i.pu to i64
  %smin1037 = call i64 @llvm.smin.i64(i64 %i.mg, i64 %i.pv)
  %i.pw = sext i32 %indvars.iv789 to i64          ; 2 uses
  %smax1038 = call i64 @llvm.smax.i64(i64 %smin1037, i64 %i.pw)
  %i.px = add i64 %smax1038, 1
  %i.py = sub i64 %i.px, %i.pw                    ; 7 uses
  %i.pz = sext i32 %indvars.iv789 to i64          ; 2 uses
  %i.qa = shl nsw i64 %i.pz, 3                    ; 2 uses
  %scevgep1029 = getelementptr i8, ptr %scevgep, i64 %i.qa
end_hunk_0
