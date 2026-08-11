inline.NumInlined: 102
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@make_map_internal:.preheader573
  %i.qy = add nsw i64 %indvars.iv785.ph, %i.qm
  %i.qz = shl nsw i64 %i.qy, 1                    ; 2 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %.0463, i64 %i.qx
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !22
  %i.rc = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.qz
  store double %i.rb, ptr %i.rc, align 8, !tbaa !22
  %i.rd = getelementptr [8 x i8], ptr %.0463, i64 %i.qx
  %i.re = getelementptr i8, ptr %i.rd, i64 8
  %i.rf = load double, ptr %i.re, align 8, !tbaa !22
  %i.rg = getelementptr [8 x i8], ptr %.0414, i64 %i.qz
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  store double %i.rf, ptr %i.rh, align 8, !tbaa !22
  %indvars.iv.next786.prol = or disjoint i64 %indvars.iv785.ph, 1
  br label %.preheader558.prol.loopexit

.preheader558.prol.loopexit:                      ; preds = %.preheader558.prol, %.preheader558.preheader1363
  %indvars.iv785.unr = phi i64 [ %indvars.iv785.ph, %.preheader558.preheader1363 ], [ %indvars.iv.next786.prol, %.preheader558.prol ]
  %i.ri = add nsw i64 %wide.trip.count788, -1
  %i.rj = icmp eq i64 %indvars.iv785.ph, %i.ri
  br i1 %i.rj, label %._crit_edge653, label %.preheader558

.preheader558:                                    ; preds = %.preheader558.prol.loopexit, %.preheader558
  %indvars.iv785 = phi i64 [ %indvars.iv.next786.1, %.preheader558 ], [ %indvars.iv785.unr, %.preheader558.prol.loopexit ] ; 4 uses
  %i.rk = mul nsw i64 %indvars.iv785, %i.ql       ; 2 uses
  %i.rl = add nsw i64 %indvars.iv785, %i.qm
  %i.rm = shl nsw i64 %i.rl, 1                    ; 2 uses
  %i.rn = getelementptr inbounds [8 x i8], ptr %.0463, i64 %i.rk
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !22
  %i.rp = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.rm
  store double %i.ro, ptr %i.rp, align 8, !tbaa !22
  %i.rq = getelementptr [8 x i8], ptr %.0463, i64 %i.rk
  %i.rr = getelementptr i8, ptr %i.rq, i64 8
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !22
  %i.rt = getelementptr [8 x i8], ptr %.0414, i64 %i.rm
  %i.ru = getelementptr i8, ptr %i.rt, i64 8
  store double %i.rs, ptr %i.ru, align 8, !tbaa !22
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %i.rv = mul nsw i64 %indvars.iv.next786, %i.ql  ; 2 uses
  %i.rw = add nsw i64 %indvars.iv.next786, %i.qm
  %i.rx = shl nsw i64 %i.rw, 1                    ; 2 uses
  %i.ry = getelementptr inbounds [8 x i8], ptr %.0463, i64 %i.rv
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !22
  %i.sa = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.rx
  store double %i.rz, ptr %i.sa, align 8, !tbaa !22
  %i.sb = getelementptr [8 x i8], ptr %.0463, i64 %i.rv
  %i.sc = getelementptr i8, ptr %i.sb, i64 8
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !22
  %i.se = getelementptr [8 x i8], ptr %.0414, i64 %i.rx
  %i.sf = getelementptr i8, ptr %i.se, i64 8
  store double %i.sd, ptr %i.sf, align 8, !tbaa !22
  %indvars.iv.next786.1 = add nuw nsw i64 %indvars.iv785, 2 ; 2 uses
  %exitcond789.not.1 = icmp eq i64 %indvars.iv.next786.1, %wide.trip.count788
  br i1 %exitcond789.not.1, label %._crit_edge653, label %.preheader558, !llvm.loop !107

._crit_edge653:                                   ; preds = %.preheader558.prol.loopexit, %.preheader558, %middle.block1176, %.preheader559
  br i1 %0, label %.preheader556, label %.loopexit557

.preheader556:                                    ; preds = %._crit_edge653
  %i.sg = sub nsw i32 %.2454, %.0415              ; 3 uses
  %i.sh = icmp sgt i32 %i.sg, 0
  br i1 %i.sh, label %.preheader555.preheader, label %.loopexit557

