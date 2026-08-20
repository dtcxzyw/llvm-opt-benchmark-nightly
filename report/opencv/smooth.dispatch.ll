inline.NumInlined: 2394
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_118hlineSmooth5N14641IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib:bb.a
  %i.rq = add nuw nsw i16 %i.rp, %i.rn
  %i.rr = shl nuw nsw i16 %i.rq, 4
  %i.rs = add nuw i16 %i.rj, %i.rr
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %i.rs, ptr %i.rt, align 2, !tbaa !45
  %i.ru = load i8, ptr %i.rc, align 1, !tbaa !21
  %i.rv = zext i8 %i.ru to i16
  %i.rw = mul nuw nsw i16 %i.rv, 96
  %i.rx = load i8, ptr %i.qx, align 1, !tbaa !21
  %i.ry = zext i8 %i.rx to i16
  %i.rz = load i8, ptr %i.rl, align 1, !tbaa !21
  %i.sa = zext i8 %i.rz to i16
  %i.sb = add nuw nsw i16 %i.sa, %i.ry
  %i.sc = shl nuw nsw i16 %i.sb, 6
  %i.sd = add nuw i16 %i.sc, %i.rw
  %i.se = load i8, ptr %gep, align 1, !tbaa !21
  %i.sf = zext i8 %i.se to i16
  %gep666 = getelementptr i8, ptr %invariant.gep665, i64 %indvars.iv ; 2 uses
  %i.sg = load i8, ptr %gep666, align 1, !tbaa !21
  %i.sh = zext i8 %i.sg to i16
  %i.si = add nuw nsw i16 %i.sh, %i.sf
  %i.sj = shl nuw nsw i16 %i.si, 4
  %i.sk = add nuw i16 %i.sd, %i.sj
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.rb
  store i16 %i.sk, ptr %i.sl, align 2, !tbaa !45
  %i.sm = load i8, ptr %i.rl, align 1, !tbaa !21
  %i.sn = zext i8 %i.sm to i16
  %i.so = mul nuw nsw i16 %i.sn, 96
  %i.sp = load i8, ptr %i.rc, align 1, !tbaa !21
  %i.sq = zext i8 %i.sp to i16
  %i.sr = load i8, ptr %gep666, align 1, !tbaa !21
  %i.ss = zext i8 %i.sr to i16
  %i.st = add nuw nsw i16 %i.ss, %i.sq
  %i.su = shl nuw nsw i16 %i.st, 6
  %i.sv = add nuw i16 %i.su, %i.so
  %i.sw = load i8, ptr %i.qx, align 1, !tbaa !21
  %i.sx = zext i8 %i.sw to i16
  %gep668 = getelementptr i8, ptr %invariant.gep667, i64 %indvars.iv
  %i.sy = load i8, ptr %gep668, align 1, !tbaa !21
  %i.sz = zext i8 %i.sy to i16
  %i.ta = add nuw nsw i16 %i.sz, %i.sx
  %i.tb = shl nuw nsw i16 %i.ta, 4
  %i.tc = add nuw i16 %i.sv, %i.tb
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.rk
  store i16 %i.tc, ptr %i.td, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !800

._crit_edge:                                      ; preds = %scalar.ph1090, %middle.block1104, %.preheader556
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  br i1 %.not, label %.loopexit555, label %bb.g

scalar.ph1090:                                    ; preds = %scalar.ph1090.preheader, %scalar.ph1090
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %scalar.ph1090 ], [ %indvars.iv628.ph, %scalar.ph1090.preheader ] ; 6 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv628 ; 2 uses
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !21
  %i.tg = zext i8 %i.tf to i16
  %i.th = mul nuw nsw i16 %i.tg, 96
  %i.ti = add nuw nsw i64 %indvars.iv628, %i.d    ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ti ; 2 uses
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !21
  %i.tl = zext i8 %i.tk to i16
  %i.tm = shl nuw nsw i16 %i.tl, 6
  %i.tn = add nuw i16 %i.tm, %i.th
  %gep678 = getelementptr inbounds nuw i8, ptr %invariant.gep677, i64 %indvars.iv628 ; 2 uses
  %i.to = load i8, ptr %gep678, align 1, !tbaa !21
  %i.tp = zext i8 %i.to to i16
  %i.tq = shl nuw nsw i16 %i.tp, 4
  %i.tr = add nuw i16 %i.tn, %i.tq
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv628
  store i16 %i.tr, ptr %i.ts, align 2, !tbaa !45
  %i.tt = load i8, ptr %i.tj, align 1, !tbaa !21
  %i.tu = zext i8 %i.tt to i16
  %i.tv = mul nuw nsw i16 %i.tu, 96
  %i.tw = load i8, ptr %i.te, align 1, !tbaa !21
  %i.tx = zext i8 %i.tw to i16
  %i.ty = load i8, ptr %gep678, align 1, !tbaa !21
  %i.tz = zext i8 %i.ty to i16
  %i.ua = add nuw nsw i16 %i.tz, %i.tx
  %i.ub = shl nuw nsw i16 %i.ua, 6
  %i.uc = add nuw i16 %i.ub, %i.tv
  %gep680 = getelementptr inbounds nuw i8, ptr %invariant.gep679, i64 %indvars.iv628
  %i.ud = load i8, ptr %gep680, align 1, !tbaa !21
  %i.ue = zext i8 %i.ud to i16
  %i.uf = shl nuw nsw i16 %i.ue, 4
  %i.ug = add nuw i16 %i.uc, %i.uf
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ti
  store i16 %i.ug, ptr %i.uh, align 2, !tbaa !45
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond632.not = icmp eq i64 %indvars.iv.next629, %i.d
  br i1 %exitcond632.not, label %._crit_edge, label %scalar.ph1090, !llvm.loop !801

bb.g:                                             ; preds = %._crit_edge
  %i.ui = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -2, i32 noundef %5, i32 noundef %6)
  %i.uj = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -1, i32 noundef %5, i32 noundef %6)
  br i1 %i.a, label %.lr.ph582.preheader, label %.loopexit555

.lr.ph582.preheader:                              ; preds = %bb.g
  %i.uk = mul nsw i32 %i.uj, %1
  %i.ul = mul nsw i32 %i.ui, %1
  %i.um = sext i32 %i.ul to i64                   ; 2 uses
  %i.un = sext i32 %i.uk to i64                   ; 2 uses
  %i.uo = zext nneg i32 %1 to i64
  %wide.trip.count636 = zext nneg i32 %1 to i64   ; 6 uses
  %invariant.gep681 = getelementptr i8, ptr %0, i64 %i.um ; 4 uses
  %invariant.gep683 = getelementptr i8, ptr %0, i64 %i.un ; 4 uses
  %invariant.gep685 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.uo ; 6 uses
  %min.iters.check1127 = icmp ult i32 %1, 16
  br i1 %min.iters.check1127, label %.lr.ph582.preheader1292, label %vector.memcheck1107

vector.memcheck1107:                              ; preds = %.lr.ph582.preheader
  %i.up = shl nuw nsw i64 %wide.trip.count636, 2
  %scevgep1108 = getelementptr i8, ptr %4, i64 %i.up ; 2 uses
  %i.uq = getelementptr i8, ptr %0, i64 %i.un
  %scevgep1109 = getelementptr i8, ptr %i.uq, i64 %wide.trip.count636 ; 2 uses
  %i.ur = getelementptr i8, ptr %0, i64 %i.um
  %scevgep1110 = getelementptr i8, ptr %i.ur, i64 %wide.trip.count636 ; 2 uses
  %bound01111 = icmp ult ptr %invariant.gep685, %scevgep1109
  %bound11112 = icmp ult ptr %invariant.gep683, %scevgep1108
  %found.conflict1113 = and i1 %bound01111, %bound11112
  %bound01114 = icmp ult ptr %invariant.gep685, %scevgep1110
  %bound11115 = icmp ult ptr %invariant.gep681, %scevgep1108
  %found.conflict1116 = and i1 %bound01114, %bound11115
  %conflict.rdx1117 = or i1 %found.conflict1113, %found.conflict1116
  %bound01118 = icmp ult ptr %4, %scevgep1109
  %bound11119 = icmp ult ptr %invariant.gep683, %invariant.gep685
  %found.conflict1120 = and i1 %bound01118, %bound11119
  %conflict.rdx1121 = or i1 %conflict.rdx1117, %found.conflict1120
  %bound01122 = icmp ult ptr %4, %scevgep1110
  %bound11123 = icmp ult ptr %invariant.gep681, %invariant.gep685
  %found.conflict1124 = and i1 %bound01122, %bound11123
  %conflict.rdx1125 = or i1 %conflict.rdx1121, %found.conflict1124
  br i1 %conflict.rdx1125, label %.lr.ph582.preheader1292, label %vector.ph1128

vector.ph1128:                                    ; preds = %vector.memcheck1107
  %n.vec1129 = and i64 %wide.trip.count636, 2147483640 ; 3 uses
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1128
  %index1131 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1137, %vector.body1130 ] ; 5 uses
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index1131 ; 2 uses
  %i.ut = getelementptr i8, ptr %invariant.gep681, i64 %index1131
  %wide.load1132 = load <8 x i8>, ptr %i.ut, align 1, !tbaa !21, !alias.scope !802
  %i.uu = zext <8 x i8> %wide.load1132 to <8 x i16>
  %i.uv = shl nuw nsw <8 x i16> %i.uu, splat (i16 4)
  %wide.load1133 = load <8 x i16>, ptr %i.us, align 2, !tbaa !45, !alias.scope !805, !noalias !807
  %i.uw = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load1133, <8 x i16> %i.uv)
  %i.ux = getelementptr i8, ptr %invariant.gep683, i64 %index1131
  %wide.load1134 = load <8 x i8>, ptr %i.ux, align 1, !tbaa !21, !alias.scope !811 ; 2 uses
  %i.uy = zext <8 x i8> %wide.load1134 to <8 x i16>
  %i.uz = shl nuw nsw <8 x i16> %i.uy, splat (i16 6)
  %i.va = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.uw, <8 x i16> %i.uz)
  store <8 x i16> %i.va, ptr %i.us, align 2, !tbaa !45, !alias.scope !805, !noalias !812
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep685, i64 %index1131 ; 2 uses
  %i.vc = zext <8 x i8> %wide.load1134 to <8 x i16>
  %i.vd = shl nuw nsw <8 x i16> %i.vc, splat (i16 4)
  %wide.load1136 = load <8 x i16>, ptr %i.vb, align 2, !tbaa !45, !alias.scope !813, !noalias !815
  %i.ve = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load1136, <8 x i16> %i.vd)
  store <8 x i16> %i.ve, ptr %i.vb, align 2, !tbaa !45, !alias.scope !813, !noalias !812
  %index.next1137 = add nuw i64 %index1131, 8     ; 2 uses
  %i.vf = icmp eq i64 %index.next1137, %n.vec1129
  br i1 %i.vf, label %middle.block1138, label %vector.body1130, !llvm.loop !818

middle.block1138:                                 ; preds = %vector.body1130
  %cmp.n1139 = icmp eq i64 %n.vec1129, %wide.trip.count636
  br i1 %cmp.n1139, label %.loopexit555, label %.lr.ph582.preheader1292

.lr.ph582.preheader1292:                          ; preds = %vector.memcheck1107, %.lr.ph582.preheader, %middle.block1138
  %indvars.iv633.ph = phi i64 [ 0, %vector.memcheck1107 ], [ 0, %.lr.ph582.preheader ], [ %n.vec1129, %middle.block1138 ]
  br label %.lr.ph582

.lr.ph582:                                        ; preds = %.lr.ph582.preheader1292, %.lr.ph582
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %.lr.ph582 ], [ %indvars.iv633.ph, %.lr.ph582.preheader1292 ] ; 5 uses
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv633 ; 2 uses
  %gep682 = getelementptr i8, ptr %invariant.gep681, i64 %indvars.iv633
  %i.vh = load i8, ptr %gep682, align 1, !tbaa !21
  %i.vi = zext i8 %i.vh to i16
  %i.vj = shl nuw nsw i16 %i.vi, 4
  %i.vk = load i16, ptr %i.vg, align 2, !tbaa !45, !noalias !819
  %i.vl = tail call i16 @llvm.uadd.sat.i16(i16 %i.vk, i16 %i.vj)
  %gep684 = getelementptr i8, ptr %invariant.gep683, i64 %indvars.iv633 ; 2 uses
  %i.vm = load i8, ptr %gep684, align 1, !tbaa !21
  %i.vn = zext i8 %i.vm to i16
  %i.vo = shl nuw nsw i16 %i.vn, 6
  %i.vp = tail call i16 @llvm.uadd.sat.i16(i16 %i.vl, i16 %i.vo)
  store i16 %i.vp, ptr %i.vg, align 2, !tbaa !45
  %gep686 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep685, i64 %indvars.iv633 ; 2 uses
  %i.vq = load i8, ptr %gep684, align 1, !tbaa !21
  %i.vr = zext i8 %i.vq to i16
  %i.vs = shl nuw nsw i16 %i.vr, 4
  %i.vt = load i16, ptr %gep686, align 2, !tbaa !45, !noalias !820
  %i.vu = tail call i16 @llvm.uadd.sat.i16(i16 %i.vt, i16 %i.vs)
  store i16 %i.vu, ptr %gep686, align 2, !tbaa !45
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next634, %wide.trip.count636
  br i1 %exitcond637.not, label %.loopexit555, label %.lr.ph582, !llvm.loop !821

.loopexit555:                                     ; preds = %.lr.ph582, %middle.block1138, %bb.g, %._crit_edge
  %i.vv = shl i32 %1, 1                           ; 5 uses
  %i.vw = sext i32 %i.vv to i64                   ; 16 uses
  %i.vx = getelementptr i8, ptr %0, i64 %i.vw     ; 7 uses
  %i.vy = getelementptr [2 x i8], ptr %4, i64 %i.vw ; 11 uses
  %i.vz = add i32 %5, -2                          ; 3 uses
  %i.wa = mul i32 %i.vz, %1                       ; 2 uses
  br i1 %7, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.loopexit555
  %i.wb = icmp slt i32 %i.vv, %i.wa
  br i1 %i.wb, label %.lr.ph586, label %.loopexit554

.lr.ph586:                                        ; preds = %.preheader
  %i.wc = sub nsw i32 0, %1
  %i.wd = sext i32 %i.wc to i64                   ; 2 uses
  %i.we = sext i32 %1 to i64                      ; 6 uses
  %i.wf = mul nsw i32 %1, -2
  %i.wg = sext i32 %i.wf to i64                   ; 4 uses
  %.neg = add i32 %5, -4
  %.neg1279 = mul i32 %.neg, %1
  %i.wh = add i32 %.neg1279, -1                   ; 2 uses
  %i.wi = zext i32 %i.wh to i64
  %i.wj = add nuw nsw i64 %i.wi, 1                ; 2 uses
  %min.iters.check1172 = icmp ult i32 %i.wh, 31
  br i1 %min.iters.check1172, label %scalar.ph1171.preheader, label %vector.memcheck1141

vector.memcheck1141:                              ; preds = %.lr.ph586
  %i.wk = shl nsw i64 %i.vw, 1                    ; 2 uses
  %.neg1280 = add i32 %5, -4
  %.neg1281 = mul i32 %.neg1280, %1
  %i.wl = add i32 %.neg1281, -1
  %i.wm = zext i32 %i.wl to i64                   ; 5 uses
  %i.wn = add nsw i64 %i.vw, %i.wm
  %i.wo = shl nsw i64 %i.wn, 1
  %8 = getelementptr i8, ptr %4, i64 %i.wo
  %scevgep1142 = getelementptr i8, ptr %8, i64 2  ; 5 uses
  %i.wp = getelementptr i8, ptr %0, i64 %i.wk
  %scevgep1142.a = getelementptr i8, ptr %0, i64 %i.wk
  %scevgep1143 = getelementptr i8, ptr %scevgep1142.a, i64 %i.wm
  %i.wq = getelementptr i8, ptr %scevgep1143, i64 1
  %i.wr = getelementptr i8, ptr %0, i64 %i.wg
  %scevgep1144 = getelementptr i8, ptr %i.wr, i64 %i.vw
  %9 = getelementptr i8, ptr %0, i64 %i.wg
  %scevgep1145 = getelementptr i8, ptr %9, i64 %i.vw
  %i.ws = getelementptr i8, ptr %scevgep1145, i64 %i.wm
  %i.wt = getelementptr i8, ptr %i.ws, i64 1
  %scevgep1146 = getelementptr i8, ptr %0, i64 %i.we
  %scevgep1147 = getelementptr i8, ptr %scevgep1146, i64 %i.vw
  %scevgep1147.a = getelementptr i8, ptr %0, i64 %i.we
  %i.wu = getelementptr i8, ptr %scevgep1147.a, i64 %i.vw
  %i.wv = getelementptr i8, ptr %i.wu, i64 %i.wm
  %scevgep1148 = getelementptr i8, ptr %i.wv, i64 1
  %i.ww = sub nsw i64 %i.vw, %i.we
  %scevgep1149 = getelementptr i8, ptr %0, i64 %i.ww
  %i.wx = add nsw i64 %i.vw, %i.wm
  %i.wy = add nsw i64 %i.wx, 1                    ; 2 uses
  %i.wz = sub nsw i64 %i.wy, %i.we
  %scevgep1150 = getelementptr i8, ptr %0, i64 %i.wz
  %scevgep1151 = getelementptr i8, ptr %0, i64 %i.wy
  %bound01152 = icmp ult ptr %i.vy, %i.wq
  %bound11153 = icmp ult ptr %i.wp, %scevgep1142
  %found.conflict1154 = and i1 %bound01152, %bound11153
  %bound01155 = icmp ult ptr %i.vy, %i.wt
  %bound11156 = icmp ult ptr %scevgep1144, %scevgep1142
  %found.conflict1157 = and i1 %bound01155, %bound11156
  %conflict.rdx1158 = or i1 %found.conflict1154, %found.conflict1157
  %bound01159 = icmp ult ptr %i.vy, %scevgep1148
  %bound11160 = icmp ult ptr %scevgep1147, %scevgep1142
  %found.conflict1161 = and i1 %bound01159, %bound11160
  %conflict.rdx1162 = or i1 %conflict.rdx1158, %found.conflict1161
  %bound01163 = icmp ult ptr %i.vy, %scevgep1150
  %bound11164 = icmp ult ptr %scevgep1149, %scevgep1142
  %found.conflict1165 = and i1 %bound01163, %bound11164
  %conflict.rdx1166 = or i1 %conflict.rdx1162, %found.conflict1165
  %bound01167 = icmp ult ptr %i.vy, %scevgep1151
  %bound11168 = icmp ult ptr %i.vx, %scevgep1142
  %found.conflict1169 = and i1 %bound01167, %bound11168
  %conflict.rdx1170 = or i1 %conflict.rdx1166, %found.conflict1169
  br i1 %conflict.rdx1170, label %scalar.ph1171.preheader, label %vector.ph1173

vector.ph1173:                                    ; preds = %vector.memcheck1141
  %n.vec1174 = and i64 %i.wj, 8589934584          ; 5 uses
  %i.xa = getelementptr i8, ptr %i.vx, i64 %n.vec1174 ; 2 uses
  %i.xb = trunc i64 %n.vec1174 to i32
  %i.xc = add i32 %i.vv, %i.xb
  %i.xd = shl nuw nsw i64 %n.vec1174, 1
  %i.xe = getelementptr i8, ptr %i.vy, i64 %i.xd  ; 2 uses
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1183, %vector.body1175 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.vx, i64 %index1176 ; 5 uses
  %i.xf = shl i64 %index1176, 1
  %next.gep1177 = getelementptr i8, ptr %i.vy, i64 %i.xf
  %wide.load1178 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !21, !alias.scope !822
  %i.xg = zext <8 x i8> %wide.load1178 to <8 x i16>
  %i.xh = mul nuw nsw <8 x i16> %i.xg, splat (i16 6)
  %i.xi = getelementptr inbounds i8, ptr %next.gep, i64 %i.wd
  %wide.load1179 = load <8 x i8>, ptr %i.xi, align 1, !tbaa !21, !alias.scope !825
  %i.xj = zext <8 x i8> %wide.load1179 to <8 x i16>
  %i.xk = getelementptr inbounds i8, ptr %next.gep, i64 %i.we
  %wide.load1180 = load <8 x i8>, ptr %i.xk, align 1, !tbaa !21, !alias.scope !827
  %i.xl = zext <8 x i8> %wide.load1180 to <8 x i16>
  %i.xm = add nuw nsw <8 x i16> %i.xl, %i.xj
  %i.xn = shl nuw nsw <8 x i16> %i.xm, splat (i16 2)
  %i.xo = getelementptr inbounds i8, ptr %next.gep, i64 %i.wg
  %wide.load1181 = load <8 x i8>, ptr %i.xo, align 1, !tbaa !21, !alias.scope !829
  %i.xp = zext <8 x i8> %wide.load1181 to <8 x i16>
  %i.xq = getelementptr inbounds i8, ptr %next.gep, i64 %i.vw
  %wide.load1182 = load <8 x i8>, ptr %i.xq, align 1, !tbaa !21, !alias.scope !831
  %i.xr = zext <8 x i8> %wide.load1182 to <8 x i16>
  %i.xs = add nuw nsw <8 x i16> %i.xh, %i.xp
  %i.xt = add nuw nsw <8 x i16> %i.xs, %i.xn
  %i.xu = add nuw nsw <8 x i16> %i.xt, %i.xr
  %i.xv = shl nuw <8 x i16> %i.xu, splat (i16 4)
  store <8 x i16> %i.xv, ptr %next.gep1177, align 2, !tbaa !521, !alias.scope !833, !noalias !835
  %index.next1183 = add nuw i64 %index1176, 8     ; 2 uses
  %i.xw = icmp eq i64 %index.next1183, %n.vec1174
  br i1 %i.xw, label %middle.block1184, label %vector.body1175, !llvm.loop !836

