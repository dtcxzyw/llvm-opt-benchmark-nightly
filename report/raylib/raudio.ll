Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@start_decoder:bb.a
  %i.pf = add i8 %i.pe, 1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.hp, i64 24 ; 2 uses
  store i8 %i.pf, ptr %i.pg, align 8
  %i.ph = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %i.pi = trunc i32 %i.ph to i8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.hp, i64 26 ; 3 uses
  store i8 %i.pi, ptr %i.pj, align 2
  %i.pk = load i8, ptr %i.ot, align 1
  %i.pl = icmp eq i8 %i.pk, 1
  %i.pm = load i32, ptr %i.in, align 4            ; 2 uses
  %i.pn = load i32, ptr %i.hp, align 8            ; 2 uses
  br i1 %i.pl, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.po = tail call fastcc i32 @lookup1_values(i32 noundef %i.pm, i32 noundef %i.pn) ; 2 uses
  %i.pp = icmp sgt i32 %i.po, -1
  br i1 %i.pp, label %.thread1217, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.pq, align 4
  br label %.critedge

bb.dr:                                            ; preds = %bb.do
  %i.pr = mul nsw i32 %i.pn, %i.pm
  br label %.thread1217

.thread1217:                                      ; preds = %bb.dp, %bb.dr
  %.sink1794 = phi i32 [ %i.pr, %bb.dr ], [ %i.po, %bb.dp ] ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  store i32 %.sink1794, ptr %i.ps, align 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.hp, i64 28 ; 10 uses
  %i.pu = icmp eq i32 %.sink1794, 0
  br i1 %i.pu, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.thread1217
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.pv, align 4
  br label %.critedge

bb.dt:                                            ; preds = %.thread1217
  %i.pw = shl i32 %.sink1794, 1
  %i.px = tail call fastcc ptr @setup_temp_malloc(ptr noundef nonnull %0, i32 noundef %i.pw) ; 9 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.du, label %.preheader1262

.preheader1262:                                   ; preds = %bb.dt
  %i.pz = load i32, ptr %i.pt, align 4            ; 2 uses
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %.lr.ph1356, label %._crit_edge1357

bb.du:                                            ; preds = %bb.dt
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.qb, align 4
  br label %.critedge

.lr.ph1356:                                       ; preds = %.preheader1262, %bb.dy
  %indvars.iv1556 = phi i64 [ %indvars.iv.next1557, %bb.dy ], [ 0, %.preheader1262 ] ; 2 uses
  %i.qc = load i8, ptr %i.pg, align 8
  %i.qd = zext i8 %i.qc to i32
  %i.qe = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.qd) ; 2 uses
  %.not1157 = icmp eq i32 %i.qe, -1
  br i1 %.not1157, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %.lr.ph1356
  %i.qf = load ptr, ptr %i.hm, align 8
  %.not.i1186 = icmp eq ptr %i.qf, null
  br i1 %.not.i1186, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qg = load i32, ptr %i.pt, align 4
  %i.qh = shl i32 %i.qg, 1
  %i.qi = add nsw i32 %i.qh, 6
  %i.qj = and i32 %i.qi, -8
  %i.qk = load i32, ptr %i.hn, align 4
  %i.ql = add nsw i32 %i.qj, %i.qk
  store i32 %i.ql, ptr %i.hn, align 4
  br label %.thread1218

bb.dx:                                            ; preds = %bb.dv
  tail call void @free(ptr noundef nonnull %i.px) #61
  br label %.thread1218

.thread1218:                                      ; preds = %bb.dx, %bb.dw
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.qm, align 4
  br label %.critedge

bb.dy:                                            ; preds = %.lr.ph1356
  %i.qn = trunc i32 %i.qe to i16
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %indvars.iv1556
  store i16 %i.qn, ptr %i.qo, align 2
  %indvars.iv.next1557 = add nuw nsw i64 %indvars.iv1556, 1 ; 2 uses
  %i.qp = load i32, ptr %i.pt, align 4            ; 2 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next1557, %i.qq
  br i1 %i.qr, label %.lr.ph1356, label %._crit_edge1357

._crit_edge1357:                                  ; preds = %bb.dy, %.preheader1262
  %.lcssa1283 = phi i32 [ %i.pz, %.preheader1262 ], [ %i.qp, %bb.dy ]
  %i.qs = load i8, ptr %i.ot, align 1
  %i.qt = icmp eq i8 %i.qs, 1
  br i1 %i.qt, label %bb.dz, label %bb.ep

