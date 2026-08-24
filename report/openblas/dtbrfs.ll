Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtbrfs?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dtbrfs_:bb.a
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
  %wide.load1166 = load <4 x double>, ptr %i.jw, align 8, !tbaa !9, !alias.scope !30 ; 3 uses
  %wide.load1167 = load <4 x double>, ptr %i.jx, align 8, !tbaa !9, !alias.scope !30 ; 3 uses
  %wide.load1168 = load <4 x double>, ptr %i.jy, align 8, !tbaa !9, !alias.scope !30 ; 3 uses
  %wide.load1169 = load <4 x double>, ptr %i.jz, align 8, !tbaa !9, !alias.scope !30 ; 3 uses
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
  %wide.load1170 = load <4 x double>, ptr %i.km, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  %wide.load1171 = load <4 x double>, ptr %i.kn, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  %wide.load1172 = load <4 x double>, ptr %i.ko, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  %wide.load1173 = load <4 x double>, ptr %i.kp, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  %i.kq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ki, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1170)
  %i.kr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kj, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1171)
  %i.ks = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1172)
  %i.kt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kl, <4 x double> %broadcast.splat1163, <4 x double> %wide.load1173)
  store <4 x double> %i.kq, ptr %i.km, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  store <4 x double> %i.kr, ptr %i.kn, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  store <4 x double> %i.ks, ptr %i.ko, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  store <4 x double> %i.kt, ptr %i.kp, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  %index.next1174 = add nuw i64 %index1165, 16    ; 2 uses
  %i.ku = icmp eq i64 %index.next1174, %n.vec1161
  br i1 %i.ku, label %middle.block1175, label %vector.body1164, !llvm.loop !35

middle.block1175:                                 ; preds = %vector.body1164
  %cmp.n1176 = icmp eq i64 %i.ik, %n.vec1161
  br i1 %cmp.n1176, label %._crit_edge641, label %vec.epilog.iter.check1181

vec.epilog.iter.check1181:                        ; preds = %middle.block1175
  %min.epilog.iters.check1182 = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check1182, label %vec.epilog.scalar.ph1180.preheader, label %vec.epilog.ph1183, !prof !16

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
  %wide.load1189 = load <4 x double>, ptr %i.la, align 8, !tbaa !9, !alias.scope !30 ; 3 uses
  %i.lb = fcmp oge <4 x double> %wide.load1189, zeroinitializer
  %i.lc = fneg <4 x double> %wide.load1189
  %i.ld = select <4 x i1> %i.lb, <4 x double> %wide.load1189, <4 x double> %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.kw ; 2 uses
  %wide.load1190 = load <4 x double>, ptr %i.le, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  %i.lf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ld, <4 x double> %broadcast.splat1186, <4 x double> %wide.load1190)
  store <4 x double> %i.lf, ptr %i.le, align 8, !tbaa !9, !alias.scope !33, !noalias !30
  %index.next1191 = add nuw i64 %index1188, 4     ; 2 uses
  %i.lg = icmp eq i64 %index.next1191, %n.vec1184
  br i1 %i.lg, label %vec.epilog.middle.block1192, label %vec.epilog.vector.body1187, !llvm.loop !36

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
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !9 ; 3 uses
  %i.lm = fcmp oge double %i.ll, 0.000000e+00
  %i.ln = fneg double %i.ll
  %i.lo = select i1 %i.lm, double %i.ll, double %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv773 ; 2 uses
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !9
  %i.lr = call double @llvm.fmuladd.f64(double %i.lo, double %i.je, double %i.lq)
  store double %i.lr, ptr %i.lp, align 8, !tbaa !9
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1 ; 2 uses
  %.not597.not = icmp samesign ult i64 %indvars.iv.next774, %indvars.iv776
  br i1 %.not597.not, label %vec.epilog.scalar.ph1180, label %._crit_edge641, !llvm.loop !37

._crit_edge641:                                   ; preds = %vec.epilog.scalar.ph1180, %middle.block1175, %vec.epilog.middle.block1192, %bb.w
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv776 ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !9
  %i.lu = fadd double %i.je, %i.lt
  store double %i.lu, ptr %i.ls, align 8, !tbaa !9
  %indvars.iv.next777 = add nuw nsw i64 %indvars.iv776, 1 ; 2 uses
  %indvars.iv.next771 = add i32 %indvars.iv770, 1
  %exitcond780.not = icmp eq i64 %indvars.iv.next777, %wide.trip.count779
  %indvar.next1141 = add i64 %indvar1140, 1
  br i1 %exitcond780.not, label %.loopexit611, label %bb.w, !llvm.loop !38

bb.x:                                             ; preds = %bb.t
  br i1 %.not568, label %.preheader618, label %.preheader620

.preheader620:                                    ; preds = %bb.x
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph652

