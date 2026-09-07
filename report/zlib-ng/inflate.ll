Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/inflate?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@zng_inflate:bb.a
  %i.rg = zext i8 %i.rf to i64
  %i.rh = shl nuw nsw i64 %i.rg, %i.rb
  %i.ri = add i64 %i.rh, %i.qx                    ; 3 uses
  %indvars.iv.next2788 = add nuw nsw i64 %i.rb, 8 ; 3 uses
  %.not = icmp eq i32 %i.ra, 24
  br i1 %.not, label %._crit_edge2087.loopexit, label %.lr.ph2086.1

.lr.ph2086.1:                                     ; preds = %bb.ed
  %i.rj = icmp eq i32 %i.rd, 0
  br i1 %i.rj, label %.loopexit1260.loopexit2327, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph2086.1
  %i.rk = add i32 %.0983, -2                      ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.01048, i64 2 ; 3 uses
  %i.rm = load i8, ptr %i.re, align 1, !tbaa !55
  %i.rn = zext i8 %i.rm to i64
  %i.ro = shl nuw nsw i64 %i.rn, %indvars.iv.next2788
  %i.rp = add i64 %i.ro, %i.ri                    ; 3 uses
  %indvars.iv.next2788.1 = add nuw nsw i64 %i.rb, 16 ; 3 uses
  %i.rq = icmp samesign ult i32 %i.ra, 16
  br i1 %i.rq, label %.lr.ph2086.2, label %._crit_edge2087.loopexit

.lr.ph2086.2:                                     ; preds = %bb.ee
  %i.rr = icmp eq i32 %i.rk, 0
  br i1 %i.rr, label %.loopexit1260.loopexit2327, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph2086.2
  %i.rs = add i32 %.0983, -3                      ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.01048, i64 3 ; 3 uses
  %i.ru = load i8, ptr %i.rl, align 1, !tbaa !55
  %i.rv = zext i8 %i.ru to i64
  %i.rw = shl nuw nsw i64 %i.rv, %indvars.iv.next2788.1
  %i.rx = add i64 %i.rw, %i.rp                    ; 3 uses
  %indvars.iv.next2788.2 = add nuw nsw i64 %i.rb, 24 ; 3 uses
  %i.ry = icmp eq i32 %i.ra, 0
  br i1 %i.ry, label %.lr.ph2086.3, label %._crit_edge2087.loopexit

.lr.ph2086.3:                                     ; preds = %bb.ef
  %i.rz = icmp eq i32 %i.rs, 0
  br i1 %i.rz, label %.loopexit1260.loopexit2327, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph2086.3
  %i.sa = add i32 %.0983, -4
  %i.sb = getelementptr inbounds nuw i8, ptr %.01048, i64 4
  %i.sc = load i8, ptr %i.rt, align 1, !tbaa !55
  %i.sd = zext i8 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.sd, %indvars.iv.next2788.2
  %i.sf = add i64 %i.se, %i.rx
  br label %._crit_edge2087.loopexit

._crit_edge2087.loopexit:                         ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %.lcssa4056.a = phi i32 [ %i.rd, %bb.ed ], [ %i.rk, %bb.ee ], [ %i.rs, %bb.ef ], [ %i.sa, %bb.eg ]
  %.lcssa4055.a = phi ptr [ %i.re, %bb.ed ], [ %i.rl, %bb.ee ], [ %i.rt, %bb.ef ], [ %i.sb, %bb.eg ]
  %.lcssa4054 = phi i64 [ %i.ri, %bb.ed ], [ %i.rp, %bb.ee ], [ %i.rx, %bb.ef ], [ %i.sf, %bb.eg ]
  %indvars.iv.next2788.lcssa = phi i64 [ %indvars.iv.next2788, %bb.ed ], [ %indvars.iv.next2788.1, %bb.ee ], [ %indvars.iv.next2788.2, %bb.ef ], [ 32, %bb.eg ]
  %i.sg = trunc nuw nsw i64 %indvars.iv.next2788.lcssa to i32
  br label %._crit_edge2087

