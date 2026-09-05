Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/inflate?download=true
inline.NumInlined: 25
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@inflate:bb.a
  %i.ql = zext i8 %i.qk to i64
  %i.qm = shl nuw nsw i64 %i.ql, %i.qg
  %i.qn = add i64 %i.qm, %i.qc                    ; 3 uses
  %indvars.iv.next2823 = add nuw nsw i64 %i.qg, 8 ; 3 uses
  %.not = icmp eq i32 %i.qf, 24
  br i1 %.not, label %._crit_edge2106.loopexit, label %.lr.ph2105.1

.lr.ph2105.1:                                     ; preds = %bb.dz
  %i.qo = icmp eq i32 %i.qi, 0
  br i1 %i.qo, label %.loopexit1276.loopexit2350, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph2105.1
  %i.qp = add i32 %.0991, -2                      ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.01055, i64 2 ; 3 uses
  %i.qr = load i8, ptr %i.qj, align 1, !tbaa !45
  %i.qs = zext i8 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, %indvars.iv.next2823
  %i.qu = add i64 %i.qt, %i.qn                    ; 3 uses
  %indvars.iv.next2823.1 = add nuw nsw i64 %i.qg, 16 ; 3 uses
  %i.qv = icmp samesign ult i32 %i.qf, 16
  br i1 %i.qv, label %.lr.ph2105.2, label %._crit_edge2106.loopexit

.lr.ph2105.2:                                     ; preds = %bb.ea
  %i.qw = icmp eq i32 %i.qp, 0
  br i1 %i.qw, label %.loopexit1276.loopexit2350, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph2105.2
  %i.qx = add i32 %.0991, -3                      ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.01055, i64 3 ; 3 uses
  %i.qz = load i8, ptr %i.qq, align 1, !tbaa !45
  %i.ra = zext i8 %i.qz to i64
  %i.rb = shl nuw nsw i64 %i.ra, %indvars.iv.next2823.1
  %i.rc = add i64 %i.rb, %i.qu                    ; 3 uses
  %indvars.iv.next2823.2 = add nuw nsw i64 %i.qg, 24 ; 3 uses
  %i.rd = icmp eq i32 %i.qf, 0
  br i1 %i.rd, label %.lr.ph2105.3, label %._crit_edge2106.loopexit

.lr.ph2105.3:                                     ; preds = %bb.eb
  %i.re = icmp eq i32 %i.qx, 0
  br i1 %i.re, label %.loopexit1276.loopexit2350, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph2105.3
  %i.rf = add i32 %.0991, -4
  %i.rg = getelementptr inbounds nuw i8, ptr %.01055, i64 4
  %i.rh = load i8, ptr %i.qy, align 1, !tbaa !45
  %i.ri = zext i8 %i.rh to i64
  %i.rj = shl nuw nsw i64 %i.ri, %indvars.iv.next2823.2
  %i.rk = add i64 %i.rj, %i.rc
  br label %._crit_edge2106.loopexit

._crit_edge2106.loopexit:                         ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz
  %.lcssa4159.a = phi i32 [ %i.qi, %bb.dz ], [ %i.qp, %bb.ea ], [ %i.qx, %bb.eb ], [ %i.rf, %bb.ec ]
  %.lcssa4158.a = phi ptr [ %i.qj, %bb.dz ], [ %i.qq, %bb.ea ], [ %i.qy, %bb.eb ], [ %i.rg, %bb.ec ]
  %.lcssa4157 = phi i64 [ %i.qn, %bb.dz ], [ %i.qu, %bb.ea ], [ %i.rc, %bb.eb ], [ %i.rk, %bb.ec ]
  %indvars.iv.next2823.lcssa = phi i64 [ %indvars.iv.next2823, %bb.dz ], [ %indvars.iv.next2823.1, %bb.ea ], [ %indvars.iv.next2823.2, %bb.eb ], [ 32, %bb.ec ]
  %i.rl = trunc nuw nsw i64 %indvars.iv.next2823.lcssa to i32
  br label %._crit_edge2106