.preheader555.preheader:                          ; preds = %.preheader556
  %i.si = sext i32 %.1459 to i64                  ; 5 uses
  %i.sj = sext i32 %2 to i64                      ; 3 uses
  %i.sk = sext i32 %.0415 to i64                  ; 6 uses
  %wide.trip.count798 = zext nneg i32 %i.sg to i64 ; 7 uses
  %min.iters.check1190 = icmp ugt i32 %i.sg, 13
  %ident.check1180.not = icmp eq i32 %2, 1
  %or.cond1313 = and i1 %min.iters.check1190, %ident.check1180.not
  br i1 %or.cond1313, label %vector.memcheck1181, label %.preheader555.preheader1362

vector.memcheck1181:                              ; preds = %.preheader555.preheader
  %i.sl = shl nsw i64 %i.sk, 4
  %scevgep1182 = getelementptr i8, ptr %.0414, i64 %i.sl
  %i.sm = add nsw i64 %i.sk, %wide.trip.count798
  %i.sn = shl nsw i64 %i.sm, 4
  %scevgep1183 = getelementptr i8, ptr %.0414, i64 %i.sn
  %i.so = shl nsw i64 %i.si, 3                    ; 2 uses
  %i.sp = add nsw i64 %i.so, 8
  %i.sq = shl nuw nsw i64 %wide.trip.count798, 3
  %i.sr = sub nsw i64 %i.sp, %i.sq
  %scevgep1184 = getelementptr i8, ptr %.0463, i64 %i.sr
  %i.ss = getelementptr i8, ptr %.0463, i64 %i.so
  %scevgep1185 = getelementptr i8, ptr %i.ss, i64 16
  %bound01186 = icmp ult ptr %scevgep1182, %scevgep1185
  %bound11187 = icmp ult ptr %scevgep1184, %scevgep1183
  %found.conflict1188 = and i1 %bound01186, %bound11187
  br i1 %found.conflict1188, label %.preheader555.preheader1362, label %vector.ph1191

vector.ph1191:                                    ; preds = %vector.memcheck1181
  %n.vec1192 = and i64 %wide.trip.count798, 2147483646 ; 3 uses
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1199, %vector.body1193 ] ; 3 uses
  %i.st = sub nsw i64 %i.si, %index1194
  %i.su = add nsw i64 %index1194, %i.sk
  %i.sv = getelementptr [8 x i8], ptr %.0463, i64 %i.st ; 2 uses
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 -8
  %wide.load1195 = load <2 x double>, ptr %i.sw, align 8, !tbaa !22, !alias.scope !108
  %.idx1309 = shl nsw i64 %i.su, 4
  %i.sx = getelementptr inbounds i8, ptr %.0414, i64 %.idx1309
  %wide.load1196 = load <2 x double>, ptr %i.sv, align 8, !tbaa !22, !alias.scope !108
  %interleaved.vec1198 = shufflevector <2 x double> %wide.load1195, <2 x double> %wide.load1196, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  store <4 x double> %interleaved.vec1198, ptr %i.sx, align 8, !tbaa !22, !alias.scope !111, !noalias !108
  %index.next1199 = add nuw i64 %index1194, 2     ; 2 uses
  %i.sy = icmp eq i64 %index.next1199, %n.vec1192
  br i1 %i.sy, label %middle.block1200, label %vector.body1193, !llvm.loop !113

middle.block1200:                                 ; preds = %vector.body1193
  %cmp.n1201 = icmp eq i64 %n.vec1192, %wide.trip.count798
  br i1 %cmp.n1201, label %.loopexit557, label %.preheader555.preheader1362

.preheader555.preheader1362:                      ; preds = %vector.memcheck1181, %.preheader555.preheader, %middle.block1200
  %indvars.iv795.ph = phi i64 [ 0, %vector.memcheck1181 ], [ 0, %.preheader555.preheader ], [ %n.vec1192, %middle.block1200 ] ; 5 uses
  %xtraiter1384 = and i64 %wide.trip.count798, 1
  %lcmp.mod1385.not = icmp eq i64 %xtraiter1384, 0
  br i1 %lcmp.mod1385.not, label %.preheader555.prol.loopexit, label %.preheader555.prol

.preheader555.prol:                               ; preds = %.preheader555.preheader1362
  %i.sz = sub nsw i64 %i.si, %indvars.iv795.ph
  %i.ta = mul nsw i64 %i.sz, %i.sj                ; 2 uses
  %i.tb = add nsw i64 %indvars.iv795.ph, %i.sk
  %i.tc = shl nsw i64 %i.tb, 1                    ; 2 uses
  %i.td = getelementptr inbounds [8 x i8], ptr %.0463, i64 %i.ta
  %i.te = load double, ptr %i.td, align 8, !tbaa !22
  %i.tf = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.tc
  store double %i.te, ptr %i.tf, align 8, !tbaa !22
  %i.tg = getelementptr [8 x i8], ptr %.0463, i64 %i.ta
  %i.th = getelementptr i8, ptr %i.tg, i64 8
  %i.ti = load double, ptr %i.th, align 8, !tbaa !22
  %i.tj = getelementptr [8 x i8], ptr %.0414, i64 %i.tc
  %i.tk = getelementptr i8, ptr %i.tj, i64 8
  store double %i.ti, ptr %i.tk, align 8, !tbaa !22
  %indvars.iv.next796.prol = or disjoint i64 %indvars.iv795.ph, 1
  br label %.preheader555.prol.loopexit