bb.dz:                                            ; preds = %._crit_edge1357
  %i.qu = load i8, ptr %i.is, align 1
  %.not1154 = icmp eq i8 %i.qu, 0                 ; 3 uses
  br i1 %.not1154, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qv = load i32, ptr %i.mv, align 8            ; 2 uses
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %.loopexit1261, label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.qx = load i32, ptr %i.in, align 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb
  %.sink1801 = phi i32 [ %i.qx, %bb.eb ], [ %i.qv, %bb.ea ]
  %i.qy = shl i32 %.sink1801, 2
  %i.qz = load i32, ptr %i.hp, align 8
  %i.ra = mul i32 %i.qy, %i.qz
  %i.rb = tail call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.ra) ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  store ptr %i.rb, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.re = icmp eq ptr %i.rb, null
  br i1 %i.re, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.rf = load ptr, ptr %i.hm, align 8
  %.not.i1188 = icmp eq ptr %i.rf, null
  br i1 %.not.i1188, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.rg = load i32, ptr %i.pt, align 4
  %i.rh = shl i32 %i.rg, 1
  %i.ri = add nsw i32 %i.rh, 6
  %i.rj = and i32 %i.ri, -8
  %i.rk = load i32, ptr %i.hn, align 4
  %i.rl = add nsw i32 %i.rj, %i.rk
  store i32 %i.rl, ptr %i.hn, align 4
  br label %setup_temp_free.exit1189

bb.ef:                                            ; preds = %bb.ed
  tail call void @free(ptr noundef nonnull %i.px) #61
  br label %setup_temp_free.exit1189

setup_temp_free.exit1189:                         ; preds = %bb.ee, %bb.ef
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.rm, align 4
  br label %.critedge

bb.eg:                                            ; preds = %bb.ec
  %. = select i1 %.not1154, ptr %i.in, ptr %i.mv
  %i.rn = load i32, ptr %., align 4               ; 2 uses
  %i.ro = icmp sgt i32 %i.rn, 0
  br i1 %i.ro, label %.lr.ph1373, label %._crit_edge1374

.lr.ph1373:                                       ; preds = %bb.eg
  %i.rp = getelementptr inbounds nuw i8, ptr %i.hp, i64 2104
  %wide.trip.count1565 = zext nneg i32 %i.rn to i64
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1373, %._crit_edge1368
  %indvars.iv1562 = phi i64 [ 0, %.lr.ph1373 ], [ %indvars.iv.next1563, %._crit_edge1368 ] ; 3 uses
  %.09471371 = phi float [ 0.000000e+00, %.lr.ph1373 ], [ %.1948.lcssa, %._crit_edge1368 ] ; 2 uses
  %i.rq = trunc nuw nsw i64 %indvars.iv1562 to i32 ; 2 uses
  br i1 %.not1154, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rr = load ptr, ptr %i.rp, align 8
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %indvars.iv1562
  %i.rt = load i32, ptr %i.rs, align 4
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.ru = phi i32 [ %i.rt, %bb.ei ], [ %i.rq, %bb.eh ]
  %i.rv = load i32, ptr %i.hp, align 8            ; 2 uses
  %.not11561362 = icmp sgt i32 %i.rv, 0
  br i1 %.not11561362, label %.lr.ph1367, label %._crit_edge1368

.lr.ph1367:                                       ; preds = %bb.ej, %bb.eo
  %i.rw = phi i32 [ %i.sp, %bb.eo ], [ %i.rv, %bb.ej ]
  %.09451365 = phi i32 [ %i.sz, %bb.eo ], [ 1, %bb.ej ] ; 3 uses
  %.19481364 = phi float [ %.2949, %bb.eo ], [ %.09471371, %bb.ej ] ; 2 uses
  %.09761363 = phi i32 [ %i.so, %bb.eo ], [ 0, %bb.ej ] ; 2 uses
  %i.rx = udiv i32 %i.ru, %.09451365
  %i.ry = load i32, ptr %i.pt, align 4
  %i.rz = urem i32 %i.rx, %i.ry
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [2 x i8], ptr %i.px, i64 %i.sa
  %i.sc = load i16, ptr %i.sb, align 2
  %i.sd = uitofp i16 %i.sc to float
  %i.se = load float, ptr %i.pc, align 4
  %i.sf = load float, ptr %i.oz, align 8
  %i.sg = tail call float @llvm.fmuladd.f32(float %i.sd, float %i.se, float %i.sf)
  %i.sh = fadd float %.19481364, %i.sg            ; 2 uses
  %i.si = load ptr, ptr %i.rd, align 8
  %i.sj = mul nuw nsw i32 %i.rw, %i.rq
  %i.sk = add nsw i32 %i.sj, %.09761363
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.si, i64 %i.sl
  store float %i.sh, ptr %i.sm, align 4
  %i.sn = load i8, ptr %i.pj, align 2
  %.not1155 = icmp eq i8 %i.sn, 0
  %.2949 = select i1 %.not1155, float %.19481364, float %i.sh ; 2 uses
  %i.so = add nuw nsw i32 %.09761363, 1           ; 2 uses
  %i.sp = load i32, ptr %i.hp, align 8            ; 2 uses
  %i.sq = icmp slt i32 %i.so, %i.sp
  br i1 %i.sq, label %bb.ek, label %._crit_edge1368

bb.ek:                                            ; preds = %.lr.ph1367
  %i.sr = load i32, ptr %i.pt, align 4            ; 3 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.sr, i32 %.09451365)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.ss = load ptr, ptr %i.hm, align 8
  %.not.i1190 = icmp eq ptr %i.ss, null
  br i1 %.not.i1190, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.st = shl i32 %i.sr, 1
  %i.su = add nsw i32 %i.st, 6
  %i.sv = and i32 %i.su, -8
  %i.sw = load i32, ptr %i.hn, align 4
  %i.sx = add nsw i32 %i.sw, %i.sv
  store i32 %i.sx, ptr %i.hn, align 4
  br label %.thread1222