._crit_edge2106:                                  ; preds = %._crit_edge2106.loopexit, %bb.dy
  %.251080.lcssa = phi ptr [ %.01055, %bb.dy ], [ %.lcssa4158.a, %._crit_edge2106.loopexit ] ; 3 uses
  %.251016.lcssa = phi i32 [ %.0991, %bb.dy ], [ %.lcssa4159.a, %._crit_edge2106.loopexit ] ; 3 uses
  %.21949.lcssa = phi i64 [ %i.qc, %bb.dy ], [ %.lcssa4157, %._crit_edge2106.loopexit ] ; 4 uses
  %.21.lcssa = phi i32 [ %i.qd, %bb.dy ], [ %i.rl, %._crit_edge2106.loopexit ]
  %i.rm = and i64 %.21949.lcssa, 65535
  %i.rn = lshr i64 %.21949.lcssa, 16
  %i.ro = xor i64 %i.rn, %i.rm
  %.not1205 = icmp eq i64 %i.ro, 65535
  br i1 %.not1205, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge2106
  store ptr @.str.7, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !22
  br label %.thread

bb.ee:                                            ; preds = %._crit_edge2106
  %i.rp = trunc i64 %.21949.lcssa to i32
  %i.rq = and i32 %i.rp, 65535
  store i32 %i.rq, ptr %i.an, align 4, !tbaa !52
  store i32 16194, ptr %i.m, align 8, !tbaa !22
  br i1 %i.bb, label %.loopexit1276, label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.k
  %.261081 = phi ptr [ %.251080.lcssa, %bb.ee ], [ %.01055, %bb.k ]
  %.261017 = phi i32 [ %.251016.lcssa, %bb.ee ], [ %.0991, %bb.k ]
  %.22950 = phi i64 [ 0, %bb.ee ], [ %.0928, %bb.k ]
  %.22 = phi i32 [ 0, %bb.ee ], [ %.0917, %bb.k ]
  store i32 16195, ptr %i.m, align 8, !tbaa !22
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.k
  %.271082 = phi ptr [ %.261081, %bb.ef ], [ %.01055, %bb.k ] ; 4 uses
  %.271018 = phi i32 [ %.261017, %bb.ef ], [ %.0991, %bb.k ] ; 4 uses
  %.23951 = phi i64 [ %.22950, %bb.ef ], [ %.0928, %bb.k ] ; 3 uses
  %.23 = phi i32 [ %.22, %bb.ef ], [ %.0917, %bb.k ] ; 3 uses
  %i.rr = load i32, ptr %i.an, align 4, !tbaa !52 ; 2 uses
  %.not1206 = icmp eq i32 %i.rr, 0
  br i1 %.not1206, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %spec.select1259 = call i32 @llvm.umin.i32(i32 %i.rr, i32 %.271018)
  %.4905 = call i32 @llvm.umin.i32(i32 %spec.select1259, i32 %.0989) ; 5 uses
  %i.rs = icmp eq i32 %.4905, 0
  br i1 %i.rs, label %.loopexit1276, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rt = zext i32 %.4905 to i64                  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01052, ptr align 1 %.271082, i64 %i.rt, i1 false)
  %i.ru = sub nuw i32 %.271018, %.4905
  %i.rv = getelementptr inbounds nuw i8, ptr %.271082, i64 %i.rt
  %i.rw = sub nuw i32 %.0989, %.4905
  %i.rx = getelementptr inbounds nuw i8, ptr %.01052, i64 %i.rt
  %i.ry = load i32, ptr %i.an, align 4, !tbaa !52
  %i.rz = sub i32 %i.ry, %.4905
  store i32 %i.rz, ptr %i.an, align 4, !tbaa !52
  br label %.thread

bb.ej:                                            ; preds = %bb.eg
  store i32 16191, ptr %i.m, align 8, !tbaa !22
  br label %.thread