.preheader555.prol.loopexit:                      ; preds = %.preheader555.prol, %.preheader555.preheader1362
  %indvars.iv795.unr = phi i64 [ %indvars.iv795.ph, %.preheader555.preheader1362 ], [ %indvars.iv.next796.prol, %.preheader555.prol ]
  %i.tl = add nsw i64 %wide.trip.count798, -1
  %i.tm = icmp eq i64 %indvars.iv795.ph, %i.tl
  br i1 %i.tm, label %.loopexit557, label %.preheader555

.preheader555:                                    ; preds = %.preheader555.prol.loopexit, %.preheader555
  %indvars.iv795 = phi i64 [ %indvars.iv.next796.1, %.preheader555 ], [ %indvars.iv795.unr, %.preheader555.prol.loopexit ] ; 4 uses
  %i.tn = sub nsw i64 %i.si, %indvars.iv795
  %i.to = mul nsw i64 %i.tn, %i.sj                ; 2 uses
  %i.tp = add nsw i64 %indvars.iv795, %i.sk
  %i.tq = shl nsw i64 %i.tp, 1                    ; 2 uses
  %i.tr = getelementptr inbounds [8 x i8], ptr %.0463, i64 %i.to
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !22
  %i.tt = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.tq
  store double %i.ts, ptr %i.tt, align 8, !tbaa !22
  %i.tu = getelementptr [8 x i8], ptr %.0463, i64 %i.to
  %i.tv = getelementptr i8, ptr %i.tu, i64 8
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !22
  %i.tx = getelementptr [8 x i8], ptr %.0414, i64 %i.tq
  %i.ty = getelementptr i8, ptr %i.tx, i64 8
  store double %i.tw, ptr %i.ty, align 8, !tbaa !22
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %i.tz = sub nsw i64 %i.si, %indvars.iv.next796
  %i.ua = mul nsw i64 %i.tz, %i.sj                ; 2 uses
  %i.ub = add nsw i64 %indvars.iv.next796, %i.sk
  %i.uc = shl nsw i64 %i.ub, 1                    ; 2 uses
  %i.ud = getelementptr inbounds [8 x i8], ptr %.0463, i64 %i.ua
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !22
  %i.uf = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.uc
  store double %i.ue, ptr %i.uf, align 8, !tbaa !22
  %i.ug = getelementptr [8 x i8], ptr %.0463, i64 %i.ua
  %i.uh = getelementptr i8, ptr %i.ug, i64 8
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !22
  %i.uj = getelementptr [8 x i8], ptr %.0414, i64 %i.uc
  %i.uk = getelementptr i8, ptr %i.uj, i64 8
  store double %i.ui, ptr %i.uk, align 8, !tbaa !22
  %indvars.iv.next796.1 = add nuw nsw i64 %indvars.iv795, 2 ; 2 uses
  %exitcond799.not.1 = icmp eq i64 %indvars.iv.next796.1, %wide.trip.count798
  br i1 %exitcond799.not.1, label %.loopexit557, label %.preheader555, !llvm.loop !114

.loopexit557:                                     ; preds = %.preheader555.prol.loopexit, %.preheader555, %middle.block1200, %.preheader556, %._crit_edge653
  %.1416 = phi i32 [ %.0415, %._crit_edge653 ], [ %.2454, %.preheader556 ], [ %.2454, %middle.block1200 ], [ %.2454, %.preheader555 ], [ %.2454, %.preheader555.prol.loopexit ] ; 8 uses
  %.not485 = icmp eq i32 %17, 0
  br i1 %.not485, label %bb.bx, label %bb.bq

bb.bq:                                            ; preds = %.loopexit557
  %i.ul = load i8, ptr @Verbose, align 1, !tbaa !47
  %.not486 = icmp eq i8 %i.ul, 0
  br i1 %.not486, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.um = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.un = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.um, ptr noundef nonnull @.str.46, i32 noundef %17, i32 noundef %.1416) #20 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.uo = icmp sgt i32 %.1416, 0
  br i1 %i.uo, label %.lr.ph666, label %.preheader