._crit_edge2087:                                  ; preds = %._crit_edge2087.loopexit, %bb.ec
  %.251073.lcssa = phi ptr [ %.01048, %bb.ec ], [ %.lcssa4055.a, %._crit_edge2087.loopexit ] ; 3 uses
  %.251008.lcssa = phi i32 [ %.0983, %bb.ec ], [ %.lcssa4056.a, %._crit_edge2087.loopexit ] ; 3 uses
  %.21941.lcssa = phi i64 [ %i.qx, %bb.ec ], [ %.lcssa4054, %._crit_edge2087.loopexit ] ; 4 uses
  %.21.lcssa = phi i32 [ %i.qy, %bb.ec ], [ %i.sg, %._crit_edge2087.loopexit ]
  %i.sh = and i64 %.21941.lcssa, 65535
  %i.si = lshr i64 %.21941.lcssa, 16
  %i.sj = xor i64 %i.si, %i.sh
  %.not1196 = icmp eq i64 %i.sj, 65535
  br i1 %.not1196, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %._crit_edge2087
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.7, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.ei:                                            ; preds = %._crit_edge2087
  %i.sk = trunc i64 %.21941.lcssa to i32
  %i.sl = and i32 %i.sk, 65535
  store i32 %i.sl, ptr %i.ar, align 4, !tbaa !62
  store i32 16194, ptr %i.p, align 8, !tbaa !23
  br i1 %i.bf, label %.loopexit1260, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.l
  %.261074 = phi ptr [ %.251073.lcssa, %bb.ei ], [ %.01048, %bb.l ]
  %.261009 = phi i32 [ %.251008.lcssa, %bb.ei ], [ %.0983, %bb.l ]
  %.22942 = phi i64 [ 0, %bb.ei ], [ %.0920, %bb.l ]
  %.22 = phi i32 [ 0, %bb.ei ], [ %.0909, %bb.l ]
  store i32 16195, ptr %i.p, align 8, !tbaa !23
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.l
  %.271075 = phi ptr [ %.261074, %bb.ej ], [ %.01048, %bb.l ] ; 4 uses
  %.271010 = phi i32 [ %.261009, %bb.ej ], [ %.0983, %bb.l ] ; 4 uses
  %.23943 = phi i64 [ %.22942, %bb.ej ], [ %.0920, %bb.l ] ; 3 uses
  %.23 = phi i32 [ %.22, %bb.ej ], [ %.0909, %bb.l ] ; 3 uses
  %i.sm = load i32, ptr %i.ar, align 4, !tbaa !62 ; 2 uses
  %.not1197 = icmp eq i32 %i.sm, 0
  br i1 %.not1197, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sn = call i32 @llvm.umin.i32(i32 %i.sm, i32 %.271010)
  %i.so = call i32 @llvm.umin.i32(i32 %i.sn, i32 %.0981) ; 5 uses
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %.loopexit1260, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.sq = zext i32 %i.so to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01045, ptr align 1 %.271075, i64 %i.sq, i1 false)
  %i.sr = sub nuw i32 %.271010, %i.so
  %i.ss = getelementptr inbounds nuw i8, ptr %.271075, i64 %i.sq
  %i.st = sub nuw i32 %.0981, %i.so
  %i.su = getelementptr inbounds nuw i8, ptr %.01045, i64 %i.sq
  %i.sv = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.sw = sub i32 %i.sv, %i.so
  store i32 %i.sw, ptr %i.ar, align 4, !tbaa !62
  br label %.thread

bb.en:                                            ; preds = %bb.ek
  store i32 16191, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.eo:                                            ; preds = %.lr.ph1750.preheader
  %i.sx = add i32 %.0983, -1                      ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.01048, i64 1 ; 3 uses
  %i.sz = load i8, ptr %.01048, align 1, !tbaa !55
  %i.ta = zext i8 %i.sz to i64
  %i.tb = shl nuw nsw i64 %i.ta, %i.bw
  %i.tc = add i64 %i.tb, %.0920                   ; 3 uses
  %indvars.iv.next2748 = add nuw nsw i64 %i.bw, 8 ; 3 uses
  %i.td = icmp ult i32 %.0909, 6
  br i1 %i.td, label %.lr.ph1750.1, label %._crit_edge1751.loopexit