bb.ek:                                            ; preds = %.lr.ph1771.preheader
  %i.sa = add i32 %.0991, -1                      ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.01055, i64 1 ; 3 uses
  %i.sc = load i8, ptr %.01055, align 1, !tbaa !45
  %i.sd = zext i8 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.sd, %i.bu
  %i.sf = add i64 %i.se, %.0928                   ; 3 uses
  %indvars.iv.next2783 = add nuw nsw i64 %i.bu, 8 ; 3 uses
  %i.sg = icmp ult i32 %.0917, 6
  br i1 %i.sg, label %.lr.ph1771.1, label %._crit_edge1772.loopexit

.lr.ph1771.1:                                     ; preds = %bb.ek
  %i.sh = icmp eq i32 %i.sa, 0
  br i1 %i.sh, label %.loopexit1276.loopexit2358, label %bb.el

bb.el:                                            ; preds = %.lr.ph1771.1
  %i.si = add i32 %.0991, -2
  %i.sj = getelementptr inbounds nuw i8, ptr %.01055, i64 2
  %i.sk = load i8, ptr %i.sb, align 1, !tbaa !45
  %i.sl = zext i8 %i.sk to i64
  %i.sm = shl nuw nsw i64 %i.sl, %indvars.iv.next2783
  %i.sn = add i64 %i.sm, %i.sf
  %indvars.iv.next2783.1 = or disjoint i64 %i.bu, 16
  br label %._crit_edge1772.loopexit

._crit_edge1772.loopexit:                         ; preds = %bb.el, %bb.ek
  %.lcssa4024.a = phi i32 [ %i.sa, %bb.ek ], [ %i.si, %bb.el ]
  %.lcssa4023.a = phi ptr [ %i.sb, %bb.ek ], [ %i.sj, %bb.el ]
  %.lcssa4022 = phi i64 [ %i.sf, %bb.ek ], [ %i.sn, %bb.el ]
  %indvars.iv.next2783.lcssa = phi i64 [ %indvars.iv.next2783, %bb.ek ], [ %indvars.iv.next2783.1, %bb.el ]
  %i.so = trunc nuw nsw i64 %indvars.iv.next2783.lcssa to i32
  br label %._crit_edge1772

._crit_edge1772:                                  ; preds = %._crit_edge1772.loopexit, %.preheader1313
  %.281083.lcssa = phi ptr [ %.01055, %.preheader1313 ], [ %.lcssa4023.a, %._crit_edge1772.loopexit ] ; 2 uses
  %.281019.lcssa = phi i32 [ %.0991, %.preheader1313 ], [ %.lcssa4024.a, %._crit_edge1772.loopexit ] ; 2 uses
  %.24952.lcssa = phi i64 [ %.0928, %.preheader1313 ], [ %.lcssa4022, %._crit_edge1772.loopexit ] ; 2 uses
  %.24.lcssa = phi i32 [ %.0917, %.preheader1313 ], [ %i.so, %._crit_edge1772.loopexit ]
  %i.sp = trunc i64 %.24952.lcssa to i32          ; 3 uses
  %i.sq = and i32 %i.sp, 31                       ; 2 uses
  %i.sr = add nuw nsw i32 %i.sq, 257
  store i32 %i.sr, ptr %i.ao, align 4, !tbaa !96
  %i.ss = lshr i32 %i.sp, 5
  %i.st = and i32 %i.ss, 31                       ; 2 uses
  %i.su = add nuw nsw i32 %i.st, 1
  store i32 %i.su, ptr %i.ap, align 8, !tbaa !97
  %i.sv = lshr i32 %i.sp, 10
  %i.sw = and i32 %i.sv, 15
  %i.sx = add nuw nsw i32 %i.sw, 4                ; 2 uses
  store i32 %i.sx, ptr %i.aq, align 8, !tbaa !98
  %i.sy = lshr i64 %.24952.lcssa, 14              ; 2 uses
  %i.sz = add i32 %.24.lcssa, -14                 ; 2 uses
  %i.ta = icmp samesign ugt i32 %i.sq, 29
  %i.tb = icmp samesign ugt i32 %i.st, 29
  %or.cond1274 = select i1 %i.ta, i1 true, i1 %i.tb
  br i1 %or.cond1274, label %bb.em, label %.split.thread