middle.block1184:                                 ; preds = %vector.body1175
  %cmp.n1185 = icmp eq i64 %i.wj, %n.vec1174
  br i1 %cmp.n1185, label %.loopexit554, label %scalar.ph1171.preheader

scalar.ph1171.preheader:                          ; preds = %vector.memcheck1141, %.lr.ph586, %middle.block1184
  %.0331585.ph = phi ptr [ %i.vx, %vector.memcheck1141 ], [ %i.vx, %.lr.ph586 ], [ %i.xa, %middle.block1184 ]
  %.0332584.ph = phi i32 [ %i.vv, %vector.memcheck1141 ], [ %i.vv, %.lr.ph586 ], [ %i.xc, %middle.block1184 ]
  %.0341583.ph = phi ptr [ %i.vy, %vector.memcheck1141 ], [ %i.vy, %.lr.ph586 ], [ %i.xe, %middle.block1184 ]
  br label %scalar.ph1171

scalar.ph1171:                                    ; preds = %scalar.ph1171.preheader, %scalar.ph1171
  %.0331585 = phi ptr [ %i.yt, %scalar.ph1171 ], [ %.0331585.ph, %scalar.ph1171.preheader ] ; 6 uses
  %.0332584 = phi i32 [ %i.ys, %scalar.ph1171 ], [ %.0332584.ph, %scalar.ph1171.preheader ]
  %.0341583 = phi ptr [ %i.yu, %scalar.ph1171 ], [ %.0341583.ph, %scalar.ph1171.preheader ] ; 2 uses
  %i.xx = load i8, ptr %.0331585, align 1, !tbaa !21
  %i.xy = zext i8 %i.xx to i16
  %i.xz = mul nuw nsw i16 %i.xy, 6
  %i.ya = getelementptr inbounds i8, ptr %.0331585, i64 %i.wd
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !21
  %i.yc = zext i8 %i.yb to i16
  %i.yd = getelementptr inbounds i8, ptr %.0331585, i64 %i.we
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !21
  %i.yf = zext i8 %i.ye to i16
  %i.yg = add nuw nsw i16 %i.yf, %i.yc
  %i.yh = shl nuw nsw i16 %i.yg, 2
  %i.yi = getelementptr inbounds i8, ptr %.0331585, i64 %i.wg
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !21
  %i.yk = zext i8 %i.yj to i16
  %i.yl = getelementptr inbounds i8, ptr %.0331585, i64 %i.vw
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !21
  %i.yn = zext i8 %i.ym to i16
  %i.yo = add nuw nsw i16 %i.xz, %i.yk
  %i.yp = add nuw nsw i16 %i.yo, %i.yh
  %i.yq = add nuw nsw i16 %i.yp, %i.yn
  %i.yr = shl nuw i16 %i.yq, 4
  store i16 %i.yr, ptr %.0341583, align 2, !tbaa !521
  %i.ys = add nsw i32 %.0332584, 1                ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0331585, i64 1 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.0341583, i64 2 ; 2 uses
  %exitcond638.not = icmp eq i32 %i.ys, %i.wa
  br i1 %exitcond638.not, label %.loopexit554, label %scalar.ph1171, !llvm.loop !837

bb.h:                                             ; preds = %.loopexit555
  %i.yv = add nsw i32 %5, -4
  %i.yw = mul nsw i32 %i.yv, %1
  %i.yx = sext i32 %i.yw to i64                   ; 2 uses
  %i.yy = getelementptr inbounds i8, ptr %i.vx, i64 %i.yx
  %i.yz = getelementptr inbounds [2 x i8], ptr %i.vy, i64 %i.yx
  br label %.loopexit554

.loopexit554:                                     ; preds = %scalar.ph1171, %middle.block1184, %.preheader, %bb.h
  %.1342 = phi ptr [ %i.yz, %bb.h ], [ %i.vy, %.preheader ], [ %i.xe, %middle.block1184 ], [ %i.yu, %scalar.ph1171 ] ; 16 uses
  %.1 = phi ptr [ %i.yy, %bb.h ], [ %i.vx, %.preheader ], [ %i.xa, %middle.block1184 ], [ %i.yt, %scalar.ph1171 ] ; 21 uses
  br i1 %i.a, label %.lr.ph590.preheader, label %._crit_edge591

.lr.ph590.preheader:                              ; preds = %.loopexit554
  %i.za = zext nneg i32 %1 to i64                 ; 4 uses
  %wide.trip.count642 = zext nneg i32 %1 to i64   ; 8 uses
  %min.iters.check1229 = icmp ult i32 %1, 16
  br i1 %min.iters.check1229, label %.lr.ph590.preheader1290, label %vector.memcheck1189

vector.memcheck1189:                              ; preds = %.lr.ph590.preheader
  %i.zb = shl nuw nsw i64 %wide.trip.count642, 1  ; 2 uses
  %scevgep1190 = getelementptr i8, ptr %.1342, i64 %i.zb ; 8 uses
  %i.zc = shl nuw nsw i64 %wide.trip.count642, 2
  %scevgep1191 = getelementptr i8, ptr %.1342, i64 %i.zc ; 4 uses
  %i.zd = sub nsw i64 0, %i.vw
  %scevgep1192 = getelementptr i8, ptr %.1, i64 %i.zd ; 2 uses
  %i.ze = sub nsw i64 %wide.trip.count642, %i.vw
  %scevgep1193 = getelementptr i8, ptr %.1, i64 %i.ze ; 2 uses
  %scevgep1194 = getelementptr i8, ptr %.1, i64 %wide.trip.count642 ; 4 uses
  %scevgep1195 = getelementptr i8, ptr %.1, i64 %i.zb ; 2 uses
  %i.zf = sub nsw i64 0, %wide.trip.count642
  %scevgep1196 = getelementptr i8, ptr %.1, i64 %i.zf ; 2 uses
  %bound01197 = icmp ult ptr %scevgep1190, %scevgep1193
  %bound11198 = icmp ult ptr %scevgep1192, %scevgep1191
  %found.conflict1199 = and i1 %bound01197, %bound11198
  %bound01200 = icmp ult ptr %scevgep1190, %scevgep1195
  %bound11201 = icmp ult ptr %scevgep1194, %scevgep1191
  %found.conflict1202 = and i1 %bound01200, %bound11201
  %conflict.rdx1203 = or i1 %found.conflict1199, %found.conflict1202
  %bound01204 = icmp ult ptr %scevgep1190, %.1
  %bound11205 = icmp ult ptr %scevgep1196, %scevgep1191
  %found.conflict1206 = and i1 %bound01204, %bound11205
  %conflict.rdx1207 = or i1 %conflict.rdx1203, %found.conflict1206
  %bound01208 = icmp ult ptr %scevgep1190, %scevgep1194
  %bound11209 = icmp ult ptr %.1, %scevgep1191
  %found.conflict1210 = and i1 %bound01208, %bound11209
  %conflict.rdx1211 = or i1 %conflict.rdx1207, %found.conflict1210
  %bound01212 = icmp ult ptr %.1342, %scevgep1193
  %bound11213 = icmp ult ptr %scevgep1192, %scevgep1190
  %found.conflict1214 = and i1 %bound01212, %bound11213
  %conflict.rdx1215 = or i1 %conflict.rdx1211, %found.conflict1214
  %bound01216 = icmp ult ptr %.1342, %scevgep1195
  %bound11217 = icmp ult ptr %scevgep1194, %scevgep1190
  %found.conflict1218 = and i1 %bound01216, %bound11217
  %conflict.rdx1219 = or i1 %conflict.rdx1215, %found.conflict1218
  %bound01220 = icmp ult ptr %.1342, %.1
  %bound11221 = icmp ult ptr %scevgep1196, %scevgep1190
  %found.conflict1222 = and i1 %bound01220, %bound11221
  %conflict.rdx1223 = or i1 %conflict.rdx1219, %found.conflict1222
  %bound01224 = icmp ult ptr %.1342, %scevgep1194
  %bound11225 = icmp ult ptr %.1, %scevgep1190
  %found.conflict1226 = and i1 %bound01224, %bound11225
  %conflict.rdx1227 = or i1 %conflict.rdx1223, %found.conflict1226
  br i1 %conflict.rdx1227, label %.lr.ph590.preheader1290, label %vector.ph1230

vector.ph1230:                                    ; preds = %vector.memcheck1189
  %n.vec1231 = and i64 %wide.trip.count642, 2147483640 ; 3 uses
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1241, %vector.body1232 ] ; 6 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.1, i64 %index1233 ; 2 uses
  %wide.load1234 = load <8 x i8>, ptr %i.zg, align 1, !tbaa !21, !alias.scope !838
  %i.zh = zext <8 x i8> %wide.load1234 to <8 x i16>
  %i.zi = mul nuw nsw <8 x i16> %i.zh, splat (i16 96)
  %i.zj = sub nsw i64 %index1233, %i.za
  %i.zk = getelementptr inbounds i8, ptr %.1, i64 %i.zj ; 2 uses
  %wide.load1235 = load <8 x i8>, ptr %i.zk, align 1, !tbaa !21, !alias.scope !841
  %i.zl = zext <8 x i8> %wide.load1235 to <8 x i16>
  %i.zm = add nuw nsw i64 %index1233, %i.za       ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.zm ; 2 uses
  %wide.load1236 = load <8 x i8>, ptr %i.zn, align 1, !tbaa !21, !alias.scope !843
  %i.zo = zext <8 x i8> %wide.load1236 to <8 x i16>
  %i.zp = add nuw nsw <8 x i16> %i.zo, %i.zl
  %i.zq = shl nuw nsw <8 x i16> %i.zp, splat (i16 6)
  %i.zr = add nuw <8 x i16> %i.zq, %i.zi
  %i.zs = sub nsw i64 %index1233, %i.vw
  %i.zt = getelementptr inbounds i8, ptr %.1, i64 %i.zs
  %wide.load1237 = load <8 x i8>, ptr %i.zt, align 1, !tbaa !21, !alias.scope !845
  %i.zu = zext <8 x i8> %wide.load1237 to <8 x i16>
  %i.zv = shl nuw nsw <8 x i16> %i.zu, splat (i16 4)
  %i.zw = add nuw <8 x i16> %i.zr, %i.zv
  %i.zx = getelementptr inbounds nuw [2 x i8], ptr %.1342, i64 %index1233
  store <8 x i16> %i.zw, ptr %i.zx, align 2, !tbaa !45, !alias.scope !847, !noalias !849
  %wide.load1238 = load <8 x i8>, ptr %i.zn, align 1, !tbaa !21, !alias.scope !843
  %i.zy = zext <8 x i8> %wide.load1238 to <8 x i16>
  %i.zz = mul nuw nsw <8 x i16> %i.zy, splat (i16 96)
  %wide.load1239 = load <8 x i8>, ptr %i.zg, align 1, !tbaa !21, !alias.scope !838
  %i.aaa = zext <8 x i8> %wide.load1239 to <8 x i16>
  %i.aab = shl nuw nsw <8 x i16> %i.aaa, splat (i16 6)
  %i.aac = add nuw <8 x i16> %i.aab, %i.zz
  %wide.load1240 = load <8 x i8>, ptr %i.zk, align 1, !tbaa !21, !alias.scope !841
  %i.aad = zext <8 x i8> %wide.load1240 to <8 x i16>
  %i.aae = shl nuw nsw <8 x i16> %i.aad, splat (i16 4)
  %i.aaf = add nuw <8 x i16> %i.aac, %i.aae
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %.1342, i64 %i.zm
  store <8 x i16> %i.aaf, ptr %i.aag, align 2, !tbaa !45, !alias.scope !850, !noalias !849
  %index.next1241 = add nuw i64 %index1233, 8     ; 2 uses
  %i.aah = icmp eq i64 %index.next1241, %n.vec1231
  br i1 %i.aah, label %middle.block1242, label %vector.body1232, !llvm.loop !852

middle.block1242:                                 ; preds = %vector.body1232
  %cmp.n1243 = icmp eq i64 %n.vec1231, %wide.trip.count642
  br i1 %cmp.n1243, label %._crit_edge591, label %.lr.ph590.preheader1290
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_118hlineSmooth5NabcbaIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib:bb.a
  %broadcast.splat1113 = shufflevector <8 x i16> %broadcast.splatinsert1112, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zk = zext <8 x i16> %broadcast.splat1113 to <8 x i32>
  %i.zl = load i16, ptr %2, align 2, !tbaa !521, !alias.scope !1030
  %broadcast.splatinsert1114 = insertelement <8 x i16> poison, i16 %i.zl, i64 0
  %broadcast.splat1115 = shufflevector <8 x i16> %broadcast.splatinsert1114, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zm = zext <8 x i16> %broadcast.splat1115 to <8 x i32>
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1102
  %index1117 = phi i64 [ 0, %vector.ph1102 ], [ %index.next1128, %vector.body1116 ] ; 8 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 %index1117 ; 2 uses
  %wide.load1118 = load <8 x i8>, ptr %i.zn, align 1, !tbaa !21, !alias.scope !1033
  %i.zo = zext <8 x i8> %wide.load1118 to <8 x i32>
  %i.zp = mul nuw nsw <8 x i32> %i.zo, %i.zc
  %i.zq = add nuw nsw i64 %index1117, %i.yq       ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 %i.zq ; 2 uses
  %wide.load1119 = load <8 x i8>, ptr %i.zr, align 1, !tbaa !21, !alias.scope !1035
  %i.zs = zext <8 x i8> %wide.load1119 to <8 x i32>
  %i.zt = getelementptr i8, ptr %invariant.gep601, i64 %index1117 ; 2 uses
  %wide.load1120 = load <8 x i8>, ptr %i.zt, align 1, !tbaa !21, !alias.scope !1037
  %i.zu = zext <8 x i8> %wide.load1120 to <8 x i32>
  %i.zv = add nuw nsw <8 x i32> %i.zu, %i.zs
  %i.zw = mul nuw nsw <8 x i32> %i.zv, %i.ze
  %i.zx = add nuw nsw <8 x i32> %i.zw, %i.zp
  %i.zy = getelementptr inbounds nuw i8, ptr %invariant.gep603, i64 %index1117 ; 2 uses
  %wide.load1121 = load <8 x i8>, ptr %i.zy, align 1, !tbaa !21, !alias.scope !1039
  %i.zz = zext <8 x i8> %wide.load1121 to <8 x i32>
  %i.aaa = getelementptr i8, ptr %invariant.gep605, i64 %index1117
  %wide.load1122 = load <8 x i8>, ptr %i.aaa, align 1, !tbaa !21, !alias.scope !1041
  %i.aab = zext <8 x i8> %wide.load1122 to <8 x i32>
  %i.aac = add nuw nsw <8 x i32> %i.aab, %i.zz
  %i.aad = mul nuw nsw <8 x i32> %i.aac, %i.zg
  %i.aae = add nuw nsw <8 x i32> %i.zx, %i.aad
  %i.aaf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aae, <8 x i32> splat (i32 65535))
  %i.aag = trunc nuw <8 x i32> %i.aaf to <8 x i16>
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index1117
  store <8 x i16> %i.aag, ptr %i.aah, align 2, !tbaa !521, !alias.scope !1043, !noalias !1045
  %wide.load1123 = load <8 x i8>, ptr %i.zn, align 1, !tbaa !21, !alias.scope !1033
  %i.aai = zext <8 x i8> %wide.load1123 to <8 x i32>
  %wide.load1124 = load <8 x i8>, ptr %i.zy, align 1, !tbaa !21, !alias.scope !1039
  %i.aaj = zext <8 x i8> %wide.load1124 to <8 x i32>
  %i.aak = add nuw nsw <8 x i32> %i.aaj, %i.aai
  %i.aal = mul nuw nsw <8 x i32> %i.aak, %i.zi
  %wide.load1125 = load <8 x i8>, ptr %i.zr, align 1, !tbaa !21, !alias.scope !1035
  %i.aam = zext <8 x i8> %wide.load1125 to <8 x i32>
  %i.aan = mul nuw nsw <8 x i32> %i.aam, %i.zk
  %i.aao = add nuw nsw <8 x i32> %i.aan, %i.aal
  %i.aap = getelementptr inbounds nuw i8, ptr %invariant.gep607, i64 %index1117
  %wide.load1126 = load <8 x i8>, ptr %i.aap, align 1, !tbaa !21, !alias.scope !1047
  %i.aaq = zext <8 x i8> %wide.load1126 to <8 x i32>
  %wide.load1127 = load <8 x i8>, ptr %i.zt, align 1, !tbaa !21, !alias.scope !1037
  %i.aar = zext <8 x i8> %wide.load1127 to <8 x i32>
  %i.aas = add nuw nsw <8 x i32> %i.aar, %i.aaq
  %i.aat = mul nuw nsw <8 x i32> %i.aas, %i.zm
  %i.aau = add nuw nsw <8 x i32> %i.aao, %i.aat
  %i.aav = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aau, <8 x i32> splat (i32 65535))
  %i.aaw = trunc nuw <8 x i32> %i.aav to <8 x i16>
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.zq
  store <8 x i16> %i.aaw, ptr %i.aax, align 2, !tbaa !521, !alias.scope !1048, !noalias !1045
  %index.next1128 = add nuw i64 %index1117, 8     ; 2 uses
  %i.aay = icmp eq i64 %index.next1128, %n.vec1103
  br i1 %i.aay, label %middle.block1129, label %vector.body1116, !llvm.loop !1050

middle.block1129:                                 ; preds = %vector.body1116
  %cmp.n1130 = icmp eq i64 %n.vec1103, %wide.trip.count554
  br i1 %cmp.n1130, label %.loopexit491, label %scalar.ph1100.preheader

scalar.ph1100.preheader:                          ; preds = %vector.memcheck1035, %.lr.ph510, %middle.block1129
  %indvars.iv551.ph = phi i64 [ 0, %vector.memcheck1035 ], [ 0, %.lr.ph510 ], [ %n.vec1103, %middle.block1129 ]
  br label %scalar.ph1100

scalar.ph1100:                                    ; preds = %scalar.ph1100.preheader, %scalar.ph1100
  %indvars.iv551 = phi i64 [ %indvars.iv.next552, %scalar.ph1100 ], [ %indvars.iv551.ph, %scalar.ph1100.preheader ] ; 8 uses
  %i.aaz = load i16, ptr %i.ym, align 2, !tbaa !521
  %i.aba = zext i16 %i.aaz to i32
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv551 ; 2 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !21
  %i.abd = zext i8 %i.abc to i32
  %i.abe = mul nuw nsw i32 %i.abd, %i.aba
  %i.abf = load i16, ptr %i.yn, align 2, !tbaa !521
  %i.abg = zext i16 %i.abf to i32
  %i.abh = add nuw nsw i64 %indvars.iv551, %i.yq  ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 %i.abh ; 2 uses
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !21
  %i.abk = zext i8 %i.abj to i32
  %gep602 = getelementptr i8, ptr %invariant.gep601, i64 %indvars.iv551 ; 2 uses
  %i.abl = load i8, ptr %gep602, align 1, !tbaa !21
  %i.abm = zext i8 %i.abl to i32
  %i.abn = add nuw nsw i32 %i.abm, %i.abk
  %i.abo = mul nuw nsw i32 %i.abn, %i.abg
  %i.abp = add nuw nsw i32 %i.abo, %i.abe
  %i.abq = load i16, ptr %2, align 2, !tbaa !521
  %i.abr = zext i16 %i.abq to i32
  %gep604 = getelementptr inbounds nuw i8, ptr %invariant.gep603, i64 %indvars.iv551 ; 2 uses
  %i.abs = load i8, ptr %gep604, align 1, !tbaa !21
  %i.abt = zext i8 %i.abs to i32
  %gep606 = getelementptr i8, ptr %invariant.gep605, i64 %indvars.iv551
  %i.abu = load i8, ptr %gep606, align 1, !tbaa !21
  %i.abv = zext i8 %i.abu to i32
  %i.abw = add nuw nsw i32 %i.abv, %i.abt
  %i.abx = mul nuw nsw i32 %i.abw, %i.abr
  %i.aby = add nuw nsw i32 %i.abp, %i.abx
  %.sroa.speculated.i445 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.aby, i32 65535)
  %i.abz = trunc nuw i32 %.sroa.speculated.i445 to i16
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv551
  store i16 %i.abz, ptr %i.aca, align 2, !tbaa !521
  %i.acb = load i16, ptr %i.yn, align 2, !tbaa !521
  %i.acc = zext i16 %i.acb to i32
  %i.acd = load i8, ptr %i.abb, align 1, !tbaa !21
  %i.ace = zext i8 %i.acd to i32
  %i.acf = load i8, ptr %gep604, align 1, !tbaa !21
  %i.acg = zext i8 %i.acf to i32
  %i.ach = add nuw nsw i32 %i.acg, %i.ace
  %i.aci = mul nuw nsw i32 %i.ach, %i.acc
  %i.acj = load i16, ptr %i.ym, align 2, !tbaa !521
  %i.ack = zext i16 %i.acj to i32
  %i.acl = load i8, ptr %i.abi, align 1, !tbaa !21
  %i.acm = zext i8 %i.acl to i32
  %i.acn = mul nuw nsw i32 %i.acm, %i.ack
  %i.aco = add nuw nsw i32 %i.acn, %i.aci
  %i.acp = load i16, ptr %2, align 2, !tbaa !521
  %i.acq = zext i16 %i.acp to i32
  %gep608 = getelementptr inbounds nuw i8, ptr %invariant.gep607, i64 %indvars.iv551
  %i.acr = load i8, ptr %gep608, align 1, !tbaa !21
  %i.acs = zext i8 %i.acr to i32
  %i.act = load i8, ptr %gep602, align 1, !tbaa !21
  %i.acu = zext i8 %i.act to i32
  %i.acv = add nuw nsw i32 %i.acu, %i.acs
  %i.acw = mul nuw nsw i32 %i.acv, %i.acq
  %i.acx = add nuw nsw i32 %i.aco, %i.acw
  %.sroa.speculated.i446 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.acx, i32 65535)
  %i.acy = trunc nuw i32 %.sroa.speculated.i446 to i16
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.abh
  store i16 %i.acy, ptr %i.acz, align 2, !tbaa !521
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  br i1 %exitcond555.not, label %.loopexit491, label %scalar.ph1100, !llvm.loop !1051