.lr.ph652:                                        ; preds = %.preheader620
  %i.lv = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
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
  %i.mb = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
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
  %indvars.iv781 = phi i64 [ 1, %.lr.ph652 ], [ %indvars.iv.next782, %._crit_edge649 ] ; 15 uses
  %i.mh = trunc i64 %indvar1083 to i32
  %i.mi = add i32 %i.ly, %i.mh
  %i.mj = sext i32 %i.mi to i64
  %smin1098 = call i64 @llvm.smin.i64(i64 %i.ma, i64 %i.mj)
  %smax1099 = call i64 @llvm.smax.i64(i64 %smin1098, i64 %indvars.iv781)
  %i.mk = sub nsw i64 %smax1099, %indvar1083      ; 7 uses
  %i.ml = shl nuw nsw i64 %indvar1083, 3          ; 2 uses
  %scevgep1086 = getelementptr i8, ptr %14, i64 %i.ml
  %i.mm = getelementptr i8, ptr %14, i64 %i.ml
  %scevgep1087 = getelementptr i8, ptr %i.mm, i64 8
  %i.mn = trunc i64 %indvar1083 to i32
  %i.mo = add i32 %i.ly, %i.mn
  %i.mp = sext i32 %i.mo to i64
  %smin1088 = call i64 @llvm.smin.i64(i64 %i.lz, i64 %i.mp)
  %smax1089 = call i64 @llvm.smax.i64(i64 %smin1088, i64 %indvars.iv781)
  %i.mq = xor i64 %indvar1083, -1
  %i.mr = add nsw i64 %smax1089, %i.mq
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
  %i.nc = add nsw i64 %smax1082, %i.nb            ; 2 uses
  %i.nd = trunc i64 %indvar1083 to i32
  %i.ne = mul i32 %i.g, %i.nd
  %i.nf = add i32 %i.ne, %i.be                    ; 2 uses
  %gep913 = getelementptr [8 x i8], ptr %invariant.gep912, i64 %indvars.iv781
  %i.ng = load double, ptr %gep913, align 8, !tbaa !9 ; 3 uses
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

vector.body1108:                                  ; preds = %vector.body1108, %vector.ph1104
  %index1109 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1118, %vector.body1108 ] ; 2 uses
  %i.nx = add nuw i64 %indvars.iv781, %index1109  ; 2 uses
  %i.ny = trunc i64 %i.nx to i32
  %.reass1336 = add i32 %i.ny, %invariant.op1335
  %i.nz = sext i32 %.reass1336 to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nz ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 64
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 96
  %wide.load1110 = load <4 x double>, ptr %i.oa, align 8, !tbaa !9, !alias.scope !39 ; 3 uses
  %wide.load1111 = load <4 x double>, ptr %i.ob, align 8, !tbaa !9, !alias.scope !39 ; 3 uses
  %wide.load1112 = load <4 x double>, ptr %i.oc, align 8, !tbaa !9, !alias.scope !39 ; 3 uses
  %wide.load1113 = load <4 x double>, ptr %i.od, align 8, !tbaa !9, !alias.scope !39 ; 3 uses
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
  %wide.load1114 = load <4 x double>, ptr %i.oq, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  %wide.load1115 = load <4 x double>, ptr %i.or, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  %wide.load1116 = load <4 x double>, ptr %i.os, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  %wide.load1117 = load <4 x double>, ptr %i.ot, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  %i.ou = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.om, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1114)
  %i.ov = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.on, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1115)
  %i.ow = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.oo, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1116)
  %i.ox = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.op, <4 x double> %broadcast.splat1107, <4 x double> %wide.load1117)
  store <4 x double> %i.ou, ptr %i.oq, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  store <4 x double> %i.ov, ptr %i.or, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  store <4 x double> %i.ow, ptr %i.os, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  store <4 x double> %i.ox, ptr %i.ot, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  %index.next1118 = add nuw i64 %index1109, 16    ; 2 uses
  %i.oy = icmp eq i64 %index.next1118, %n.vec1105
  br i1 %i.oy, label %middle.block1119, label %vector.body1108, !llvm.loop !44

middle.block1119:                                 ; preds = %vector.body1108
  %cmp.n1120 = icmp eq i64 %i.mk, %n.vec1105
  br i1 %cmp.n1120, label %._crit_edge649, label %vec.epilog.iter.check1125

vec.epilog.iter.check1125:                        ; preds = %middle.block1119
  %min.epilog.iters.check1126 = icmp eq i64 %i.nv, 0
  br i1 %min.epilog.iters.check1126, label %vec.epilog.scalar.ph1124.preheader, label %vec.epilog.ph1127, !prof !16

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
  %wide.load1133 = load <4 x double>, ptr %i.pd, align 8, !tbaa !9, !alias.scope !39 ; 3 uses
  %i.pe = fcmp oge <4 x double> %wide.load1133, zeroinitializer
  %i.pf = fneg <4 x double> %wide.load1133
  %i.pg = select <4 x i1> %i.pe, <4 x double> %wide.load1133, <4 x double> %i.pf
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.pa ; 2 uses
  %wide.load1134 = load <4 x double>, ptr %i.ph, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  %i.pi = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pg, <4 x double> %broadcast.splat1130, <4 x double> %wide.load1134)
  store <4 x double> %i.pi, ptr %i.ph, align 8, !tbaa !9, !alias.scope !42, !noalias !39
  %index.next1135 = add nuw i64 %index1132, 4     ; 2 uses
  %i.pj = icmp eq i64 %index.next1135, %n.vec1128
  br i1 %i.pj, label %vec.epilog.middle.block1136, label %vec.epilog.vector.body1131, !llvm.loop !45