bb.em:                                            ; preds = %._crit_edge1772
  store ptr @.str.8, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !22
  br label %.thread

.split.thread:                                    ; preds = %._crit_edge1772
  store i32 0, ptr %i.ar, align 4, !tbaa !80
  store i32 16197, ptr %i.m, align 8, !tbaa !22
  br label %.preheader1283.preheader

.split:                                           ; preds = %bb.k
  %.pre2854 = load i32, ptr %i.aq, align 8, !tbaa !98 ; 2 uses
  %.promoted.pre = load i32, ptr %i.ar, align 4, !tbaa !80 ; 3 uses
  %i.tc = icmp ult i32 %.promoted.pre, %.pre2854
  br i1 %i.tc, label %.preheader1283.preheader, label %.preheader1312

.preheader1283.preheader:                         ; preds = %.split.thread, %.split
  %.252979 = phi i32 [ %i.sz, %.split.thread ], [ %.0917, %.split ]
  %.259532978 = phi i64 [ %i.sy, %.split.thread ], [ %.0928, %.split ]
  %.2910202977 = phi i32 [ %.281019.lcssa, %.split.thread ], [ %.0991, %.split ]
  %.2910842976 = phi ptr [ %.281083.lcssa, %.split.thread ], [ %.01055, %.split ]
  %i.td = phi i32 [ %i.sx, %.split.thread ], [ %.pre2854, %.split ] ; 2 uses
  %.promoted2975 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %2 = zext i32 %.promoted2975 to i64
  %wide.trip.count = zext i32 %i.td to i64
  br label %.preheader1283

.preheader1312:                                   ; preds = %bb.en, %.split
  %.301085.lcssa = phi ptr [ %.01055, %.split ], [ %.311086.lcssa, %bb.en ] ; 2 uses
  %.301021.lcssa = phi i32 [ %.0991, %.split ], [ %.311022.lcssa, %bb.en ] ; 2 uses
  %.26954.lcssa = phi i64 [ %.0928, %.split ], [ %i.tx, %bb.en ] ; 2 uses
  %.26.lcssa = phi i32 [ %.0917, %.split ], [ %i.ty, %bb.en ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.td, %bb.en ] ; 2 uses
  %i.te = icmp ult i32 %.lcssa, 19
  br i1 %i.te, label %.lr.ph1941.preheader, label %bb.eo

.lr.ph1941.preheader:                             ; preds = %.preheader1312
  %i.tf = zext nneg i32 %.lcssa to i64
  br label %.lr.ph1941

.preheader1283:                                   ; preds = %.preheader1283.preheader, %bb.en
  %indvars.iv2785 = phi i64 [ %2, %.preheader1283.preheader ], [ %indvars.iv.next2786, %bb.en ] ; 2 uses
  %.261934 = phi i32 [ %.252979, %.preheader1283.preheader ], [ %i.ty, %bb.en ] ; 5 uses
  %.269541933 = phi i64 [ %.259532978, %.preheader1283.preheader ], [ %i.tx, %bb.en ] ; 3 uses
  %.3010211932 = phi i32 [ %.2910202977, %.preheader1283.preheader ], [ %.311022.lcssa, %bb.en ] ; 3 uses
  %.3010851931 = phi ptr [ %.2910842976, %.preheader1283.preheader ], [ %.311086.lcssa, %bb.en ] ; 4 uses
  %i.tg = icmp ult i32 %.261934, 3
  br i1 %i.tg, label %.lr.ph1781, label %bb.en

.lr.ph1781:                                       ; preds = %.preheader1283
  %i.th = icmp eq i32 %.3010211932, 0
  br i1 %i.th, label %.loopexit1276, label %._crit_edge1782

._crit_edge1782:                                  ; preds = %.lr.ph1781
  %i.ti = or disjoint i32 %.261934, 8
  %i.tj = add i32 %.3010211932, -1
  %i.tk = getelementptr inbounds nuw i8, ptr %.3010851931, i64 1
  %i.tl = load i8, ptr %.3010851931, align 1, !tbaa !45
  %i.tm = zext i8 %i.tl to i64
  %i.tn = zext nneg i32 %.261934 to i64
  %i.to = shl nuw nsw i64 %i.tm, %i.tn
  %i.tp = add i64 %i.to, %.269541933
  br label %bb.en

