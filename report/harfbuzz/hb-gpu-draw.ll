inline.NumInlined: 467
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hb_gpu_draw_encode:bb.a
  %wide.load1190 = load <4 x i32>, ptr %i.rd, align 4, !tbaa !51
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store <4 x i32> %wide.load1189, ptr %i.qz, align 4, !tbaa !51
  store <4 x i32> %wide.load1190, ptr %i.re, align 4, !tbaa !51
  %i.rf = icmp eq i64 %n.vec1186, 8
  br i1 %i.rf, label %middle.block1192, label %vector.body1187.1

vector.body1187.1:                                ; preds = %vector.ph1185
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qx, i64 48
  %wide.load1189.1 = load <4 x i32>, ptr %i.rg, align 4, !tbaa !51
  %wide.load1190.1 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !51
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  store <4 x i32> %wide.load1189.1, ptr %i.ri, align 4, !tbaa !51
  store <4 x i32> %wide.load1190.1, ptr %i.rj, align 4, !tbaa !51
  %i.rk = icmp eq i64 %n.vec1186, 16
  br i1 %i.rk, label %middle.block1192, label %vector.body1187.2

vector.body1187.2:                                ; preds = %vector.body1187.1
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qx, i64 80
  %wide.load1189.2 = load <4 x i32>, ptr %i.rl, align 4, !tbaa !51
  %wide.load1190.2 = load <4 x i32>, ptr %i.rm, align 4, !tbaa !51
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qz, i64 64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qz, i64 80
  store <4 x i32> %wide.load1189.2, ptr %i.rn, align 4, !tbaa !51
  store <4 x i32> %wide.load1190.2, ptr %i.ro, align 4, !tbaa !51
  br label %middle.block1192

middle.block1192:                                 ; preds = %vector.body1187.2, %vector.body1187.1, %vector.ph1185
  %cmp.n1193 = icmp eq i64 %n.vec1186, %i.ii
  br i1 %cmp.n1193, label %.preheader860, label %scalar.ph1183.preheader

scalar.ph1183.preheader:                          ; preds = %.preheader861, %middle.block1192
  %indvars.iv1004.ph = phi i64 [ 0, %.preheader861 ], [ %n.vec1186, %middle.block1192 ] ; 3 uses
  %xtraiter1227 = and i64 %i.ii, 3                ; 2 uses
  %lcmp.mod1228.not = icmp eq i64 %xtraiter1227, 0
  br i1 %lcmp.mod1228.not, label %scalar.ph1183.prol.loopexit, label %scalar.ph1183.prol

scalar.ph1183.prol:                               ; preds = %scalar.ph1183.preheader, %scalar.ph1183.prol
  %indvars.iv1004.prol = phi i64 [ %indvars.iv.next1005.prol, %scalar.ph1183.prol ], [ %indvars.iv1004.ph, %scalar.ph1183.preheader ] ; 3 uses
  %prol.iter1229 = phi i64 [ %prol.iter1229.next, %scalar.ph1183.prol ], [ 0, %scalar.ph1183.preheader ]
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv1004.prol
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !51
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv1004.prol
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !51
  %indvars.iv.next1005.prol = add nuw nsw i64 %indvars.iv1004.prol, 1 ; 2 uses
  %prol.iter1229.next = add i64 %prol.iter1229, 1 ; 2 uses
  %prol.iter1229.cmp.not = icmp eq i64 %prol.iter1229.next, %xtraiter1227
  br i1 %prol.iter1229.cmp.not, label %scalar.ph1183.prol.loopexit, label %scalar.ph1183.prol, !llvm.loop !87