.lr.ph1750.1:                                     ; preds = %bb.eo
  %i.te = icmp eq i32 %i.sx, 0
  br i1 %i.te, label %.loopexit1260.loopexit2335, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1750.1
  %i.tf = add i32 %.0983, -2
  %i.tg = getelementptr inbounds nuw i8, ptr %.01048, i64 2
  %i.th = load i8, ptr %i.sy, align 1, !tbaa !55
  %i.ti = zext i8 %i.th to i64
  %i.tj = shl nuw nsw i64 %i.ti, %indvars.iv.next2748
  %i.tk = add i64 %i.tj, %i.tc
  %indvars.iv.next2748.1 = or disjoint i64 %i.bw, 16
  br label %._crit_edge1751.loopexit

._crit_edge1751.loopexit:                         ; preds = %bb.ep, %bb.eo
  %.lcssa3924.a = phi i32 [ %i.sx, %bb.eo ], [ %i.tf, %bb.ep ]
  %.lcssa3923.a = phi ptr [ %i.sy, %bb.eo ], [ %i.tg, %bb.ep ]
  %.lcssa3922 = phi i64 [ %i.tc, %bb.eo ], [ %i.tk, %bb.ep ]
  %indvars.iv.next2748.lcssa = phi i64 [ %indvars.iv.next2748, %bb.eo ], [ %indvars.iv.next2748.1, %bb.ep ]
  %i.tl = trunc nuw nsw i64 %indvars.iv.next2748.lcssa to i32
  br label %._crit_edge1751

._crit_edge1751:                                  ; preds = %._crit_edge1751.loopexit, %.preheader1297
  %.281076.lcssa = phi ptr [ %.01048, %.preheader1297 ], [ %.lcssa3923.a, %._crit_edge1751.loopexit ] ; 2 uses
  %.281011.lcssa = phi i32 [ %.0983, %.preheader1297 ], [ %.lcssa3924.a, %._crit_edge1751.loopexit ] ; 2 uses
  %.24944.lcssa = phi i64 [ %.0920, %.preheader1297 ], [ %.lcssa3922, %._crit_edge1751.loopexit ] ; 2 uses
  %.24.lcssa = phi i32 [ %.0909, %.preheader1297 ], [ %i.tl, %._crit_edge1751.loopexit ]
  %i.tm = trunc i64 %.24944.lcssa to i32          ; 3 uses
  %i.tn = and i32 %i.tm, 31                       ; 2 uses
  %i.to = add nuw nsw i32 %i.tn, 257
  store i32 %i.to, ptr %i.as, align 4, !tbaa !107
  %i.tp = lshr i32 %i.tm, 5
  %i.tq = and i32 %i.tp, 31                       ; 2 uses
  %i.tr = add nuw nsw i32 %i.tq, 1
  store i32 %i.tr, ptr %i.at, align 16, !tbaa !108
  %i.ts = lshr i32 %i.tm, 10
  %i.tt = and i32 %i.ts, 15
  %i.tu = add nuw nsw i32 %i.tt, 4                ; 2 uses
  store i32 %i.tu, ptr %i.au, align 8, !tbaa !109
  %i.tv = lshr i64 %.24944.lcssa, 14              ; 2 uses
  %i.tw = add i32 %.24.lcssa, -14                 ; 2 uses
  %i.tx = icmp samesign ugt i32 %i.tn, 29
  %i.ty = icmp samesign ugt i32 %i.tq, 29
  %or.cond1258 = select i1 %i.tx, i1 true, i1 %i.ty
  br i1 %or.cond1258, label %bb.eq, label %.split.thread

bb.eq:                                            ; preds = %._crit_edge1751
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.8, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