bb.en:                                            ; preds = %._crit_edge1782, %.preheader1283
  %.311086.lcssa = phi ptr [ %i.tk, %._crit_edge1782 ], [ %.3010851931, %.preheader1283 ] ; 2 uses
  %.311022.lcssa = phi i32 [ %i.tj, %._crit_edge1782 ], [ %.3010211932, %.preheader1283 ] ; 2 uses
  %.27955.lcssa = phi i64 [ %i.tp, %._crit_edge1782 ], [ %.269541933, %.preheader1283 ] ; 2 uses
  %.27.lcssa = phi i32 [ %i.ti, %._crit_edge1782 ], [ %.261934, %.preheader1283 ]
  %i.tq = trunc i64 %.27955.lcssa to i16
  %i.tr = and i16 %i.tq, 7
  %indvars.iv.next2786 = add nuw nsw i64 %indvars.iv2785, 1 ; 3 uses
  %i.ts = trunc nuw i64 %indvars.iv.next2786 to i32
  store i32 %i.ts, ptr %i.ar, align 4, !tbaa !80
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %indvars.iv2785
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !100
  %i.tv = zext i16 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.tv
  store i16 %i.tr, ptr %i.tw, align 2, !tbaa !100
  %i.tx = lshr i64 %.27955.lcssa, 3               ; 2 uses
  %i.ty = add i32 %.27.lcssa, -3                  ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2786, %wide.trip.count
  br i1 %exitcond.not, label %.preheader1312, label %.preheader1283, !llvm.loop !61

.lr.ph1941:                                       ; preds = %.lr.ph1941.preheader, %.lr.ph1941
  %indvars.iv2788 = phi i64 [ %i.tf, %.lr.ph1941.preheader ], [ %indvars.iv.next2789, %.lr.ph1941 ] ; 2 uses
  %indvars.iv.next2789 = add nuw nsw i64 %indvars.iv2788, 1 ; 2 uses
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %indvars.iv2788
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !100
  %i.ub = zext i16 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ub
  store i16 0, ptr %i.uc, align 2, !tbaa !100
  %i.ud = and i64 %indvars.iv.next2789, 4294967295
  %exitcond2791.not = icmp eq i64 %i.ud, 19
  br i1 %exitcond2791.not, label %._crit_edge1942, label %.lr.ph1941, !llvm.loop !62

._crit_edge1942:                                  ; preds = %.lr.ph1941
  store i32 19, ptr %i.ar, align 4, !tbaa !80
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge1942, %.preheader1312
  store ptr %i.at, ptr %i.au, align 8, !tbaa !34
  store ptr %i.at, ptr %i.av, align 8, !tbaa !36
  store i32 7, ptr %i.aw, align 8, !tbaa !93
  %i.ue = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %i.as, i32 noundef 19, ptr noundef nonnull %i.au, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax) #9 ; 2 uses
  %.not1182 = icmp eq i32 %i.ue, 0
  br i1 %.not1182, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store ptr @.str.9, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !22
  br label %.thread

bb.eq:                                            ; preds = %bb.eo
  store i32 0, ptr %i.ar, align 4, !tbaa !80
  store i32 16198, ptr %i.m, align 8, !tbaa !22
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge2856, %bb.eq
  %.promoted1996 = phi i32 [ 0, %bb.eq ], [ %.promoted1996.pre, %._crit_edge2856 ] ; 2 uses
  %.321087 = phi ptr [ %.301085.lcssa, %bb.eq ], [ %.01055, %._crit_edge2856 ] ; 2 uses
  %.321023 = phi i32 [ %.301021.lcssa, %bb.eq ], [ %.0991, %._crit_edge2856 ] ; 2 uses
  %.28956 = phi i64 [ %.26954.lcssa, %bb.eq ], [ %.0928, %._crit_edge2856 ] ; 2 uses
  %.28 = phi i32 [ %.26.lcssa, %bb.eq ], [ %.0917, %._crit_edge2856 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.eq ], [ %.0, %._crit_edge2856 ] ; 7 uses
  %i.uf = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  %i.ug = load i32, ptr %i.ap, align 8, !tbaa !97
  %i.uh = add i32 %i.ug, %i.uf                    ; 3 uses
  %i.ui = icmp ult i32 %.promoted1996, %i.uh
  br i1 %i.ui, label %.preheader1281.lr.ph, label %._crit_edge2004