vec.epilog.middle.block1136:                      ; preds = %vec.epilog.vector.body1131
  %cmp.n1137 = icmp eq i64 %i.mk, %n.vec1128
  br i1 %cmp.n1137, label %._crit_edge649, label %vec.epilog.scalar.ph1124.preheader

vec.epilog.scalar.ph1124.preheader:               ; preds = %vector.memcheck1085, %vector.scevcheck1078, %iter.check1123, %vec.epilog.iter.check1125, %vec.epilog.middle.block1136
  %indvars.iv783.ph = phi i64 [ %indvars.iv781, %iter.check1123 ], [ %indvars.iv781, %vector.scevcheck1078 ], [ %indvars.iv781, %vector.memcheck1085 ], [ %i.nw, %vec.epilog.iter.check1125 ], [ %i.oz, %vec.epilog.middle.block1136 ]
  br label %vec.epilog.scalar.ph1124

vec.epilog.scalar.ph1124:                         ; preds = %vec.epilog.scalar.ph1124.preheader, %vec.epilog.scalar.ph1124
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %vec.epilog.scalar.ph1124 ], [ %indvars.iv783.ph, %vec.epilog.scalar.ph1124.preheader ] ; 3 uses
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1 ; 2 uses
  %i.pk = trunc nsw i64 %indvars.iv.next784 to i32
  %i.pl = add i32 %i.np, %i.pk
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pm
  %i.po = load double, ptr %i.pn, align 8, !tbaa !9 ; 3 uses
  %i.pp = fcmp oge double %i.po, 0.000000e+00
  %i.pq = fneg double %i.po
  %i.pr = select i1 %i.pp, double %i.po, double %i.pq
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv783 ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !9
  %i.pu = call double @llvm.fmuladd.f64(double %i.pr, double %i.nj, double %i.pt)
  store double %i.pu, ptr %i.ps, align 8, !tbaa !9
  %.not594.not = icmp slt i64 %indvars.iv783, %i.nn
  br i1 %.not594.not, label %vec.epilog.scalar.ph1124, label %._crit_edge649, !llvm.loop !46

._crit_edge649:                                   ; preds = %vec.epilog.scalar.ph1124, %middle.block1119, %vec.epilog.middle.block1136, %bb.y
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond788.not = icmp eq i64 %indvars.iv.next782, %wide.trip.count787
  %indvar.next1080 = add i32 %indvar1079, 1
  %indvar.next1084 = add i64 %indvar1083, 1
  br i1 %exitcond788.not, label %.loopexit611, label %bb.y, !llvm.loop !47

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
  %i.qa = sext i32 %indvars.iv789 to i64          ; 2 uses
  %i.qb = shl nsw i64 %i.qa, 3                    ; 2 uses
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
  %i.qk = sub i64 %i.qj, %i.qb
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
end_hunk_0
begin_hunk_1_@dtbrfs_:bb.a
  %i.ua = load double, ptr %gep917, align 8, !tbaa !9 ; 3 uses
  %i.ub = fcmp oge double %i.ua, 0.000000e+00
  %i.uc = fneg double %i.ua
  %i.ud = select i1 %i.ub, double %i.ua, double %i.uc
  %i.ue = call double @llvm.fmuladd.f64(double %i.tz, double %i.ud, double %.0537663) ; 2 uses
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 1
  %.not587.not = icmp samesign ult i64 %indvars.iv802, %indvars.iv805
  br i1 %.not587.not, label %bb.ad, label %._crit_edge666, !llvm.loop !57

._crit_edge666:                                   ; preds = %bb.ad, %bb.ac
  %.0537.lcssa = phi double [ 0.000000e+00, %bb.ac ], [ %i.ue, %bb.ad ]
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv805 ; 2 uses
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !9
  %i.uh = fadd double %.0537.lcssa, %i.ug
  store double %i.uh, ptr %i.uf, align 8, !tbaa !9
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1 ; 2 uses
  %indvars.iv.next800 = add i32 %indvars.iv799, 1
  %exitcond809.not = icmp eq i64 %indvars.iv.next806, %wide.trip.count808
  br i1 %exitcond809.not, label %.loopexit611, label %bb.ac, !llvm.loop !58

bb.ae:                                            ; preds = %.lr.ph679, %._crit_edge675
  %indvar1300 = phi i64 [ 0, %.lr.ph679 ], [ %indvar.next1301, %._crit_edge675 ] ; 2 uses
  %indvars.iv816 = phi i64 [ 1, %.lr.ph679 ], [ %indvars.iv.next817, %._crit_edge675 ] ; 8 uses
  %indvars.iv810 = phi i32 [ %i.to, %.lr.ph679 ], [ %indvars.iv.next811, %._crit_edge675 ] ; 3 uses
  %smax1299 = call i32 @llvm.smax.i32(i32 %indvars.iv810, i32 1)
  %i.ui = zext nneg i32 %smax1299 to i64          ; 2 uses
  %i.uj = sub i64 %indvar1300, %i.ui
  %gep923 = getelementptr [8 x i8], ptr %invariant.gep922, i64 %indvars.iv816
  %i.uk = load double, ptr %gep923, align 8, !tbaa !9 ; 3 uses
  %i.ul = fcmp oge double %i.uk, 0.000000e+00
  %i.um = fneg double %i.uk
  %i.un = select i1 %i.ul, double %i.uk, double %i.um ; 3 uses
  %i.uo = trunc i64 %indvars.iv816 to i32
  %i.up = sub i32 %i.uo, %i.tn
  %i.uq = call i32 @llvm.smax.i32(i32 %i.up, i32 1)
  %i.ur = zext nneg i32 %i.uq to i64
  %.not585.not670 = icmp samesign ugt i64 %indvars.iv816, %i.ur
  br i1 %.not585.not670, label %.lr.ph674, label %._crit_edge675