.lr.ph666:                                        ; preds = %bb.bs
  %i.up = icmp sgt i32 %2, 0
  %18 = zext nneg i32 %2 to i64
  %wide.trip.count814 = zext nneg i32 %.1416 to i64
  %wide.trip.count809 = zext i32 %2 to i64        ; 11 uses
  %i.uq = sub i64 %.04141204, %.04251205
  %i.ur = mul nsw i64 %wide.trip.count809, -8
  %min.iters.check1207 = icmp ult i32 %2, 4
  %n.vec1209 = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %cmp.n1216 = icmp eq i64 %n.vec1209, %wide.trip.count809
  %xtraiter1386 = and i64 %wide.trip.count809, 3  ; 2 uses
  %lcmp.mod1387.not = icmp eq i64 %xtraiter1386, 0
  br label %bb.bt

.lr.ph676:                                        ; preds = %.loopexit554
  %i.us = icmp slt i32 %2, 1
  %i.ut = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count830 = zext nneg i32 %.1416 to i64
  %i.uu = sub i64 %.04141204, %.04251205
  %i.uv = mul nsw i64 %wide.trip.count809, -8
  %min.iters.check1222 = icmp ult i32 %2, 4
  %n.vec1224 = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %cmp.n1231 = icmp eq i64 %n.vec1224, %wide.trip.count809
  %xtraiter1388 = and i64 %wide.trip.count809, 3  ; 2 uses
  %lcmp.mod1389.not = icmp eq i64 %xtraiter1388, 0
  br label %bb.bv

bb.bt:                                            ; preds = %.lr.ph666, %.loopexit554
  %indvars.iv811 = phi i64 [ 0, %.lr.ph666 ], [ %indvars.iv.next812, %.loopexit554 ] ; 4 uses
  %.0411664 = phi i32 [ 0, %.lr.ph666 ], [ %.1, %.loopexit554 ] ; 2 uses
  %.0412663 = phi i32 [ 0, %.lr.ph666 ], [ %.2, %.loopexit554 ] ; 3 uses
  %i.uw = mul i64 %i.ur, %indvars.iv811
  %i.ux = add i64 %i.uq, %i.uw
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.2462, i64 %indvars.iv811
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !21
  %i.va = icmp eq i32 %i.uz, %17
  br i1 %i.va, label %bb.bu, label %.loopexit554

bb.bu:                                            ; preds = %bb.bt
  %i.vb = add nsw i32 %.0411664, 1                ; 2 uses
  br i1 %i.up, label %.lr.ph659, label %.loopexit554

.lr.ph659:                                        ; preds = %bb.bu
  %i.vc = mul nuw nsw i64 %indvars.iv811, %18
  %i.vd = sext i32 %.0412663 to i64               ; 5 uses
  %invariant.gep1072 = getelementptr inbounds nuw [8 x i8], ptr %.0425, i64 %i.vc ; 6 uses
  br i1 %min.iters.check1207, label %scalar.ph1206.preheader, label %vector.memcheck1203

vector.memcheck1203:                              ; preds = %.lr.ph659
  %i.ve = shl nsw i64 %i.vd, 3
  %i.vf = add i64 %i.ux, %i.ve
  %i.vg = add i64 %i.vf, -1
  %diff.check = icmp ult i64 %i.vg, 31
  br i1 %diff.check, label %scalar.ph1206.preheader, label %vector.ph1208

vector.ph1208:                                    ; preds = %vector.memcheck1203
  %i.vh = add nsw i64 %n.vec1209, %i.vd           ; 2 uses
  %invariant.gep1444 = getelementptr [8 x i8], ptr %.0414, i64 %i.vd
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1208
  %index1211 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1214, %vector.body1210 ] ; 3 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %index1211 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %wide.load1212 = load <2 x double>, ptr %i.vi, align 8, !tbaa !22
  %wide.load1213 = load <2 x double>, ptr %i.vj, align 8, !tbaa !22
  %gep1445 = getelementptr [8 x i8], ptr %invariant.gep1444, i64 %index1211 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %gep1445, i64 16
  store <2 x double> %wide.load1212, ptr %gep1445, align 8, !tbaa !22
  store <2 x double> %wide.load1213, ptr %i.vk, align 8, !tbaa !22
  %index.next1214 = add nuw i64 %index1211, 4     ; 2 uses
  %i.vl = icmp eq i64 %index.next1214, %n.vec1209
  br i1 %i.vl, label %middle.block1215, label %vector.body1210, !llvm.loop !115

middle.block1215:                                 ; preds = %vector.body1210
  br i1 %cmp.n1216, label %.loopexit554.loopexit, label %scalar.ph1206.preheader