.preheader1281.lr.ph:                             ; preds = %bb.er
  %i.uj = load ptr, ptr %i.av, align 8, !tbaa !36 ; 3 uses
  %i.uk = load i32, ptr %i.aw, align 8, !tbaa !93
  %notmask = shl nsw i32 -1, %i.uk
  %i.ul = xor i32 %notmask, -1                    ; 2 uses
  br label %.preheader1281

.preheader1281:                                   ; preds = %.preheader1281.lr.ph, %bb.fc
  %.292003 = phi i32 [ %.28, %.preheader1281.lr.ph ], [ %.35, %bb.fc ] ; 4 uses
  %.299572002 = phi i64 [ %.28956, %.preheader1281.lr.ph ], [ %.35963, %bb.fc ] ; 4 uses
  %.3310242001 = phi i32 [ %.321023, %.preheader1281.lr.ph ], [ %.391030, %bb.fc ] ; 5 uses
  %.3310882000 = phi ptr [ %.321087, %.preheader1281.lr.ph ], [ %.391094, %bb.fc ] ; 3 uses
  %.lcssa199419971999 = phi i32 [ %.promoted1996, %.preheader1281.lr.ph ], [ %.lcssa19941998, %bb.fc ] ; 11 uses
  %i.um = trunc i64 %.299572002 to i32
  %i.un = and i32 %i.ul, %i.um
  %i.uo = zext nneg i32 %i.un to i64              ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.uo
  %.sroa.1867.0..sroa_idx1946 = getelementptr inbounds nuw i8, ptr %i.up, i64 1
  %.sroa.1867.0.copyload1947 = load i8, ptr %.sroa.1867.0..sroa_idx1946, align 1, !tbaa !45 ; 2 uses
  %i.uq = zext i8 %.sroa.1867.0.copyload1947 to i32 ; 2 uses
  %.not11831948 = icmp ult i32 %.292003, %i.uq
  br i1 %.not11831948, label %.lr.ph1953.preheader, label %._crit_edge1954

.lr.ph1953.preheader:                             ; preds = %.preheader1281
  %i.ur = icmp eq i32 %.3310242001, 0
  br i1 %i.ur, label %.loopexit1276.loopexit2980, label %.lr.ph3808

.lr.ph3808:                                       ; preds = %.lr.ph1953.preheader
  %i.us = zext nneg i32 %.292003 to i64
  br label %bb.es

.lr.ph1953:                                       ; preds = %bb.es
  %i.ut = icmp eq i32 %i.uu, 0
  br i1 %i.ut, label %.loopexit1276.loopexit2980, label %bb.es