bb.en:                                            ; preds = %bb.el
  tail call void @free(ptr noundef nonnull %i.px) #61
  br label %.thread1222

.thread1222:                                      ; preds = %bb.em, %bb.en
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.sy, align 4
  br label %.critedge

bb.eo:                                            ; preds = %bb.ek
  %i.sz = mul i32 %i.sr, %.09451365
  br label %.lr.ph1367

._crit_edge1368:                                  ; preds = %.lr.ph1367, %bb.ej
  %.1948.lcssa = phi float [ %.09471371, %bb.ej ], [ %.2949, %.lr.ph1367 ]
  %indvars.iv.next1563 = add nuw nsw i64 %indvars.iv1562, 1 ; 2 uses
  %exitcond1566.not = icmp eq i64 %indvars.iv.next1563, %wide.trip.count1565
  br i1 %exitcond1566.not, label %._crit_edge1374, label %bb.eh

._crit_edge1374:                                  ; preds = %._crit_edge1368, %bb.eg
  store i8 2, ptr %i.ot, align 1
  br label %.loopexit1261

bb.ep:                                            ; preds = %._crit_edge1357
  %i.ta = shl i32 %.lcssa1283, 2
  %i.tb = tail call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.ta) ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 2 uses
  store ptr %i.tb, ptr %i.tc, align 8
  %.not1153 = icmp eq ptr %i.tb, null
  br i1 %.not1153, label %bb.eq, label %.preheader1260

.preheader1260:                                   ; preds = %bb.ep
  %i.td = load i32, ptr %i.pt, align 4
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph1361, label %.loopexit1261

bb.eq:                                            ; preds = %bb.ep
  %i.tf = load ptr, ptr %i.hm, align 8
  %.not.i1192 = icmp eq ptr %i.tf, null
  br i1 %.not.i1192, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.tg = load i32, ptr %i.pt, align 4
  %i.th = shl i32 %i.tg, 1
  %i.ti = add nsw i32 %i.th, 6
  %i.tj = and i32 %i.ti, -8
  %i.tk = load i32, ptr %i.hn, align 4
  %i.tl = add nsw i32 %i.tj, %i.tk
  store i32 %i.tl, ptr %i.hn, align 4
  br label %.thread1227

bb.es:                                            ; preds = %bb.eq
  tail call void @free(ptr noundef nonnull %i.px) #61
  br label %.thread1227

.thread1227:                                      ; preds = %bb.es, %bb.er
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.tm, align 4
  br label %.critedge

.lr.ph1361:                                       ; preds = %.preheader1260, %.lr.ph1361
  %indvars.iv1559 = phi i64 [ %indvars.iv.next1560, %.lr.ph1361 ], [ 0, %.preheader1260 ] ; 3 uses
  %.09431360 = phi float [ %.1944, %.lr.ph1361 ], [ 0.000000e+00, %.preheader1260 ] ; 2 uses
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %indvars.iv1559
  %i.to = load i16, ptr %i.tn, align 2
  %i.tp = uitofp i16 %i.to to float
  %i.tq = load float, ptr %i.pc, align 4
  %i.tr = load float, ptr %i.oz, align 8
  %i.ts = tail call float @llvm.fmuladd.f32(float %i.tp, float %i.tq, float %i.tr)
  %i.tt = fadd float %.09431360, %i.ts            ; 2 uses
  %i.tu = load ptr, ptr %i.tc, align 8
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv1559
  store float %i.tt, ptr %i.tv, align 4
  %i.tw = load i8, ptr %i.pj, align 2
  %.not1152 = icmp eq i8 %i.tw, 0
  %.1944 = select i1 %.not1152, float %.09431360, float %i.tt
  %indvars.iv.next1560 = add nuw nsw i64 %indvars.iv1559, 1 ; 2 uses
  %i.tx = load i32, ptr %i.pt, align 4
  %i.ty = sext i32 %i.tx to i64
  %i.tz = icmp slt i64 %indvars.iv.next1560, %i.ty
  br i1 %i.tz, label %.lr.ph1361, label %.loopexit1261

.loopexit1261:                                    ; preds = %.lr.ph1361, %.preheader1260, %._crit_edge1374, %bb.ea
  %i.ua = load ptr, ptr %i.hm, align 8
  %.not.i1194 = icmp eq ptr %i.ua, null
  br i1 %.not.i1194, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.loopexit1261
  %i.ub = load i32, ptr %i.pt, align 4
  %i.uc = shl i32 %i.ub, 1
  %i.ud = add nsw i32 %i.uc, 6
  %i.ue = and i32 %i.ud, -8
  %i.uf = load i32, ptr %i.hn, align 4
  %i.ug = add nsw i32 %i.ue, %i.uf
  store i32 %i.ug, ptr %i.hn, align 4
  br label %setup_temp_free.exit1195

bb.eu:                                            ; preds = %.loopexit1261
  tail call void @free(ptr noundef nonnull %i.px) #61
  br label %setup_temp_free.exit1195