.lr.ph674:                                        ; preds = %bb.ae
  %i.us = sub nsw i64 %indvars.iv816, %i.ui
  %smax812 = call i32 @llvm.smax.i32(i32 %indvars.iv810, i32 1)
  %i.ut = zext nneg i32 %smax812 to i64           ; 2 uses
  %i.uu = trunc nuw nsw i64 %indvars.iv816 to i32
  %reass.sub743 = mul i32 %.5543678744, %i.uu
  %.reass925 = add i32 %reass.sub743, %invariant.op924 ; 5 uses
  %xtraiter1302 = and i64 %i.us, 3                ; 2 uses
  %lcmp.mod1303.not = icmp eq i64 %xtraiter1302, 0
  br i1 %lcmp.mod1303.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph674, %.prol.preheader
  %indvars.iv813.prol = phi i64 [ %indvars.iv.next814.prol, %.prol.preheader ], [ %i.ut, %.lr.ph674 ] ; 3 uses
  %.1672.prol = phi double [ %i.vh, %.prol.preheader ], [ %i.un, %.lr.ph674 ]
  %prol.iter1304 = phi i64 [ %prol.iter1304.next, %.prol.preheader ], [ 0, %.lr.ph674 ]
  %i.uv = trunc nuw nsw i64 %indvars.iv813.prol to i32
  %i.uw = add i32 %.reass925, %i.uv
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ux
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !9 ; 3 uses
  %i.va = fcmp oge double %i.uz, 0.000000e+00
  %i.vb = fneg double %i.uz
  %i.vc = select i1 %i.va, double %i.uz, double %i.vb
  %gep921.prol = getelementptr [8 x i8], ptr %invariant.gep920, i64 %indvars.iv813.prol
  %i.vd = load double, ptr %gep921.prol, align 8, !tbaa !9 ; 3 uses
  %i.ve = fcmp oge double %i.vd, 0.000000e+00
  %i.vf = fneg double %i.vd
  %i.vg = select i1 %i.ve, double %i.vd, double %i.vf
  %i.vh = call double @llvm.fmuladd.f64(double %i.vc, double %i.vg, double %.1672.prol) ; 3 uses
  %indvars.iv.next814.prol = add nuw nsw i64 %indvars.iv813.prol, 1 ; 2 uses
  %prol.iter1304.next = add i64 %prol.iter1304, 1 ; 2 uses
  %prol.iter1304.cmp.not = icmp eq i64 %prol.iter1304.next, %xtraiter1302
  br i1 %prol.iter1304.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph674
  %indvars.iv813.unr = phi i64 [ %i.ut, %.lr.ph674 ], [ %indvars.iv.next814.prol, %.prol.preheader ]
  %.1672.unr = phi double [ %i.un, %.lr.ph674 ], [ %i.vh, %.prol.preheader ]
  %.lcssa1293.unr = phi double [ poison, %.lr.ph674 ], [ %i.vh, %.prol.preheader ]
  %i.vi = icmp ult i64 %i.uj, 3
  br i1 %i.vi, label %._crit_edge675, label %.lr.ph674.new