scalar.ph1183.prol.loopexit:                      ; preds = %scalar.ph1183.prol, %scalar.ph1183.preheader
  %indvars.iv1004.unr = phi i64 [ %indvars.iv1004.ph, %scalar.ph1183.preheader ], [ %indvars.iv.next1005.prol, %scalar.ph1183.prol ]
  %i.rs = sub nsw i64 %indvars.iv1004.ph, %i.ii
  %i.rt = icmp ugt i64 %i.rs, -4
  br i1 %i.rt, label %.preheader860, label %scalar.ph1183

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000.3, %scalar.ph ], [ %indvars.iv999.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv999
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !51
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv999
  store i32 %i.rv, ptr %i.rw, align 4, !tbaa !51
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1 ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.next1000
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !51
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv.next1000
  store i32 %i.ry, ptr %i.rz, align 4, !tbaa !51
  %indvars.iv.next1000.1 = add nuw nsw i64 %indvars.iv999, 2 ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.next1000.1
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !51
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv.next1000.1
  store i32 %i.sb, ptr %i.sc, align 4, !tbaa !51
  %indvars.iv.next1000.2 = add nuw nsw i64 %indvars.iv999, 3 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.next1000.2
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !51
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv.next1000.2
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !51
  %indvars.iv.next1000.3 = add nuw nsw i64 %indvars.iv999, 4 ; 2 uses
  %exitcond1003.not.3 = icmp eq i64 %indvars.iv.next1000.3, %i.ie
  br i1 %exitcond1003.not.3, label %.preheader861, label %scalar.ph, !llvm.loop !88

.preheader860:                                    ; preds = %scalar.ph1183.prol.loopexit, %scalar.ph1183, %middle.block1192
  %i.sg = load ptr, ptr %i.et, align 8, !tbaa !60 ; 13 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  br label %bb.br

scalar.ph1183:                                    ; preds = %scalar.ph1183.prol.loopexit, %scalar.ph1183
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005.3, %scalar.ph1183 ], [ %indvars.iv1004.unr, %scalar.ph1183.prol.loopexit ] ; 6 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv1004
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !51
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv1004
  store i32 %i.sm, ptr %i.sn, align 4, !tbaa !51
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 1 ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next1005
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !51
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.next1005
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !51
  %indvars.iv.next1005.1 = add nuw nsw i64 %indvars.iv1004, 2 ; 2 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next1005.1
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !51
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.next1005.1
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !51
  %indvars.iv.next1005.2 = add nuw nsw i64 %indvars.iv1004, 3 ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next1005.2
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !51
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.next1005.2
  store i32 %i.sv, ptr %i.sw, align 4, !tbaa !51
  %indvars.iv.next1005.3 = add nuw nsw i64 %indvars.iv1004, 4 ; 2 uses
  %exitcond1009.not.3 = icmp eq i64 %indvars.iv.next1005.3, %i.ii
  br i1 %exitcond1009.not.3, label %.preheader860, label %scalar.ph1183, !llvm.loop !90

bb.br:                                            ; preds = %.preheader860, %._crit_edge890
  %indvars.iv1016 = phi i64 [ 0, %.preheader860 ], [ %indvars.iv.next1017, %._crit_edge890 ] ; 4 uses
  %i.sx = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %indvars.iv1016 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 36
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !73 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 40 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !71
  %.not496883 = icmp sgt i32 %i.sz, %i.tb
  br i1 %.not496883, label %._crit_edge, label %.lr.ph885

.lr.ph885:                                        ; preds = %bb.br
  %i.tc = load ptr, ptr %i.sh, align 8, !tbaa !91
  %i.td = load ptr, ptr %i.si, align 8, !tbaa !92
  %i.te = sext i32 %i.sz to i64
  %i.tf = trunc nuw i64 %indvars.iv1016 to i32    ; 2 uses
  br label %bb.bs

._crit_edge:                                      ; preds = %bb.bs, %bb.br
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sx, i64 44
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !77 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sx, i64 48 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !75
  %.not497886 = icmp sgt i32 %i.th, %i.tj
  br i1 %.not497886, label %._crit_edge890, label %.lr.ph889

.lr.ph889:                                        ; preds = %._crit_edge
  %i.tk = load ptr, ptr %i.sj, align 8, !tbaa !93
  %i.tl = load ptr, ptr %i.sk, align 8, !tbaa !94
  %i.tm = sext i32 %i.th to i64
  %i.tn = trunc nuw i64 %indvars.iv1016 to i32    ; 2 uses
  br label %bb.bt

bb.bs:                                            ; preds = %.lr.ph885, %bb.bs
  %indvars.iv1010.a = phi i64 [ %i.te, %.lr.ph885 ], [ %indvars.iv.next1011.a, %bb.bs ] ; 3 uses
  %i.to = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %indvars.iv1010.a ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !51 ; 2 uses
  %i.tq = add i32 %i.tp, 1
  store i32 %i.tq, ptr %i.to, align 4, !tbaa !51
  %i.tr = zext i32 %i.tp to i64                   ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.tr
  store i32 %i.tf, ptr %i.ts, align 4, !tbaa !51
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tr
  store i32 %i.tf, ptr %i.tt, align 4, !tbaa !51
  %indvars.iv.next1011.a = add nsw i64 %indvars.iv1010.a, 1
  %i.tu = load i32, ptr %i.ta, align 8, !tbaa !71
  %i.tv = sext i32 %i.tu to i64
  %.not496.not = icmp slt i64 %indvars.iv1010.a, %i.tv
  br i1 %.not496.not, label %bb.bs, label %._crit_edge, !llvm.loop !95