setup_temp_free.exit1195:                         ; preds = %bb.et, %bb.eu, %bb.dn
  %indvars.iv.next1568 = add nuw nsw i64 %indvars.iv1567, 1 ; 2 uses
  %i.uh = load i32, ptr %i.ha, align 8
  %i.ui = sext i32 %i.uh to i64
  %i.uj = icmp slt i64 %indvars.iv.next1568, %i.ui
  br i1 %i.uj, label %bb.bi, label %._crit_edge1378

._crit_edge1378:                                  ; preds = %setup_temp_free.exit1195, %bb.bh
  %i.uk = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.ul = add i32 %i.uk, 1
  %i.um = and i32 %i.ul, 255                      ; 2 uses
  %.not1466 = icmp eq i32 %i.um, 0
  br i1 %.not1466, label %._crit_edge1380, label %.critedge1166

bb.ev:                                            ; preds = %.critedge1166
  %i.un = add nuw nsw i32 %.510061379, 1          ; 2 uses
  %exitcond1570.not = icmp eq i32 %i.un, %i.um
  br i1 %exitcond1570.not, label %._crit_edge1380, label %.critedge1166

.critedge1166:                                    ; preds = %._crit_edge1378, %bb.ev
  %.510061379 = phi i32 [ %i.un, %bb.ev ], [ 0, %._crit_edge1378 ]
  %i.uo = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %.not1126 = icmp eq i32 %i.uo, 0
  br i1 %.not1126, label %bb.ev, label %bb.ew

bb.ew:                                            ; preds = %.critedge1166
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.up, align 4
  br label %.critedge

._crit_edge1380:                                  ; preds = %bb.ev, %._crit_edge1378
  %i.uq = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %i.ur = add i32 %i.uq, 1                        ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  store i32 %i.ur, ptr %i.us, align 8
  %i.ut = mul i32 %i.ur, 1596
  %i.uu = tail call fastcc ptr @setup_malloc(ptr noundef %0, i32 noundef %i.ut) ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  store ptr %i.uu, ptr %i.uv, align 8
  %i.uw = icmp eq ptr %i.uu, null
  br i1 %i.uw, label %bb.ex, label %.preheader1259

.preheader1259:                                   ; preds = %._crit_edge1380
  %i.ux = load i32, ptr %i.us, align 8
  %i.uy = icmp sgt i32 %i.ux, 0
  br i1 %i.uy, label %.lr.ph1413, label %._crit_edge1414

.lr.ph1413:                                       ; preds = %.preheader1259
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 196
  br label %bb.ey

bb.ex:                                            ; preds = %._crit_edge1380
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.va, align 4
  br label %.critedge

bb.ey:                                            ; preds = %.lr.ph1413, %._crit_edge1409
  %indvars.iv1599 = phi i64 [ 0, %.lr.ph1413 ], [ %indvars.iv.next1600, %._crit_edge1409 ] ; 4 uses
  %.09701412 = phi i32 [ 0, %.lr.ph1413 ], [ %spec.select1167, %._crit_edge1409 ]
  %i.vb = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16) ; 2 uses
  %i.vc = trunc i32 %i.vb to i16
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.uz, i64 %indvars.iv1599
  store i16 %i.vc, ptr %i.vd, align 2
  %i.ve = and i32 %i.vb, 65535                    ; 2 uses
  %i.vf = icmp samesign ugt i32 %i.ve, 1
  br i1 %i.vf, label %bb.ez, label %bb.fa

end_hunk_0
begin_hunk_1_@decode_residue:bb.a
bb.ee:                                            ; preds = %bb.ec
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 1
  store ptr %i.tc, ptr %i.dh, align 8
  %i.td = load i8, ptr %i.ta, align 1
  br label %get8_packet_raw.exit482.us.us.us

bb.ef:                                            ; preds = %.thread574.us.us.us
  %i.te = load ptr, ptr %i.dk, align 8
  %i.tf = call i32 @fgetc(ptr noundef %i.te)      ; 2 uses
  %i.tg = icmp eq i32 %i.tf, -1
  br i1 %i.tg, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.th = trunc i32 %i.tf to i8
  br label %get8_packet_raw.exit482.us.us.us

get8_packet_raw.exit482.us.us.us:                 ; preds = %bb.eg, %bb.ee
  %.1.i.i471.us.us.us = phi i8 [ %i.th, %bb.eg ], [ %i.td, %bb.ee ]
  %i.ti = zext i8 %.1.i.i471.us.us.us to i32
  br label %get8_packet_raw.exit482.thread578.us.us.us

bb.eh:                                            ; preds = %bb.ef
  store i32 1, ptr %i.dj, align 8
  br label %get8_packet_raw.exit482.thread578.us.us.us

get8_packet_raw.exit482.thread578.us.us.us:       ; preds = %bb.eh, %get8_packet_raw.exit482.us.us.us, %bb.ed
  %i.tj = phi i32 [ %i.ti, %get8_packet_raw.exit482.us.us.us ], [ 0, %bb.ed ], [ 0, %bb.eh ]
  %i.tk = load i32, ptr %i.cx, align 8            ; 3 uses
  %i.tl = shl i32 %i.tj, %i.tk
  %i.tm = load i32, ptr %i.cy, align 4
  %i.tn = add i32 %i.tm, %i.tl
  store i32 %i.tn, ptr %i.cy, align 4
  %i.to = add nsw i32 %i.tk, 8
  store i32 %i.to, ptr %i.cx, align 8
  %i.tp = icmp slt i32 %i.tk, 17
  br i1 %i.tp, label %bb.ds, label %prep_huffman.exit.i400.us.us.us