scalar.ph1206.preheader:                          ; preds = %vector.memcheck1203, %.lr.ph659, %middle.block1215
  %indvars.iv804.ph = phi i64 [ 0, %vector.memcheck1203 ], [ 0, %.lr.ph659 ], [ %n.vec1209, %middle.block1215 ] ; 3 uses
  %indvars.iv802.ph = phi i64 [ %i.vd, %vector.memcheck1203 ], [ %i.vd, %.lr.ph659 ], [ %i.vh, %middle.block1215 ] ; 2 uses
  br i1 %lcmp.mod1387.not, label %scalar.ph1206.prol.loopexit, label %scalar.ph1206.prol

scalar.ph1206.prol:                               ; preds = %scalar.ph1206.preheader, %scalar.ph1206.prol
  %indvars.iv804.prol = phi i64 [ %indvars.iv.next805.prol, %scalar.ph1206.prol ], [ %indvars.iv804.ph, %scalar.ph1206.preheader ] ; 2 uses
  %indvars.iv802.prol = phi i64 [ %indvars.iv.next803.prol, %scalar.ph1206.prol ], [ %indvars.iv802.ph, %scalar.ph1206.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1206.prol ], [ 0, %scalar.ph1206.preheader ]
  %gep1073.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804.prol
  %i.vm = load double, ptr %gep1073.prol, align 8, !tbaa !22
  %indvars.iv.next803.prol = add nsw i64 %indvars.iv802.prol, 1 ; 3 uses
  %i.vn = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv802.prol
  store double %i.vm, ptr %i.vn, align 8, !tbaa !22
  %indvars.iv.next805.prol = add nuw nsw i64 %indvars.iv804.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1386
  br i1 %prol.iter.cmp.not, label %scalar.ph1206.prol.loopexit, label %scalar.ph1206.prol, !llvm.loop !116

scalar.ph1206.prol.loopexit:                      ; preds = %scalar.ph1206.prol, %scalar.ph1206.preheader
  %indvars.iv.next803.lcssa1361.unr = phi i64 [ poison, %scalar.ph1206.preheader ], [ %indvars.iv.next803.prol, %scalar.ph1206.prol ]
  %indvars.iv804.unr = phi i64 [ %indvars.iv804.ph, %scalar.ph1206.preheader ], [ %indvars.iv.next805.prol, %scalar.ph1206.prol ]
  %indvars.iv802.unr = phi i64 [ %indvars.iv802.ph, %scalar.ph1206.preheader ], [ %indvars.iv.next803.prol, %scalar.ph1206.prol ]
  %i.vo = sub nsw i64 %indvars.iv804.ph, %wide.trip.count809
  %i.vp = icmp ugt i64 %i.vo, -4
  br i1 %i.vp, label %.loopexit554.loopexit, label %scalar.ph1206

scalar.ph1206:                                    ; preds = %scalar.ph1206.prol.loopexit, %scalar.ph1206
  %indvars.iv804 = phi i64 [ %indvars.iv.next805.3, %scalar.ph1206 ], [ %indvars.iv804.unr, %scalar.ph1206.prol.loopexit ] ; 5 uses
  %indvars.iv802 = phi i64 [ %indvars.iv.next803.3, %scalar.ph1206 ], [ %indvars.iv802.unr, %scalar.ph1206.prol.loopexit ] ; 5 uses
  %gep1073 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %i.vq = load double, ptr %gep1073, align 8, !tbaa !22
  %i.vr = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv802
  store double %i.vq, ptr %i.vr, align 8, !tbaa !22
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.1 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vt = load double, ptr %gep1073.1, align 8, !tbaa !22
  %i.vu = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.vv = getelementptr i8, ptr %i.vu, i64 8
  store double %i.vt, ptr %i.vv, align 8, !tbaa !22
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.2 = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.vx = load double, ptr %gep1073.2, align 8, !tbaa !22
  %i.vy = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.vz = getelementptr i8, ptr %i.vy, i64 16
  store double %i.vx, ptr %i.vz, align 8, !tbaa !22
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.3 = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wb = load double, ptr %gep1073.3, align 8, !tbaa !22
  %indvars.iv.next803.3 = add nsw i64 %indvars.iv802, 4 ; 2 uses
  %i.wc = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.wd = getelementptr i8, ptr %i.wc, i64 24
  store double %i.wb, ptr %i.wd, align 8, !tbaa !22
  %indvars.iv.next805.3 = add nuw nsw i64 %indvars.iv804, 4 ; 2 uses
  %exitcond810.not.3 = icmp eq i64 %indvars.iv.next805.3, %wide.trip.count809
  br i1 %exitcond810.not.3, label %.loopexit554.loopexit, label %scalar.ph1206, !llvm.loop !117