._crit_edge890:                                   ; preds = %bb.bt, %._crit_edge
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1 ; 2 uses
  %exitcond1021.not = icmp eq i64 %indvars.iv.next1017, %wide.trip.count
  br i1 %exitcond1021.not, label %.preheader, label %bb.br, !llvm.loop !96

bb.bt:                                            ; preds = %.lr.ph889, %bb.bt
  %indvars.iv1013 = phi i64 [ %i.tm, %.lr.ph889 ], [ %indvars.iv.next1014, %bb.bt ] ; 3 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %indvars.iv1013 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !51 ; 2 uses
  %i.ty = add i32 %i.tx, 1
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !51
  %i.tz = zext i32 %i.tx to i64                   ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.tz
  store i32 %i.tn, ptr %i.ua, align 4, !tbaa !51
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.tz
  store i32 %i.tn, ptr %i.ub, align 4, !tbaa !51
  %indvars.iv.next1014 = add nsw i64 %indvars.iv1013, 1
  %i.uc = load i32, ptr %i.ti, align 8, !tbaa !75
  %i.ud = sext i32 %i.uc to i64
  %.not497.not = icmp slt i64 %indvars.iv1013, %i.ud
  br i1 %.not497.not, label %bb.bt, label %._crit_edge890, !llvm.loop !97

.preheader:                                       ; preds = %._crit_edge890, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit"
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit" ], [ 0, %._crit_edge890 ] ; 3 uses
  %i.ue = load ptr, ptr %i.ls, align 8, !tbaa !79
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %indvars.iv1022
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !51 ; 3 uses
  %i.uh = load ptr, ptr %i.ic, align 8, !tbaa !67
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv1022
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !51 ; 2 uses
  %i.uk = load ptr, ptr %i.sh, align 8, !tbaa !66
  %i.ul = load i32, ptr %i.nm, align 4, !tbaa !57
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ul, i32 %i.ug)
  %.sroa.speculated.i.i586 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.uj) ; 3 uses
  %i.um = zext i32 %i.ug to i64                   ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.um ; 5 uses
  %.not.i589 = icmp eq i32 %.sroa.speculated.i.i586, 0
  br i1 %.not.i589, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", label %bb.bu, !prof !36

bb.bu:                                            ; preds = %.preheader
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i586 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_1EvPT_mT0_"(ptr noundef %i.un, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i, ptr %i.sg)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 2
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 %.idx.i.i
  %.not2.i = icmp eq i32 %.sroa.speculated.i.i586, 1
  br i1 %.not2.i, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.bu
  %.01519.i.i = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %.preheader.preheader.i.i
  %.01520.i.i = phi ptr [ %.015.i.i, %.critedge.i.i ], [ %.01519.i.i, %.preheader.preheader.i.i ] ; 4 uses
  %2 = icmp ugt ptr %.01520.i.i, %i.un
  br i1 %2, label %.lr.ph.preheader.i.i, label %.critedge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %.0.val.pre.i.i = load i32, ptr %.01520.i.i, align 4, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i = zext i32 %.0.val.pre.i.i to i64
  %.phi.trans.insert22.i.i = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert23.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.i.i, i64 8
  %.pre.i.i = load double, ptr %.phi.trans.insert23.i.i, align 8, !tbaa !98
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.up, %bb.bv ], [ %.01520.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.up = getelementptr inbounds i8, ptr %.017.i.i, i64 -4 ; 4 uses
  %.val16.i.i = load i32, ptr %i.up, align 4, !tbaa !51 ; 2 uses
  %i.uq = zext i32 %.val16.i.i to i64
  %i.ur = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load double, ptr %i.us, align 8, !tbaa !98
  %i.uu = fcmp olt double %i.ut, %.pre.i.i
  br i1 %i.uu, label %bb.bv, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bv, %.lr.ph.i.i, %.preheader.i.i
  %.015.i.i = getelementptr inbounds nuw i8, ptr %.01520.i.i, i64 4 ; 2 uses
  %i.uv = icmp ult ptr %.015.i.i, %i.uo
  br i1 %i.uv, label %.preheader.i.i, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", !llvm.loop !99

bb.bv:                                            ; preds = %.lr.ph.i.i
  store i32 %.0.val.pre.i.i, ptr %i.up, align 4, !tbaa !51
  store i32 %.val16.i.i, ptr %.017.i.i, align 4, !tbaa !51
  %i.uw = icmp ugt ptr %i.up, %i.un
  br i1 %i.uw, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !100

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.i, %.preheader, %bb.bu
  %i.ux = load ptr, ptr %i.si, align 8, !tbaa !66
  %i.uy = load i32, ptr %i.nx, align 4, !tbaa !57
  %storemerge.i.i593 = tail call i32 @llvm.usub.sat.i32(i32 %i.uy, i32 %i.ug)
  %.sroa.speculated.i.i594 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i593, i32 %i.uj) ; 3 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.um ; 5 uses
  %.not.i598 = icmp eq i32 %.sroa.speculated.i.i594, 0
  br i1 %.not.i598, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", label %bb.bw, !prof !36