.split.thread:                                    ; preds = %._crit_edge1751
  store i32 0, ptr %i.av, align 4, !tbaa !92
  store i32 16197, ptr %i.p, align 8, !tbaa !23
  br label %.preheader1267.preheader

.split:                                           ; preds = %bb.l
  %.pre2816 = load i32, ptr %i.au, align 8, !tbaa !109 ; 2 uses
  %.promoted.pre = load i32, ptr %i.av, align 4, !tbaa !92 ; 3 uses
  %i.tz = icmp ult i32 %.promoted.pre, %.pre2816
  br i1 %i.tz, label %.preheader1267.preheader, label %.preheader1296

.preheader1267.preheader:                         ; preds = %.split.thread, %.split
  %.252939 = phi i32 [ %i.tw, %.split.thread ], [ %.0909, %.split ]
  %.259452938 = phi i64 [ %i.tv, %.split.thread ], [ %.0920, %.split ]
  %.2910122937 = phi i32 [ %.281011.lcssa, %.split.thread ], [ %.0983, %.split ]
  %.2910772936 = phi ptr [ %.281076.lcssa, %.split.thread ], [ %.01048, %.split ]
  %i.ua = phi i32 [ %i.tu, %.split.thread ], [ %.pre2816, %.split ] ; 2 uses
  %.promoted2935 = phi i32 [ 0, %.split.thread ], [ %.promoted.pre, %.split ]
  %wide.trip.count = zext i32 %.promoted2935 to i64
  br label %.preheader1267

.preheader1296:                                   ; preds = %bb.er, %.split
  %.301078.lcssa = phi ptr [ %.01048, %.split ], [ %.311079.lcssa, %bb.er ] ; 2 uses
  %.301013.lcssa = phi i32 [ %.0983, %.split ], [ %.311014.lcssa, %bb.er ] ; 2 uses
  %.26946.lcssa = phi i64 [ %.0920, %.split ], [ %i.uu, %bb.er ] ; 2 uses
  %.26.lcssa = phi i32 [ %.0909, %.split ], [ %i.uv, %bb.er ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted.pre, %.split ], [ %i.ua, %bb.er ] ; 2 uses
  %i.ub = icmp ult i32 %.lcssa, 19
  br i1 %i.ub, label %.lr.ph1916.preheader, label %bb.es

.lr.ph1916.preheader:                             ; preds = %.preheader1296
  %i.uc = zext nneg i32 %.lcssa to i64
  br label %.lr.ph1916

.preheader1267:                                   ; preds = %.preheader1267.preheader, %bb.er
  %indvars.iv2750 = phi i64 [ %wide.trip.count, %.preheader1267.preheader ], [ %indvars.iv.next2751, %bb.er ] ; 2 uses
  %.261909 = phi i32 [ %.252939, %.preheader1267.preheader ], [ %i.uv, %bb.er ] ; 5 uses
  %.269461908 = phi i64 [ %.259452938, %.preheader1267.preheader ], [ %i.uu, %bb.er ] ; 3 uses
  %.3010131907 = phi i32 [ %.2910122937, %.preheader1267.preheader ], [ %.311014.lcssa, %bb.er ] ; 3 uses
  %.3010781906 = phi ptr [ %.2910772936, %.preheader1267.preheader ], [ %.311079.lcssa, %bb.er ] ; 4 uses
  %i.ud = icmp ult i32 %.261909, 3
  br i1 %i.ud, label %.lr.ph1760, label %bb.er

.lr.ph1760:                                       ; preds = %.preheader1267
  %i.ue = icmp eq i32 %.3010131907, 0
  br i1 %i.ue, label %.loopexit1260, label %._crit_edge1761