.loopexit554.loopexit:                            ; preds = %scalar.ph1206.prol.loopexit, %scalar.ph1206, %middle.block1215
  %indvars.iv.next803.lcssa = phi i64 [ %i.vh, %middle.block1215 ], [ %indvars.iv.next803.lcssa1361.unr, %scalar.ph1206.prol.loopexit ], [ %indvars.iv.next803.3, %scalar.ph1206 ]
  %i.we = trunc nsw i64 %indvars.iv.next803.lcssa to i32
  br label %.loopexit554

.loopexit554:                                     ; preds = %.loopexit554.loopexit, %bb.bu, %bb.bt
  %.2 = phi i32 [ %.0412663, %bb.bt ], [ %.0412663, %bb.bu ], [ %i.we, %.loopexit554.loopexit ] ; 2 uses
  %.1 = phi i32 [ %.0411664, %bb.bt ], [ %i.vb, %bb.bu ], [ %i.vb, %.loopexit554.loopexit ] ; 7 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %.lr.ph676, label %bb.bt, !llvm.loop !118

.preheader550:                                    ; preds = %.loopexit552
  %i.wf = icmp sgt i32 %.1, 0
  br i1 %i.wf, label %.lr.ph678.preheader, label %.preheader

.lr.ph678.preheader:                              ; preds = %.preheader550
  %wide.trip.count835 = zext nneg i32 %.1 to i64  ; 3 uses
  %min.iters.check1235 = icmp ult i32 %.1, 8
  br i1 %min.iters.check1235, label %.lr.ph678.preheader1359, label %vector.ph1236

vector.ph1236:                                    ; preds = %.lr.ph678.preheader
  %n.vec1237 = and i64 %wide.trip.count835, 2147483640 ; 3 uses
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1236
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1240, %vector.body1238 ] ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.2462, i64 %index1239 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  store <4 x i32> splat (i32 1), ptr %i.wg, align 4, !tbaa !21
  store <4 x i32> splat (i32 1), ptr %i.wh, align 4, !tbaa !21
  %index.next1240 = add nuw i64 %index1239, 8     ; 2 uses
  %i.wi = icmp eq i64 %index.next1240, %n.vec1237
  br i1 %i.wi, label %middle.block1241, label %vector.body1238, !llvm.loop !119

middle.block1241:                                 ; preds = %vector.body1238
  %cmp.n1242 = icmp eq i64 %n.vec1237, %wide.trip.count835
  br i1 %cmp.n1242, label %.preheader, label %.lr.ph678.preheader1359

.lr.ph678.preheader1359:                          ; preds = %.lr.ph678.preheader, %middle.block1241
  %indvars.iv832.ph = phi i64 [ 0, %.lr.ph678.preheader ], [ %n.vec1237, %middle.block1241 ]
  br label %.lr.ph678

bb.bv:                                            ; preds = %.lr.ph676, %.loopexit552
  %indvars.iv827 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next828, %.loopexit552 ] ; 4 uses
  %.3675 = phi i32 [ %.2, %.lr.ph676 ], [ %.5, %.loopexit552 ] ; 2 uses
  %i.wj = mul i64 %i.uv, %indvars.iv827
  %i.wk = add i64 %i.uu, %i.wj
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.2462, i64 %indvars.iv827
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !21
  %.not491 = icmp eq i32 %i.wm, %17
  %brmerge = or i1 %.not491, %i.us
  br i1 %brmerge, label %.loopexit552, label %.lr.ph671

.lr.ph671:                                        ; preds = %bb.bv
  %i.wn = mul nuw nsw i64 %indvars.iv827, %i.ut
  %i.wo = sext i32 %.3675 to i64                  ; 5 uses
  %invariant.gep1074 = getelementptr inbounds nuw [8 x i8], ptr %.0425, i64 %i.wn ; 6 uses
  br i1 %min.iters.check1222, label %scalar.ph1221.preheader, label %vector.memcheck1219

vector.memcheck1219:                              ; preds = %.lr.ph671
  %i.wp = shl nsw i64 %i.wo, 3
  %i.wq = add i64 %i.wk, %i.wp
  %i.wr = add i64 %i.wq, -1
  %diff.check1220 = icmp ult i64 %i.wr, 31
  br i1 %diff.check1220, label %scalar.ph1221.preheader, label %vector.ph1223