bb.bw:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit"
  %.sroa.3.8.insert.ext.i.i595 = zext i32 %.sroa.speculated.i.i594 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_2EvPT_mT0_"(ptr noundef %i.uz, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i595, ptr %i.sg)
  %.idx.i.i599 = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i595, 2
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.idx.i.i599
  %.not2.i600 = icmp eq i32 %.sroa.speculated.i.i594, 1
  br i1 %.not2.i600, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i601

.preheader.preheader.i.i601:                      ; preds = %bb.bw
  %.01519.i.i602 = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  br label %.preheader.i.i603

.preheader.i.i603:                                ; preds = %.critedge.i.i605, %.preheader.preheader.i.i601
  %.01520.i.i604 = phi ptr [ %.015.i.i606, %.critedge.i.i605 ], [ %.01519.i.i602, %.preheader.preheader.i.i601 ] ; 4 uses
  %3 = icmp ugt ptr %.01520.i.i604, %i.uz
  br i1 %3, label %.lr.ph.preheader.i.i611, label %.critedge.i.i605

.lr.ph.preheader.i.i611:                          ; preds = %.preheader.i.i603
  %.0.val.pre.i.i612 = load i32, ptr %.01520.i.i604, align 4, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i613 = zext i32 %.0.val.pre.i.i612 to i64
  %.phi.trans.insert22.i.i614 = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i613
  %.pre.i.i615 = load double, ptr %.phi.trans.insert22.i.i614, align 8, !tbaa !101
  br label %.lr.ph.i.i616

.lr.ph.i.i616:                                    ; preds = %bb.bx, %.lr.ph.preheader.i.i611
  %.017.i.i617 = phi ptr [ %i.vb, %bb.bx ], [ %.01520.i.i604, %.lr.ph.preheader.i.i611 ] ; 2 uses
  %i.vb = getelementptr inbounds i8, ptr %.017.i.i617, i64 -4 ; 4 uses
  %.val16.i.i618 = load i32, ptr %i.vb, align 4, !tbaa !51 ; 2 uses
  %i.vc = zext i32 %.val16.i.i618 to i64
  %i.vd = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.vc
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !101
  %i.vf = fcmp ogt double %i.ve, %.pre.i.i615
  br i1 %i.vf, label %bb.bx, label %.critedge.i.i605

.critedge.i.i605:                                 ; preds = %bb.bx, %.lr.ph.i.i616, %.preheader.i.i603
  %.015.i.i606 = getelementptr inbounds nuw i8, ptr %.01520.i.i604, i64 4 ; 2 uses
  %i.vg = icmp ult ptr %.015.i.i606, %i.va
  br i1 %i.vg, label %.preheader.i.i603, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", !llvm.loop !102

bb.bx:                                            ; preds = %.lr.ph.i.i616
  store i32 %.0.val.pre.i.i612, ptr %i.vb, align 4, !tbaa !51
  store i32 %.val16.i.i618, ptr %.017.i.i617, align 4, !tbaa !51
  %i.vh = icmp ugt ptr %i.vb, %i.uz
  br i1 %i.vh, label %.lr.ph.i.i616, label %.critedge.i.i605, !llvm.loop !103

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.i605, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", %bb.bw
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %i.ie
  br i1 %exitcond1026.not, label %.preheader859, label %.preheader, !llvm.loop !104

.preheader859:                                    ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit"
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit" ], [ 0, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit" ] ; 3 uses
  %i.vi = load ptr, ptr %i.mc, align 8, !tbaa !80
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv1027
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !51 ; 3 uses
  %i.vl = load ptr, ptr %i.ig, align 8, !tbaa !68
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv1027
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !51 ; 2 uses
  %i.vo = load ptr, ptr %i.sj, align 8, !tbaa !66
  %i.vp = load i32, ptr %i.oj, align 4, !tbaa !57
  %storemerge.i.i622 = tail call i32 @llvm.usub.sat.i32(i32 %i.vp, i32 %i.vk)
  %.sroa.speculated.i.i623 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i622, i32 %i.vn) ; 3 uses
  %i.vq = zext i32 %i.vk to i64                   ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vq ; 5 uses
  %.not.i627 = icmp eq i32 %.sroa.speculated.i.i623, 0
  br i1 %.not.i627, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", label %bb.by, !prof !36