._crit_edge1761:                                  ; preds = %.lr.ph1760
  %i.uf = or disjoint i32 %.261909, 8
  %i.ug = add i32 %.3010131907, -1
  %i.uh = getelementptr inbounds nuw i8, ptr %.3010781906, i64 1
  %i.ui = load i8, ptr %.3010781906, align 1, !tbaa !55
  %i.uj = zext i8 %i.ui to i64
  %i.uk = zext nneg i32 %.261909 to i64
  %i.ul = shl nuw nsw i64 %i.uj, %i.uk
  %i.um = add i64 %i.ul, %.269461908
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge1761, %.preheader1267
  %.311079.lcssa = phi ptr [ %i.uh, %._crit_edge1761 ], [ %.3010781906, %.preheader1267 ] ; 2 uses
  %.311014.lcssa = phi i32 [ %i.ug, %._crit_edge1761 ], [ %.3010131907, %.preheader1267 ] ; 2 uses
  %.27947.lcssa = phi i64 [ %i.um, %._crit_edge1761 ], [ %.269461908, %.preheader1267 ] ; 2 uses
  %.27.lcssa = phi i32 [ %i.uf, %._crit_edge1761 ], [ %.261909, %.preheader1267 ]
  %i.un = trunc i64 %.27947.lcssa to i16
  %i.uo = and i16 %i.un, 7
  %indvars.iv.next2751 = add nuw nsw i64 %indvars.iv2750, 1 ; 2 uses
  %i.up = trunc i64 %indvars.iv.next2751 to i32   ; 2 uses
  store i32 %i.up, ptr %i.av, align 4, !tbaa !92
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr @zng_inflate.order, i64 %indvars.iv2750
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !111
  %i.us = zext i16 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.us
  store i16 %i.uo, ptr %i.ut, align 2, !tbaa !111
  %i.uu = lshr i64 %.27947.lcssa, 3               ; 2 uses
  %i.uv = add i32 %.27.lcssa, -3                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ua, %i.up
  br i1 %exitcond.not, label %.preheader1296, label %.preheader1267, !llvm.loop !77

.lr.ph1916:                                       ; preds = %.lr.ph1916.preheader, %.lr.ph1916
  %indvars.iv2753 = phi i64 [ %i.uc, %.lr.ph1916.preheader ], [ %indvars.iv.next2754, %.lr.ph1916 ] ; 2 uses
  %indvars.iv.next2754 = add nuw nsw i64 %indvars.iv2753, 1 ; 2 uses
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr @zng_inflate.order, i64 %indvars.iv2753
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !111
  %i.uy = zext i16 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.uy
  store i16 0, ptr %i.uz, align 2, !tbaa !111
  %i.va = and i64 %indvars.iv.next2754, 4294967295
  %exitcond2756.not = icmp eq i64 %i.va, 19
  br i1 %exitcond2756.not, label %._crit_edge1917, label %.lr.ph1916, !llvm.loop !78

._crit_edge1917:                                  ; preds = %.lr.ph1916
  store i32 19, ptr %i.av, align 4, !tbaa !92
  br label %bb.es

bb.es:                                            ; preds = %._crit_edge1917, %.preheader1296
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !35
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !37
  store i32 7, ptr %i.ba, align 4, !tbaa !56
  %i.vb = call i32 @zng_inflate_table(i32 noundef 0, ptr noundef nonnull %i.aw, i32 noundef 19, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb) #14 ; 2 uses
  %.not1175 = icmp eq i32 %i.vb, 0
  br i1 %.not1175, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.9, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.eu:                                            ; preds = %bb.es
  store i32 0, ptr %i.av, align 4, !tbaa !92
  store i32 16198, ptr %i.p, align 8, !tbaa !23
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge2818, %bb.eu
  %.promoted1971 = phi i32 [ 0, %bb.eu ], [ %.promoted1971.pre, %._crit_edge2818 ] ; 2 uses
  %.321080 = phi ptr [ %.301078.lcssa, %bb.eu ], [ %.01048, %._crit_edge2818 ] ; 2 uses
  %.321015 = phi i32 [ %.301013.lcssa, %bb.eu ], [ %.0983, %._crit_edge2818 ] ; 2 uses
  %.28948 = phi i64 [ %.26946.lcssa, %bb.eu ], [ %.0920, %._crit_edge2818 ] ; 2 uses
  %.28 = phi i32 [ %.26.lcssa, %bb.eu ], [ %.0909, %._crit_edge2818 ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.eu ], [ %.0894, %._crit_edge2818 ] ; 7 uses
  %i.vc = load i32, ptr %i.as, align 4, !tbaa !107 ; 2 uses
  %i.vd = load i32, ptr %i.at, align 16, !tbaa !108
  %i.ve = add i32 %i.vd, %i.vc                    ; 3 uses
  %i.vf = icmp ult i32 %.promoted1971, %i.ve
  br i1 %i.vf, label %.preheader1265.lr.ph, label %._crit_edge1979