scalar.ph1179:                                    ; preds = %scalar.ph1179.preheader, %scalar.ph1179
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %scalar.ph1179 ], [ %indvars.iv556.ph, %scalar.ph1179.preheader ] ; 6 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv556 ; 2 uses
  %i.adb = load i16, ptr %i.wc, align 2, !tbaa !45, !noalias !1007
  %i.adc = zext i16 %i.adb to i32
  %i.add = load i8, ptr %i.ada, align 1, !tbaa !21, !noalias !1007
  %i.ade = zext i8 %i.add to i32
  %i.adf = mul nuw nsw i32 %i.ade, %i.adc
  %.sroa.speculated.i447 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.adf, i32 65535)
  %i.adg = trunc nuw i32 %.sroa.speculated.i447 to i16
  %i.adh = add nuw nsw i64 %indvars.iv556, %i.wg  ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 %i.adh ; 2 uses
  %i.adj = load i16, ptr %i.wd, align 2, !tbaa !45, !noalias !1010
  %i.adk = zext i16 %i.adj to i32
  %i.adl = load i8, ptr %i.adi, align 1, !tbaa !21, !noalias !1010
  %i.adm = zext i8 %i.adl to i32
  %i.adn = mul nuw nsw i32 %i.adm, %i.adk
  %.sroa.speculated.i448 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.adn, i32 65535)
  %i.ado = trunc nuw i32 %.sroa.speculated.i448 to i16
  %i.adp = tail call i16 @llvm.uadd.sat.i16(i16 %i.adg, i16 %i.ado)
  %gep610 = getelementptr inbounds nuw i8, ptr %invariant.gep609, i64 %indvars.iv556 ; 2 uses
  %i.adq = load i16, ptr %2, align 2, !tbaa !45, !noalias !1013
  %i.adr = zext i16 %i.adq to i32
  %i.ads = load i8, ptr %gep610, align 1, !tbaa !21, !noalias !1013
  %i.adt = zext i8 %i.ads to i32
  %i.adu = mul nuw nsw i32 %i.adt, %i.adr
  %.sroa.speculated.i449 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.adu, i32 65535)
  %i.adv = trunc nuw i32 %.sroa.speculated.i449 to i16
  %i.adw = tail call i16 @llvm.uadd.sat.i16(i16 %i.adp, i16 %i.adv)
  %i.adx = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv556
  store i16 %i.adw, ptr %i.adx, align 2, !tbaa !45
  %i.ady = load i16, ptr %i.wd, align 2, !tbaa !521
  %i.adz = zext i16 %i.ady to i32
  %i.aea = load i8, ptr %i.ada, align 1, !tbaa !21
  %i.aeb = zext i8 %i.aea to i32
  %i.aec = load i8, ptr %gep610, align 1, !tbaa !21
  %i.aed = zext i8 %i.aec to i32
  %i.aee = add nuw nsw i32 %i.aed, %i.aeb
  %i.aef = mul nuw nsw i32 %i.aee, %i.adz
  %i.aeg = load i16, ptr %i.wc, align 2, !tbaa !521
  %i.aeh = zext i16 %i.aeg to i32
  %i.aei = load i8, ptr %i.adi, align 1, !tbaa !21
  %i.aej = zext i8 %i.aei to i32
  %i.aek = mul nuw nsw i32 %i.aej, %i.aeh
  %i.ael = add nuw nsw i32 %i.aek, %i.aef
  %i.aem = load i16, ptr %2, align 2, !tbaa !521
  %i.aen = zext i16 %i.aem to i32
  %gep612 = getelementptr inbounds nuw i8, ptr %invariant.gep611, i64 %indvars.iv556
  %i.aeo = load i8, ptr %gep612, align 1, !tbaa !21
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = mul nuw nsw i32 %i.aep, %i.aen
  %i.aer = add nuw nsw i32 %i.ael, %i.aeq
  %.sroa.speculated.i450 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.aer, i32 65535)
  %i.aes = trunc nuw i32 %.sroa.speculated.i450 to i16
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.adh
  store i16 %i.aes, ptr %i.aet, align 2, !tbaa !521
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %exitcond560.not = icmp eq i64 %indvars.iv.next557, %i.wg
  br i1 %exitcond560.not, label %.loopexit491, label %scalar.ph1179, !llvm.loop !1052

.loopexit491:                                     ; preds = %scalar.ph1100, %scalar.ph1179, %middle.block1129, %middle.block1205, %bb.k, %.preheader490
  %i.aeu = shl i32 %1, 1                          ; 5 uses
  %i.aev = sext i32 %i.aeu to i64                 ; 21 uses
  %i.aew = getelementptr i8, ptr %0, i64 %i.aev   ; 7 uses
  %i.aex = getelementptr [2 x i8], ptr %4, i64 %i.aev ; 12 uses
  %i.aey = add i32 %5, -2                         ; 3 uses
  %i.aez = mul i32 %i.aey, %1                     ; 2 uses
  br i1 %7, label %.preheader488, label %bb.l

.preheader488:                                    ; preds = %.loopexit491
  %i.afa = icmp slt i32 %i.aeu, %i.aez
  br i1 %i.afa, label %.lr.ph516, label %.loopexit489

.lr.ph516:                                        ; preds = %.preheader488
  %i.afb = mul i32 %1, -2
  %i.afc = sext i32 %i.afb to i64                 ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.afe = sub nsw i32 0, %1
  %i.aff = sext i32 %i.afe to i64                 ; 2 uses
  %i.afg = sext i32 %1 to i64                     ; 6 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.neg = add i32 %5, -4
  %.neg1442 = mul i32 %.neg, %1
  %i.afi = add i32 %.neg1442, -1                  ; 2 uses
  %i.afj = zext i32 %i.afi to i64
  %i.afk = add nuw nsw i64 %i.afj, 1              ; 2 uses
  %min.iters.check1244 = icmp ult i32 %i.afi, 31
  br i1 %min.iters.check1244, label %scalar.ph1243.preheader, label %vector.memcheck1208

vector.memcheck1208:                              ; preds = %.lr.ph516
  %i.afl = shl nsw i64 %i.aev, 1                  ; 2 uses
  %.neg1443 = add i32 %5, -4
  %.neg1444 = mul i32 %.neg1443, %1
  %i.afm = add i32 %.neg1444, -1
  %i.afn = zext i32 %i.afm to i64                 ; 6 uses
  %i.afo = add nsw i64 %i.aev, %i.afn
  %i.afp = shl nsw i64 %i.afo, 1
  %i.afq = getelementptr i8, ptr %4, i64 %i.afp
  %scevgep1209 = getelementptr i8, ptr %i.afq, i64 2 ; 6 uses
  %scevgep1210 = getelementptr i8, ptr %2, i64 6
  %i.afr = getelementptr i8, ptr %0, i64 %i.aev
  %8 = getelementptr i8, ptr %i.afr, i64 %i.afn
  %i.afs = getelementptr i8, ptr %8, i64 1
  %scevgep1211 = getelementptr i8, ptr %0, i64 %i.afg
  %scevgep1212 = getelementptr i8, ptr %scevgep1211, i64 %i.aev
  %scevgep1212.a = getelementptr i8, ptr %0, i64 %i.afg
  %i.aft = getelementptr i8, ptr %scevgep1212.a, i64 %i.aev
  %i.afu = getelementptr i8, ptr %i.aft, i64 %i.afn
  %scevgep1213 = getelementptr i8, ptr %i.afu, i64 1
  %i.afv = sub nsw i64 %i.aev, %i.afg
  %scevgep1214 = getelementptr i8, ptr %0, i64 %i.afv
  %i.afw = add nsw i64 %i.aev, %i.afn
  %i.afx = add nsw i64 %i.afw, 1
  %i.afy = sub nsw i64 %i.afx, %i.afg
  %scevgep1215 = getelementptr i8, ptr %0, i64 %i.afy
  %scevgep1215.a = getelementptr i8, ptr %0, i64 %i.afl
  %scevgep1216 = getelementptr i8, ptr %0, i64 %i.afl
  %i.afz = getelementptr i8, ptr %scevgep1216, i64 %i.afn
  %i.aga = getelementptr i8, ptr %i.afz, i64 1
  %scevgep1217 = getelementptr i8, ptr %0, i64 %i.afc
  %scevgep1218 = getelementptr i8, ptr %scevgep1217, i64 %i.aev
  %scevgep1218.a = getelementptr i8, ptr %0, i64 %i.afc
  %i.agb = getelementptr i8, ptr %scevgep1218.a, i64 %i.aev
  %i.agc = getelementptr i8, ptr %i.agb, i64 %i.afn
  %scevgep1219 = getelementptr i8, ptr %i.agc, i64 1
  %bound01220 = icmp ult ptr %i.aex, %scevgep1210
  %bound11221 = icmp ult ptr %2, %scevgep1209
  %found.conflict1222 = and i1 %bound01220, %bound11221
  %bound01223 = icmp ult ptr %i.aex, %i.afs
  %bound11224 = icmp ult ptr %i.aew, %scevgep1209
  %found.conflict1225 = and i1 %bound01223, %bound11224
  %conflict.rdx1226 = or i1 %found.conflict1222, %found.conflict1225
  %bound01227 = icmp ult ptr %i.aex, %scevgep1213
  %bound11228 = icmp ult ptr %scevgep1212, %scevgep1209
  %found.conflict1229 = and i1 %bound01227, %bound11228
  %conflict.rdx1230 = or i1 %conflict.rdx1226, %found.conflict1229
  %bound01231 = icmp ult ptr %i.aex, %scevgep1215
  %bound11232 = icmp ult ptr %scevgep1214, %scevgep1209
  %found.conflict1233 = and i1 %bound01231, %bound11232
  %conflict.rdx1234 = or i1 %conflict.rdx1230, %found.conflict1233
  %bound01235 = icmp ult ptr %i.aex, %i.aga
  %bound11236 = icmp ult ptr %scevgep1215.a, %scevgep1209
  %found.conflict1237 = and i1 %bound01235, %bound11236
  %conflict.rdx1238 = or i1 %conflict.rdx1234, %found.conflict1237
  %bound01239 = icmp ult ptr %i.aex, %scevgep1219
  %bound11240 = icmp ult ptr %scevgep1218, %scevgep1209
  %found.conflict1241 = and i1 %bound01239, %bound11240
  %conflict.rdx1242 = or i1 %conflict.rdx1238, %found.conflict1241
  br i1 %conflict.rdx1242, label %scalar.ph1243.preheader, label %vector.ph1245

vector.ph1245:                                    ; preds = %vector.memcheck1208
  %n.vec1246 = and i64 %i.afk, 8589934584         ; 5 uses
  %i.agd = getelementptr i8, ptr %i.aew, i64 %n.vec1246 ; 2 uses
  %i.age = trunc i64 %n.vec1246 to i32
  %i.agf = add i32 %i.aeu, %i.age
  %i.agg = shl nuw nsw i64 %n.vec1246, 1
  %i.agh = getelementptr i8, ptr %i.aex, i64 %i.agg ; 2 uses
  %i.agi = load i16, ptr %2, align 2, !tbaa !521, !alias.scope !1053
  %broadcast.splatinsert1247 = insertelement <8 x i16> poison, i16 %i.agi, i64 0
  %broadcast.splat1248 = shufflevector <8 x i16> %broadcast.splatinsert1247, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agj = zext <8 x i16> %broadcast.splat1248 to <8 x i32>
  %i.agk = load i16, ptr %i.afd, align 2, !tbaa !521, !alias.scope !1053
  %broadcast.splatinsert1249 = insertelement <8 x i16> poison, i16 %i.agk, i64 0
  %broadcast.splat1250 = shufflevector <8 x i16> %broadcast.splatinsert1249, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agl = zext <8 x i16> %broadcast.splat1250 to <8 x i32>
  %i.agm = load i16, ptr %i.afh, align 2, !tbaa !521, !alias.scope !1053
  %broadcast.splatinsert1251 = insertelement <8 x i16> poison, i16 %i.agm, i64 0
  %broadcast.splat1252 = shufflevector <8 x i16> %broadcast.splatinsert1251, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agn = zext <8 x i16> %broadcast.splat1252 to <8 x i32>
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1245
  %index1254 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1261, %vector.body1253 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aew, i64 %index1254 ; 5 uses
  %i.ago = shl i64 %index1254, 1
  %next.gep1255 = getelementptr i8, ptr %i.aex, i64 %i.ago
  %i.agp = getelementptr inbounds i8, ptr %next.gep, i64 %i.afc
  %wide.load1256 = load <8 x i8>, ptr %i.agp, align 1, !tbaa !21, !alias.scope !1056
  %i.agq = zext <8 x i8> %wide.load1256 to <8 x i32>
  %i.agr = getelementptr inbounds i8, ptr %next.gep, i64 %i.aev
  %wide.load1257 = load <8 x i8>, ptr %i.agr, align 1, !tbaa !21, !alias.scope !1058
  %i.ags = zext <8 x i8> %wide.load1257 to <8 x i32>
  %i.agt = add nuw nsw <8 x i32> %i.ags, %i.agq
  %i.agu = mul nuw nsw <8 x i32> %i.agt, %i.agj
  %i.agv = getelementptr inbounds i8, ptr %next.gep, i64 %i.aff
  %wide.load1258 = load <8 x i8>, ptr %i.agv, align 1, !tbaa !21, !alias.scope !1060
  %i.agw = zext <8 x i8> %wide.load1258 to <8 x i32>
  %i.agx = getelementptr inbounds i8, ptr %next.gep, i64 %i.afg
  %wide.load1259 = load <8 x i8>, ptr %i.agx, align 1, !tbaa !21, !alias.scope !1062
  %i.agy = zext <8 x i8> %wide.load1259 to <8 x i32>
  %i.agz = add nuw nsw <8 x i32> %i.agy, %i.agw
  %i.aha = mul nuw nsw <8 x i32> %i.agz, %i.agl
  %i.ahb = add nuw nsw <8 x i32> %i.aha, %i.agu
  %wide.load1260 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !21, !alias.scope !1064
  %i.ahc = zext <8 x i8> %wide.load1260 to <8 x i32>
  %i.ahd = mul nuw nsw <8 x i32> %i.ahc, %i.agn
  %i.ahe = add nuw nsw <8 x i32> %i.ahb, %i.ahd
  %i.ahf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ahe, <8 x i32> splat (i32 65535))
  %i.ahg = trunc nuw <8 x i32> %i.ahf to <8 x i16>
  store <8 x i16> %i.ahg, ptr %next.gep1255, align 2, !tbaa !521, !alias.scope !1066, !noalias !1068
  %index.next1261 = add nuw i64 %index1254, 8     ; 2 uses
  %i.ahh = icmp eq i64 %index.next1261, %n.vec1246
  br i1 %i.ahh, label %middle.block1262, label %vector.body1253, !llvm.loop !1069

middle.block1262:                                 ; preds = %vector.body1253
  %cmp.n1263 = icmp eq i64 %i.afk, %n.vec1246
  br i1 %cmp.n1263, label %.loopexit489, label %scalar.ph1243.preheader

scalar.ph1243.preheader:                          ; preds = %vector.memcheck1208, %.lr.ph516, %middle.block1262
  %.0410515.ph = phi ptr [ %i.aew, %vector.memcheck1208 ], [ %i.aew, %.lr.ph516 ], [ %i.agd, %middle.block1262 ]
  %.0411514.ph = phi i32 [ %i.aeu, %vector.memcheck1208 ], [ %i.aeu, %.lr.ph516 ], [ %i.agf, %middle.block1262 ]
  %.0419513.ph = phi ptr [ %i.aex, %vector.memcheck1208 ], [ %i.aex, %.lr.ph516 ], [ %i.agh, %middle.block1262 ]
  br label %scalar.ph1243

scalar.ph1243:                                    ; preds = %scalar.ph1243.preheader, %scalar.ph1243
  %.0410515 = phi ptr [ %i.ail, %scalar.ph1243 ], [ %.0410515.ph, %scalar.ph1243.preheader ] ; 6 uses
  %.0411514 = phi i32 [ %i.aik, %scalar.ph1243 ], [ %.0411514.ph, %scalar.ph1243.preheader ]
  %.0419513 = phi ptr [ %i.aim, %scalar.ph1243 ], [ %.0419513.ph, %scalar.ph1243.preheader ] ; 2 uses
  %i.ahi = load i16, ptr %2, align 2, !tbaa !521
  %i.ahj = zext i16 %i.ahi to i32
  %i.ahk = getelementptr inbounds i8, ptr %.0410515, i64 %i.afc
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !21
  %i.ahm = zext i8 %i.ahl to i32
  %i.ahn = getelementptr inbounds i8, ptr %.0410515, i64 %i.aev
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !21
  %i.ahp = zext i8 %i.aho to i32
  %i.ahq = add nuw nsw i32 %i.ahp, %i.ahm
  %i.ahr = mul nuw nsw i32 %i.ahq, %i.ahj
  %i.ahs = load i16, ptr %i.afd, align 2, !tbaa !521
  %i.aht = zext i16 %i.ahs to i32
  %i.ahu = getelementptr inbounds i8, ptr %.0410515, i64 %i.aff
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !21
  %i.ahw = zext i8 %i.ahv to i32
  %i.ahx = getelementptr inbounds i8, ptr %.0410515, i64 %i.afg
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !21
  %i.ahz = zext i8 %i.ahy to i32
  %i.aia = add nuw nsw i32 %i.ahz, %i.ahw
  %i.aib = mul nuw nsw i32 %i.aia, %i.aht
  %i.aic = add nuw nsw i32 %i.aib, %i.ahr
  %i.aid = load i16, ptr %i.afh, align 2, !tbaa !521
  %i.aie = zext i16 %i.aid to i32
  %i.aif = load i8, ptr %.0410515, align 1, !tbaa !21
  %i.aig = zext i8 %i.aif to i32
  %i.aih = mul nuw nsw i32 %i.aig, %i.aie
  %i.aii = add nuw nsw i32 %i.aic, %i.aih
  %.sroa.speculated.i451 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.aii, i32 65535)
  %i.aij = trunc nuw i32 %.sroa.speculated.i451 to i16
  store i16 %i.aij, ptr %.0419513, align 2, !tbaa !521
  %i.aik = add nsw i32 %.0411514, 1               ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.0410515, i64 1 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.0419513, i64 2 ; 2 uses
  %exitcond561.not = icmp eq i32 %i.aik, %i.aez
  br i1 %exitcond561.not, label %.loopexit489, label %scalar.ph1243, !llvm.loop !1070

bb.l:                                             ; preds = %.loopexit491
  %i.ain = add nsw i32 %5, -4
  %i.aio = mul nsw i32 %i.ain, %1
  %i.aip = sext i32 %i.aio to i64                 ; 2 uses
  %i.aiq = getelementptr inbounds i8, ptr %i.aew, i64 %i.aip
  %i.air = getelementptr inbounds [2 x i8], ptr %i.aex, i64 %i.aip
  br label %.loopexit489

.loopexit489:                                     ; preds = %scalar.ph1243, %middle.block1262, %.preheader488, %bb.l
  %.1420 = phi ptr [ %i.air, %bb.l ], [ %i.aex, %.preheader488 ], [ %i.agh, %middle.block1262 ], [ %i.aim, %scalar.ph1243 ] ; 24 uses
  %.1 = phi ptr [ %i.aiq, %bb.l ], [ %i.aew, %.preheader488 ], [ %i.agd, %middle.block1262 ], [ %i.ail, %scalar.ph1243 ] ; 38 uses
  br i1 %.not, label %.preheader, label %bb.m

.preheader:                                       ; preds = %.loopexit489
  %i.ais = icmp sgt i32 %1, 0
  br i1 %i.ais, label %.lr.ph521, label %.loopexit

.lr.ph521:                                        ; preds = %.preheader
  %i.ait = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 4 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.aiv = zext nneg i32 %1 to i64                ; 4 uses
  %wide.trip.count570 = zext nneg i32 %1 to i64   ; 8 uses
  %min.iters.check1414 = icmp ult i32 %1, 16
  br i1 %min.iters.check1414, label %scalar.ph1413.preheader, label %vector.memcheck1365