bb.by:                                            ; preds = %.preheader859
  %.sroa.3.8.insert.ext.i.i624 = zext i32 %.sroa.speculated.i.i623 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_3EvPT_mT0_"(ptr noundef %i.vr, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i624, ptr %i.sg)
  %.idx.i.i628 = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i624, 2
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.idx.i.i628
  %.not2.i629 = icmp eq i32 %.sroa.speculated.i.i623, 1
  br i1 %.not2.i629, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i630

.preheader.preheader.i.i630:                      ; preds = %bb.by
  %.01519.i.i631 = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  br label %.preheader.i.i632

.preheader.i.i632:                                ; preds = %.critedge.i.i634, %.preheader.preheader.i.i630
  %.01520.i.i633 = phi ptr [ %.015.i.i635, %.critedge.i.i634 ], [ %.01519.i.i631, %.preheader.preheader.i.i630 ] ; 4 uses
  %4 = icmp ugt ptr %.01520.i.i633, %i.vr
  br i1 %4, label %.lr.ph.preheader.i.i640, label %.critedge.i.i634

.lr.ph.preheader.i.i640:                          ; preds = %.preheader.i.i632
  %.0.val.pre.i.i641 = load i32, ptr %.01520.i.i633, align 4, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i642 = zext i32 %.0.val.pre.i.i641 to i64
  %.phi.trans.insert22.i.i643 = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i642
  %.phi.trans.insert23.i.i644 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.i.i643, i64 24
  %.pre.i.i645 = load double, ptr %.phi.trans.insert23.i.i644, align 8, !tbaa !105
  br label %.lr.ph.i.i646

.lr.ph.i.i646:                                    ; preds = %bb.bz, %.lr.ph.preheader.i.i640
  %.017.i.i647 = phi ptr [ %i.vt, %bb.bz ], [ %.01520.i.i633, %.lr.ph.preheader.i.i640 ] ; 2 uses
  %i.vt = getelementptr inbounds i8, ptr %.017.i.i647, i64 -4 ; 4 uses
  %.val16.i.i648 = load i32, ptr %i.vt, align 4, !tbaa !51 ; 2 uses
  %i.vu = zext i32 %.val16.i.i648 to i64
  %i.vv = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !105
  %i.vy = fcmp olt double %i.vx, %.pre.i.i645
  br i1 %i.vy, label %bb.bz, label %.critedge.i.i634

.critedge.i.i634:                                 ; preds = %bb.bz, %.lr.ph.i.i646, %.preheader.i.i632
  %.015.i.i635 = getelementptr inbounds nuw i8, ptr %.01520.i.i633, i64 4 ; 2 uses
  %i.vz = icmp ult ptr %.015.i.i635, %i.vs
  br i1 %i.vz, label %.preheader.i.i632, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", !llvm.loop !106

bb.bz:                                            ; preds = %.lr.ph.i.i646
  store i32 %.0.val.pre.i.i641, ptr %i.vt, align 4, !tbaa !51
  store i32 %.val16.i.i648, ptr %.017.i.i647, align 4, !tbaa !51
  %i.wa = icmp ugt ptr %i.vt, %i.vr
  br i1 %i.wa, label %.lr.ph.i.i646, label %.critedge.i.i634, !llvm.loop !107

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.i634, %.preheader859, %bb.by
  %i.wb = load ptr, ptr %i.sk, align 8, !tbaa !66
  %i.wc = load i32, ptr %i.ou, align 4, !tbaa !57
  %storemerge.i.i652 = tail call i32 @llvm.usub.sat.i32(i32 %i.wc, i32 %i.vk)
  %.sroa.speculated.i.i653 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i652, i32 %i.vn) ; 3 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.vq ; 5 uses
  %.not.i657 = icmp eq i32 %.sroa.speculated.i.i653, 0
  br i1 %.not.i657, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit", label %bb.ca, !prof !36

bb.ca:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit"
  %.sroa.3.8.insert.ext.i.i654 = zext i32 %.sroa.speculated.i.i653 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_4EvPT_mT0_"(ptr noundef %i.wd, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i654, ptr %i.sg)
  %.idx.i.i658 = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i654, 2
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.idx.i.i658
  %.not2.i659 = icmp eq i32 %.sroa.speculated.i.i653, 1
  br i1 %.not2.i659, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i660

.preheader.preheader.i.i660:                      ; preds = %bb.ca
  %.01519.i.i661 = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  br label %.preheader.i.i662