.preheader1265.lr.ph:                             ; preds = %bb.ev
  %i.vg = load ptr, ptr %i.az, align 8, !tbaa !37 ; 3 uses
  %i.vh = load i32, ptr %i.ba, align 4, !tbaa !56
  %notmask = shl nsw i32 -1, %i.vh
  %i.vi = xor i32 %notmask, -1
  %i.vj = zext nneg i32 %i.vi to i64              ; 2 uses
  br label %.preheader1265

.preheader1265:                                   ; preds = %.preheader1265.lr.ph, %bb.fg
  %.291978 = phi i32 [ %.28, %.preheader1265.lr.ph ], [ %.35, %bb.fg ] ; 4 uses
  %.299491977 = phi i64 [ %.28948, %.preheader1265.lr.ph ], [ %.35955, %bb.fg ] ; 4 uses
  %.3310161976 = phi i32 [ %.321015, %.preheader1265.lr.ph ], [ %.391022, %bb.fg ] ; 5 uses
  %.3310811975 = phi ptr [ %.321080, %.preheader1265.lr.ph ], [ %.391087, %bb.fg ] ; 3 uses
  %.lcssa196919721974 = phi i32 [ %.promoted1971, %.preheader1265.lr.ph ], [ %.lcssa19691973, %bb.fg ] ; 11 uses
  %i.vk = and i64 %.299491977, %i.vj              ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vk
  %.sroa.1868.0..sroa_idx1921 = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  %.sroa.1868.0.copyload1922 = load i8, ptr %.sroa.1868.0..sroa_idx1921, align 1, !tbaa !55 ; 2 uses
  %i.vm = zext i8 %.sroa.1868.0.copyload1922 to i32 ; 2 uses
  %.not11761923 = icmp ult i32 %.291978, %i.vm
  br i1 %.not11761923, label %.lr.ph1928.preheader, label %._crit_edge1929

.lr.ph1928.preheader:                             ; preds = %.preheader1265
  %i.vn = icmp eq i32 %.3310161976, 0
  br i1 %i.vn, label %.loopexit1260.loopexit2940, label %.lr.ph3744

.lr.ph3744:                                       ; preds = %.lr.ph1928.preheader
  %i.vo = zext nneg i32 %.291978 to i64
  br label %bb.ew

.lr.ph1928:                                       ; preds = %bb.ew
  %i.vp = icmp eq i32 %i.vq, 0
  br i1 %i.vp, label %.loopexit1260.loopexit2940, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph3744, %.lr.ph1928
  %.34108219243743 = phi ptr [ %.3310811975, %.lr.ph3744 ], [ %i.vr, %.lr.ph1928 ] ; 2 uses
  %.34101719253742 = phi i32 [ %.3310161976, %.lr.ph3744 ], [ %i.vq, %.lr.ph1928 ]
  %.3095019263741 = phi i64 [ %.299491977, %.lr.ph3744 ], [ %i.vv, %.lr.ph1928 ]
  %indvars.iv27573740 = phi i64 [ %i.vo, %.lr.ph3744 ], [ %indvars.iv.next2758, %.lr.ph1928 ] ; 2 uses
  %i.vq = add i32 %.34101719253742, -1            ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.34108219243743, i64 1 ; 2 uses
  %i.vs = load i8, ptr %.34108219243743, align 1, !tbaa !55
  %i.vt = zext i8 %i.vs to i64
  %i.vu = shl i64 %i.vt, %indvars.iv27573740
  %i.vv = add i64 %i.vu, %.3095019263741          ; 4 uses
  %indvars.iv.next2758 = add nuw nsw i64 %indvars.iv27573740, 8 ; 3 uses
  %i.vw = and i64 %i.vv, %i.vj                    ; 2 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vw
  %.sroa.1868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  %.sroa.1868.0.copyload = load i8, ptr %.sroa.1868.0..sroa_idx, align 1, !tbaa !55 ; 3 uses
  %i.vy = zext i8 %.sroa.1868.0.copyload to i64
  %.not1176 = icmp samesign ult i64 %indvars.iv.next2758, %i.vy
  br i1 %.not1176, label %.lr.ph1928, label %._crit_edge1929.loopexit