vector.memcheck1365:                              ; preds = %.lr.ph521
  %i.aiw = shl nuw nsw i64 %wide.trip.count570, 1 ; 2 uses
  %scevgep1366 = getelementptr i8, ptr %.1420, i64 %i.aiw ; 10 uses
  %i.aix = shl nuw nsw i64 %wide.trip.count570, 2
  %scevgep1367 = getelementptr i8, ptr %.1420, i64 %i.aix ; 5 uses
  %scevgep1368 = getelementptr i8, ptr %2, i64 6  ; 2 uses
  %scevgep1369 = getelementptr i8, ptr %.1, i64 %wide.trip.count570 ; 4 uses
  %scevgep1370 = getelementptr i8, ptr %.1, i64 %i.aiw ; 2 uses
  %i.aiy = sub nsw i64 0, %wide.trip.count570
  %scevgep1371 = getelementptr i8, ptr %.1, i64 %i.aiy ; 2 uses
  %i.aiz = sub nsw i64 0, %i.aev
  %scevgep1372 = getelementptr i8, ptr %.1, i64 %i.aiz ; 2 uses
  %i.aja = sub nsw i64 %wide.trip.count570, %i.aev
  %scevgep1373 = getelementptr i8, ptr %.1, i64 %i.aja ; 2 uses
  %bound01374 = icmp ult ptr %scevgep1366, %scevgep1368
  %bound11375 = icmp ult ptr %2, %scevgep1367
  %found.conflict1376 = and i1 %bound01374, %bound11375
  %bound01377 = icmp ult ptr %scevgep1366, %scevgep1369
  %bound11378 = icmp ult ptr %.1, %scevgep1367
  %found.conflict1379 = and i1 %bound01377, %bound11378
  %conflict.rdx1380 = or i1 %found.conflict1376, %found.conflict1379
  %bound01381 = icmp ult ptr %scevgep1366, %scevgep1370
  %bound11382 = icmp ult ptr %scevgep1369, %scevgep1367
  %found.conflict1383 = and i1 %bound01381, %bound11382
  %conflict.rdx1384 = or i1 %conflict.rdx1380, %found.conflict1383
  %bound01385 = icmp ult ptr %scevgep1366, %.1
  %bound11386 = icmp ult ptr %scevgep1371, %scevgep1367
  %found.conflict1387 = and i1 %bound01385, %bound11386
  %conflict.rdx1388 = or i1 %conflict.rdx1384, %found.conflict1387
  %bound01389 = icmp ult ptr %scevgep1366, %scevgep1373
  %bound11390 = icmp ult ptr %scevgep1372, %scevgep1367
  %found.conflict1391 = and i1 %bound01389, %bound11390
  %conflict.rdx1392 = or i1 %conflict.rdx1388, %found.conflict1391
  %bound01393 = icmp ult ptr %.1420, %scevgep1368
  %bound11394 = icmp ult ptr %2, %scevgep1366
  %found.conflict1395 = and i1 %bound01393, %bound11394
  %conflict.rdx1396 = or i1 %conflict.rdx1392, %found.conflict1395
  %bound01397 = icmp ult ptr %.1420, %scevgep1369
  %bound11398 = icmp ult ptr %.1, %scevgep1366
  %found.conflict1399 = and i1 %bound01397, %bound11398
  %conflict.rdx1400 = or i1 %conflict.rdx1396, %found.conflict1399
  %bound01401 = icmp ult ptr %.1420, %scevgep1370
  %bound11402 = icmp ult ptr %scevgep1369, %scevgep1366
  %found.conflict1403 = and i1 %bound01401, %bound11402
  %conflict.rdx1404 = or i1 %conflict.rdx1400, %found.conflict1403
  %bound01405 = icmp ult ptr %.1420, %.1
  %bound11406 = icmp ult ptr %scevgep1371, %scevgep1366
  %found.conflict1407 = and i1 %bound01405, %bound11406
  %conflict.rdx1408 = or i1 %conflict.rdx1404, %found.conflict1407
  %bound01409 = icmp ult ptr %.1420, %scevgep1373
  %bound11410 = icmp ult ptr %scevgep1372, %scevgep1366
  %found.conflict1411 = and i1 %bound01409, %bound11410
  %conflict.rdx1412 = or i1 %conflict.rdx1408, %found.conflict1411
  br i1 %conflict.rdx1412, label %scalar.ph1413.preheader, label %vector.ph1415

vector.ph1415:                                    ; preds = %vector.memcheck1365
  %n.vec1416 = and i64 %wide.trip.count570, 2147483640 ; 3 uses
  %i.ajb = load i16, ptr %2, align 2, !tbaa !521, !alias.scope !1071
  %broadcast.splatinsert1417 = insertelement <8 x i16> poison, i16 %i.ajb, i64 0
  %broadcast.splat1418 = shufflevector <8 x i16> %broadcast.splatinsert1417, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ajc = zext <8 x i16> %broadcast.splat1418 to <8 x i32>
  %i.ajd = load i16, ptr %i.ait, align 2, !tbaa !521, !alias.scope !1071
  %broadcast.splatinsert1419 = insertelement <8 x i16> poison, i16 %i.ajd, i64 0
  %broadcast.splat1420 = shufflevector <8 x i16> %broadcast.splatinsert1419, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aje = zext <8 x i16> %broadcast.splat1420 to <8 x i32>
  %i.ajf = load i16, ptr %i.aiu, align 2, !tbaa !521, !alias.scope !1071
  %broadcast.splatinsert1421 = insertelement <8 x i16> poison, i16 %i.ajf, i64 0
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth5NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib:bb.a
  %.sroa.speculated.i451 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.aew, i32 65535)
  %i.aex = trunc nuw i32 %.sroa.speculated.i451 to i16
  %i.aey = tail call i16 @llvm.uadd.sat.i16(i16 %i.aep, i16 %i.aex)
  %gep702 = getelementptr inbounds nuw i8, ptr %invariant.gep701, i64 %indvars.iv653 ; 2 uses
  %i.aez = load i16, ptr %i.d, align 2, !tbaa !45, !noalias !1129
  %i.afa = zext i16 %i.aez to i32
  %i.afb = load i8, ptr %gep702, align 1, !tbaa !21, !noalias !1129
  %i.afc = zext i8 %i.afb to i32
  %i.afd = mul nuw nsw i32 %i.afc, %i.afa
  %.sroa.speculated.i452 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.afd, i32 65535)
  %i.afe = trunc nuw i32 %.sroa.speculated.i452 to i16
  %i.aff = tail call i16 @llvm.uadd.sat.i16(i16 %i.aey, i16 %i.afe)
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv653
  store i16 %i.aff, ptr %i.afg, align 2, !tbaa !45
  %i.afh = load i16, ptr %i.f, align 2, !tbaa !45, !noalias !1132
  %i.afi = zext i16 %i.afh to i32
  %i.afj = load i8, ptr %i.aej, align 1, !tbaa !21, !noalias !1132
  %i.afk = zext i8 %i.afj to i32
  %i.afl = mul nuw nsw i32 %i.afk, %i.afi
  %.sroa.speculated.i453 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.afl, i32 65535)
  %i.afm = trunc nuw i32 %.sroa.speculated.i453 to i16
  %i.afn = load i16, ptr %i.b, align 2, !tbaa !45, !noalias !1135
  %i.afo = zext i16 %i.afn to i32
  %i.afp = load i8, ptr %i.aer, align 1, !tbaa !21, !noalias !1135
  %i.afq = zext i8 %i.afp to i32
  %i.afr = mul nuw nsw i32 %i.afq, %i.afo
  %.sroa.speculated.i454 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.afr, i32 65535)
  %i.afs = trunc nuw i32 %.sroa.speculated.i454 to i16
  %i.aft = tail call i16 @llvm.uadd.sat.i16(i16 %i.afm, i16 %i.afs)
  %i.afu = load i16, ptr %i.c, align 2, !tbaa !45, !noalias !1138
  %i.afv = zext i16 %i.afu to i32
  %i.afw = load i8, ptr %gep702, align 1, !tbaa !21, !noalias !1138
  %i.afx = zext i8 %i.afw to i32
  %i.afy = mul nuw nsw i32 %i.afx, %i.afv
  %.sroa.speculated.i455 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.afy, i32 65535)
  %i.afz = trunc nuw i32 %.sroa.speculated.i455 to i16
  %i.aga = tail call i16 @llvm.uadd.sat.i16(i16 %i.aft, i16 %i.afz)
  %gep704 = getelementptr inbounds nuw i8, ptr %invariant.gep703, i64 %indvars.iv653
  %i.agb = load i16, ptr %i.d, align 2, !tbaa !45, !noalias !1141
  %i.agc = zext i16 %i.agb to i32
  %i.agd = load i8, ptr %gep704, align 1, !tbaa !21, !noalias !1141
  %i.age = zext i8 %i.agd to i32
  %i.agf = mul nuw nsw i32 %i.age, %i.agc
  %.sroa.speculated.i456 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.agf, i32 65535)
  %i.agg = trunc nuw i32 %.sroa.speculated.i456 to i16
  %i.agh = tail call i16 @llvm.uadd.sat.i16(i16 %i.aga, i16 %i.agg)
  %i.agi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aeq
  store i16 %i.agh, ptr %i.agi, align 2, !tbaa !45
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next654, %i.h
  br i1 %exitcond657.not, label %._crit_edge, label %scalar.ph1202, !llvm.loop !1378

bb.j:                                             ; preds = %._crit_edge
  %i.agj = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -2, i32 noundef %5, i32 noundef %6)
  %i.agk = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef -1, i32 noundef %5, i32 noundef %6)
  br i1 %i.a, label %.lr.ph613, label %.loopexit591

.lr.ph613:                                        ; preds = %bb.j
  %i.agl = mul nsw i32 %i.agk, %1
  %i.agm = mul nsw i32 %i.agj, %1
  %i.agn = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.ago = sext i32 %i.agm to i64                 ; 2 uses
  %i.agp = sext i32 %i.agl to i64                 ; 2 uses
  %i.agq = zext nneg i32 %1 to i64
  %wide.trip.count661 = zext nneg i32 %1 to i64   ; 6 uses
  %invariant.gep705 = getelementptr i8, ptr %0, i64 %i.ago ; 4 uses
  %invariant.gep707 = getelementptr i8, ptr %0, i64 %i.agp ; 4 uses
  %invariant.gep709 = getelementptr [2 x i8], ptr %4, i64 %i.agq ; 8 uses
  %min.iters.check1262 = icmp ult i32 %1, 16
  br i1 %min.iters.check1262, label %scalar.ph1261.preheader, label %vector.memcheck1233

vector.memcheck1233:                              ; preds = %.lr.ph613
  %i.agr = shl nuw nsw i64 %wide.trip.count661, 2
  %scevgep1234 = getelementptr i8, ptr %4, i64 %i.agr ; 3 uses
  %scevgep1235 = getelementptr i8, ptr %2, i64 4  ; 2 uses
  %i.ags = getelementptr i8, ptr %0, i64 %i.agp
  %scevgep1236 = getelementptr i8, ptr %i.ags, i64 %wide.trip.count661 ; 2 uses
  %i.agt = getelementptr i8, ptr %0, i64 %i.ago
  %scevgep1237 = getelementptr i8, ptr %i.agt, i64 %wide.trip.count661 ; 2 uses
  %bound01238 = icmp ult ptr %invariant.gep709, %scevgep1235
  %bound11239 = icmp ult ptr %2, %scevgep1234
  %found.conflict1240 = and i1 %bound01238, %bound11239
  %bound01241 = icmp ult ptr %invariant.gep709, %scevgep1236
  %bound11242 = icmp ult ptr %invariant.gep707, %scevgep1234
  %found.conflict1243 = and i1 %bound01241, %bound11242
  %conflict.rdx1244 = or i1 %found.conflict1240, %found.conflict1243
  %bound01245 = icmp ult ptr %invariant.gep709, %scevgep1237
  %bound11246 = icmp ult ptr %invariant.gep705, %scevgep1234
  %found.conflict1247 = and i1 %bound01245, %bound11246
  %conflict.rdx1248 = or i1 %conflict.rdx1244, %found.conflict1247
  %bound01249 = icmp ult ptr %4, %scevgep1235
  %bound11250 = icmp ult ptr %2, %invariant.gep709
  %found.conflict1251 = and i1 %bound01249, %bound11250
  %conflict.rdx1252 = or i1 %conflict.rdx1248, %found.conflict1251
  %bound01253 = icmp ult ptr %4, %scevgep1236
  %bound11254 = icmp ult ptr %invariant.gep707, %invariant.gep709
  %found.conflict1255 = and i1 %bound01253, %bound11254
  %conflict.rdx1256 = or i1 %conflict.rdx1252, %found.conflict1255
  %bound01257 = icmp ult ptr %4, %scevgep1237
  %bound11258 = icmp ult ptr %invariant.gep705, %invariant.gep709
  %found.conflict1259 = and i1 %bound01257, %bound11258
  %conflict.rdx1260 = or i1 %conflict.rdx1256, %found.conflict1259
  br i1 %conflict.rdx1260, label %scalar.ph1261.preheader, label %vector.ph1263

vector.ph1263:                                    ; preds = %vector.memcheck1233
  %n.vec1264 = and i64 %wide.trip.count661, 2147483640 ; 3 uses
  %i.agu = load i16, ptr %2, align 2, !tbaa !45, !alias.scope !1379, !noalias !1382
  %broadcast.splatinsert1265 = insertelement <8 x i16> poison, i16 %i.agu, i64 0
  %broadcast.splat1266 = shufflevector <8 x i16> %broadcast.splatinsert1265, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agv = zext <8 x i16> %broadcast.splat1266 to <8 x i32>
  %i.agw = load i16, ptr %i.agn, align 2, !tbaa !45, !alias.scope !1379, !noalias !1385
  %broadcast.splatinsert1267 = insertelement <8 x i16> poison, i16 %i.agw, i64 0
  %broadcast.splat1268 = shufflevector <8 x i16> %broadcast.splatinsert1267, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agx = zext <8 x i16> %broadcast.splat1268 to <8 x i32>
  %i.agy = load i16, ptr %2, align 2, !tbaa !45, !alias.scope !1379, !noalias !1388
  %broadcast.splatinsert1269 = insertelement <8 x i16> poison, i16 %i.agy, i64 0
  %broadcast.splat1270 = shufflevector <8 x i16> %broadcast.splatinsert1269, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agz = zext <8 x i16> %broadcast.splat1270 to <8 x i32>
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1263
  %index1272 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1278, %vector.body1271 ] ; 5 uses
  %i.aha = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index1272 ; 2 uses
  %i.ahb = getelementptr i8, ptr %invariant.gep705, i64 %index1272
  %wide.load1273 = load <8 x i8>, ptr %i.ahb, align 1, !tbaa !21, !alias.scope !1391, !noalias !1382
  %i.ahc = zext <8 x i8> %wide.load1273 to <8 x i32>
  %i.ahd = mul nuw nsw <8 x i32> %i.ahc, %i.agv
  %i.ahe = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ahd, <8 x i32> splat (i32 65535))
  %i.ahf = trunc nuw <8 x i32> %i.ahe to <8 x i16>
  %wide.load1274 = load <8 x i16>, ptr %i.aha, align 2, !tbaa !45, !alias.scope !1393, !noalias !1395
  %i.ahg = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load1274, <8 x i16> %i.ahf)
  %i.ahh = getelementptr i8, ptr %invariant.gep707, i64 %index1272 ; 2 uses
  %wide.load1275 = load <8 x i8>, ptr %i.ahh, align 1, !tbaa !21, !alias.scope !1399, !noalias !1385
  %i.ahi = zext <8 x i8> %wide.load1275 to <8 x i32>
  %i.ahj = mul nuw nsw <8 x i32> %i.ahi, %i.agx
  %i.ahk = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ahj, <8 x i32> splat (i32 65535))
  %i.ahl = trunc nuw <8 x i32> %i.ahk to <8 x i16>
  %i.ahm = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ahg, <8 x i16> %i.ahl)
  store <8 x i16> %i.ahm, ptr %i.aha, align 2, !tbaa !45, !alias.scope !1393, !noalias !1400
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep709, i64 %index1272 ; 2 uses
  %wide.load1276 = load <8 x i8>, ptr %i.ahh, align 1, !tbaa !21, !alias.scope !1399, !noalias !1388
  %i.aho = zext <8 x i8> %wide.load1276 to <8 x i32>
  %i.ahp = mul nuw nsw <8 x i32> %i.aho, %i.agz
  %i.ahq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ahp, <8 x i32> splat (i32 65535))
  %i.ahr = trunc nuw <8 x i32> %i.ahq to <8 x i16>
  %wide.load1277 = load <8 x i16>, ptr %i.ahn, align 2, !tbaa !45, !alias.scope !1401, !noalias !1403
  %i.ahs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load1277, <8 x i16> %i.ahr)
  store <8 x i16> %i.ahs, ptr %i.ahn, align 2, !tbaa !45, !alias.scope !1401, !noalias !1400
  %index.next1278 = add nuw i64 %index1272, 8     ; 2 uses
  %i.aht = icmp eq i64 %index.next1278, %n.vec1264
  br i1 %i.aht, label %middle.block1279, label %vector.body1271, !llvm.loop !1406

middle.block1279:                                 ; preds = %vector.body1271
  %cmp.n1280 = icmp eq i64 %n.vec1264, %wide.trip.count661
  br i1 %cmp.n1280, label %.loopexit591, label %scalar.ph1261.preheader

scalar.ph1261.preheader:                          ; preds = %vector.memcheck1233, %.lr.ph613, %middle.block1279
  %indvars.iv658.ph = phi i64 [ 0, %vector.memcheck1233 ], [ 0, %.lr.ph613 ], [ %n.vec1264, %middle.block1279 ]
  br label %scalar.ph1261

scalar.ph1261:                                    ; preds = %scalar.ph1261.preheader, %scalar.ph1261
  %indvars.iv658 = phi i64 [ %indvars.iv.next659, %scalar.ph1261 ], [ %indvars.iv658.ph, %scalar.ph1261.preheader ] ; 5 uses
  %i.ahu = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv658 ; 2 uses
  %gep706 = getelementptr i8, ptr %invariant.gep705, i64 %indvars.iv658
  %i.ahv = load i16, ptr %2, align 2, !tbaa !45, !noalias !1382
  %i.ahw = zext i16 %i.ahv to i32
  %i.ahx = load i8, ptr %gep706, align 1, !tbaa !21, !noalias !1382
  %i.ahy = zext i8 %i.ahx to i32
  %i.ahz = mul nuw nsw i32 %i.ahy, %i.ahw
  %.sroa.speculated.i457 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ahz, i32 65535)
  %i.aia = trunc nuw i32 %.sroa.speculated.i457 to i16
  %i.aib = load i16, ptr %i.ahu, align 2, !tbaa !45, !noalias !1407
  %i.aic = tail call i16 @llvm.uadd.sat.i16(i16 %i.aib, i16 %i.aia)
  %gep708 = getelementptr i8, ptr %invariant.gep707, i64 %indvars.iv658 ; 2 uses
  %i.aid = load i16, ptr %i.agn, align 2, !tbaa !45, !noalias !1385
  %i.aie = zext i16 %i.aid to i32
  %i.aif = load i8, ptr %gep708, align 1, !tbaa !21, !noalias !1385
  %i.aig = zext i8 %i.aif to i32
  %i.aih = mul nuw nsw i32 %i.aig, %i.aie
  %.sroa.speculated.i458 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.aih, i32 65535)
  %i.aii = trunc nuw i32 %.sroa.speculated.i458 to i16
  %i.aij = tail call i16 @llvm.uadd.sat.i16(i16 %i.aic, i16 %i.aii)
  store i16 %i.aij, ptr %i.ahu, align 2, !tbaa !45
  %gep710 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep709, i64 %indvars.iv658 ; 2 uses
  %i.aik = load i16, ptr %2, align 2, !tbaa !45, !noalias !1388
  %i.ail = zext i16 %i.aik to i32
  %i.aim = load i8, ptr %gep708, align 1, !tbaa !21, !noalias !1388
  %i.ain = zext i8 %i.aim to i32
  %i.aio = mul nuw nsw i32 %i.ain, %i.ail
  %.sroa.speculated.i459 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.aio, i32 65535)
  %i.aip = trunc nuw i32 %.sroa.speculated.i459 to i16
  %i.aiq = load i16, ptr %gep710, align 2, !tbaa !45, !noalias !1408
  %i.air = tail call i16 @llvm.uadd.sat.i16(i16 %i.aiq, i16 %i.aip)
  store i16 %i.air, ptr %gep710, align 2, !tbaa !45
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %indvars.iv.next659, %wide.trip.count661
  br i1 %exitcond662.not, label %.loopexit591, label %scalar.ph1261, !llvm.loop !1409

.loopexit591:                                     ; preds = %scalar.ph1261, %middle.block1279, %bb.j, %._crit_edge
  %i.ais = shl i32 %1, 1                          ; 5 uses
  %i.ait = sext i32 %i.ais to i64                 ; 16 uses
  %i.aiu = getelementptr i8, ptr %0, i64 %i.ait   ; 7 uses
  %i.aiv = getelementptr [2 x i8], ptr %4, i64 %i.ait ; 12 uses
  %i.aiw = add i32 %5, -2                         ; 3 uses
  %i.aix = mul i32 %i.aiw, %1                     ; 2 uses
  br i1 %7, label %.preheader, label %bb.k

.preheader:                                       ; preds = %.loopexit591
  %i.aiy = icmp slt i32 %i.ais, %i.aix
  br i1 %i.aiy, label %.lr.ph617, label %.loopexit590

.lr.ph617:                                        ; preds = %.preheader
  %i.aiz = mul i32 %1, -2
  %i.aja = sext i32 %i.aiz to i64                 ; 4 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.ajc = sub nsw i32 0, %1
  %i.ajd = sext i32 %i.ajc to i64                 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.ajg = sext i32 %1 to i64                     ; 6 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.neg = add i32 %5, -4
  %.neg1473 = mul i32 %.neg, %1
  %i.aji = add i32 %.neg1473, -1                  ; 2 uses
  %i.ajj = zext i32 %i.aji to i64
  %i.ajk = add nuw nsw i64 %i.ajj, 1              ; 2 uses
  %min.iters.check1318 = icmp ult i32 %i.aji, 15
  br i1 %min.iters.check1318, label %scalar.ph1317.preheader, label %vector.memcheck1282