.lr.ph674.new:                                    ; preds = %.prol.loopexit, %.lr.ph674.new
  %indvars.iv813 = phi i64 [ %indvars.iv.next814.3, %.lr.ph674.new ], [ %indvars.iv813.unr, %.prol.loopexit ] ; 6 uses
  %.1672 = phi double [ %i.xi, %.lr.ph674.new ], [ %.1672.unr, %.prol.loopexit ]
  %i.vj = trunc nuw nsw i64 %indvars.iv813 to i32
  %i.vk = add i32 %.reass925, %i.vj
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.vl
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !9 ; 3 uses
  %i.vo = fcmp oge double %i.vn, 0.000000e+00
  %i.vp = fneg double %i.vn
  %i.vq = select i1 %i.vo, double %i.vn, double %i.vp
  %gep921 = getelementptr [8 x i8], ptr %invariant.gep920, i64 %indvars.iv813
  %i.vr = load double, ptr %gep921, align 8, !tbaa !9 ; 3 uses
  %i.vs = fcmp oge double %i.vr, 0.000000e+00
  %i.vt = fneg double %i.vr
  %i.vu = select i1 %i.vs, double %i.vr, double %i.vt
  %i.vv = call double @llvm.fmuladd.f64(double %i.vq, double %i.vu, double %.1672)
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 1 ; 2 uses
  %i.vw = trunc nuw nsw i64 %indvars.iv.next814 to i32
  %i.vx = add i32 %.reass925, %i.vw
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.vy
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !9 ; 3 uses
  %i.wb = fcmp oge double %i.wa, 0.000000e+00
  %i.wc = fneg double %i.wa
  %i.wd = select i1 %i.wb, double %i.wa, double %i.wc
  %gep921.1 = getelementptr [8 x i8], ptr %invariant.gep920, i64 %indvars.iv.next814
  %i.we = load double, ptr %gep921.1, align 8, !tbaa !9 ; 3 uses
  %i.wf = fcmp oge double %i.we, 0.000000e+00
  %i.wg = fneg double %i.we
  %i.wh = select i1 %i.wf, double %i.we, double %i.wg
  %i.wi = call double @llvm.fmuladd.f64(double %i.wd, double %i.wh, double %i.vv)
  %indvars.iv.next814.1 = add nuw nsw i64 %indvars.iv813, 2 ; 2 uses
  %i.wj = trunc nuw nsw i64 %indvars.iv.next814.1 to i32
  %i.wk = add i32 %.reass925, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wl
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !9 ; 3 uses
  %i.wo = fcmp oge double %i.wn, 0.000000e+00
  %i.wp = fneg double %i.wn
  %i.wq = select i1 %i.wo, double %i.wn, double %i.wp
  %gep921.2 = getelementptr [8 x i8], ptr %invariant.gep920, i64 %indvars.iv.next814.1
  %i.wr = load double, ptr %gep921.2, align 8, !tbaa !9 ; 3 uses
  %i.ws = fcmp oge double %i.wr, 0.000000e+00
  %i.wt = fneg double %i.wr
  %i.wu = select i1 %i.ws, double %i.wr, double %i.wt
  %i.wv = call double @llvm.fmuladd.f64(double %i.wq, double %i.wu, double %i.wi)
  %indvars.iv.next814.2 = add nuw nsw i64 %indvars.iv813, 3 ; 2 uses
  %i.ww = trunc nuw nsw i64 %indvars.iv.next814.2 to i32
  %i.wx = add i32 %.reass925, %i.ww
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wy
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !9 ; 3 uses
  %i.xb = fcmp oge double %i.xa, 0.000000e+00
  %i.xc = fneg double %i.xa
  %i.xd = select i1 %i.xb, double %i.xa, double %i.xc
  %gep921.3 = getelementptr [8 x i8], ptr %invariant.gep920, i64 %indvars.iv.next814.2
  %i.xe = load double, ptr %gep921.3, align 8, !tbaa !9 ; 3 uses
  %i.xf = fcmp oge double %i.xe, 0.000000e+00
  %i.xg = fneg double %i.xe
  %i.xh = select i1 %i.xf, double %i.xe, double %i.xg
  %i.xi = call double @llvm.fmuladd.f64(double %i.xd, double %i.xh, double %i.wv) ; 2 uses
  %indvars.iv.next814.3 = add nuw nsw i64 %indvars.iv813, 4 ; 2 uses
  %.not585.not.3 = icmp samesign ult i64 %indvars.iv.next814.3, %indvars.iv816
  br i1 %.not585.not.3, label %.lr.ph674.new, label %._crit_edge675, !llvm.loop !60

._crit_edge675:                                   ; preds = %.prol.loopexit, %.lr.ph674.new, %bb.ae
  %.1.lcssa = phi double [ %i.un, %bb.ae ], [ %.lcssa1293.unr, %.prol.loopexit ], [ %i.xi, %.lr.ph674.new ]
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv816 ; 2 uses
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !9
  %i.xl = fadd double %.1.lcssa, %i.xk
  store double %i.xl, ptr %i.xj, align 8, !tbaa !9
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1 ; 2 uses
  %indvars.iv.next811 = add i32 %indvars.iv810, 1
  %exitcond820.not = icmp eq i64 %indvars.iv.next817, %wide.trip.count819
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %exitcond820.not, label %.loopexit611, label %bb.ae, !llvm.loop !61

bb.af:                                            ; preds = %bb.aa
  br i1 %.not568, label %.preheader, label %.preheader612

.preheader612:                                    ; preds = %bb.af
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph689

.lr.ph689:                                        ; preds = %.preheader612
  %i.xm = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.xn = add nuw i32 %i.ci, 1
  %wide.trip.count827 = zext i32 %i.xn to i64
  %invariant.gep926 = getelementptr [8 x i8], ptr %i.o, i64 %i.br ; 5 uses
  %i.xo = zext nneg i32 %i.ci to i64
  %i.xp = add i32 %i.xm, 1
  br label %bb.ag

.preheader:                                       ; preds = %bb.af
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph699