bb.es:                                            ; preds = %.lr.ph3808, %.lr.ph1953
  %.34108919493807 = phi ptr [ %.3310882000, %.lr.ph3808 ], [ %i.uv, %.lr.ph1953 ] ; 2 uses
  %.34102519503806 = phi i32 [ %.3310242001, %.lr.ph3808 ], [ %i.uu, %.lr.ph1953 ]
  %.3095819513805 = phi i64 [ %.299572002, %.lr.ph3808 ], [ %i.uz, %.lr.ph1953 ]
  %indvars.iv27923804 = phi i64 [ %i.us, %.lr.ph3808 ], [ %indvars.iv.next2793, %.lr.ph1953 ] ; 2 uses
  %i.uu = add i32 %.34102519503806, -1            ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.34108919493807, i64 1 ; 2 uses
  %i.uw = load i8, ptr %.34108919493807, align 1, !tbaa !45
  %i.ux = zext i8 %i.uw to i64
  %i.uy = shl i64 %i.ux, %indvars.iv27923804
  %i.uz = add i64 %i.uy, %.3095819513805          ; 4 uses
  %indvars.iv.next2793 = add nuw nsw i64 %indvars.iv27923804, 8 ; 3 uses
  %i.va = trunc i64 %i.uz to i32
  %i.vb = and i32 %i.ul, %i.va
  %i.vc = zext nneg i32 %i.vb to i64              ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.vc
  %.sroa.1867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vd, i64 1
  %.sroa.1867.0.copyload = load i8, ptr %.sroa.1867.0..sroa_idx, align 1, !tbaa !45 ; 3 uses
  %i.ve = zext i8 %.sroa.1867.0.copyload to i64
  %.not1183 = icmp samesign ult i64 %indvars.iv.next2793, %i.ve
  br i1 %.not1183, label %.lr.ph1953, label %._crit_edge1954.loopexit

._crit_edge1954.loopexit:                         ; preds = %bb.es
  %i.vf = zext i8 %.sroa.1867.0.copyload to i32
  %i.vg = trunc nuw nsw i64 %indvars.iv.next2793 to i32
  br label %._crit_edge1954

._crit_edge1954:                                  ; preds = %._crit_edge1954.loopexit, %.preheader1281
  %i.vh = phi i64 [ %i.uo, %.preheader1281 ], [ %i.vc, %._crit_edge1954.loopexit ]
  %.lcssa1944 = phi i32 [ %i.uq, %.preheader1281 ], [ %i.vf, %._crit_edge1954.loopexit ] ; 7 uses
  %.341089.lcssa = phi ptr [ %.3310882000, %.preheader1281 ], [ %i.uv, %._crit_edge1954.loopexit ] ; 7 uses
  %.341025.lcssa = phi i32 [ %.3310242001, %.preheader1281 ], [ %i.uu, %._crit_edge1954.loopexit ] ; 7 uses
  %.30958.lcssa = phi i64 [ %.299572002, %.preheader1281 ], [ %i.uz, %._crit_edge1954.loopexit ] ; 7 uses
  %.30.lcssa = phi i32 [ %.292003, %.preheader1281 ], [ %i.vg, %._crit_edge1954.loopexit ] ; 10 uses
  %.sroa.1867.0.copyload.lcssa = phi i8 [ %.sroa.1867.0.copyload1947, %.preheader1281 ], [ %.sroa.1867.0.copyload, %._crit_edge1954.loopexit ] ; 4 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.vh
  %.sroa.42.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.vi, i64 2
  %.sroa.42.0.copyload.le = load i16, ptr %.sroa.42.0..sroa_idx.le, align 2, !tbaa !100 ; 3 uses
  %i.vj = icmp ult i16 %.sroa.42.0.copyload.le, 16
  br i1 %i.vj, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %._crit_edge1954
  %i.vk = zext nneg i8 %.sroa.1867.0.copyload.lcssa to i64
  %i.vl = lshr i64 %.30958.lcssa, %i.vk
  %i.vm = sub nuw i32 %.30.lcssa, %.lcssa1944
  %i.vn = add i32 %.lcssa199419971999, 1          ; 2 uses
  store i32 %i.vn, ptr %i.ar, align 4, !tbaa !80
  %i.vo = zext i32 %.lcssa199419971999 to i64
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.vo
  store i16 %.sroa.42.0.copyload.le, ptr %i.vp, align 2, !tbaa !100
  br label %bb.fc

bb.eu:                                            ; preds = %._crit_edge1954
  switch i16 %.sroa.42.0.copyload.le, label %.preheader1275 [
    i16 16, label %.preheader1277
    i16 17, label %.preheader1279
  ]

.preheader1279:                                   ; preds = %bb.eu
  %i.vq = add nuw nsw i32 %.lcssa1944, 3          ; 2 uses
  %i.vr = icmp ult i32 %.30.lcssa, %i.vq
  br i1 %i.vr, label %.lr.ph1967.preheader, label %._crit_edge1968