vector.memcheck1282:                              ; preds = %.lr.ph617
  %i.ajl = shl nsw i64 %i.ait, 1                  ; 2 uses
  %.neg1474 = add i32 %5, -4
  %.neg1475 = mul i32 %.neg1474, %1
  %i.ajm = add i32 %.neg1475, -1
  %i.ajn = zext i32 %i.ajm to i64                 ; 5 uses
  %i.ajo = add nsw i64 %i.ait, %i.ajn
  %i.ajp = shl nsw i64 %i.ajo, 1
  %i.ajq = getelementptr i8, ptr %4, i64 %i.ajp
  %scevgep1283 = getelementptr i8, ptr %i.ajq, i64 2 ; 6 uses
  %scevgep1284 = getelementptr i8, ptr %2, i64 10
  %scevgep1285 = getelementptr i8, ptr %0, i64 %i.ajl
  %scevgep1285.a = getelementptr i8, ptr %0, i64 %i.ajl
  %i.ajr = getelementptr i8, ptr %scevgep1285.a, i64 %i.ajn
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 1
  %scevgep1286 = getelementptr i8, ptr %0, i64 %i.ajg
  %scevgep1287 = getelementptr i8, ptr %scevgep1286, i64 %i.ait
  %scevgep1287.a = getelementptr i8, ptr %0, i64 %i.ajg
  %i.ajt = getelementptr i8, ptr %scevgep1287.a, i64 %i.ait
  %i.aju = getelementptr i8, ptr %i.ajt, i64 %i.ajn
  %scevgep1288 = getelementptr i8, ptr %i.aju, i64 1
  %i.ajv = add nsw i64 %i.ait, %i.ajn
  %i.ajw = add nsw i64 %i.ajv, 1                  ; 2 uses
  %scevgep1289 = getelementptr i8, ptr %0, i64 %i.ajw
  %i.ajx = sub nsw i64 %i.ait, %i.ajg
  %scevgep1290 = getelementptr i8, ptr %0, i64 %i.ajx
  %i.ajy = sub nsw i64 %i.ajw, %i.ajg
  %scevgep1291 = getelementptr i8, ptr %0, i64 %i.ajy
  %scevgep1291.a = getelementptr i8, ptr %0, i64 %i.aja
  %scevgep1292 = getelementptr i8, ptr %scevgep1291.a, i64 %i.ait
  %scevgep1292.a = getelementptr i8, ptr %0, i64 %i.aja
  %i.ajz = getelementptr i8, ptr %scevgep1292.a, i64 %i.ait
  %i.aka = getelementptr i8, ptr %i.ajz, i64 %i.ajn
  %scevgep1293 = getelementptr i8, ptr %i.aka, i64 1
  %bound01294 = icmp ult ptr %i.aiv, %scevgep1284
  %bound11295 = icmp ult ptr %2, %scevgep1283
  %found.conflict1296 = and i1 %bound01294, %bound11295
  %bound01297 = icmp ult ptr %i.aiv, %i.ajs
  %bound11298 = icmp ult ptr %scevgep1285, %scevgep1283
  %found.conflict1299 = and i1 %bound01297, %bound11298
  %conflict.rdx1300 = or i1 %found.conflict1296, %found.conflict1299
  %bound01301 = icmp ult ptr %i.aiv, %scevgep1288
  %bound11302 = icmp ult ptr %scevgep1287, %scevgep1283
  %found.conflict1303 = and i1 %bound01301, %bound11302
  %conflict.rdx1304 = or i1 %conflict.rdx1300, %found.conflict1303
  %bound01305 = icmp ult ptr %i.aiv, %scevgep1289
  %bound11306 = icmp ult ptr %i.aiu, %scevgep1283
  %found.conflict1307 = and i1 %bound01305, %bound11306
  %conflict.rdx1308 = or i1 %conflict.rdx1304, %found.conflict1307
  %bound01309 = icmp ult ptr %i.aiv, %scevgep1291
  %bound11310 = icmp ult ptr %scevgep1290, %scevgep1283
  %found.conflict1311 = and i1 %bound01309, %bound11310
  %conflict.rdx1312 = or i1 %conflict.rdx1308, %found.conflict1311
  %bound01313 = icmp ult ptr %i.aiv, %scevgep1293
  %bound11314 = icmp ult ptr %scevgep1292, %scevgep1283
  %found.conflict1315 = and i1 %bound01313, %bound11314
  %conflict.rdx1316 = or i1 %conflict.rdx1312, %found.conflict1315
  br i1 %conflict.rdx1316, label %scalar.ph1317.preheader, label %vector.ph1319

vector.ph1319:                                    ; preds = %vector.memcheck1282
  %n.vec1320 = and i64 %i.ajk, 8589934584         ; 5 uses
  %i.akb = getelementptr i8, ptr %i.aiu, i64 %n.vec1320 ; 2 uses
  %i.akc = trunc i64 %n.vec1320 to i32
  %i.akd = add i32 %i.ais, %i.akc
  %i.ake = shl nuw nsw i64 %n.vec1320, 1
  %i.akf = getelementptr i8, ptr %i.aiv, i64 %i.ake ; 2 uses
  %i.akg = load i16, ptr %2, align 2, !tbaa !45, !alias.scope !1410, !noalias !1413
  %broadcast.splatinsert1321 = insertelement <8 x i16> poison, i16 %i.akg, i64 0
  %broadcast.splat1322 = shufflevector <8 x i16> %broadcast.splatinsert1321, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.akh = zext <8 x i16> %broadcast.splat1322 to <8 x i32>
  %i.aki = load i16, ptr %i.ajb, align 2, !tbaa !45, !alias.scope !1410, !noalias !1416
  %broadcast.splatinsert1323 = insertelement <8 x i16> poison, i16 %i.aki, i64 0
  %broadcast.splat1324 = shufflevector <8 x i16> %broadcast.splatinsert1323, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.akj = zext <8 x i16> %broadcast.splat1324 to <8 x i32>
  %i.akk = load i16, ptr %i.aje, align 2, !tbaa !45, !alias.scope !1410, !noalias !1419
  %broadcast.splatinsert1325 = insertelement <8 x i16> poison, i16 %i.akk, i64 0
  %broadcast.splat1326 = shufflevector <8 x i16> %broadcast.splatinsert1325, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.akl = zext <8 x i16> %broadcast.splat1326 to <8 x i32>
  %i.akm = load i16, ptr %i.ajf, align 2, !tbaa !45, !alias.scope !1410, !noalias !1422
  %broadcast.splatinsert1327 = insertelement <8 x i16> poison, i16 %i.akm, i64 0
  %broadcast.splat1328 = shufflevector <8 x i16> %broadcast.splatinsert1327, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.akn = zext <8 x i16> %broadcast.splat1328 to <8 x i32>
  %i.ako = load i16, ptr %i.ajh, align 2, !tbaa !45, !alias.scope !1410, !noalias !1425
  %broadcast.splatinsert1329 = insertelement <8 x i16> poison, i16 %i.ako, i64 0
  %broadcast.splat1330 = shufflevector <8 x i16> %broadcast.splatinsert1329, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.akp = zext <8 x i16> %broadcast.splat1330 to <8 x i32>
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1319
  %index1332 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1339, %vector.body1331 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aiu, i64 %index1332 ; 5 uses
  %i.akq = shl i64 %index1332, 1
  %next.gep1333 = getelementptr i8, ptr %i.aiv, i64 %i.akq
  %i.akr = getelementptr inbounds i8, ptr %next.gep, i64 %i.aja
  %wide.load1334 = load <8 x i8>, ptr %i.akr, align 1, !tbaa !21, !alias.scope !1428, !noalias !1413
  %i.aks = zext <8 x i8> %wide.load1334 to <8 x i32>
  %i.akt = mul nuw nsw <8 x i32> %i.aks, %i.akh
  %i.aku = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.akt, <8 x i32> splat (i32 65535))
  %i.akv = trunc nuw <8 x i32> %i.aku to <8 x i16>
  %i.akw = getelementptr inbounds i8, ptr %next.gep, i64 %i.ajd
  %wide.load1335 = load <8 x i8>, ptr %i.akw, align 1, !tbaa !21, !alias.scope !1430, !noalias !1416
  %i.akx = zext <8 x i8> %wide.load1335 to <8 x i32>
  %i.aky = mul nuw nsw <8 x i32> %i.akx, %i.akj
  %i.akz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.aky, <8 x i32> splat (i32 65535))
  %i.ala = trunc nuw <8 x i32> %i.akz to <8 x i16>
  %i.alb = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.akv, <8 x i16> %i.ala)
  %wide.load1336 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !21, !alias.scope !1432, !noalias !1419
  %i.alc = zext <8 x i8> %wide.load1336 to <8 x i32>
  %i.ald = mul nuw nsw <8 x i32> %i.alc, %i.akl
  %i.ale = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ald, <8 x i32> splat (i32 65535))
  %i.alf = trunc nuw <8 x i32> %i.ale to <8 x i16>
  %i.alg = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.alb, <8 x i16> %i.alf)
  %i.alh = getelementptr inbounds i8, ptr %next.gep, i64 %i.ajg
  %wide.load1337 = load <8 x i8>, ptr %i.alh, align 1, !tbaa !21, !alias.scope !1434, !noalias !1422
  %i.ali = zext <8 x i8> %wide.load1337 to <8 x i32>
  %i.alj = mul nuw nsw <8 x i32> %i.ali, %i.akn
  %i.alk = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.alj, <8 x i32> splat (i32 65535))
  %i.all = trunc nuw <8 x i32> %i.alk to <8 x i16>
  %i.alm = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.alg, <8 x i16> %i.all)
  %i.aln = getelementptr inbounds i8, ptr %next.gep, i64 %i.ait
  %wide.load1338 = load <8 x i8>, ptr %i.aln, align 1, !tbaa !21, !alias.scope !1436, !noalias !1425
  %i.alo = zext <8 x i8> %wide.load1338 to <8 x i32>
  %i.alp = mul nuw nsw <8 x i32> %i.alo, %i.akp
  %i.alq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.alp, <8 x i32> splat (i32 65535))
  %i.alr = trunc nuw <8 x i32> %i.alq to <8 x i16>
  %i.als = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.alm, <8 x i16> %i.alr)
  store <8 x i16> %i.als, ptr %next.gep1333, align 2, !tbaa !45, !alias.scope !1438, !noalias !1440
  %index.next1339 = add nuw i64 %index1332, 8     ; 2 uses
  %i.alt = icmp eq i64 %index.next1339, %n.vec1320
  br i1 %i.alt, label %middle.block1340, label %vector.body1331, !llvm.loop !1441

middle.block1340:                                 ; preds = %vector.body1331
  %cmp.n1341 = icmp eq i64 %i.ajk, %n.vec1320
  br i1 %cmp.n1341, label %.loopexit590, label %scalar.ph1317.preheader

scalar.ph1317.preheader:                          ; preds = %vector.memcheck1282, %.lr.ph617, %middle.block1340
  %.0393616.ph = phi ptr [ %i.aiu, %vector.memcheck1282 ], [ %i.aiu, %.lr.ph617 ], [ %i.akb, %middle.block1340 ]
  %.0394615.ph = phi i32 [ %i.ais, %vector.memcheck1282 ], [ %i.ais, %.lr.ph617 ], [ %i.akd, %middle.block1340 ]
  %.0402614.ph = phi ptr [ %i.aiv, %vector.memcheck1282 ], [ %i.aiv, %.lr.ph617 ], [ %i.akf, %middle.block1340 ]
  br label %scalar.ph1317

scalar.ph1317:                                    ; preds = %scalar.ph1317.preheader, %scalar.ph1317
  %.0393616 = phi ptr [ %i.anh, %scalar.ph1317 ], [ %.0393616.ph, %scalar.ph1317.preheader ] ; 6 uses
  %.0394615 = phi i32 [ %i.ang, %scalar.ph1317 ], [ %.0394615.ph, %scalar.ph1317.preheader ]
  %.0402614 = phi ptr [ %i.ani, %scalar.ph1317 ], [ %.0402614.ph, %scalar.ph1317.preheader ] ; 2 uses
  %i.alu = getelementptr inbounds i8, ptr %.0393616, i64 %i.aja
  %i.alv = load i16, ptr %2, align 2, !tbaa !45, !noalias !1413
  %i.alw = zext i16 %i.alv to i32
  %i.alx = load i8, ptr %i.alu, align 1, !tbaa !21, !noalias !1413
  %i.aly = zext i8 %i.alx to i32
  %i.alz = mul nuw nsw i32 %i.aly, %i.alw
  %.sroa.speculated.i460 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.alz, i32 65535)
  %i.ama = trunc nuw i32 %.sroa.speculated.i460 to i16
  %i.amb = getelementptr inbounds i8, ptr %.0393616, i64 %i.ajd
  %i.amc = load i16, ptr %i.ajb, align 2, !tbaa !45, !noalias !1416
  %i.amd = zext i16 %i.amc to i32
  %i.ame = load i8, ptr %i.amb, align 1, !tbaa !21, !noalias !1416
  %i.amf = zext i8 %i.ame to i32
  %i.amg = mul nuw nsw i32 %i.amf, %i.amd
  %.sroa.speculated.i461 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.amg, i32 65535)
  %i.amh = trunc nuw i32 %.sroa.speculated.i461 to i16
  %i.ami = tail call i16 @llvm.uadd.sat.i16(i16 %i.ama, i16 %i.amh)
  %i.amj = load i16, ptr %i.aje, align 2, !tbaa !45, !noalias !1419
  %i.amk = zext i16 %i.amj to i32
  %i.aml = load i8, ptr %.0393616, align 1, !tbaa !21, !noalias !1419
  %i.amm = zext i8 %i.aml to i32
  %i.amn = mul nuw nsw i32 %i.amm, %i.amk
  %.sroa.speculated.i462 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.amn, i32 65535)
  %i.amo = trunc nuw i32 %.sroa.speculated.i462 to i16
  %i.amp = tail call i16 @llvm.uadd.sat.i16(i16 %i.ami, i16 %i.amo)
  %i.amq = getelementptr inbounds i8, ptr %.0393616, i64 %i.ajg
  %i.amr = load i16, ptr %i.ajf, align 2, !tbaa !45, !noalias !1422
  %i.ams = zext i16 %i.amr to i32
  %i.amt = load i8, ptr %i.amq, align 1, !tbaa !21, !noalias !1422
  %i.amu = zext i8 %i.amt to i32
  %i.amv = mul nuw nsw i32 %i.amu, %i.ams
  %.sroa.speculated.i463 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.amv, i32 65535)
  %i.amw = trunc nuw i32 %.sroa.speculated.i463 to i16
  %i.amx = tail call i16 @llvm.uadd.sat.i16(i16 %i.amp, i16 %i.amw)
  %i.amy = getelementptr inbounds i8, ptr %.0393616, i64 %i.ait
  %i.amz = load i16, ptr %i.ajh, align 2, !tbaa !45, !noalias !1425
  %i.ana = zext i16 %i.amz to i32
  %i.anb = load i8, ptr %i.amy, align 1, !tbaa !21, !noalias !1425
  %i.anc = zext i8 %i.anb to i32
  %i.and = mul nuw nsw i32 %i.anc, %i.ana
  %.sroa.speculated.i464 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.and, i32 65535)
  %i.ane = trunc nuw i32 %.sroa.speculated.i464 to i16
  %i.anf = tail call i16 @llvm.uadd.sat.i16(i16 %i.amx, i16 %i.ane)
  store i16 %i.anf, ptr %.0402614, align 2, !tbaa !45
  %i.ang = add nsw i32 %.0394615, 1               ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.0393616, i64 1 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.0402614, i64 2 ; 2 uses
  %exitcond663.not = icmp eq i32 %i.ang, %i.aix
  br i1 %exitcond663.not, label %.loopexit590, label %scalar.ph1317, !llvm.loop !1442

bb.k:                                             ; preds = %.loopexit591
  %i.anj = add nsw i32 %5, -4
  %i.ank = mul nsw i32 %i.anj, %1
  %i.anl = sext i32 %i.ank to i64                 ; 2 uses
  %i.anm = getelementptr inbounds i8, ptr %i.aiu, i64 %i.anl
  %i.ann = getelementptr inbounds [2 x i8], ptr %i.aiv, i64 %i.anl
  br label %.loopexit590

.loopexit590:                                     ; preds = %scalar.ph1317, %middle.block1340, %.preheader, %bb.k
  %.1403 = phi ptr [ %i.ann, %bb.k ], [ %i.aiv, %.preheader ], [ %i.akf, %middle.block1340 ], [ %i.ani, %scalar.ph1317 ] ; 18 uses
  %.1 = phi ptr [ %i.anm, %bb.k ], [ %i.aiu, %.preheader ], [ %i.akb, %middle.block1340 ], [ %i.anh, %scalar.ph1317 ] ; 21 uses
  br i1 %i.a, label %.lr.ph621, label %._crit_edge622

.lr.ph621:                                        ; preds = %.loopexit590
  %i.ano = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 4 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.anr = zext nneg i32 %1 to i64                ; 4 uses
  %wide.trip.count667 = zext nneg i32 %1 to i64   ; 8 uses
  %min.iters.check1394 = icmp ult i32 %1, 16
  br i1 %min.iters.check1394, label %scalar.ph1393.preheader, label %vector.memcheck1345

vector.memcheck1345:                              ; preds = %.lr.ph621
  %i.ans = shl nuw nsw i64 %wide.trip.count667, 1 ; 2 uses
  %scevgep1346 = getelementptr i8, ptr %.1403, i64 %i.ans ; 10 uses
  %i.ant = shl nuw nsw i64 %wide.trip.count667, 2
  %scevgep1347 = getelementptr i8, ptr %.1403, i64 %i.ant ; 5 uses
  %scevgep1348 = getelementptr i8, ptr %2, i64 8  ; 2 uses
  %scevgep1349 = getelementptr i8, ptr %.1, i64 %wide.trip.count667 ; 4 uses
  %scevgep1350 = getelementptr i8, ptr %.1, i64 %i.ans ; 2 uses
  %i.anu = sub nsw i64 0, %wide.trip.count667
  %scevgep1351 = getelementptr i8, ptr %.1, i64 %i.anu ; 2 uses
  %i.anv = sub nsw i64 0, %i.ait
  %scevgep1352 = getelementptr i8, ptr %.1, i64 %i.anv ; 2 uses
  %i.anw = sub nsw i64 %wide.trip.count667, %i.ait
  %scevgep1353 = getelementptr i8, ptr %.1, i64 %i.anw ; 2 uses
  %bound01354 = icmp ult ptr %scevgep1346, %scevgep1348
  %bound11355 = icmp ult ptr %2, %scevgep1347
  %found.conflict1356 = and i1 %bound01354, %bound11355
  %bound01357 = icmp ult ptr %scevgep1346, %scevgep1350
  %bound11358 = icmp ult ptr %scevgep1349, %scevgep1347
  %found.conflict1359 = and i1 %bound01357, %bound11358
  %conflict.rdx1360 = or i1 %found.conflict1356, %found.conflict1359
  %bound01361 = icmp ult ptr %scevgep1346, %scevgep1349
  %bound11362 = icmp ult ptr %.1, %scevgep1347
  %found.conflict1363 = and i1 %bound01361, %bound11362
  %conflict.rdx1364 = or i1 %conflict.rdx1360, %found.conflict1363
  %bound01365 = icmp ult ptr %scevgep1346, %.1
  %bound11366 = icmp ult ptr %scevgep1351, %scevgep1347
  %found.conflict1367 = and i1 %bound01365, %bound11366
  %conflict.rdx1368 = or i1 %conflict.rdx1364, %found.conflict1367
  %bound01369 = icmp ult ptr %scevgep1346, %scevgep1353
  %bound11370 = icmp ult ptr %scevgep1352, %scevgep1347
  %found.conflict1371 = and i1 %bound01369, %bound11370
  %conflict.rdx1372 = or i1 %conflict.rdx1368, %found.conflict1371
  %bound01373 = icmp ult ptr %.1403, %scevgep1348
  %bound11374 = icmp ult ptr %2, %scevgep1346
  %found.conflict1375 = and i1 %bound01373, %bound11374
  %conflict.rdx1376 = or i1 %conflict.rdx1372, %found.conflict1375
  %bound01377 = icmp ult ptr %.1403, %scevgep1350
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth1NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !79, !noalias !2994
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw i64 %i.p, %i.d
  %i.r = add nuw i64 %i.q, 2147483648
  %i.s = lshr i64 %i.r, 32
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.s, i64 65535)
  %i.t = trunc nuw i64 %.sroa.speculated.i to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.t, ptr %i.u, align 2, !tbaa !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !2998
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_116vlineSmooth3N121ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #17 {
bb.a:
  %i.a = icmp sgt i32 %5, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !2991   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2991 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2991 ; 2 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !325
  %i.h = zext <4 x i32> %wide.load to <4 x i64>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load52 = load <4 x i32>, ptr %i.i, align 4, !tbaa !325
  %i.j = zext <4 x i32> %wide.load52 to <4 x i64>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %wide.load53 = load <4 x i32>, ptr %i.k, align 4, !tbaa !325
  %i.l = zext <4 x i32> %wide.load53 to <4 x i64>
  %i.m = shl nuw nsw <4 x i64> %i.l, splat (i64 1)
  %i.n = add nuw nsw <4 x i64> %i.h, splat (i64 131072)
  %i.o = add nuw nsw <4 x i64> %i.n, %i.j
  %i.p = add nuw nsw <4 x i64> %i.o, %i.m
  %i.q = lshr <4 x i64> %i.p, splat (i64 18)
  %i.r = trunc <4 x i64> %i.q to <4 x i16>
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  store <4 x i16> %i.r, ptr %i.s, align 2, !tbaa !521
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !2999

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !325
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !325
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !325
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = add nuw nsw i64 %i.w, 131072
  %i.af = add nuw nsw i64 %i.ae, %i.z
  %i.ag = add nuw nsw i64 %i.af, %i.ad
  %i.ah = lshr i64 %i.ag, 18
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !3000

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %scalar.ph ] ; 2 uses
  br i1 %6, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.ak = sub nsw i32 %4, %5                      ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %.preheader
  %i.am = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2991 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2991 ; 2 uses
  %i.ar = zext nneg i32 %.0.lcssa to i64          ; 5 uses
  %sext = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %sext)
  %i.au = sub nsw i64 %i.at, %i.ar                ; 3 uses
  %min.iters.check55 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check55, label %scalar.ph54.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph39
  %n.vec57 = and i64 %i.au, -4                    ; 3 uses
  %i.av = add nsw i64 %n.vec57, %i.ar
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next63, %vector.body58 ] ; 2 uses
  %i.aw = add nuw i64 %index59, %i.ar             ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aw
  %wide.load60 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !325
  %i.ay = zext <4 x i32> %wide.load60 to <4 x i64>
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aw
  %wide.load61 = load <4 x i32>, ptr %i.az, align 4, !tbaa !325
  %i.ba = zext <4 x i32> %wide.load61 to <4 x i64>
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.aw
  %wide.load62 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !325
  %i.bc = zext <4 x i32> %wide.load62 to <4 x i64>
  %i.bd = shl nuw nsw <4 x i64> %i.bc, splat (i64 1)
  %i.be = add nuw nsw <4 x i64> %i.ay, splat (i64 131072)
  %i.bf = add nuw nsw <4 x i64> %i.be, %i.ba
  %i.bg = add nuw nsw <4 x i64> %i.bf, %i.bd
  %i.bh = lshr <4 x i64> %i.bg, splat (i64 18)
  %i.bi = trunc <4 x i64> %i.bh to <4 x i16>
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aw
  store <4 x i16> %i.bi, ptr %i.bj, align 2, !tbaa !521
  %index.next63 = add nuw i64 %index59, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next63, %n.vec57
  br i1 %i.bk, label %middle.block64, label %vector.body58, !llvm.loop !3001