.lr.ph699:                                        ; preds = %.preheader
  %i.xq = load i32, ptr %4, align 4, !tbaa !8
  %i.xr = add nuw i32 %i.ci, 1
  %wide.trip.count837 = zext i32 %i.xr to i64
  %invariant.gep930 = getelementptr [8 x i8], ptr %i.o, i64 %i.br
  %invariant.gep928 = getelementptr [8 x i8], ptr %i.o, i64 %i.br
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph689, %._crit_edge685
  %indvar1311 = phi i64 [ 0, %.lr.ph689 ], [ %indvar.next1312, %._crit_edge685 ] ; 3 uses
  %indvar1307 = phi i32 [ 0, %.lr.ph689 ], [ %indvar.next1308, %._crit_edge685 ] ; 2 uses
  %indvars.iv821 = phi i64 [ 1, %.lr.ph689 ], [ %indvars.iv.next822, %._crit_edge685 ] ; 8 uses
  %i.xs = add i32 %i.xp, %indvar1307
  %i.xt = sext i32 %i.xs to i64
  %smin1309 = call i64 @llvm.smin.i64(i64 %i.xo, i64 %i.xt)
  %smax1310 = call i64 @llvm.smax.i64(i64 %smin1309, i64 %indvars.iv821) ; 2 uses
  %i.xu = trunc i64 %indvars.iv821 to i32
  %i.xv = add i32 %i.xm, %i.xu
  %i.xw = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.xv)
  %i.xx = sext i32 %i.xw to i64                   ; 2 uses
  %.not582680 = icmp sgt i64 %indvars.iv821, %i.xx
  br i1 %.not582680, label %._crit_edge685, label %.lr.ph684

.lr.ph684:                                        ; preds = %bb.ag
  %i.xy = sub nsw i64 %smax1310, %indvar1311
  %i.xz = trunc nuw nsw i64 %indvars.iv821 to i32
  %i.ya = mul i32 %.6688745, %i.xz                ; 5 uses
  %xtraiter1313 = and i64 %i.xy, 3                ; 2 uses
  %lcmp.mod1314.not = icmp eq i64 %xtraiter1313, 0
  br i1 %lcmp.mod1314.not, label %.prol.loopexit1306, label %.prol.preheader1305

.prol.preheader1305:                              ; preds = %.lr.ph684, %.prol.preheader1305
  %indvars.iv823.prol = phi i64 [ %indvars.iv.next824.prol, %.prol.preheader1305 ], [ %indvars.iv821, %.lr.ph684 ] ; 2 uses
  %.2682.prol = phi double [ %i.yn, %.prol.preheader1305 ], [ 0.000000e+00, %.lr.ph684 ]
  %prol.iter1315 = phi i64 [ %prol.iter1315.next, %.prol.preheader1305 ], [ 0, %.lr.ph684 ]
  %indvars.iv.next824.prol = add nuw nsw i64 %indvars.iv823.prol, 1 ; 3 uses
  %i.yb = trunc nsw i64 %indvars.iv.next824.prol to i32
  %i.yc = add i32 %i.ya, %i.yb
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.yd
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !9 ; 3 uses
  %i.yg = fcmp oge double %i.yf, 0.000000e+00
  %i.yh = fneg double %i.yf
  %i.yi = select i1 %i.yg, double %i.yf, double %i.yh
  %gep927.prol = getelementptr [8 x i8], ptr %invariant.gep926, i64 %indvars.iv823.prol
  %i.yj = load double, ptr %gep927.prol, align 8, !tbaa !9 ; 3 uses
  %i.yk = fcmp oge double %i.yj, 0.000000e+00
  %i.yl = fneg double %i.yj
  %i.ym = select i1 %i.yk, double %i.yj, double %i.yl
  %i.yn = call double @llvm.fmuladd.f64(double %i.yi, double %i.ym, double %.2682.prol) ; 3 uses
  %prol.iter1315.next = add i64 %prol.iter1315, 1 ; 2 uses
  %prol.iter1315.cmp.not = icmp eq i64 %prol.iter1315.next, %xtraiter1313
  br i1 %prol.iter1315.cmp.not, label %.prol.loopexit1306, label %.prol.preheader1305, !llvm.loop !62

.prol.loopexit1306:                               ; preds = %.prol.preheader1305, %.lr.ph684
  %indvars.iv823.unr = phi i64 [ %indvars.iv821, %.lr.ph684 ], [ %indvars.iv.next824.prol, %.prol.preheader1305 ]
  %.2682.unr = phi double [ 0.000000e+00, %.lr.ph684 ], [ %i.yn, %.prol.preheader1305 ]
  %.lcssa1294.unr = phi double [ poison, %.lr.ph684 ], [ %i.yn, %.prol.preheader1305 ]
  %i.yo = sub i64 %indvar1311, %smax1310
  %i.yp = icmp ugt i64 %i.yo, -4
  br i1 %i.yp, label %._crit_edge685, label %.lr.ph684.new