.preheader.i.i662:                                ; preds = %.critedge.i.i664, %.preheader.preheader.i.i660
  %.01520.i.i663 = phi ptr [ %.015.i.i665, %.critedge.i.i664 ], [ %.01519.i.i661, %.preheader.preheader.i.i660 ] ; 4 uses
  %5 = icmp ugt ptr %.01520.i.i663, %i.wd
  br i1 %5, label %.lr.ph.preheader.i.i670, label %.critedge.i.i664

.lr.ph.preheader.i.i670:                          ; preds = %.preheader.i.i662
  %.0.val.pre.i.i671 = load i32, ptr %.01520.i.i663, align 4, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i672 = zext i32 %.0.val.pre.i.i671 to i64
  %.phi.trans.insert22.i.i673 = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i672
  %.phi.trans.insert23.i.i674 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.i.i673, i64 16
  %.pre.i.i675 = load double, ptr %.phi.trans.insert23.i.i674, align 8, !tbaa !108
  br label %.lr.ph.i.i676

.lr.ph.i.i676:                                    ; preds = %bb.cb, %.lr.ph.preheader.i.i670
  %.017.i.i677 = phi ptr [ %i.wf, %bb.cb ], [ %.01520.i.i663, %.lr.ph.preheader.i.i670 ] ; 2 uses
  %i.wf = getelementptr inbounds i8, ptr %.017.i.i677, i64 -4 ; 4 uses
  %.val16.i.i678 = load i32, ptr %i.wf, align 4, !tbaa !51 ; 2 uses
  %i.wg = zext i32 %.val16.i.i678 to i64
  %i.wh = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !108
  %i.wk = fcmp ogt double %i.wj, %.pre.i.i675
  br i1 %i.wk, label %bb.cb, label %.critedge.i.i664

.critedge.i.i664:                                 ; preds = %bb.cb, %.lr.ph.i.i676, %.preheader.i.i662
  %.015.i.i665 = getelementptr inbounds nuw i8, ptr %.01520.i.i663, i64 4 ; 2 uses
  %i.wl = icmp ult ptr %.015.i.i665, %i.we
  br i1 %i.wl, label %.preheader.i.i662, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit", !llvm.loop !109

bb.cb:                                            ; preds = %.lr.ph.i.i676
  store i32 %.0.val.pre.i.i671, ptr %i.wf, align 4, !tbaa !51
  store i32 %.val16.i.i678, ptr %.017.i.i677, align 4, !tbaa !51
  %i.wm = icmp ugt ptr %i.wf, %i.wd
  br i1 %i.wm, label %.lr.ph.i.i676, label %.critedge.i.i664, !llvm.loop !110

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.i664, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", %bb.ca
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 1 ; 2 uses
  %exitcond1031.not = icmp eq i64 %indvars.iv.next1028, %i.ii
  br i1 %exitcond1031.not, label %bb.cc, label %.preheader859, !llvm.loop !111

bb.cc:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit"
  %i.wn = add nuw i32 %.lcssa1213, %.lcssa1215    ; 2 uses
  %i.wo = shl nuw i32 %i.wn, 1
  %i.wp = icmp slt i32 %i.wn, 0
  br i1 %i.wp, label %.critedge501, label %.preheader858, !prof !36

.preheader858:                                    ; preds = %bb.cc
  %.not953 = icmp eq i32 %i.au, 1
  br i1 %.not953, label %._crit_edge896, label %.lr.ph895.preheader

.lr.ph895.preheader:                              ; preds = %.preheader858
  %umax1035 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 2) ; 2 uses
  %wide.trip.count1036 = zext nneg i32 %umax1035 to i64
  %i.wq = add nsw i64 %wide.trip.count1036, -1    ; 2 uses
  %xtraiter1230.a = and i64 %i.wq, 3              ; 3 uses
  %i.wr = add nsw i32 %umax1035, -2
  %i.ws = icmp ult i32 %i.wr, 3
  br i1 %i.ws, label %.lr.ph895.epil.preheader, label %.lr.ph895.preheader.new

.lr.ph895.preheader.new:                          ; preds = %.lr.ph895.preheader
  %unroll_iter1234 = and i64 %i.wq, -4
  br label %.lr.ph895

._crit_edge896.loopexit.unr-lcssa:                ; preds = %.lr.ph895
  %lcmp.mod1231.not = icmp eq i64 %xtraiter1230.a, 0
  br i1 %lcmp.mod1231.not, label %._crit_edge896, label %.lr.ph895.epil.preheader