middle.block64:                                   ; preds = %vector.body58
  %cmp.n65 = icmp eq i64 %i.au, %n.vec57
  br i1 %cmp.n65, label %.loopexit, label %scalar.ph54.preheader

scalar.ph54.preheader:                            ; preds = %.lr.ph39, %middle.block64
  %indvars.iv45.ph = phi i64 [ %i.ar, %.lr.ph39 ], [ %i.av, %middle.block64 ]
  br label %scalar.ph54

scalar.ph54:                                      ; preds = %scalar.ph54.preheader, %scalar.ph54
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %scalar.ph54 ], [ %indvars.iv45.ph, %scalar.ph54.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv45
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !325
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv45
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !325
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv45
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !325
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = add nuw nsw i64 %i.bn, 131072
  %i.bw = add nuw nsw i64 %i.bv, %i.bq
  %i.bx = add nuw nsw i64 %i.bw, %i.bu
  %i.by = lshr i64 %i.bx, 18
  %i.bz = trunc i64 %i.by to i16
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !521
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.cb = icmp samesign ult i64 %indvars.iv.next46, %sext
  br i1 %i.cb, label %scalar.ph54, label %.loopexit, !llvm.loop !3002

.loopexit:                                        ; preds = %scalar.ph54, %middle.block64, %.preheader, %._crit_edge
  br i1 %i.a, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %.loopexit
  %i.cc = sub i32 %4, %5
  %i.cd = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2991 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2991 ; 2 uses
  %i.ci = sext i32 %i.cc to i64                   ; 5 uses
  %i.cj = sext i32 %4 to i64                      ; 2 uses
  %i.ck = add nsw i64 %i.ci, 1
  %i.cl = tail call i64 @llvm.smax.i64(i64 %i.ck, i64 %i.cj)
  %i.cm = sub nsw i64 %i.cl, %i.ci                ; 3 uses
  %min.iters.check68 = icmp ult i64 %i.cm, 4
  br i1 %min.iters.check68, label %scalar.ph67.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph42
  %n.vec70 = and i64 %i.cm, -4                    ; 3 uses
  %i.cn = add i64 %n.vec70, %i.ci
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next76, %vector.body71 ] ; 2 uses
  %i.co = add i64 %index72, %i.ci                 ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.co
  %wide.load73 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !325
  %i.cq = zext <4 x i32> %wide.load73 to <4 x i64>
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.co
  %wide.load74 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !325
  %i.cs = zext <4 x i32> %wide.load74 to <4 x i64>
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.co
  %wide.load75 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !325
  %i.cu = zext <4 x i32> %wide.load75 to <4 x i64>
  %i.cv = shl nuw nsw <4 x i64> %i.cu, splat (i64 1)
  %i.cw = add nuw nsw <4 x i64> %i.cq, splat (i64 131072)
  %i.cx = add nuw nsw <4 x i64> %i.cw, %i.cs
  %i.cy = add nuw nsw <4 x i64> %i.cx, %i.cv
  %i.cz = lshr <4 x i64> %i.cy, splat (i64 18)
  %i.da = trunc <4 x i64> %i.cz to <4 x i16>
  %i.db = getelementptr inbounds [2 x i8], ptr %3, i64 %i.co
  store <4 x i16> %i.da, ptr %i.db, align 2, !tbaa !521
  %index.next76 = add nuw i64 %index72, 4         ; 2 uses
  %i.dc = icmp eq i64 %index.next76, %n.vec70
  br i1 %i.dc, label %middle.block77, label %vector.body71, !llvm.loop !3003

middle.block77:                                   ; preds = %vector.body71
  %cmp.n78 = icmp eq i64 %i.cm, %n.vec70
  br i1 %cmp.n78, label %._crit_edge43, label %scalar.ph67.preheader

scalar.ph67.preheader:                            ; preds = %.lr.ph42, %middle.block77
  %indvars.iv48.ph = phi i64 [ %i.ci, %.lr.ph42 ], [ %i.cn, %middle.block77 ]
  br label %scalar.ph67

scalar.ph67:                                      ; preds = %scalar.ph67.preheader, %scalar.ph67
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %scalar.ph67 ], [ %indvars.iv48.ph, %scalar.ph67.preheader ] ; 5 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv48
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !325
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv48
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !325
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv48
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !325
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 1
  %i.dn = add nuw nsw i64 %i.df, 131072
  %i.do = add nuw nsw i64 %i.dn, %i.di
  %i.dp = add nuw nsw i64 %i.do, %i.dm
  %i.dq = lshr i64 %i.dp, 18
  %i.dr = trunc i64 %i.dq to i16
  %i.ds = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv48
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !521
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.dt = icmp slt i64 %indvars.iv.next49, %i.cj
  br i1 %i.dt, label %scalar.ph67, label %._crit_edge43, !llvm.loop !3004

._crit_edge43:                                    ; preds = %scalar.ph67, %middle.block77, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth3NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #17 {
bb.a:
  %i.a = icmp sgt i32 %5, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !2991   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !79, !noalias !3005
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2991 ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !79, !noalias !3008
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2991 ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !79, !noalias !3011
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat78 = shufflevector <4 x i64> %broadcast.splatinsert77, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !79, !noalias !3005
  %i.p = zext <4 x i32> %wide.load to <4 x i64>
  %i.q = mul nuw <4 x i64> %broadcast.splat, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load81 = load <4 x i32>, ptr %i.r, align 4, !tbaa !79, !noalias !3008
  %i.s = zext <4 x i32> %wide.load81 to <4 x i64>
  %i.t = mul nuw <4 x i64> %broadcast.splat78, %i.s
  %i.u = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.q, <4 x i64> %i.t)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index
  %wide.load82 = load <4 x i32>, ptr %i.v, align 4, !tbaa !79, !noalias !3011
  %i.w = zext <4 x i32> %wide.load82 to <4 x i64>
  %i.x = mul nuw <4 x i64> %broadcast.splat80, %i.w
  %i.y = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.u, <4 x i64> %i.x)
  %i.z = add <4 x i64> %i.y, splat (i64 2147483648)
  %i.aa = lshr <4 x i64> %i.z, splat (i64 32)
  %i.ab = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.aa, <4 x i64> splat (i64 65535))
  %i.ac = trunc nuw <4 x i64> %i.ab to <4 x i16>
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  store <4 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !521
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !3014

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79, !noalias !3005
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.d
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !79, !noalias !3008
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw i64 %i.al, %i.i
  %i.an = tail call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 %i.am)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !79, !noalias !3011
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul nuw i64 %i.aq, %i.n
  %i.as = tail call i64 @llvm.uadd.sat.i64(i64 %i.an, i64 %i.ar)
  %i.at = add i64 %i.as, 2147483648
  %i.au = lshr i64 %i.at, 32
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.au, i64 65535)
  %i.av = trunc nuw i64 %.sroa.speculated.i to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !3015

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %scalar.ph ] ; 2 uses
  br i1 %6, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.ax = sub nsw i32 %4, %5                      ; 2 uses
  %i.ay = icmp slt i32 %.0.lcssa, %i.ax
  br i1 %i.ay, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %.preheader
  %i.az = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.ba = load i32, ptr %1, align 4, !tbaa !79, !noalias !3016
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2991 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !79, !noalias !3019
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2991 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !79, !noalias !3022
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = zext nneg i32 %.0.lcssa to i64          ; 5 uses
  %sext = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 1
  %i.bo = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %sext)
  %i.bp = sub nsw i64 %i.bo, %i.bm                ; 3 uses
  %min.iters.check84 = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check84, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph64
  %n.vec86 = and i64 %i.bp, -4                    ; 3 uses
  %i.bq = add nsw i64 %n.vec86, %i.bm
  %broadcast.splatinsert87 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat88 = shufflevector <4 x i64> %broadcast.splatinsert87, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <4 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat90 = shufflevector <4 x i64> %broadcast.splatinsert89, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <4 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat92 = shufflevector <4 x i64> %broadcast.splatinsert91, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph85
  %index94 = phi i64 [ 0, %vector.ph85 ], [ %index.next98, %vector.body93 ] ; 2 uses
  %i.br = add nuw i64 %index94, %i.bm             ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.br
  %wide.load95 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !79, !noalias !3016
  %i.bt = zext <4 x i32> %wide.load95 to <4 x i64>
  %i.bu = mul nuw <4 x i64> %broadcast.splat88, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.br
  %wide.load96 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !79, !noalias !3019
  %i.bw = zext <4 x i32> %wide.load96 to <4 x i64>
  %i.bx = mul nuw <4 x i64> %broadcast.splat90, %i.bw
  %i.by = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.bu, <4 x i64> %i.bx)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.br
  %wide.load97 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !79, !noalias !3022
  %i.ca = zext <4 x i32> %wide.load97 to <4 x i64>
  %i.cb = mul nuw <4 x i64> %broadcast.splat92, %i.ca
  %i.cc = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.by, <4 x i64> %i.cb)
  %i.cd = add <4 x i64> %i.cc, splat (i64 2147483648)
  %i.ce = lshr <4 x i64> %i.cd, splat (i64 32)
  %i.cf = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ce, <4 x i64> splat (i64 65535))
  %i.cg = trunc nuw <4 x i64> %i.cf to <4 x i16>
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.br
  store <4 x i16> %i.cg, ptr %i.ch, align 2, !tbaa !521
  %index.next98 = add nuw i64 %index94, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next98, %n.vec86
  br i1 %i.ci, label %middle.block99, label %vector.body93, !llvm.loop !3025

middle.block99:                                   ; preds = %vector.body93
  %cmp.n100 = icmp eq i64 %i.bp, %n.vec86
  br i1 %cmp.n100, label %.loopexit, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %.lr.ph64, %middle.block99
  %indvars.iv70.ph = phi i64 [ %i.bm, %.lr.ph64 ], [ %i.bq, %middle.block99 ]
  br label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.preheader, %scalar.ph83
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %scalar.ph83 ], [ %indvars.iv70.ph, %scalar.ph83.preheader ] ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv70
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !79, !noalias !3016
  %i.cl = zext i32 %i.ck to i64
  %i.cm = mul nuw i64 %i.cl, %i.bb
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv70
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !79, !noalias !3019
  %i.cp = zext i32 %i.co to i64
  %i.cq = mul nuw i64 %i.cp, %i.bg
  %i.cr = tail call i64 @llvm.uadd.sat.i64(i64 %i.cm, i64 %i.cq)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv70
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !79, !noalias !3022
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul nuw i64 %i.cu, %i.bl
  %i.cw = tail call i64 @llvm.uadd.sat.i64(i64 %i.cr, i64 %i.cv)
  %i.cx = add i64 %i.cw, 2147483648
  %i.cy = lshr i64 %i.cx, 32
  %.sroa.speculated.i46 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.cy, i64 65535)
  %i.cz = trunc nuw i64 %.sroa.speculated.i46 to i16
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv70
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !521
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.db = icmp samesign ult i64 %indvars.iv.next71, %sext
  br i1 %i.db, label %scalar.ph83, label %.loopexit, !llvm.loop !3026

.loopexit:                                        ; preds = %scalar.ph83, %middle.block99, %.preheader, %._crit_edge
  br i1 %i.a, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %.loopexit
  %i.dc = sub i32 %4, %5
  %i.dd = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.de = load i32, ptr %1, align 4, !tbaa !79, !noalias !3027
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2991 ; 2 uses
  %i.dj = load i32, ptr %i.dg, align 4, !tbaa !79, !noalias !3030
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2991 ; 2 uses
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !79, !noalias !3033
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = sext i32 %i.dc to i64                   ; 5 uses
  %i.dr = sext i32 %4 to i64                      ; 2 uses
  %i.ds = add nsw i64 %i.dq, 1
  %i.dt = tail call i64 @llvm.smax.i64(i64 %i.ds, i64 %i.dr)
  %i.du = sub nsw i64 %i.dt, %i.dq                ; 3 uses
  %min.iters.check103 = icmp ult i64 %i.du, 4
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph67
  %n.vec105 = and i64 %i.du, -4                   ; 3 uses
  %i.dv = add i64 %n.vec105, %i.dq
  %broadcast.splatinsert106 = insertelement <4 x i64> poison, i64 %i.df, i64 0
  %broadcast.splat107 = shufflevector <4 x i64> %broadcast.splatinsert106, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <4 x i64> poison, i64 %i.dk, i64 0
  %broadcast.splat109 = shufflevector <4 x i64> %broadcast.splatinsert108, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <4 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat111 = shufflevector <4 x i64> %broadcast.splatinsert110, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph104
  %index113 = phi i64 [ 0, %vector.ph104 ], [ %index.next117, %vector.body112 ] ; 2 uses
  %i.dw = add i64 %index113, %i.dq                ; 4 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dw
  %wide.load114 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !79, !noalias !3027
  %i.dy = zext <4 x i32> %wide.load114 to <4 x i64>
  %i.dz = mul nuw <4 x i64> %broadcast.splat107, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dw
  %wide.load115 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !79, !noalias !3030
  %i.eb = zext <4 x i32> %wide.load115 to <4 x i64>
  %i.ec = mul nuw <4 x i64> %broadcast.splat109, %i.eb
  %i.ed = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.dz, <4 x i64> %i.ec)
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dw
  %wide.load116 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !79, !noalias !3033
  %i.ef = zext <4 x i32> %wide.load116 to <4 x i64>
  %i.eg = mul nuw <4 x i64> %broadcast.splat111, %i.ef
  %i.eh = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.ed, <4 x i64> %i.eg)
  %i.ei = add <4 x i64> %i.eh, splat (i64 2147483648)
  %i.ej = lshr <4 x i64> %i.ei, splat (i64 32)
  %i.ek = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ej, <4 x i64> splat (i64 65535))
  %i.el = trunc nuw <4 x i64> %i.ek to <4 x i16>
  %i.em = getelementptr inbounds [2 x i8], ptr %3, i64 %i.dw
  store <4 x i16> %i.el, ptr %i.em, align 2, !tbaa !521
  %index.next117 = add nuw i64 %index113, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next117, %n.vec105
  br i1 %i.en, label %middle.block118, label %vector.body112, !llvm.loop !3036

middle.block118:                                  ; preds = %vector.body112
  %cmp.n119 = icmp eq i64 %i.du, %n.vec105
  br i1 %cmp.n119, label %._crit_edge68, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %.lr.ph67, %middle.block118
  %indvars.iv73.ph = phi i64 [ %i.dq, %.lr.ph67 ], [ %i.dv, %middle.block118 ]
  br label %scalar.ph102

scalar.ph102:                                     ; preds = %scalar.ph102.preheader, %scalar.ph102
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %scalar.ph102 ], [ %indvars.iv73.ph, %scalar.ph102.preheader ] ; 5 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %indvars.iv73
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !79, !noalias !3027
  %i.eq = zext i32 %i.ep to i64
  %i.er = mul nuw i64 %i.eq, %i.df
  %i.es = getelementptr inbounds [4 x i8], ptr %i.di, i64 %indvars.iv73
  %i.et = load i32, ptr %i.es, align 4, !tbaa !79, !noalias !3030
  %i.eu = zext i32 %i.et to i64
  %i.ev = mul nuw i64 %i.eu, %i.dk
  %i.ew = tail call i64 @llvm.uadd.sat.i64(i64 %i.er, i64 %i.ev)
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %indvars.iv73
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !79, !noalias !3033
  %i.ez = zext i32 %i.ey to i64
  %i.fa = mul nuw i64 %i.ez, %i.dp
  %i.fb = tail call i64 @llvm.uadd.sat.i64(i64 %i.ew, i64 %i.fa)
  %i.fc = add i64 %i.fb, 2147483648
  %i.fd = lshr i64 %i.fc, 32
  %.sroa.speculated.i47 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.fd, i64 65535)
  %i.fe = trunc nuw i64 %.sroa.speculated.i47 to i16
  %i.ff = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv73
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !521
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.fg = icmp slt i64 %indvars.iv.next74, %i.dr
  br i1 %i.fg, label %scalar.ph102, label %._crit_edge68, !llvm.loop !3037

._crit_edge68:                                    ; preds = %scalar.ph102, %middle.block118, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_118vlineSmooth5N14641ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #17 {
bb.a:
  %i.a = icmp sgt i32 %5, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2991 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2991 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2991 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2991   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2991 ; 2 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !325
  %i.l = zext <4 x i32> %wide.load to <4 x i64>
  %i.m = mul nuw nsw <4 x i64> %i.l, splat (i64 6)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  %wide.load64 = load <4 x i32>, ptr %i.n, align 4, !tbaa !325
  %i.o = zext <4 x i32> %wide.load64 to <4 x i64>
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load65 = load <4 x i32>, ptr %i.p, align 4, !tbaa !325
  %i.q = zext <4 x i32> %wide.load65 to <4 x i64>
  %i.r = add nuw nsw <4 x i64> %i.q, %i.o
  %i.s = shl nuw nsw <4 x i64> %i.r, splat (i64 2)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  %wide.load66 = load <4 x i32>, ptr %i.t, align 4, !tbaa !325
  %i.u = zext <4 x i32> %wide.load66 to <4 x i64>
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load67 = load <4 x i32>, ptr %i.v, align 4, !tbaa !325
  %i.w = zext <4 x i32> %wide.load67 to <4 x i64>
  %i.x = add nuw nsw <4 x i64> %i.m, splat (i64 524288)
  %i.y = add nuw nsw <4 x i64> %i.x, %i.s
  %i.z = add nuw nsw <4 x i64> %i.y, %i.u
  %i.aa = add nuw nsw <4 x i64> %i.z, %i.w
  %i.ab = lshr <4 x i64> %i.aa, splat (i64 20)
  %i.ac = trunc <4 x i64> %i.ab to <4 x i16>
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  store <4 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !521
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !3038

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !325
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 6
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !325
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !325
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, %i.al
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !325
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !325
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.ai, 524288
  %i.ay = add nuw nsw i64 %i.ax, %i.aq
  %i.az = add nuw nsw i64 %i.ay, %i.at
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = lshr i64 %i.ba, 20
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !3039

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %scalar.ph ] ; 2 uses
  br i1 %6, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.be = sub nsw i32 %4, %5                      ; 2 uses
  %i.bf = icmp slt i32 %.0.lcssa, %i.be
  br i1 %i.bf, label %.lr.ph51, label %.loopexit

.lr.ph51:                                         ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2991 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2991 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2991 ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2991 ; 2 uses
  %i.bp = zext nneg i32 %.0.lcssa to i64          ; 5 uses
  %sext = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 1
  %i.br = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %sext)
  %i.bs = sub nsw i64 %i.br, %i.bp                ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.bs, 4
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph51
  %n.vec71 = and i64 %i.bs, -4                    ; 3 uses
  %i.bt = add nsw i64 %n.vec71, %i.bp
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body72 ] ; 2 uses
  %i.bu = add nuw i64 %index73, %i.bp             ; 6 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bu
  %wide.load74 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !325
  %i.bw = zext <4 x i32> %wide.load74 to <4 x i64>
  %i.bx = mul nuw nsw <4 x i64> %i.bw, splat (i64 6)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bu
  %wide.load75 = load <4 x i32>, ptr %i.by, align 4, !tbaa !325
  %i.bz = zext <4 x i32> %wide.load75 to <4 x i64>
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bu
  %wide.load76 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !325
  %i.cb = zext <4 x i32> %wide.load76 to <4 x i64>
  %i.cc = add nuw nsw <4 x i64> %i.cb, %i.bz
  %i.cd = shl nuw nsw <4 x i64> %i.cc, splat (i64 2)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bu
  %wide.load77 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !325
  %i.cf = zext <4 x i32> %wide.load77 to <4 x i64>
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bu
  %wide.load78 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !325
  %i.ch = zext <4 x i32> %wide.load78 to <4 x i64>
  %i.ci = add nuw nsw <4 x i64> %i.bx, splat (i64 524288)
  %i.cj = add nuw nsw <4 x i64> %i.ci, %i.cd
  %i.ck = add nuw nsw <4 x i64> %i.cj, %i.cf
  %i.cl = add nuw nsw <4 x i64> %i.ck, %i.ch
  %i.cm = lshr <4 x i64> %i.cl, splat (i64 20)
  %i.cn = trunc <4 x i64> %i.cm to <4 x i16>
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bu
  store <4 x i16> %i.cn, ptr %i.co, align 2, !tbaa !521
  %index.next79 = add nuw i64 %index73, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next79, %n.vec71
  br i1 %i.cp, label %middle.block80, label %vector.body72, !llvm.loop !3040

middle.block80:                                   ; preds = %vector.body72
  %cmp.n81 = icmp eq i64 %i.bs, %n.vec71
  br i1 %cmp.n81, label %.loopexit, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %.lr.ph51, %middle.block80
  %indvars.iv57.ph = phi i64 [ %i.bp, %.lr.ph51 ], [ %i.bt, %middle.block80 ]
  br label %scalar.ph68