.lr.ph684.new:                                    ; preds = %.prol.loopexit1306, %.lr.ph684.new
  %indvars.iv823 = phi i64 [ %indvars.iv.next824.3, %.lr.ph684.new ], [ %indvars.iv823.unr, %.prol.loopexit1306 ] ; 5 uses
  %.2682 = phi double [ %i.aap, %.lr.ph684.new ], [ %.2682.unr, %.prol.loopexit1306 ]
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 1 ; 2 uses
  %i.yq = trunc nsw i64 %indvars.iv.next824 to i32
  %i.yr = add i32 %i.ya, %i.yq
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ys
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !9 ; 3 uses
  %i.yv = fcmp oge double %i.yu, 0.000000e+00
  %i.yw = fneg double %i.yu
  %i.yx = select i1 %i.yv, double %i.yu, double %i.yw
  %gep927 = getelementptr [8 x i8], ptr %invariant.gep926, i64 %indvars.iv823
  %i.yy = load double, ptr %gep927, align 8, !tbaa !9 ; 3 uses
  %i.yz = fcmp oge double %i.yy, 0.000000e+00
  %i.za = fneg double %i.yy
  %i.zb = select i1 %i.yz, double %i.yy, double %i.za
  %i.zc = call double @llvm.fmuladd.f64(double %i.yx, double %i.zb, double %.2682)
  %indvars.iv.next824.1 = add nuw nsw i64 %indvars.iv823, 2 ; 2 uses
  %i.zd = trunc nsw i64 %indvars.iv.next824.1 to i32
  %i.ze = add i32 %i.ya, %i.zd
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.zf
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !9 ; 3 uses
  %i.zi = fcmp oge double %i.zh, 0.000000e+00
  %i.zj = fneg double %i.zh
  %i.zk = select i1 %i.zi, double %i.zh, double %i.zj
  %gep927.1 = getelementptr [8 x i8], ptr %invariant.gep926, i64 %indvars.iv.next824
  %i.zl = load double, ptr %gep927.1, align 8, !tbaa !9 ; 3 uses
  %i.zm = fcmp oge double %i.zl, 0.000000e+00
  %i.zn = fneg double %i.zl
  %i.zo = select i1 %i.zm, double %i.zl, double %i.zn
  %i.zp = call double @llvm.fmuladd.f64(double %i.zk, double %i.zo, double %i.zc)
  %indvars.iv.next824.2 = add nuw nsw i64 %indvars.iv823, 3 ; 3 uses
  %i.zq = trunc nsw i64 %indvars.iv.next824.2 to i32
  %i.zr = add i32 %i.ya, %i.zq
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.zs
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !9 ; 3 uses
  %i.zv = fcmp oge double %i.zu, 0.000000e+00
  %i.zw = fneg double %i.zu
  %i.zx = select i1 %i.zv, double %i.zu, double %i.zw
  %gep927.2 = getelementptr [8 x i8], ptr %invariant.gep926, i64 %indvars.iv.next824.1
  %i.zy = load double, ptr %gep927.2, align 8, !tbaa !9 ; 3 uses
  %i.zz = fcmp oge double %i.zy, 0.000000e+00
  %i.aaa = fneg double %i.zy
  %i.aab = select i1 %i.zz, double %i.zy, double %i.aaa
  %i.aac = call double @llvm.fmuladd.f64(double %i.zx, double %i.aab, double %i.zp)
  %indvars.iv.next824.3 = add nuw nsw i64 %indvars.iv823, 4 ; 2 uses
  %i.aad = trunc nsw i64 %indvars.iv.next824.3 to i32
  %i.aae = add i32 %i.ya, %i.aad
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aaf
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !9 ; 3 uses
  %i.aai = fcmp oge double %i.aah, 0.000000e+00
  %i.aaj = fneg double %i.aah
  %i.aak = select i1 %i.aai, double %i.aah, double %i.aaj
  %gep927.3 = getelementptr [8 x i8], ptr %invariant.gep926, i64 %indvars.iv.next824.2
  %i.aal = load double, ptr %gep927.3, align 8, !tbaa !9 ; 3 uses
  %i.aam = fcmp oge double %i.aal, 0.000000e+00
  %i.aan = fneg double %i.aal
  %i.aao = select i1 %i.aam, double %i.aal, double %i.aan
  %i.aap = call double @llvm.fmuladd.f64(double %i.aak, double %i.aao, double %i.aac) ; 2 uses
  %.not582.not.3 = icmp slt i64 %indvars.iv.next824.2, %i.xx
  br i1 %.not582.not.3, label %.lr.ph684.new, label %._crit_edge685, !llvm.loop !63

._crit_edge685:                                   ; preds = %.prol.loopexit1306, %.lr.ph684.new, %bb.ag
  %.2.lcssa = phi double [ 0.000000e+00, %bb.ag ], [ %.lcssa1294.unr, %.prol.loopexit1306 ], [ %i.aap, %.lr.ph684.new ]
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv821 ; 2 uses
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !9
  %i.aas = fadd double %.2.lcssa, %i.aar
  store double %i.aas, ptr %i.aaq, align 8, !tbaa !9
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1 ; 2 uses
  %exitcond828.not = icmp eq i64 %indvars.iv.next822, %wide.trip.count827
  %indvar.next1308 = add i32 %indvar1307, 1
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %exitcond828.not, label %.loopexit611, label %bb.ag, !llvm.loop !64