.lr.ph895.epil.preheader:                         ; preds = %._crit_edge896.loopexit.unr-lcssa, %.lr.ph895.preheader
  %indvars.iv1032.epil.init = phi i64 [ 1, %.lr.ph895.preheader ], [ %indvars.iv.next1033.3, %._crit_edge896.loopexit.unr-lcssa ]
  %.0464894.epil.init = phi i32 [ 0, %.lr.ph895.preheader ], [ %spec.select.3, %._crit_edge896.loopexit.unr-lcssa ]
  %lcmp.mod1233 = icmp ne i64 %xtraiter1230.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod1233)
  br label %.lr.ph895.epil

.lr.ph895.epil:                                   ; preds = %.lr.ph895.epil, %.lr.ph895.epil.preheader
  %indvars.iv1032.epil = phi i64 [ %indvars.iv1032.epil.init, %.lr.ph895.epil.preheader ], [ %indvars.iv.next1033.epil, %.lr.ph895.epil ] ; 2 uses
  %.0464894.epil = phi i32 [ %.0464894.epil.init, %.lr.ph895.epil.preheader ], [ %spec.select.epil, %.lr.ph895.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph895.epil.preheader ], [ %epil.iter.next, %.lr.ph895.epil ]
  %i.wt = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1032.epil
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.wv = load i8, ptr %i.wu, align 8, !tbaa !112, !range !27, !noundef !28
  %i.ww = zext nneg i8 %i.wv to i32
  %spec.select.epil = add i32 %.0464894.epil, %i.ww ; 2 uses
  %indvars.iv.next1033.epil = add nuw nsw i64 %indvars.iv1032.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1230.a
  br i1 %epil.iter.cmp.not, label %._crit_edge896, label %.lr.ph895.epil, !llvm.loop !114

._crit_edge896:                                   ; preds = %._crit_edge896.loopexit.unr-lcssa, %.lr.ph895.epil, %.preheader858
  %.0464.lcssa = phi i32 [ 0, %.preheader858 ], [ %spec.select.3, %._crit_edge896.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph895.epil ]
  %i.wx = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.au, i32 %.0464.lcssa) ; 2 uses
  %i.wy = extractvalue { i32, i1 } %i.wx, 1
  br i1 %i.wy, label %.critedge501, label %bb.cd, !prof !36

.lr.ph895:                                        ; preds = %.lr.ph895, %.lr.ph895.preheader.new
  %indvars.iv1032 = phi i64 [ 1, %.lr.ph895.preheader.new ], [ %indvars.iv.next1033.3, %.lr.ph895 ] ; 5 uses
  %.0464894 = phi i32 [ 0, %.lr.ph895.preheader.new ], [ %spec.select.3, %.lr.ph895 ]
  %niter1235 = phi i64 [ 0, %.lr.ph895.preheader.new ], [ %niter1235.next.3, %.lr.ph895 ]
  %i.wz = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1032
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 48
  %i.xb = load i8, ptr %i.xa, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xc = zext nneg i8 %i.xb to i32
  %spec.select = add i32 %.0464894, %i.xc
  %i.xd = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1032
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 104
  %i.xf = load i8, ptr %i.xe, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xg = zext nneg i8 %i.xf to i32
  %spec.select.1 = add i32 %spec.select, %i.xg
  %i.xh = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1032
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 160
  %i.xj = load i8, ptr %i.xi, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xk = zext nneg i8 %i.xj to i32
  %spec.select.2 = add i32 %spec.select.1, %i.xk
  %i.xl = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1032
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 216
  %i.xn = load i8, ptr %i.xm, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xo = zext nneg i8 %i.xn to i32
  %spec.select.3 = add i32 %spec.select.2, %i.xo  ; 3 uses
  %indvars.iv.next1033.3 = add nuw nsw i64 %indvars.iv1032, 4 ; 2 uses
  %niter1235.next.3 = add nuw i64 %niter1235, 4   ; 2 uses
  %niter1235.ncmp.3 = icmp eq i64 %niter1235.next.3, %unroll_iter1234
  br i1 %niter1235.ncmp.3, label %._crit_edge896.loopexit.unr-lcssa, label %.lr.ph895, !llvm.loop !115

bb.cd:                                            ; preds = %._crit_edge896
  %i.xp = extractvalue { i32, i1 } %i.wx, 0
  %i.xq = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xp, i32 1) ; 2 uses
  %i.xr = extractvalue { i32, i1 } %i.xq, 1
  %i.xs = extractvalue { i32, i1 } %i.xq, 0
  br i1 %i.xr, label %.critedge501, label %bb.ce, !prof !36