scalar.ph68:                                      ; preds = %scalar.ph68.preheader, %scalar.ph68
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %scalar.ph68 ], [ %indvars.iv57.ph, %scalar.ph68.preheader ] ; 7 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv57
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !325
  %i.cs = zext i32 %i.cr to i64
  %i.ct = mul nuw nsw i64 %i.cs, 6
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv57
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !325
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv57
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !325
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, %i.cw
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv57
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !325
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv57
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !325
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.ct, 524288
  %i.dj = add nuw nsw i64 %i.di, %i.db
  %i.dk = add nuw nsw i64 %i.dj, %i.de
  %i.dl = add nuw nsw i64 %i.dk, %i.dh
  %i.dm = lshr i64 %i.dl, 20
  %i.dn = trunc i64 %i.dm to i16
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv57
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !521
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next58, %sext
  br i1 %i.dp, label %scalar.ph68, label %.loopexit, !llvm.loop !3041

.loopexit:                                        ; preds = %scalar.ph68, %middle.block80, %.preheader, %._crit_edge
  br i1 %i.a, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %.loopexit
  %i.dq = sub i32 %4, %5
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2991 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2991 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2991 ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !2991 ; 2 uses
  %i.ea = sext i32 %i.dq to i64                   ; 5 uses
  %i.eb = sext i32 %4 to i64                      ; 2 uses
  %i.ec = add nsw i64 %i.ea, 1
  %i.ed = tail call i64 @llvm.smax.i64(i64 %i.ec, i64 %i.eb)
  %i.ee = sub nsw i64 %i.ed, %i.ea                ; 3 uses
  %min.iters.check84 = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check84, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph54
  %n.vec86 = and i64 %i.ee, -4                    ; 3 uses
  %i.ef = add i64 %n.vec86, %i.ea
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next94, %vector.body87 ] ; 2 uses
  %i.eg = add i64 %index88, %i.ea                 ; 6 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.eg
  %wide.load89 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !325
  %i.ei = zext <4 x i32> %wide.load89 to <4 x i64>
  %i.ej = mul nuw nsw <4 x i64> %i.ei, splat (i64 6)
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.eg
  %wide.load90 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !325
  %i.el = zext <4 x i32> %wide.load90 to <4 x i64>
  %i.em = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.eg
  %wide.load91 = load <4 x i32>, ptr %i.em, align 4, !tbaa !325
  %i.en = zext <4 x i32> %wide.load91 to <4 x i64>
  %i.eo = add nuw nsw <4 x i64> %i.en, %i.el
  %i.ep = shl nuw nsw <4 x i64> %i.eo, splat (i64 2)
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.eg
  %wide.load92 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !325
  %i.er = zext <4 x i32> %wide.load92 to <4 x i64>
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eg
  %wide.load93 = load <4 x i32>, ptr %i.es, align 4, !tbaa !325
  %i.et = zext <4 x i32> %wide.load93 to <4 x i64>
  %i.eu = add nuw nsw <4 x i64> %i.ej, splat (i64 524288)
  %i.ev = add nuw nsw <4 x i64> %i.eu, %i.ep
  %i.ew = add nuw nsw <4 x i64> %i.ev, %i.er
  %i.ex = add nuw nsw <4 x i64> %i.ew, %i.et
  %i.ey = lshr <4 x i64> %i.ex, splat (i64 20)
  %i.ez = trunc <4 x i64> %i.ey to <4 x i16>
  %i.fa = getelementptr inbounds [2 x i8], ptr %3, i64 %i.eg
  store <4 x i16> %i.ez, ptr %i.fa, align 2, !tbaa !521
  %index.next94 = add nuw i64 %index88, 4         ; 2 uses
  %i.fb = icmp eq i64 %index.next94, %n.vec86
  br i1 %i.fb, label %middle.block95, label %vector.body87, !llvm.loop !3042

middle.block95:                                   ; preds = %vector.body87
  %cmp.n96 = icmp eq i64 %i.ee, %n.vec86
  br i1 %cmp.n96, label %._crit_edge55, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %.lr.ph54, %middle.block95
  %indvars.iv60.ph = phi i64 [ %i.ea, %.lr.ph54 ], [ %i.ef, %middle.block95 ]
  br label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.preheader, %scalar.ph83
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph83 ], [ %indvars.iv60.ph, %scalar.ph83.preheader ] ; 7 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %indvars.iv60
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !325
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul nuw nsw i64 %i.fe, 6
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.du, i64 %indvars.iv60
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !325
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv60
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !325
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add nuw nsw i64 %i.fl, %i.fi
  %i.fn = shl nuw nsw i64 %i.fm, 2
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv60
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !325
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %indvars.iv60
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !325
  %i.ft = zext i32 %i.fs to i64
  %i.fu = add nuw nsw i64 %i.ff, 524288
  %i.fv = add nuw nsw i64 %i.fu, %i.fn
  %i.fw = add nuw nsw i64 %i.fv, %i.fq
  %i.fx = add nuw nsw i64 %i.fw, %i.ft
  %i.fy = lshr i64 %i.fx, 20
  %i.fz = trunc i64 %i.fy to i16
  %i.ga = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv60
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !521
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.gb = icmp slt i64 %indvars.iv.next61, %i.eb
  br i1 %i.gb, label %scalar.ph83, label %._crit_edge55, !llvm.loop !3043

._crit_edge55:                                    ; preds = %scalar.ph83, %middle.block95, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth5NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #17 {
bb.a:
  %i.a = icmp sgt i32 %5, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !2991   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !79, !noalias !3044
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2991 ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !79, !noalias !3047
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2991 ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !79, !noalias !3050
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2991 ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !79, !noalias !3053
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2991 ; 2 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !79, !noalias !3056
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <4 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat108 = shufflevector <4 x i64> %broadcast.splatinsert107, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat110 = shufflevector <4 x i64> %broadcast.splatinsert109, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat112 = shufflevector <4 x i64> %broadcast.splatinsert111, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <4 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat114 = shufflevector <4 x i64> %broadcast.splatinsert113, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !79, !noalias !3044
  %i.z = zext <4 x i32> %wide.load to <4 x i64>
  %i.aa = mul nuw <4 x i64> %broadcast.splat, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load115 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !79, !noalias !3047
  %i.ac = zext <4 x i32> %wide.load115 to <4 x i64>
  %i.ad = mul nuw <4 x i64> %broadcast.splat108, %i.ac
  %i.ae = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.aa, <4 x i64> %i.ad)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index
  %wide.load116 = load <4 x i32>, ptr %i.af, align 4, !tbaa !79, !noalias !3050
  %i.ag = zext <4 x i32> %wide.load116 to <4 x i64>
  %i.ah = mul nuw <4 x i64> %broadcast.splat110, %i.ag
  %i.ai = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.ae, <4 x i64> %i.ah)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  %wide.load117 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !79, !noalias !3053
  %i.ak = zext <4 x i32> %wide.load117 to <4 x i64>
  %i.al = mul nuw <4 x i64> %broadcast.splat112, %i.ak
  %i.am = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.ai, <4 x i64> %i.al)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index
  %wide.load118 = load <4 x i32>, ptr %i.an, align 4, !tbaa !79, !noalias !3056
  %i.ao = zext <4 x i32> %wide.load118 to <4 x i64>
  %i.ap = mul nuw <4 x i64> %broadcast.splat114, %i.ao
  %i.aq = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.am, <4 x i64> %i.ap)
  %i.ar = add <4 x i64> %i.aq, splat (i64 2147483648)
  %i.as = lshr <4 x i64> %i.ar, splat (i64 32)
  %i.at = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.as, <4 x i64> splat (i64 65535))
  %i.au = trunc nuw <4 x i64> %i.at to <4 x i16>
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  store <4 x i16> %i.au, ptr %i.av, align 2, !tbaa !521
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !3059

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !79, !noalias !3044
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.d
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !79, !noalias !3047
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw i64 %i.bd, %i.i
  %i.bf = tail call i64 @llvm.uadd.sat.i64(i64 %i.ba, i64 %i.be)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !79, !noalias !3050
  %i.bi = zext i32 %i.bh to i64
  %i.bj = mul nuw i64 %i.bi, %i.n
  %i.bk = tail call i64 @llvm.uadd.sat.i64(i64 %i.bf, i64 %i.bj)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !79, !noalias !3053
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw i64 %i.bn, %i.s
  %i.bp = tail call i64 @llvm.uadd.sat.i64(i64 %i.bk, i64 %i.bo)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !79, !noalias !3056
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw i64 %i.bs, %i.x
  %i.bu = tail call i64 @llvm.uadd.sat.i64(i64 %i.bp, i64 %i.bt)
  %i.bv = add i64 %i.bu, 2147483648
  %i.bw = lshr i64 %i.bv, 32
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.bw, i64 65535)
  %i.bx = trunc nuw i64 %.sroa.speculated.i to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !3060

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %scalar.ph ] ; 2 uses
  br i1 %6, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.bz = sub nsw i32 %4, %5                      ; 2 uses
  %i.ca = icmp slt i32 %.0.lcssa, %i.bz
  br i1 %i.ca, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %.preheader
  %i.cb = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.cc = load i32, ptr %1, align 4, !tbaa !79, !noalias !3061
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2991 ; 2 uses
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !79, !noalias !3064
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2991 ; 2 uses
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !79, !noalias !3067
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2991 ; 2 uses
  %i.cr = load i32, ptr %i.co, align 4, !tbaa !79, !noalias !3070
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2991 ; 2 uses
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !79, !noalias !3073
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = zext nneg i32 %.0.lcssa to i64          ; 5 uses
  %sext = zext i32 %i.bz to i64                   ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 %sext)
  %i.db = sub nsw i64 %i.da, %i.cy                ; 3 uses
  %min.iters.check120 = icmp ult i64 %i.db, 4
  br i1 %min.iters.check120, label %scalar.ph119.preheader, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph94
  %n.vec122 = and i64 %i.db, -4                   ; 3 uses
  %i.dc = add nsw i64 %n.vec122, %i.cy
  %broadcast.splatinsert123 = insertelement <4 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat124 = shufflevector <4 x i64> %broadcast.splatinsert123, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <4 x i64> poison, i64 %i.ci, i64 0
  %broadcast.splat126 = shufflevector <4 x i64> %broadcast.splatinsert125, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <4 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat128 = shufflevector <4 x i64> %broadcast.splatinsert127, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <4 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat130 = shufflevector <4 x i64> %broadcast.splatinsert129, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i64> poison, i64 %i.cx, i64 0
  %broadcast.splat132 = shufflevector <4 x i64> %broadcast.splatinsert131, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph121
  %index134 = phi i64 [ 0, %vector.ph121 ], [ %index.next140, %vector.body133 ] ; 2 uses
  %i.dd = add nuw i64 %index134, %i.cy            ; 6 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dd
  %wide.load135 = load <4 x i32>, ptr %i.de, align 4, !tbaa !79, !noalias !3061
  %i.df = zext <4 x i32> %wide.load135 to <4 x i64>
  %i.dg = mul nuw <4 x i64> %broadcast.splat124, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %wide.load136 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !79, !noalias !3064
  %i.di = zext <4 x i32> %wide.load136 to <4 x i64>
  %i.dj = mul nuw <4 x i64> %broadcast.splat126, %i.di
  %i.dk = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.dg, <4 x i64> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.dd
  %wide.load137 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !79, !noalias !3067
  %i.dm = zext <4 x i32> %wide.load137 to <4 x i64>
  %i.dn = mul nuw <4 x i64> %broadcast.splat128, %i.dm
  %i.do = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.dk, <4 x i64> %i.dn)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dd
  %wide.load138 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !79, !noalias !3070
  %i.dq = zext <4 x i32> %wide.load138 to <4 x i64>
  %i.dr = mul nuw <4 x i64> %broadcast.splat130, %i.dq
  %i.ds = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.do, <4 x i64> %i.dr)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dd
  %wide.load139 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !79, !noalias !3073
  %i.du = zext <4 x i32> %wide.load139 to <4 x i64>
  %i.dv = mul nuw <4 x i64> %broadcast.splat132, %i.du
  %i.dw = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.ds, <4 x i64> %i.dv)
  %i.dx = add <4 x i64> %i.dw, splat (i64 2147483648)
  %i.dy = lshr <4 x i64> %i.dx, splat (i64 32)
  %i.dz = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.dy, <4 x i64> splat (i64 65535))
  %i.ea = trunc nuw <4 x i64> %i.dz to <4 x i16>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dd
  store <4 x i16> %i.ea, ptr %i.eb, align 2, !tbaa !521
  %index.next140 = add nuw i64 %index134, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next140, %n.vec122
  br i1 %i.ec, label %middle.block141, label %vector.body133, !llvm.loop !3076

middle.block141:                                  ; preds = %vector.body133
  %cmp.n142 = icmp eq i64 %i.db, %n.vec122
  br i1 %cmp.n142, label %.loopexit, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %.lr.ph94, %middle.block141
  %indvars.iv100.ph = phi i64 [ %i.cy, %.lr.ph94 ], [ %i.dc, %middle.block141 ]
  br label %scalar.ph119

scalar.ph119:                                     ; preds = %scalar.ph119.preheader, %scalar.ph119
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %scalar.ph119 ], [ %indvars.iv100.ph, %scalar.ph119.preheader ] ; 7 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv100
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !79, !noalias !3061
  %i.ef = zext i32 %i.ee to i64
  %i.eg = mul nuw i64 %i.ef, %i.cd
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv100
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !79, !noalias !3064
  %i.ej = zext i32 %i.ei to i64
  %i.ek = mul nuw i64 %i.ej, %i.ci
  %i.el = tail call i64 @llvm.uadd.sat.i64(i64 %i.eg, i64 %i.ek)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv100
  %i.en = load i32, ptr %i.em, align 4, !tbaa !79, !noalias !3067
  %i.eo = zext i32 %i.en to i64
  %i.ep = mul nuw i64 %i.eo, %i.cn
  %i.eq = tail call i64 @llvm.uadd.sat.i64(i64 %i.el, i64 %i.ep)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv100
  %i.es = load i32, ptr %i.er, align 4, !tbaa !79, !noalias !3070
  %i.et = zext i32 %i.es to i64
  %i.eu = mul nuw i64 %i.et, %i.cs
  %i.ev = tail call i64 @llvm.uadd.sat.i64(i64 %i.eq, i64 %i.eu)
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv100
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !79, !noalias !3073
  %i.ey = zext i32 %i.ex to i64
  %i.ez = mul nuw i64 %i.ey, %i.cx
  %i.fa = tail call i64 @llvm.uadd.sat.i64(i64 %i.ev, i64 %i.ez)
  %i.fb = add i64 %i.fa, 2147483648
  %i.fc = lshr i64 %i.fb, 32
  %.sroa.speculated.i64 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.fc, i64 65535)
  %i.fd = trunc nuw i64 %.sroa.speculated.i64 to i16
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv100
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !521
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.ff = icmp samesign ult i64 %indvars.iv.next101, %sext
  br i1 %i.ff, label %scalar.ph119, label %.loopexit, !llvm.loop !3077

.loopexit:                                        ; preds = %scalar.ph119, %middle.block141, %.preheader, %._crit_edge
  br i1 %i.a, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %.loopexit
  %i.fg = sub i32 %4, %5
  %i.fh = load ptr, ptr %0, align 8, !tbaa !2991  ; 2 uses
  %i.fi = load i32, ptr %1, align 4, !tbaa !79, !noalias !3078
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2991 ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !79, !noalias !3081
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2991 ; 2 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !79, !noalias !3084
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !2991 ; 2 uses
  %i.fx = load i32, ptr %i.fu, align 4, !tbaa !79, !noalias !3087
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !2991 ; 2 uses
  %i.gc = load i32, ptr %i.fz, align 4, !tbaa !79, !noalias !3090
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = sext i32 %i.fg to i64                   ; 5 uses
  %i.gf = sext i32 %4 to i64                      ; 2 uses
  %i.gg = add nsw i64 %i.ge, 1
  %i.gh = tail call i64 @llvm.smax.i64(i64 %i.gg, i64 %i.gf)
  %i.gi = sub nsw i64 %i.gh, %i.ge                ; 3 uses
  %min.iters.check145 = icmp ult i64 %i.gi, 4
  br i1 %min.iters.check145, label %scalar.ph144.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph97
  %n.vec147 = and i64 %i.gi, -4                   ; 3 uses
  %i.gj = add i64 %n.vec147, %i.ge
  %broadcast.splatinsert148 = insertelement <4 x i64> poison, i64 %i.fj, i64 0
  %broadcast.splat149 = shufflevector <4 x i64> %broadcast.splatinsert148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <4 x i64> poison, i64 %i.fo, i64 0
  %broadcast.splat151 = shufflevector <4 x i64> %broadcast.splatinsert150, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert152 = insertelement <4 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat153 = shufflevector <4 x i64> %broadcast.splatinsert152, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert154 = insertelement <4 x i64> poison, i64 %i.fy, i64 0
  %broadcast.splat155 = shufflevector <4 x i64> %broadcast.splatinsert154, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <4 x i64> poison, i64 %i.gd, i64 0
  %broadcast.splat157 = shufflevector <4 x i64> %broadcast.splatinsert156, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph146
  %index159 = phi i64 [ 0, %vector.ph146 ], [ %index.next165, %vector.body158 ] ; 2 uses
  %i.gk = add i64 %index159, %i.ge                ; 6 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gk
  %wide.load160 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !79, !noalias !3078
  %i.gm = zext <4 x i32> %wide.load160 to <4 x i64>
  %i.gn = mul nuw <4 x i64> %broadcast.splat149, %i.gm
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gk
  %wide.load161 = load <4 x i32>, ptr %i.go, align 4, !tbaa !79, !noalias !3081
  %i.gp = zext <4 x i32> %wide.load161 to <4 x i64>
  %i.gq = mul nuw <4 x i64> %broadcast.splat151, %i.gp
  %i.gr = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.gn, <4 x i64> %i.gq)
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.gk
  %wide.load162 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !79, !noalias !3084
  %i.gt = zext <4 x i32> %wide.load162 to <4 x i64>
  %i.gu = mul nuw <4 x i64> %broadcast.splat153, %i.gt
  %i.gv = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.gr, <4 x i64> %i.gu)
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gk
  %wide.load163 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !79, !noalias !3087
  %i.gx = zext <4 x i32> %wide.load163 to <4 x i64>
  %i.gy = mul nuw <4 x i64> %broadcast.splat155, %i.gx
  %i.gz = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.gv, <4 x i64> %i.gy)
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gk
  %wide.load164 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !79, !noalias !3090
  %i.hb = zext <4 x i32> %wide.load164 to <4 x i64>
  %i.hc = mul nuw <4 x i64> %broadcast.splat157, %i.hb
  %i.hd = tail call <4 x i64> @llvm.uadd.sat.v4i64(<4 x i64> %i.gz, <4 x i64> %i.hc)
  %i.he = add <4 x i64> %i.hd, splat (i64 2147483648)
  %i.hf = lshr <4 x i64> %i.he, splat (i64 32)
  %i.hg = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.hf, <4 x i64> splat (i64 65535))
  %i.hh = trunc nuw <4 x i64> %i.hg to <4 x i16>
  %i.hi = getelementptr inbounds [2 x i8], ptr %3, i64 %i.gk
  store <4 x i16> %i.hh, ptr %i.hi, align 2, !tbaa !521
  %index.next165 = add nuw i64 %index159, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next165, %n.vec147
  br i1 %i.hj, label %middle.block166, label %vector.body158, !llvm.loop !3093

middle.block166:                                  ; preds = %vector.body158
  %cmp.n167 = icmp eq i64 %i.gi, %n.vec147
  br i1 %cmp.n167, label %._crit_edge98, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %.lr.ph97, %middle.block166
  %indvars.iv103.ph = phi i64 [ %i.ge, %.lr.ph97 ], [ %i.gj, %middle.block166 ]
  br label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.preheader, %scalar.ph144
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph144 ], [ %indvars.iv103.ph, %scalar.ph144.preheader ] ; 7 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %indvars.iv103
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !79, !noalias !3078
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %i.hm, %i.fj
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %indvars.iv103
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !79, !noalias !3081
  %i.hq = zext i32 %i.hp to i64
  %i.hr = mul nuw i64 %i.hq, %i.fo
  %i.hs = tail call i64 @llvm.uadd.sat.i64(i64 %i.hn, i64 %i.hr)
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %indvars.iv103
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !79, !noalias !3084
  %i.hv = zext i32 %i.hu to i64
  %i.hw = mul nuw i64 %i.hv, %i.ft
  %i.hx = tail call i64 @llvm.uadd.sat.i64(i64 %i.hs, i64 %i.hw)
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv103
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !79, !noalias !3087
  %i.ia = zext i32 %i.hz to i64
  %i.ib = mul nuw i64 %i.ia, %i.fy
  %i.ic = tail call i64 @llvm.uadd.sat.i64(i64 %i.hx, i64 %i.ib)
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %indvars.iv103
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !79, !noalias !3090
  %i.if = zext i32 %i.ie to i64
  %i.ig = mul nuw i64 %i.if, %i.gd
  %i.ih = tail call i64 @llvm.uadd.sat.i64(i64 %i.ic, i64 %i.ig)
  %i.ii = add i64 %i.ih, 2147483648
  %i.ij = lshr i64 %i.ii, 32
  %.sroa.speculated.i65 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.ij, i64 65535)
  %i.ik = trunc nuw i64 %.sroa.speculated.i65 to i16
  %i.il = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv103
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !521
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next104, %i.gf
  br i1 %i.im, label %scalar.ph144, label %._crit_edge98, !llvm.loop !3094