bb.ei:                                            ; preds = %bb.dx
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit.i400.us.us.us

bb.ej:                                            ; preds = %bb.dw
  store i32 1, ptr %i.da, align 4
  br label %prep_huffman.exit.i400.us.us.us

prep_huffman.exit.i400.us.us.us:                  ; preds = %bb.dt, %next_segment.exit.i476.us.us.us, %get8_packet_raw.exit482.thread578.us.us.us, %bb.ej, %bb.ei, %bb.dp
  %i.tq = load ptr, ptr %i.oy, align 8            ; 2 uses
  %i.tr = icmp eq ptr %i.tq, null
  br i1 %i.tr, label %bb.eq, label %.thread.i401.us.us.us

.thread.i401.us.us.us:                            ; preds = %prep_huffman.exit.i400.us.us.us
  %i.ts = load i32, ptr %i.oz, align 4            ; 3 uses
  %i.tt = icmp sgt i32 %i.ts, 8
  br i1 %i.tt, label %bb.ek, label %.thread66.i402.us.us.us

.thread66.i402.us.us.us:                          ; preds = %.thread.i401.us.us.us
  %i.tu = icmp sgt i32 %i.ts, 0
  br i1 %i.tu, label %.lr.ph75.i408.us.us.us, label %._crit_edge76.i403

bb.ek:                                            ; preds = %.thread.i401.us.us.us
  %.pre.i416.us.us.us = load ptr, ptr %.phi.trans.insert.i415.us.us.us, align 8 ; 2 uses
  %.not61.i417.us.us.us = icmp eq ptr %.pre.i416.us.us.us, null
  br i1 %.not61.i417.us.us.us, label %.lr.ph75.i408.us.us.us, label %.thread95.i418.us.us.us

.lr.ph75.i408.us.us.us:                           ; preds = %bb.ek, %.thread66.i402.us.us.us
  %i.tv = load ptr, ptr %i.pa, align 8
  %wide.trip.count.i409.us.us.us = zext nneg i32 %i.ts to i64
  br label %bb.el

bb.el:                                            ; preds = %bb.en, %.lr.ph75.i408.us.us.us
  %indvars.iv.i410.us.us.us = phi i64 [ 0, %.lr.ph75.i408.us.us.us ], [ %indvars.iv.next.i412.us.us.us, %bb.en ] ; 5 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %indvars.iv.i410.us.us.us
  %i.tx = load i8, ptr %i.tw, align 1             ; 2 uses
  %i.ty = icmp eq i8 %i.tx, -1
  br i1 %i.ty, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tz = zext i8 %i.tx to i32                    ; 3 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.i410.us.us.us
  %i.ub = load i32, ptr %i.ua, align 4
  %i.uc = load i32, ptr %i.cy, align 4            ; 2 uses
  %notmask.i411.us.us.us = shl nsw i32 -1, %i.tz
  %i.ud = xor i32 %notmask.i411.us.us.us, -1
  %i.ue = and i32 %i.uc, %i.ud
  %i.uf = icmp eq i32 %i.ub, %i.ue
  br i1 %i.uf, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %indvars.iv.next.i412.us.us.us = add nuw nsw i64 %indvars.iv.i410.us.us.us, 1 ; 2 uses
  %exitcond.not.i413.us.us.us = icmp eq i64 %indvars.iv.next.i412.us.us.us, %wide.trip.count.i409.us.us.us
  br i1 %exitcond.not.i413.us.us.us, label %._crit_edge76.i403, label %bb.el

bb.eo:                                            ; preds = %bb.em
  %i.ug = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not62.i414.us.us.us = icmp slt i32 %i.ug, %i.tz
  br i1 %.not62.i414.us.us.us, label %codebook_decode_scalar_raw.exit432.thread581, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.uh = trunc nuw nsw i64 %indvars.iv.i410.us.us.us to i32
  %i.ui = lshr i32 %i.uc, %i.tz
  store i32 %i.ui, ptr %i.cy, align 4
  %i.uj = load ptr, ptr %i.pa, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 %indvars.iv.i410.us.us.us
  %i.ul = load i8, ptr %i.uk, align 1
  %i.um = zext i8 %i.ul to i32
  %i.un = sub nsw i32 %i.ug, %i.um
  br label %codebook_decode_scalar_raw.exit432.us.us.us

bb.eq:                                            ; preds = %prep_huffman.exit.i400.us.us.us
  %i.uo = load ptr, ptr %.phi.trans.insert.i415.us.us.us, align 8 ; 2 uses
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %.thread.i365, label %.thread95.i418.us.us.us