.lr.ph1967.preheader:                             ; preds = %.preheader1279
  %i.vs = zext nneg i32 %.30.lcssa to i64
  %i.vt = zext nneg i32 %i.vq to i64
  br label %.lr.ph1967

.preheader1277:                                   ; preds = %bb.eu
  %i.vu = add nuw nsw i32 %.lcssa1944, 2          ; 2 uses
  %i.vv = icmp ult i32 %.30.lcssa, %i.vu
  br i1 %i.vv, label %.lr.ph1977.preheader, label %._crit_edge1978

.lr.ph1977.preheader:                             ; preds = %.preheader1277
  %i.vw = zext nneg i32 %.30.lcssa to i64
  %i.vx = zext nneg i32 %i.vu to i64
  br label %.lr.ph1977

.preheader1275:                                   ; preds = %bb.eu
  %i.vy = add nuw nsw i32 %.lcssa1944, 7          ; 2 uses
  %i.vz = icmp ult i32 %.30.lcssa, %i.vy
  br i1 %i.vz, label %.lr.ph1987.preheader, label %._crit_edge1988

.lr.ph1987.preheader:                             ; preds = %.preheader1275
  %i.wa = zext nneg i32 %.30.lcssa to i64
  %i.wb = zext nneg i32 %i.vy to i64
  br label %.lr.ph1987

.lr.ph1977:                                       ; preds = %.lr.ph1977.preheader, %bb.ev
  %indvars.iv2798 = phi i64 [ %i.vw, %.lr.ph1977.preheader ], [ %indvars.iv.next2799, %bb.ev ] ; 3 uses
  %.319591975 = phi i64 [ %.30958.lcssa, %.lr.ph1977.preheader ], [ %i.wi, %bb.ev ] ; 2 uses
  %.3510261974 = phi i32 [ %.341025.lcssa, %.lr.ph1977.preheader ], [ %i.wd, %bb.ev ] ; 2 uses
  %.3510901973 = phi ptr [ %.341089.lcssa, %.lr.ph1977.preheader ], [ %i.we, %bb.ev ] ; 3 uses
  %i.wc = icmp eq i32 %.3510261974, 0
  br i1 %i.wc, label %.loopexit1276.loopexit2340, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph1977
  %i.wd = add i32 %.3510261974, -1                ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.3510901973, i64 1 ; 2 uses
  %i.wf = load i8, ptr %.3510901973, align 1, !tbaa !45
  %i.wg = zext i8 %i.wf to i64
  %i.wh = shl i64 %i.wg, %indvars.iv2798
  %i.wi = add i64 %i.wh, %.319591975              ; 2 uses
  %indvars.iv.next2799 = add nuw nsw i64 %indvars.iv2798, 8 ; 3 uses
  %i.wj = icmp samesign ult i64 %indvars.iv.next2799, %i.vx
  br i1 %i.wj, label %.lr.ph1977, label %._crit_edge1978.loopexit, !llvm.loop !63

._crit_edge1978.loopexit:                         ; preds = %bb.ev
  %i.wk = trunc nuw nsw i64 %indvars.iv.next2799 to i32
  br label %._crit_edge1978

._crit_edge1978:                                  ; preds = %._crit_edge1978.loopexit, %.preheader1277
  %.351090.lcssa = phi ptr [ %.341089.lcssa, %.preheader1277 ], [ %i.we, %._crit_edge1978.loopexit ] ; 2 uses
  %.351026.lcssa = phi i32 [ %.341025.lcssa, %.preheader1277 ], [ %i.wd, %._crit_edge1978.loopexit ] ; 2 uses
  %.31959.lcssa = phi i64 [ %.30958.lcssa, %.preheader1277 ], [ %i.wi, %._crit_edge1978.loopexit ]
  %.31.lcssa = phi i32 [ %.30.lcssa, %.preheader1277 ], [ %i.wk, %._crit_edge1978.loopexit ]
end_hunk_0