._crit_edge1929.loopexit:                         ; preds = %bb.ew
  %i.vz = zext i8 %.sroa.1868.0.copyload to i32
  %i.wa = trunc nuw nsw i64 %indvars.iv.next2758 to i32
  br label %._crit_edge1929

._crit_edge1929:                                  ; preds = %._crit_edge1929.loopexit, %.preheader1265
  %i.wb = phi i64 [ %i.vk, %.preheader1265 ], [ %i.vw, %._crit_edge1929.loopexit ]
  %.lcssa1919 = phi i32 [ %i.vm, %.preheader1265 ], [ %i.vz, %._crit_edge1929.loopexit ] ; 7 uses
  %.341082.lcssa = phi ptr [ %.3310811975, %.preheader1265 ], [ %i.vr, %._crit_edge1929.loopexit ] ; 7 uses
  %.341017.lcssa = phi i32 [ %.3310161976, %.preheader1265 ], [ %i.vq, %._crit_edge1929.loopexit ] ; 7 uses
  %.30950.lcssa = phi i64 [ %.299491977, %.preheader1265 ], [ %i.vv, %._crit_edge1929.loopexit ] ; 7 uses
  %.30.lcssa = phi i32 [ %.291978, %.preheader1265 ], [ %i.wa, %._crit_edge1929.loopexit ] ; 10 uses
  %.sroa.1868.0.copyload.lcssa = phi i8 [ %.sroa.1868.0.copyload1922, %.preheader1265 ], [ %.sroa.1868.0.copyload, %._crit_edge1929.loopexit ] ; 4 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.wb
  %.sroa.42.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  %.sroa.42.0.copyload.le = load i16, ptr %.sroa.42.0..sroa_idx.le, align 2, !tbaa !111 ; 3 uses
  %i.wd = icmp ult i16 %.sroa.42.0.copyload.le, 16
  br i1 %i.wd, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %._crit_edge1929
  %i.we = zext nneg i8 %.sroa.1868.0.copyload.lcssa to i64
  %i.wf = lshr i64 %.30950.lcssa, %i.we
  %i.wg = sub nuw i32 %.30.lcssa, %.lcssa1919
  %i.wh = add i32 %.lcssa196919721974, 1          ; 2 uses
  store i32 %i.wh, ptr %i.av, align 4, !tbaa !92
  %i.wi = zext i32 %.lcssa196919721974 to i64
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.wi
  store i16 %.sroa.42.0.copyload.le, ptr %i.wj, align 2, !tbaa !111
  br label %bb.fg

bb.ey:                                            ; preds = %._crit_edge1929
  switch i16 %.sroa.42.0.copyload.le, label %.preheader1259 [
    i16 16, label %.preheader1261
    i16 17, label %.preheader1263
  ]

.preheader1263:                                   ; preds = %bb.ey
  %i.wk = add nuw nsw i32 %.lcssa1919, 3          ; 2 uses
  %i.wl = icmp ult i32 %.30.lcssa, %i.wk
  br i1 %i.wl, label %.lr.ph1942.preheader, label %._crit_edge1943

.lr.ph1942.preheader:                             ; preds = %.preheader1263
  %i.wm = zext nneg i32 %.30.lcssa to i64
  %i.wn = zext nneg i32 %i.wk to i64
  br label %.lr.ph1942