vector.ph1223:                                    ; preds = %vector.memcheck1219
  %i.ws = add nsw i64 %n.vec1224, %i.wo           ; 2 uses
  %invariant.gep1446 = getelementptr [8 x i8], ptr %.0414, i64 %i.wo
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1229, %vector.body1225 ] ; 3 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %index1226 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %wide.load1227 = load <2 x double>, ptr %i.wt, align 8, !tbaa !22
  %wide.load1228 = load <2 x double>, ptr %i.wu, align 8, !tbaa !22
  %gep1447 = getelementptr [8 x i8], ptr %invariant.gep1446, i64 %index1226 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %gep1447, i64 16
  store <2 x double> %wide.load1227, ptr %gep1447, align 8, !tbaa !22
  store <2 x double> %wide.load1228, ptr %i.wv, align 8, !tbaa !22
  %index.next1229 = add nuw i64 %index1226, 4     ; 2 uses
  %i.ww = icmp eq i64 %index.next1229, %n.vec1224
  br i1 %i.ww, label %middle.block1230, label %vector.body1225, !llvm.loop !120

middle.block1230:                                 ; preds = %vector.body1225
  br i1 %cmp.n1231, label %.loopexit552.loopexit, label %scalar.ph1221.preheader

scalar.ph1221.preheader:                          ; preds = %vector.memcheck1219, %.lr.ph671, %middle.block1230
  %indvars.iv820.ph = phi i64 [ 0, %vector.memcheck1219 ], [ 0, %.lr.ph671 ], [ %n.vec1224, %middle.block1230 ] ; 3 uses
  %indvars.iv818.ph = phi i64 [ %i.wo, %vector.memcheck1219 ], [ %i.wo, %.lr.ph671 ], [ %i.ws, %middle.block1230 ] ; 2 uses
  br i1 %lcmp.mod1389.not, label %scalar.ph1221.prol.loopexit, label %scalar.ph1221.prol

scalar.ph1221.prol:                               ; preds = %scalar.ph1221.preheader, %scalar.ph1221.prol
  %indvars.iv820.prol = phi i64 [ %indvars.iv.next821.prol, %scalar.ph1221.prol ], [ %indvars.iv820.ph, %scalar.ph1221.preheader ] ; 2 uses
  %indvars.iv818.prol = phi i64 [ %indvars.iv.next819.prol, %scalar.ph1221.prol ], [ %indvars.iv818.ph, %scalar.ph1221.preheader ] ; 2 uses
  %prol.iter1390 = phi i64 [ %prol.iter1390.next, %scalar.ph1221.prol ], [ 0, %scalar.ph1221.preheader ]
  %gep1075.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820.prol
  %i.wx = load double, ptr %gep1075.prol, align 8, !tbaa !22
  %indvars.iv.next819.prol = add nsw i64 %indvars.iv818.prol, 1 ; 3 uses
  %i.wy = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv818.prol
  store double %i.wx, ptr %i.wy, align 8, !tbaa !22
  %indvars.iv.next821.prol = add nuw nsw i64 %indvars.iv820.prol, 1 ; 2 uses
  %prol.iter1390.next = add i64 %prol.iter1390, 1 ; 2 uses
  %prol.iter1390.cmp.not = icmp eq i64 %prol.iter1390.next, %xtraiter1388
  br i1 %prol.iter1390.cmp.not, label %scalar.ph1221.prol.loopexit, label %scalar.ph1221.prol, !llvm.loop !121

scalar.ph1221.prol.loopexit:                      ; preds = %scalar.ph1221.prol, %scalar.ph1221.preheader
  %indvars.iv.next819.lcssa1360.unr = phi i64 [ poison, %scalar.ph1221.preheader ], [ %indvars.iv.next819.prol, %scalar.ph1221.prol ]
  %indvars.iv820.unr = phi i64 [ %indvars.iv820.ph, %scalar.ph1221.preheader ], [ %indvars.iv.next821.prol, %scalar.ph1221.prol ]
  %indvars.iv818.unr = phi i64 [ %indvars.iv818.ph, %scalar.ph1221.preheader ], [ %indvars.iv.next819.prol, %scalar.ph1221.prol ]
  %i.wz = sub nsw i64 %indvars.iv820.ph, %wide.trip.count809
  %i.xa = icmp ugt i64 %i.wz, -4
  br i1 %i.xa, label %.loopexit552.loopexit, label %scalar.ph1221