.thread95.i418.us.us.us:                          ; preds = %bb.eq, %bb.ek
  %i.uq = phi ptr [ %.pre.i416.us.us.us, %bb.ek ], [ %i.uo, %bb.eq ]
  %i.ur = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.us = call noundef i32 @llvm.bitreverse.i32(i32 %i.ur)
  %i.ut = load i32, ptr %i.pb, align 8            ; 2 uses
  %i.uu = icmp sgt i32 %i.ut, 1
  br i1 %i.uu, label %.lr.ph.i424.us.us.us, label %._crit_edge.i419.us.us.us

.lr.ph.i424.us.us.us:                             ; preds = %.thread95.i418.us.us.us, %.lr.ph.i424.us.us.us
  %.073.i425.us.us.us = phi i32 [ %.1.i429.us.us.us, %.lr.ph.i424.us.us.us ], [ %i.ut, %.thread95.i418.us.us.us ] ; 2 uses
  %.05472.i426.us.us.us = phi i32 [ %.155.i428.us.us.us, %.lr.ph.i424.us.us.us ], [ 0, %.thread95.i418.us.us.us ] ; 2 uses
  %i.uv = lshr i32 %.073.i425.us.us.us, 1         ; 3 uses
  %i.uw = add nsw i32 %i.uv, %.05472.i426.us.us.us ; 2 uses
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4
  %.not65.i427.us.us.us = icmp ugt i32 %i.uz, %i.us ; 2 uses
  %i.va = sub nuw nsw i32 %.073.i425.us.us.us, %i.uv
  %.155.i428.us.us.us = select i1 %.not65.i427.us.us.us, i32 %.05472.i426.us.us.us, i32 %i.uw ; 2 uses
  %.1.i429.us.us.us = select i1 %.not65.i427.us.us.us, i32 %i.uv, i32 %i.va ; 2 uses
  %i.vb = icmp samesign ugt i32 %.1.i429.us.us.us, 1
  br i1 %i.vb, label %.lr.ph.i424.us.us.us, label %._crit_edge.i419.us.us.us

._crit_edge.i419.us.us.us:                        ; preds = %.lr.ph.i424.us.us.us, %.thread95.i418.us.us.us
  %.054.lcssa.i420.us.us.us = phi i32 [ 0, %.thread95.i418.us.us.us ], [ %.155.i428.us.us.us, %.lr.ph.i424.us.us.us ] ; 2 uses
  %i.vc = load i8, ptr %i.pc, align 1
  %.not63.i421.us.us.us = icmp eq i8 %i.vc, 0
  br i1 %.not63.i421.us.us.us, label %bb.er, label %bb.es

bb.er:                                            ; preds = %._crit_edge.i419.us.us.us
  %i.vd = load ptr, ptr %i.pd, align 8
  %i.ve = sext i32 %.054.lcssa.i420.us.us.us to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge.i419.us.us.us
  %.2.i422.us.us.us = phi i32 [ %.054.lcssa.i420.us.us.us, %._crit_edge.i419.us.us.us ], [ %i.vg, %bb.er ] ; 2 uses
  %i.vh = load ptr, ptr %i.pa, align 8
  %i.vi = sext i32 %.2.i422.us.us.us to i64
  %i.vj = getelementptr inbounds i8, ptr %i.vh, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1
  %i.vl = zext i8 %i.vk to i32                    ; 3 uses
  %i.vm = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not64.i423.us.us.us = icmp slt i32 %i.vm, %i.vl
  br i1 %.not64.i423.us.us.us, label %codebook_decode_scalar_raw.exit432.thread581, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vn = lshr i32 %i.ur, %i.vl
  store i32 %i.vn, ptr %i.cy, align 4
  %i.vo = sub nuw nsw i32 %i.vm, %i.vl
  br label %codebook_decode_scalar_raw.exit432.us.us.us

codebook_decode_scalar_raw.exit432.us.us.us:      ; preds = %bb.et, %bb.ep
  %.sink.i405.us.us.us = phi i32 [ %i.un, %bb.ep ], [ %i.vo, %bb.et ]
  %.158.ph.i406.us.us.us = phi i32 [ %i.uh, %bb.ep ], [ %.2.i422.us.us.us, %bb.et ] ; 2 uses
  store i32 %.sink.i405.us.us.us, ptr %i.cx, align 8
  %i.vp = icmp slt i32 %.158.ph.i406.us.us.us, 0
  br i1 %i.vp, label %.thread.i365, label %codebook_decode_start.exit374.us.us.us

bb.eu:                                            ; preds = %prep_huffman.exit.i363.us.us.us
  %i.vq = zext nneg i16 %i.sd to i32
  %i.vr = load ptr, ptr %i.pa, align 8
  %i.vs = zext nneg i16 %i.sd to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1
  %i.vv = zext i8 %i.vu to i32                    ; 2 uses
  %i.vw = lshr i32 %i.rz, %i.vv
  store i32 %i.vw, ptr %i.cy, align 4
  %i.vx = load i32, ptr %i.cx, align 8
  %i.vy = sub nsw i32 %i.vx, %i.vv                ; 2 uses
  %i.vz = icmp slt i32 %i.vy, 0
  %spec.select.i371.us.us.us = call i32 @llvm.smax.i32(i32 %i.vy, i32 0)
  store i32 %spec.select.i371.us.us.us, ptr %i.cx, align 8
  br i1 %i.vz, label %.thread.i365, label %codebook_decode_start.exit374.us.us.us