bb.ah:                                            ; preds = %.lr.ph699, %._crit_edge695
  %indvars.iv834 = phi i64 [ 1, %.lr.ph699 ], [ %indvars.iv.next835, %._crit_edge695 ] ; 6 uses
  %indvars.iv829 = phi i32 [ 2, %.lr.ph699 ], [ %indvars.iv.next830, %._crit_edge695 ] ; 2 uses
  %gep931 = getelementptr [8 x i8], ptr %invariant.gep930, i64 %indvars.iv834
  %i.aat = load double, ptr %gep931, align 8, !tbaa !9 ; 3 uses
  %i.aau = fcmp oge double %i.aat, 0.000000e+00
  %i.aav = fneg double %i.aat
  %i.aaw = select i1 %i.aau, double %i.aat, double %i.aav ; 2 uses
  %i.aax = trunc i64 %indvars.iv834 to i32
  %i.aay = add i32 %i.xq, %i.aax
  %i.aaz = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.aay)
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %i.aba = sext i32 %i.aaz to i64                 ; 2 uses
  %.not579690.not = icmp slt i64 %indvars.iv834, %i.aba
  br i1 %.not579690.not, label %.lr.ph694, label %._crit_edge695

.lr.ph694:                                        ; preds = %bb.ah
  %i.abb = sext i32 %indvars.iv829 to i64
  %i.abc = trunc nuw nsw i64 %indvars.iv834 to i32
  %i.abd = mul i32 %.7698746, %i.abc
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph694, %bb.ai
  %indvars.iv831 = phi i64 [ %i.abb, %.lr.ph694 ], [ %indvars.iv.next832, %bb.ai ] ; 3 uses
  %.3692 = phi double [ %i.aaw, %.lr.ph694 ], [ %i.abq, %bb.ai ]
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 1 ; 2 uses
  %i.abe = trunc nsw i64 %indvars.iv.next832 to i32
  %i.abf = add i32 %i.abd, %i.abe
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.abg
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !9 ; 3 uses
  %i.abj = fcmp oge double %i.abi, 0.000000e+00
  %i.abk = fneg double %i.abi
  %i.abl = select i1 %i.abj, double %i.abi, double %i.abk
  %gep929 = getelementptr [8 x i8], ptr %invariant.gep928, i64 %indvars.iv831
  %i.abm = load double, ptr %gep929, align 8, !tbaa !9 ; 3 uses
  %i.abn = fcmp oge double %i.abm, 0.000000e+00
  %i.abo = fneg double %i.abm
  %i.abp = select i1 %i.abn, double %i.abm, double %i.abo
  %i.abq = call double @llvm.fmuladd.f64(double %i.abl, double %i.abp, double %.3692) ; 2 uses
  %.not579.not = icmp slt i64 %indvars.iv831, %i.aba
  br i1 %.not579.not, label %bb.ai, label %._crit_edge695, !llvm.loop !65

._crit_edge695:                                   ; preds = %bb.ai, %bb.ah
  %.3.lcssa = phi double [ %i.aaw, %bb.ah ], [ %i.abq, %bb.ai ]
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv834 ; 2 uses
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !9
  %i.abt = fadd double %.3.lcssa, %i.abs
  store double %i.abt, ptr %i.abr, align 8, !tbaa !9
  %indvars.iv.next830 = add nuw i32 %indvars.iv829, 1
  %exitcond838.not = icmp eq i64 %indvars.iv.next835, %wide.trip.count837
  br i1 %exitcond838.not, label %.loopexit611, label %bb.ah, !llvm.loop !66

.loopexit611:                                     ; preds = %._crit_edge633, %._crit_edge641, %._crit_edge649, %._crit_edge657, %._crit_edge666, %._crit_edge675, %._crit_edge685, %._crit_edge695
  br i1 %.not575627, label %._crit_edge705.thread, label %.lr.ph704.preheader

.lr.ph704.preheader:                              ; preds = %.loopexit611
  %i.abu = zext nneg i32 %i.ci to i64             ; 2 uses
  %invariant.gep932 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.abu ; 3 uses
  %invariant.gep934 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.abu ; 3 uses
  %i.abv = zext nneg i32 %i.ci to i64             ; 2 uses
  %xtraiter1316 = and i64 %i.abv, 1
  %i.abw = icmp eq i32 %i.ci, 1
  br i1 %i.abw, label %.lr.ph704.epil.preheader, label %.lr.ph704.preheader.new

.lr.ph704.preheader.new:                          ; preds = %.lr.ph704.preheader
  %unroll_iter = and i64 %i.abv, 2147483646
  br label %.lr.ph704

.lr.ph704:                                        ; preds = %bb.an, %.lr.ph704.preheader.new
  %indvars.iv839 = phi i64 [ 1, %.lr.ph704.preheader.new ], [ %indvars.iv.next840.1, %bb.an ] ; 6 uses
  %.4702 = phi double [ 0.000000e+00, %.lr.ph704.preheader.new ], [ %i.ade, %bb.an ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph704.preheader.new ], [ %niter.next.1, %bb.an ]
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv839
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !9 ; 3 uses
  %i.abz = fcmp ogt double %i.aby, %i.av
  br i1 %i.abz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph704
  %gep935 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep934, i64 %indvars.iv839
  %i.aca = load double, ptr %gep935, align 8, !tbaa !9 ; 3 uses
  %i.acb = fcmp oge double %i.aca, 0.000000e+00
  %i.acc = fneg double %i.aca
  %i.acd = select i1 %i.acb, double %i.aca, double %i.acc
  %i.ace = fdiv double %i.acd, %i.aby
end_hunk_1