.preheader1261:                                   ; preds = %bb.ey
  %i.wo = add nuw nsw i32 %.lcssa1919, 2          ; 2 uses
  %i.wp = icmp ult i32 %.30.lcssa, %i.wo
  br i1 %i.wp, label %.lr.ph1952.preheader, label %._crit_edge1953

.lr.ph1952.preheader:                             ; preds = %.preheader1261
  %i.wq = zext nneg i32 %.30.lcssa to i64
  %i.wr = zext nneg i32 %i.wo to i64
  br label %.lr.ph1952

.preheader1259:                                   ; preds = %bb.ey
  %i.ws = add nuw nsw i32 %.lcssa1919, 7          ; 2 uses
  %i.wt = icmp ult i32 %.30.lcssa, %i.ws
  br i1 %i.wt, label %.lr.ph1962.preheader, label %._crit_edge1963

.lr.ph1962.preheader:                             ; preds = %.preheader1259
  %i.wu = zext nneg i32 %.30.lcssa to i64
  %i.wv = zext nneg i32 %i.ws to i64
  br label %.lr.ph1962

.lr.ph1952:                                       ; preds = %.lr.ph1952.preheader, %bb.ez
  %indvars.iv2763 = phi i64 [ %i.wq, %.lr.ph1952.preheader ], [ %indvars.iv.next2764, %bb.ez ] ; 3 uses
  %.319511950 = phi i64 [ %.30950.lcssa, %.lr.ph1952.preheader ], [ %i.xc, %bb.ez ] ; 2 uses
  %.3510181949 = phi i32 [ %.341017.lcssa, %.lr.ph1952.preheader ], [ %i.wx, %bb.ez ] ; 2 uses
  %.3510831948 = phi ptr [ %.341082.lcssa, %.lr.ph1952.preheader ], [ %i.wy, %bb.ez ] ; 3 uses
  %i.ww = icmp eq i32 %.3510181949, 0
  br i1 %i.ww, label %.loopexit1260.loopexit2317, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph1952
  %i.wx = add i32 %.3510181949, -1                ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.3510831948, i64 1 ; 2 uses
  %i.wz = load i8, ptr %.3510831948, align 1, !tbaa !55
  %i.xa = zext i8 %i.wz to i64
  %i.xb = shl i64 %i.xa, %indvars.iv2763
  %i.xc = add i64 %i.xb, %.319511950              ; 2 uses
  %indvars.iv.next2764 = add nuw nsw i64 %indvars.iv2763, 8 ; 3 uses
  %i.xd = icmp samesign ult i64 %indvars.iv.next2764, %i.wr
  br i1 %i.xd, label %.lr.ph1952, label %._crit_edge1953.loopexit, !llvm.loop !79

._crit_edge1953.loopexit:                         ; preds = %bb.ez
  %i.xe = trunc nuw nsw i64 %indvars.iv.next2764 to i32
  br label %._crit_edge1953

._crit_edge1953:                                  ; preds = %._crit_edge1953.loopexit, %.preheader1261
  %.351083.lcssa = phi ptr [ %.341082.lcssa, %.preheader1261 ], [ %i.wy, %._crit_edge1953.loopexit ] ; 2 uses
  %.351018.lcssa = phi i32 [ %.341017.lcssa, %.preheader1261 ], [ %i.wx, %._crit_edge1953.loopexit ] ; 2 uses
  %.31951.lcssa = phi i64 [ %.30950.lcssa, %.preheader1261 ], [ %i.xc, %._crit_edge1953.loopexit ]
  %.31.lcssa = phi i32 [ %.30.lcssa, %.preheader1261 ], [ %i.xe, %._crit_edge1953.loopexit ]
  %i.xf = zext nneg i8 %.sroa.1868.0.copyload.lcssa to i64
  %i.xg = lshr i64 %.31951.lcssa, %i.xf           ; 3 uses
  %i.xh = sub nuw i32 %.31.lcssa, %.lcssa1919     ; 2 uses
end_hunk_0