codebook_decode_start.exit374.us.us.us:           ; preds = %bb.eu, %codebook_decode_scalar_raw.exit432.us.us.us
  %.025.i364.us.us.us = phi i32 [ %i.vq, %bb.eu ], [ %.158.ph.i406.us.us.us, %codebook_decode_scalar_raw.exit432.us.us.us ]
  %i.wa = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.wb = add i32 %i.om, %i.wa
  %i.wc = sub i32 %i.ok, %i.wb
  %i.wd = load i32, ptr %i.oo, align 8            ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wc, i32 %i.wd) ; 2 uses
  %i.we = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.we, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit374.us.us.us
  %i.wf = mul nuw nsw i32 %i.wd, %.025.i364.us.us.us
  %i.wg = sext i32 %i.wf to i64
  %wide.trip.count.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ev, %.lr.ph.i.i.us.us.us
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i.us.us.us ], [ %indvars.iv.next.i.i.us.us.us, %bb.ev ] ; 3 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.i.i.us.us.us ], [ %.1.i.i.us.us.us, %bb.ev ] ; 2 uses
  %i.wh = load ptr, ptr %i.ot, align 8
  %i.wi = getelementptr [4 x i8], ptr %i.wh, i64 %indvars.iv.i.i.us.us.us
  %i.wj = getelementptr [4 x i8], ptr %i.wi, i64 %i.wg
  %i.wk = load float, ptr %i.wj, align 4
  %i.wl = fadd float %.028.i.i.us.us.us, %i.wk    ; 2 uses
  %i.wm = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.ov
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %i.wm ; 2 uses
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = fadd float %i.wo, %i.wl
  store float %i.wp, ptr %i.wn, align 4
  %i.wq = load i8, ptr %i.ou, align 2
  %.not.i.i.us.us.us = icmp eq i8 %i.wq, 0
  %.1.i.i.us.us.us = select i1 %.not.i.i.us.us.us, float %.028.i.i.us.us.us, float %i.wl
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us.us, %wide.trip.count.i.i.us.us.us
  br i1 %exitcond.not.i.i.us.us.us, label %.loopexit.i.us.us.us, label %bb.ev

.loopexit.i.us.us.us:                             ; preds = %bb.ev, %codebook_decode_start.exit374.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.ov
  br i1 %exitcond.not.i356.us.us.us, label %.thread614.us.us.us, label %bb.cb

.thread614.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.ca, %bb.bz, %bb.by
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond774.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count773
  br i1 %exitcond774.not, label %._crit_edge676.split.us.us.us, label %bb.by

._crit_edge676.split.us.us.us:                    ; preds = %.thread614.us.us.us
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %i.wr = add nsw i32 %.1280680.us.us, 1          ; 3 uses
  %i.ws = icmp slt i64 %indvars.iv.next776, %i.dq
  %i.wt = icmp slt i32 %i.wr, %i.ac
  %i.wu = select i1 %i.ws, i1 %i.wt, i1 false
  br i1 %i.wu, label %.preheader637.us.us, label %._crit_edge682

.preheader637.us:                                 ; preds = %.preheader637.lr.ph.split.us, %._crit_edge676.split.us686
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %._crit_edge676.split.us686 ], [ 0, %.preheader637.lr.ph.split.us ] ; 2 uses
  %.1280680.us = phi i32 [ %i.aiv, %._crit_edge676.split.us686 ], [ %.0279697, %.preheader637.lr.ph.split.us ] ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %.preheader637.us, %.thread614.us685
  %indvars.iv762 = phi i64 [ 0, %.preheader637.us ], [ %indvars.iv.next763, %.thread614.us685 ] ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv762
  %i.ww = load i8, ptr %i.wv, align 1
  %.not323.us684 = icmp eq i8 %i.ww, 0
  br i1 %.not323.us684, label %bb.ex, label %.thread614.us685

bb.ex:                                            ; preds = %bb.ew
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv762
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %indvars.iv778
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 %indvars.iv767
  %i.xc = load i8, ptr %i.xb, align 1
  %i.xd = load ptr, ptr %i.do, align 8
  %i.xe = zext i8 %i.xc to i64
  %i.xf = getelementptr inbounds nuw [16 x i8], ptr %i.xd, i64 %i.xe
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.xf, i64 %indvars.iv781
  %i.xh = load i16, ptr %i.xg, align 2            ; 2 uses
  %i.xi = icmp sgt i16 %i.xh, -1
  br i1 %i.xi, label %.preheader.i.us, label %.thread614.us685

.preheader.i.us:                                  ; preds = %bb.ex
  %i.xj = zext nneg i16 %i.xh to i64
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv762
  %i.xl = load ptr, ptr %i.xk, align 8
  %i.xm = load i32, ptr %i.aa, align 8            ; 4 uses
  %i.xn = load ptr, ptr %i.n, align 8
  %i.xo = getelementptr inbounds nuw [2120 x i8], ptr %i.xn, i64 %i.xj ; 14 uses
  %i.xp = icmp sgt i32 %i.xm, 0
  br i1 %i.xp, label %.lr.ph.i353.us, label %.thread614.us685