._crit_edge98:                                    ; preds = %scalar.ph144, %middle.block166, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_120vlineSmoothONa_yzy_aItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 %5, i1 zeroext %6) #17 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !2991   ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !79, !noalias !3095
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp sgt i32 %2, 1
  %wide.trip.count35 = zext nneg i32 %4 to i64    ; 4 uses
  br i1 %i.e, label %.lr.ph.us.preheader, label %.lr.ph23.split.preheader

.lr.ph23.split.preheader:                         ; preds = %.lr.ph23
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph23.split.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.split.preheader
  %n.vec = and i64 %wide.trip.count35, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !79, !noalias !3095
  %i.g = zext <4 x i32> %wide.load to <4 x i64>
  %i.h = mul nuw <4 x i64> %broadcast.splat, %i.g
  %i.i = add nuw <4 x i64> %i.h, splat (i64 2147483648)
  %i.j = lshr <4 x i64> %i.i, splat (i64 32)
  %i.k = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.j, <4 x i64> splat (i64 65535))
  %i.l = trunc nuw <4 x i64> %i.k to <4 x i16>
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  store <4 x i16> %i.l, ptr %i.m, align 2, !tbaa !521
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !3098

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count35
  br i1 %cmp.n, label %._crit_edge24, label %.lr.ph23.split.preheader40

.lr.ph23.split.preheader40:                       ; preds = %.lr.ph23.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph23.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph23.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph23
  %wide.trip.count30 = zext nneg i32 %2 to i64
  %i.o = add nsw i64 %wide.trip.count30, -1       ; 3 uses
  %xtraiter = and i64 %i.o, 1
  %i.p = icmp eq i32 %2, 2
  %unroll_iter = and i64 %i.o, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod43 = trunc i64 %i.o to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next33, %._crit_edge.us ] ; 6 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !79, !noalias !3095
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw i64 %i.s, %i.d                   ; 2 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv27 = phi i64 [ %indvars.iv.next28.1, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 4 uses
  %.sroa.017.019.us = phi i64 [ %i.an, %.lr.ph.us.new ], [ %i.t, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv27
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv27
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2991
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv32
  %i.y = load i32, ptr %i.u, align 4, !tbaa !79, !noalias !3099
  %i.z = zext i32 %i.y to i64
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !79, !noalias !3099
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul nuw i64 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.017.019.us, i64 %i.ac)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next28
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next28
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2991
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv32
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !79, !noalias !3099
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !79, !noalias !3099
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.uadd.sat.i64(i64 %i.ad, i64 %i.am) ; 3 uses
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !3102

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baseline12_GLOBAL__N_111vlineSmoothItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib:bb.a

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa175 = phi i64 [ %i.an, %._crit_edge.us.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %i.ay = add i64 %.lcssa175, 2147483648
  %i.az = lshr i64 %i.ay, 32
  %.sroa.speculated.i.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.az, i64 65535)
  %i.ba = trunc nuw i64 %.sroa.speculated.i.us to i16
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv104
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !521
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge73, label %.lr.ph.us, !llvm.loop !3113

.lr.ph72.split:                                   ; preds = %.lr.ph72.split.preheader176, %.lr.ph72.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph72.split ], [ %indvars.iv.ph, %.lr.ph72.split.preheader176 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !79, !noalias !3105
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw i64 %i.be, %i.d
  %i.bg = add nuw i64 %i.bf, 2147483648
  %i.bh = lshr i64 %i.bg, 32
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.bh, i64 65535)
  %i.bi = trunc nuw i64 %.sroa.speculated.i to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !521
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count107
  br i1 %exitcond.not, label %._crit_edge73, label %.lr.ph72.split, !llvm.loop !3114

._crit_edge73:                                    ; preds = %.lr.ph72.split, %._crit_edge.us, %middle.block, %bb.a
  %.053.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %._crit_edge.us ], [ %5, %.lr.ph72.split ] ; 3 uses
  br i1 %6, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge73
  %i.bk = sub nsw i32 %4, %5                      ; 3 uses
  %i.bl = icmp slt i32 %.053.lcssa, %i.bk
  br i1 %i.bl, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %.preheader
  %i.bm = load ptr, ptr %0, align 8, !tbaa !2991  ; 3 uses
  %i.bn = load i32, ptr %1, align 4, !tbaa !79, !noalias !3115
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = icmp sgt i32 %2, 1
  %i.bq = zext nneg i32 %.053.lcssa to i64        ; 4 uses
  br i1 %i.bp, label %.lr.ph.us79.preheader, label %.lr.ph78.split.preheader

.lr.ph78.split.preheader:                         ; preds = %.lr.ph78
  %i.br = xor i32 %.053.lcssa, -1
  %i.bs = add i32 %4, %i.br
  %i.bt = sub i32 %i.bs, %5                       ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check145 = icmp ult i32 %i.bt, 3
  br i1 %min.iters.check145, label %.lr.ph78.split.preheader173, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph78.split.preheader
  %n.vec147 = and i64 %i.bv, 8589934588           ; 3 uses
  %i.bw = add nuw nsw i64 %n.vec147, %i.bq
  %broadcast.splatinsert148 = insertelement <4 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat149 = shufflevector <4 x i64> %broadcast.splatinsert148, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i64 [ 0, %vector.ph146 ], [ %index.next153, %vector.body150 ] ; 2 uses
  %i.bx = add nuw i64 %index151, %i.bq            ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bx
  %wide.load152 = load <4 x i32>, ptr %i.by, align 4, !tbaa !79, !noalias !3115
  %i.bz = zext <4 x i32> %wide.load152 to <4 x i64>
  %i.ca = mul nuw <4 x i64> %broadcast.splat149, %i.bz
  %i.cb = add nuw <4 x i64> %i.ca, splat (i64 2147483648)
  %i.cc = lshr <4 x i64> %i.cb, splat (i64 32)
  %i.cd = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.cc, <4 x i64> splat (i64 65535))
  %i.ce = trunc nuw <4 x i64> %i.cd to <4 x i16>
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bx
  store <4 x i16> %i.ce, ptr %i.cf, align 2, !tbaa !521
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next153, %n.vec147
  br i1 %i.cg, label %middle.block154, label %vector.body150, !llvm.loop !3118

middle.block154:                                  ; preds = %vector.body150
  %cmp.n155 = icmp eq i64 %i.bv, %n.vec147
  br i1 %cmp.n155, label %.loopexit, label %.lr.ph78.split.preheader173

.lr.ph78.split.preheader173:                      ; preds = %.lr.ph78.split.preheader, %middle.block154
  %indvars.iv109.ph = phi i64 [ %i.bq, %.lr.ph78.split.preheader ], [ %i.bw, %middle.block154 ]
  br label %.lr.ph78.split

.lr.ph.us79.preheader:                            ; preds = %.lr.ph78
  %wide.trip.count115 = zext nneg i32 %2 to i64
  %i.ch = add nsw i64 %wide.trip.count115, -1     ; 3 uses
  %xtraiter181 = and i64 %i.ch, 1
  %i.ci = icmp eq i32 %2, 2
  %unroll_iter185 = and i64 %i.ch, -2
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod184 = trunc i64 %i.ch to i1
  br label %.lr.ph.us79

.lr.ph.us79:                                      ; preds = %.lr.ph.us79.preheader, %._crit_edge.us80
  %indvars.iv117 = phi i64 [ %i.bq, %.lr.ph.us79.preheader ], [ %indvars.iv.next118, %._crit_edge.us80 ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv117
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !79, !noalias !3115
  %i.cl = zext i32 %i.ck to i64
  %i.cm = mul nuw i64 %i.cl, %i.bo                ; 2 uses
  br i1 %i.ci, label %.epil.preheader180, label %.lr.ph.us79.new

.lr.ph.us79.new:                                  ; preds = %.lr.ph.us79, %.lr.ph.us79.new
  %indvars.iv112 = phi i64 [ %indvars.iv.next113.1, %.lr.ph.us79.new ], [ 1, %.lr.ph.us79 ] ; 4 uses
  %.sroa.062.075.us = phi i64 [ %i.dg, %.lr.ph.us79.new ], [ %i.cm, %.lr.ph.us79 ]
  %niter186 = phi i64 [ %niter186.next.1, %.lr.ph.us79.new ], [ 0, %.lr.ph.us79 ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv112
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv112
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2991
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv117
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !79, !noalias !3119
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i32, ptr %i.cq, align 4, !tbaa !79, !noalias !3119
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul nuw i64 %i.cu, %i.cs
  %i.cw = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.062.075.us, i64 %i.cv)
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next113
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next113
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2991
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv117
  %i.db = load i32, ptr %i.cx, align 4, !tbaa !79, !noalias !3119
  %i.dc = zext i32 %i.db to i64
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !79, !noalias !3119
  %i.de = zext i32 %i.dd to i64
  %i.df = mul nuw i64 %i.de, %i.dc
  %i.dg = tail call i64 @llvm.uadd.sat.i64(i64 %i.cw, i64 %i.df) ; 3 uses
  %indvars.iv.next113.1 = add nuw nsw i64 %indvars.iv112, 2 ; 2 uses
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %._crit_edge.us80.unr-lcssa, label %.lr.ph.us79.new, !llvm.loop !3122

._crit_edge.us80.unr-lcssa:                       ; preds = %.lr.ph.us79.new
  br i1 %lcmp.mod182.not, label %._crit_edge.us80, label %.epil.preheader180

.epil.preheader180:                               ; preds = %._crit_edge.us80.unr-lcssa, %.lr.ph.us79
  %indvars.iv112.epil.init = phi i64 [ 1, %.lr.ph.us79 ], [ %indvars.iv.next113.1, %._crit_edge.us80.unr-lcssa ] ; 2 uses
  %.sroa.062.075.us.epil.init = phi i64 [ %i.cm, %.lr.ph.us79 ], [ %i.dg, %._crit_edge.us80.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv112.epil.init
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv112.epil.init
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2991
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv117
  %i.dl = load i32, ptr %i.dh, align 4, !tbaa !79, !noalias !3119
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !79, !noalias !3119
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw i64 %i.do, %i.dm
  %i.dq = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.062.075.us.epil.init, i64 %i.dp)
  br label %._crit_edge.us80

._crit_edge.us80:                                 ; preds = %._crit_edge.us80.unr-lcssa, %.epil.preheader180
  %.lcssa172 = phi i64 [ %i.dg, %._crit_edge.us80.unr-lcssa ], [ %i.dq, %.epil.preheader180 ]
  %i.dr = add i64 %.lcssa172, 2147483648
  %i.ds = lshr i64 %i.dr, 32
  %.sroa.speculated.i55.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.ds, i64 65535)
  %i.dt = trunc nuw i64 %.sroa.speculated.i55.us to i16
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv117
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !521
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next118 to i32
  %i.dw = icmp sgt i32 %i.bk, %i.dv
  br i1 %i.dw, label %.lr.ph.us79, label %.loopexit, !llvm.loop !3123

.lr.ph78.split:                                   ; preds = %.lr.ph78.split.preheader173, %.lr.ph78.split
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph78.split ], [ %indvars.iv109.ph, %.lr.ph78.split.preheader173 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv109
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !79, !noalias !3115
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.bo
  %i.eb = add nuw i64 %i.ea, 2147483648
  %i.ec = lshr i64 %i.eb, 32
  %.sroa.speculated.i55 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.ec, i64 65535)
  %i.ed = trunc nuw i64 %.sroa.speculated.i55 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv109
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !521
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ef = trunc nuw i64 %indvars.iv.next110 to i32
  %i.eg = icmp sgt i32 %i.bk, %i.ef
  br i1 %i.eg, label %.lr.ph78.split, label %.loopexit, !llvm.loop !3124

.loopexit:                                        ; preds = %.lr.ph78.split, %._crit_edge.us80, %middle.block154, %.preheader, %._crit_edge73
  br i1 %i.a, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.loopexit
  %i.eh = sub i32 %4, %5
  %i.ei = load ptr, ptr %0, align 8, !tbaa !2991  ; 3 uses
  %i.ej = load i32, ptr %1, align 4, !tbaa !79, !noalias !3125
  %i.ek = zext i32 %i.ej to i64                   ; 3 uses
  %i.el = icmp sgt i32 %2, 1
  %i.em = sext i32 %i.eh to i64                   ; 6 uses
  %i.en = sext i32 %4 to i64                      ; 3 uses
  br i1 %i.el, label %.lr.ph.us88.preheader, label %.lr.ph86.split.preheader

.lr.ph86.split.preheader:                         ; preds = %.lr.ph86
  %i.eo = add nsw i64 %i.em, 1
  %i.ep = tail call i64 @llvm.smax.i64(i64 %i.eo, i64 %i.en)
  %i.eq = sub nsw i64 %i.ep, %i.em                ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.eq, 4
  br i1 %min.iters.check158, label %.lr.ph86.split.preheader170, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph86.split.preheader
  %n.vec160 = and i64 %i.eq, -4                   ; 3 uses
  %i.er = add i64 %n.vec160, %i.em
  %broadcast.splatinsert161 = insertelement <4 x i64> poison, i64 %i.ek, i64 0
  %broadcast.splat162 = shufflevector <4 x i64> %broadcast.splatinsert161, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph159
  %index164 = phi i64 [ 0, %vector.ph159 ], [ %index.next166, %vector.body163 ] ; 2 uses
  %i.es = add i64 %index164, %i.em                ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.es
  %wide.load165 = load <4 x i32>, ptr %i.et, align 4, !tbaa !79, !noalias !3125
  %i.eu = zext <4 x i32> %wide.load165 to <4 x i64>
  %i.ev = mul nuw <4 x i64> %broadcast.splat162, %i.eu
  %i.ew = add nuw <4 x i64> %i.ev, splat (i64 2147483648)
  %i.ex = lshr <4 x i64> %i.ew, splat (i64 32)
  %i.ey = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ex, <4 x i64> splat (i64 65535))
  %i.ez = trunc nuw <4 x i64> %i.ey to <4 x i16>
  %i.fa = getelementptr inbounds [2 x i8], ptr %3, i64 %i.es
  store <4 x i16> %i.ez, ptr %i.fa, align 2, !tbaa !521
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next166, %n.vec160
  br i1 %i.fb, label %middle.block167, label %vector.body163, !llvm.loop !3128

middle.block167:                                  ; preds = %vector.body163
  %cmp.n168 = icmp eq i64 %i.eq, %n.vec160
  br i1 %cmp.n168, label %._crit_edge87, label %.lr.ph86.split.preheader170

.lr.ph86.split.preheader170:                      ; preds = %.lr.ph86.split.preheader, %middle.block167
  %indvars.iv120.ph = phi i64 [ %i.em, %.lr.ph86.split.preheader ], [ %i.er, %middle.block167 ]
  br label %.lr.ph86.split

.lr.ph.us88.preheader:                            ; preds = %.lr.ph86
  %wide.trip.count126 = zext nneg i32 %2 to i64
  %i.fc = add nsw i64 %wide.trip.count126, -1     ; 3 uses
  %xtraiter188 = and i64 %i.fc, 1
  %i.fd = icmp eq i32 %2, 2
  %unroll_iter192 = and i64 %i.fc, -2
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  %lcmp.mod191 = trunc i64 %i.fc to i1
  br label %.lr.ph.us88

.lr.ph.us88:                                      ; preds = %.lr.ph.us88.preheader, %._crit_edge.us89
  %indvars.iv128 = phi i64 [ %i.em, %.lr.ph.us88.preheader ], [ %indvars.iv.next129, %._crit_edge.us89 ] ; 6 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %indvars.iv128
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !79, !noalias !3125
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul nuw i64 %i.fg, %i.ek                ; 2 uses
  br i1 %i.fd, label %.epil.preheader187, label %.lr.ph.us88.new

.lr.ph.us88.new:                                  ; preds = %.lr.ph.us88, %.lr.ph.us88.new
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %.lr.ph.us88.new ], [ 1, %.lr.ph.us88 ] ; 4 uses
  %.sroa.058.082.us = phi i64 [ %i.gb, %.lr.ph.us88.new ], [ %i.fh, %.lr.ph.us88 ]
  %niter193 = phi i64 [ %niter193.next.1, %.lr.ph.us88.new ], [ 0, %.lr.ph.us88 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv123
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv123
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !2991
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %indvars.iv128
  %i.fm = load i32, ptr %i.fi, align 4, !tbaa !79, !noalias !3129
  %i.fn = zext i32 %i.fm to i64
  %i.fo = load i32, ptr %i.fl, align 4, !tbaa !79, !noalias !3129
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul nuw i64 %i.fp, %i.fn
  %i.fr = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.058.082.us, i64 %i.fq)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next124
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next124
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !2991
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %indvars.iv128
  %i.fw = load i32, ptr %i.fs, align 4, !tbaa !79, !noalias !3129
  %i.fx = zext i32 %i.fw to i64
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !79, !noalias !3129
  %i.fz = zext i32 %i.fy to i64
  %i.ga = mul nuw i64 %i.fz, %i.fx
  %i.gb = tail call i64 @llvm.uadd.sat.i64(i64 %i.fr, i64 %i.ga) ; 3 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter193.next.1 = add nuw i64 %niter193, 2     ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %._crit_edge.us89.unr-lcssa, label %.lr.ph.us88.new, !llvm.loop !3132

._crit_edge.us89.unr-lcssa:                       ; preds = %.lr.ph.us88.new
  br i1 %lcmp.mod189.not, label %._crit_edge.us89, label %.epil.preheader187

.epil.preheader187:                               ; preds = %._crit_edge.us89.unr-lcssa, %.lr.ph.us88
  %indvars.iv123.epil.init = phi i64 [ 1, %.lr.ph.us88 ], [ %indvars.iv.next124.1, %._crit_edge.us89.unr-lcssa ] ; 2 uses
  %.sroa.058.082.us.epil.init = phi i64 [ %i.fh, %.lr.ph.us88 ], [ %i.gb, %._crit_edge.us89.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv123.epil.init
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv123.epil.init
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !2991
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %indvars.iv128
  %i.gg = load i32, ptr %i.gc, align 4, !tbaa !79, !noalias !3129
  %i.gh = zext i32 %i.gg to i64
  %i.gi = load i32, ptr %i.gf, align 4, !tbaa !79, !noalias !3129
  %i.gj = zext i32 %i.gi to i64
  %i.gk = mul nuw i64 %i.gj, %i.gh
  %i.gl = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.058.082.us.epil.init, i64 %i.gk)
  br label %._crit_edge.us89

._crit_edge.us89:                                 ; preds = %._crit_edge.us89.unr-lcssa, %.epil.preheader187
  %.lcssa = phi i64 [ %i.gb, %._crit_edge.us89.unr-lcssa ], [ %i.gl, %.epil.preheader187 ]
  %i.gm = add i64 %.lcssa, 2147483648
  %i.gn = lshr i64 %i.gm, 32
  %.sroa.speculated.i56.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.gn, i64 65535)
  %i.go = trunc nuw i64 %.sroa.speculated.i56.us to i16
  %i.gp = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv128
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !521
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.gq = icmp slt i64 %indvars.iv.next129, %i.en
  br i1 %i.gq, label %.lr.ph.us88, label %._crit_edge87, !llvm.loop !3133

.lr.ph86.split:                                   ; preds = %.lr.ph86.split.preheader170, %.lr.ph86.split
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %.lr.ph86.split ], [ %indvars.iv120.ph, %.lr.ph86.split.preheader170 ] ; 3 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %indvars.iv120
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !79, !noalias !3125
  %i.gt = zext i32 %i.gs to i64
  %i.gu = mul nuw i64 %i.gt, %i.ek
  %i.gv = add nuw i64 %i.gu, 2147483648
  %i.gw = lshr i64 %i.gv, 32
  %.sroa.speculated.i56 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.gw, i64 65535)
  %i.gx = trunc nuw i64 %.sroa.speculated.i56 to i16
  %i.gy = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv120
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !521
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.gz = icmp slt i64 %indvars.iv.next121, %i.en
  br i1 %i.gz, label %.lr.ph86.split, label %._crit_edge87, !llvm.loop !3134

._crit_edge87:                                    ; preds = %.lr.ph86.split, %._crit_edge.us89, %middle.block167, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.17", align 8 ; 9 uses
  %3 = alloca %"class.cv::AutoBuffer.18", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 23 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 23 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71
  %i.k = mul nsw i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 18 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75   ; 6 uses
  %i.n = mul nsw i32 %i.k, %i.m                   ; 3 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %scevgep.i, i8 0, i64 1056, i1 false), !tbaa !79
  store ptr %scevgep.i, ptr %2, align 8, !tbaa !3135
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i32 %i.n, 264
  store i64 %i.o, ptr %i.p, align 8, !tbaa !3137
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferINS_12_GLOBAL__N_113ufixedpoint32ELm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %i.n, 0
  %i.r = shl nsw i64 %i.o, 2                      ; 2 uses
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #26 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.r, i1 false), !tbaa !79
  store ptr %i.t, ptr %2, align 8, !tbaa !3135
  br label %_ZN2cv10AutoBufferINS_12_GLOBAL__N_113ufixedpoint32ELm264EEC2Em.exit

_ZN2cv10AutoBufferINS_12_GLOBAL__N_113ufixedpoint32ELm264EEC2Em.exit: ; preds = %bb.a, %bb.b
  %.val = phi ptr [ %scevgep.i, %bb.a ], [ %i.t, %bb.b ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.u = shl nsw i32 %i.m, 1                      ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !3138
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i.i147 = icmp ugt i32 %i.u, 136
  store i64 %i.v, ptr %i.x, align 8, !tbaa !3141
  br i1 %.not.i.i147, label %bb.c, label %_ZN2cv10AutoBufferIPNS_12_GLOBAL__N_113ufixedpoint32ELm136EEC2Em.exit

bb.c:                                             ; preds = %_ZN2cv10AutoBufferINS_12_GLOBAL__N_113ufixedpoint32ELm264EEC2Em.exit
  %i.y = icmp slt i32 %i.m, 0
  %i.z = shl nuw nsw i64 %i.v, 3
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #26
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
end_hunk_4