bb.ce:                                            ; preds = %bb.cd
  %i.xt = add nuw nsw i32 %i.fl, %i.hq
  %i.xu = add nuw nsw i32 %i.xt, 2                ; 2 uses
  %i.xv = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xu, i32 %i.wo) ; 2 uses
  %i.xw = extractvalue { i32, i1 } %i.xv, 1
  %i.xx = extractvalue { i32, i1 } %i.xv, 0       ; 2 uses
  br i1 %i.xw, label %.critedge501, label %bb.cf, !prof !36

bb.cf:                                            ; preds = %bb.ce
  %i.xy = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xx, i32 %i.xs) ; 2 uses
  %i.xz = extractvalue { i32, i1 } %i.xy, 1
  %i.ya = extractvalue { i32, i1 } %i.xy, 0       ; 2 uses
  %i.yb = icmp ugt i32 %i.ya, 65536
  %or.cond = or i1 %i.xz, %i.yb
  br i1 %or.cond, label %.critedge501, label %bb.cg, !prof !43

bb.cg:                                            ; preds = %bb.cf
  %i.yc = shl nuw nsw i32 %i.ya, 3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !116
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !118
  %i.yf = call noundef ptr @_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc(ptr noundef %i.ye, i32 noundef %i.yc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 23 uses
  %.not493 = icmp eq ptr %i.yf, null
  br i1 %.not493, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit687, label %.cont704, !prof !36

.cont704:                                         ; preds = %bb.cg
  store <4 x i16> %i.ez, ptr %i.yf, align 2, !tbaa !119
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.yh = shufflevector <2 x i32> %i.fk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.yi = trunc nuw nsw <2 x i32> %i.yh to <2 x i16>
  store <2 x i16> %i.yi, ptr %i.yg, align 2, !tbaa !119
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yf, i64 12
  %i.yl = load <2 x i32>, ptr %i.yj, align 8, !tbaa !51
  %i.ym = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yl, <2 x i32> splat (i32 -32768))
  %i.yn = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ym, <2 x i32> splat (i32 32767))
  %i.yo = trunc nsw <2 x i32> %i.yn to <2 x i16>
  store <2 x i16> %i.yo, ptr %i.yk, align 2, !tbaa !119
  %i.yp = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i32 noundef %i.au)
  br i1 %i.yp, label %.preheader857, label %bb.ch, !prof !29

.preheader857:                                    ; preds = %.cont704
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.cm

bb.ch:                                            ; preds = %.cont704
  %i.yr = load ptr, ptr %i.yd, align 8, !tbaa !118 ; 3 uses
  %.not9.i685 = icmp eq ptr %i.yr, null
  br i1 %.not9.i685, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 40
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !121
  %i.yu = icmp eq ptr %i.yt, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.yu, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !124
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !125
  %.not10.i686 = icmp eq ptr %i.yf, %i.yx
  br i1 %.not10.i686, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit687, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  call void @hb_free(ptr noundef nonnull %i.yf) #16
  br label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit687

bb.cl:                                            ; preds = %bb.ct
  %i.yy = load ptr, ptr %i.ls, align 8, !tbaa !79
  %i.yz = load ptr, ptr %i.ic, align 8, !tbaa !67
  %foldExtExtBinop = fadd nnan <2 x double> %i.fc, %i.ff
  %i.za = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.zb = fmul nnan double %i.za, 5.000000e-01    ; 2 uses
  %i.zc = fmul nnan double %i.zb, 4.000000e+00
  %i.zd = call double @llvm.round.f64(double %i.zc)
  br label %bb.cu

bb.cm:                                            ; preds = %.preheader857, %bb.ct
  %indvars.iv1038 = phi i64 [ 0, %.preheader857 ], [ %indvars.iv.next1039, %bb.ct ] ; 4 uses
  %.0461897 = phi i32 [ %i.xx, %.preheader857 ], [ %i.aar, %bb.ct ] ; 5 uses
  %i.ze = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1038 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 48
  %i.zg = load i8, ptr %i.zf, align 8, !tbaa !112, !range !27, !noundef !28
  %i.zh = trunc nuw i8 %i.zg to i1
  br i1 %i.zh, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.zi = load ptr, ptr %i.yq, align 8, !tbaa !127 ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv1038
  store i32 %.0461897, ptr %i.zj, align 4, !tbaa !51
  %i.zk = zext i32 %.0461897 to i64
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.zk
  %i.zm = load <4 x double>, ptr %i.ze, align 8, !tbaa !40
  %i.zn = fmul <4 x double> %i.zm, splat (double 4.000000e+00)
  %i.zo = call <4 x double> @llvm.round.v4f64(<4 x double> %i.zn)
end_hunk_0