.lr.ph.i353.us:                                   ; preds = %.preheader.i.us
  %i.xq = mul i32 %i.xm, %.1280680.us
  %i.xr = load i32, ptr %i.h, align 8
  %i.xs = add i32 %i.xq, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 26
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xo, i64 32 ; 6 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 16 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xo, i64 25
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xo, i64 48
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.xo, i64 2096 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xo, i64 8 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xo, i64 2112
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xo, i64 27
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xo, i64 2104
  br label %bb.ey

bb.ey:                                            ; preds = %.loopexit48.i.us, %.lr.ph.i353.us
  %.153.i.us = phi i32 [ 0, %.lr.ph.i353.us ], [ %i.ais, %.loopexit48.i.us ] ; 2 uses
  %.03152.i.us = phi i32 [ %i.xs, %.lr.ph.i353.us ], [ %i.ait, %.loopexit48.i.us ] ; 2 uses
  %i.ye = sext i32 %.03152.i.us to i64
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.ye ; 6 uses
  %i.yg = load i8, ptr %i.xw, align 1
  %i.yh = icmp eq i8 %i.yg, 0
  br i1 %i.yh, label %.thread31.sink.split.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yi = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.yj = icmp slt i32 %i.yi, 10
  br i1 %i.yj, label %bb.fa, label %prep_huffman.exit.i.us

bb.fa:                                            ; preds = %bb.ez
  %i.yk = icmp eq i32 %i.yi, 0
  br i1 %i.yk, label %bb.fb, label %.preheader962

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.cy, align 4
  br label %.preheader962

.preheader962:                                    ; preds = %bb.fb, %bb.fa
  br label %bb.fc

bb.fc:                                            ; preds = %.preheader962, %get8_packet_raw.exit399.thread593.us
  %i.yl = load i32, ptr %i.da, align 4
  %.not.i.i362.us = icmp eq i32 %i.yl, 0
  %.pr586.us = load i8, ptr %i.cz, align 4        ; 3 uses
  %.not.i384.us = icmp eq i8 %.pr586.us, 0        ; 2 uses
  br i1 %.not.i.i362.us, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not.i384.us, label %prep_huffman.exit.i.us, label %.thread587.us

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not.i384.us, label %bb.ff, label %.thread587.us

bb.ff:                                            ; preds = %bb.fe
  %i.ym = load i32, ptr %i.db, align 8            ; 2 uses
  %i.yn = icmp eq i32 %i.ym, -1
  br i1 %i.yn, label %bb.fg, label %bb.gb

bb.fg:                                            ; preds = %bb.ff
  %i.yo = load i32, ptr %i.dc, align 8
  %i.yp = add nsw i32 %i.yo, -1
  store i32 %i.yp, ptr %i.dd, align 8
  %i.yq = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i.i.i.us = icmp eq ptr %i.yq, null
  br i1 %.not.i.i.i.us, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.yr = load ptr, ptr %i.di, align 8
  %.not11.i.i.i.us = icmp ult ptr %i.yq, %i.yr
  br i1 %.not11.i.i.i.us, label %bb.fi, label %capture_pattern.exit.thread.sink.split.i.us

bb.fi:                                            ; preds = %bb.fh
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 1
  store ptr %i.ys, ptr %i.dh, align 8
  %i.yt = load i8, ptr %i.yq, align 1
  br label %get8.exit.i.i.us

bb.fj:                                            ; preds = %bb.fg
  %i.yu = load ptr, ptr %i.dk, align 8
  %i.yv = call i32 @fgetc(ptr noundef %i.yu)      ; 2 uses
  %i.yw = icmp eq i32 %i.yv, -1
  br i1 %i.yw, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.yx = trunc i32 %i.yv to i8
  br label %get8.exit.i.i.us

get8.exit.i.i.us:                                 ; preds = %bb.fk, %bb.fi
  %.1.i.i.i.us = phi i8 [ %i.yx, %bb.fk ], [ %i.yt, %bb.fi ]
  %.not.i.i466.us = icmp eq i8 %.1.i.i.i.us, 79
  br i1 %.not.i.i466.us, label %bb.fl, label %start_page.exit.thread.us

bb.fl:                                            ; preds = %get8.exit.i.i.us
  %i.yy = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i7.i.i.us = icmp eq ptr %i.yy, null
  br i1 %.not.i7.i.i.us, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yz = load ptr, ptr %i.di, align 8
  %.not11.i8.i.i.us = icmp ult ptr %i.yy, %i.yz
  br i1 %.not11.i8.i.i.us, label %bb.fn, label %capture_pattern.exit.thread.sink.split.i.us

bb.fn:                                            ; preds = %bb.fm
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 1
  store ptr %i.za, ptr %i.dh, align 8
  %i.zb = load i8, ptr %i.yy, align 1
  br label %get8.exit10.i.i.us

bb.fo:                                            ; preds = %bb.fl
  %i.zc = load ptr, ptr %i.dk, align 8
  %i.zd = call i32 @fgetc(ptr noundef %i.zc)      ; 2 uses
  %i.ze = icmp eq i32 %i.zd, -1
  br i1 %i.ze, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.zf = trunc i32 %i.zd to i8
  br label %get8.exit10.i.i.us

end_hunk_1