scalar.ph1221:                                    ; preds = %scalar.ph1221.prol.loopexit, %scalar.ph1221
  %indvars.iv820 = phi i64 [ %indvars.iv.next821.3, %scalar.ph1221 ], [ %indvars.iv820.unr, %scalar.ph1221.prol.loopexit ] ; 5 uses
  %indvars.iv818 = phi i64 [ %indvars.iv.next819.3, %scalar.ph1221 ], [ %indvars.iv818.unr, %scalar.ph1221.prol.loopexit ] ; 5 uses
  %gep1075 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %i.xb = load double, ptr %gep1075, align 8, !tbaa !22
  %i.xc = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv818
  store double %i.xb, ptr %i.xc, align 8, !tbaa !22
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.1 = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xe = load double, ptr %gep1075.1, align 8, !tbaa !22
  %i.xf = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.xg = getelementptr i8, ptr %i.xf, i64 8
  store double %i.xe, ptr %i.xg, align 8, !tbaa !22
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.2 = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xi = load double, ptr %gep1075.2, align 8, !tbaa !22
  %i.xj = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.xk = getelementptr i8, ptr %i.xj, i64 16
  store double %i.xi, ptr %i.xk, align 8, !tbaa !22
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.3 = getelementptr inbounds nuw i8, ptr %i.xl, i64 24
  %i.xm = load double, ptr %gep1075.3, align 8, !tbaa !22
  %indvars.iv.next819.3 = add nsw i64 %indvars.iv818, 4 ; 2 uses
  %i.xn = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.xo = getelementptr i8, ptr %i.xn, i64 24
  store double %i.xm, ptr %i.xo, align 8, !tbaa !22
  %indvars.iv.next821.3 = add nuw nsw i64 %indvars.iv820, 4 ; 2 uses
  %exitcond826.not.3 = icmp eq i64 %indvars.iv.next821.3, %i.ut
  br i1 %exitcond826.not.3, label %.loopexit552.loopexit, label %scalar.ph1221, !llvm.loop !122

.loopexit552.loopexit:                            ; preds = %scalar.ph1221.prol.loopexit, %scalar.ph1221, %middle.block1230
  %indvars.iv.next819.lcssa = phi i64 [ %i.ws, %middle.block1230 ], [ %indvars.iv.next819.lcssa1360.unr, %scalar.ph1221.prol.loopexit ], [ %indvars.iv.next819.3, %scalar.ph1221 ]
  %i.xp = trunc nsw i64 %indvars.iv.next819.lcssa to i32
  br label %.loopexit552

.loopexit552:                                     ; preds = %.loopexit552.loopexit, %bb.bv
  %.5 = phi i32 [ %.3675, %bb.bv ], [ %i.xp, %.loopexit552.loopexit ]
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1 ; 2 uses
  %exitcond831.not = icmp eq i64 %indvars.iv.next828, %wide.trip.count830
  br i1 %exitcond831.not, label %.preheader550, label %bb.bv, !llvm.loop !123

.preheader:                                       ; preds = %.lr.ph678, %middle.block1241, %bb.bs, %.preheader550
  %.0411.lcssa10421044 = phi i32 [ 0, %bb.bs ], [ %.1, %.preheader550 ], [ %.1, %middle.block1241 ], [ %.1, %.lr.ph678 ] ; 6 uses
  %i.xq = icmp slt i32 %.0411.lcssa10421044, %.1416
  br i1 %i.xq, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %.preheader
  %i.xr = sext i32 %.0411.lcssa10421044 to i64    ; 4 uses
  %wide.trip.count840 = sext i32 %.1416 to i64    ; 2 uses
  %i.xs = sub nsw i64 %wide.trip.count840, %i.xr  ; 3 uses
  %min.iters.check1245 = icmp ult i64 %i.xs, 8
  br i1 %min.iters.check1245, label %.lr.ph680.preheader1358, label %vector.ph1246

vector.ph1246:                                    ; preds = %.lr.ph680.preheader
  %n.vec1247 = and i64 %i.xs, -8                  ; 3 uses
  %i.xt = add nsw i64 %n.vec1247, %i.xr
  %invariant.gep1448 = getelementptr [4 x i8], ptr %.2462, i64 %i.xr
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1250, %vector.body1248 ] ; 2 uses
  %gep1449 = getelementptr [4 x i8], ptr %invariant.gep1448, i64 %index1249 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %gep1449, i64 16
  store <4 x i32> splat (i32 2), ptr %gep1449, align 4, !tbaa !21
  store <4 x i32> splat (i32 2), ptr %i.xu, align 4, !tbaa !21
  %index.next1250 = add nuw i64 %index1249, 8     ; 2 uses
  %i.xv = icmp eq i64 %index.next1250, %n.vec1247
  br i1 %i.xv, label %middle.block1251, label %vector.body1248, !llvm.loop !124

middle.block1251:                                 ; preds = %vector.body1248
  %cmp.n1252 = icmp eq i64 %i.xs, %n.vec1247
  br i1 %cmp.n1252, label %._crit_edge681, label %.lr.ph680.preheader1358

.lr.ph680.preheader1358:                          ; preds = %.lr.ph680.preheader, %middle.block1251
  %indvars.iv837.ph = phi i64 [ %i.xr, %.lr.ph680.preheader ], [ %i.xt, %middle.block1251 ]
end_hunk_0
