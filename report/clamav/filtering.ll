Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filtering?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_add_acpatt:bb.a
  %i.po = add i32 %i.pn, %.367112.us.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ph
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !8
  %i.pr = zext i8 %i.pq to i32
  %i.ps = xor i32 %i.pr, -1
  %i.pt = lshr i32 %i.ps, %i.ny
  %i.pu = and i32 %i.pt, 1
  %i.pv = add i32 %i.pu, %.3113.us.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph.split.us141.i
  %.468.us.i = phi i32 [ %i.po, %bb.dg ], [ %.367112.us.i, %.lr.ph.split.us141.i ] ; 2 uses
  %.4.us.i = phi i32 [ %i.pv, %bb.dg ], [ %.3113.us.i, %.lr.ph.split.us141.i ] ; 2 uses
  %i.pw = add i32 %.1114.us143.i, 1
  %exitcond.not.i520 = icmp eq i32 %.1114.us143.i, %i.oz
  br i1 %exitcond.not.i520, label %._crit_edge.us.i, label %.lr.ph.split.us141.i

._crit_edge.us.i:                                 ; preds = %bb.dh, %.lr.ph.us.i, %.preheader.us.i
  %.367.lcssa.us.i = phi i32 [ %.266132.us.i, %.preheader.us.i ], [ %.266132.us.i, %.lr.ph.us.i ], [ %.468.us.i, %bb.dh ] ; 2 uses
  %.3.lcssa.us.i = phi i32 [ %.2133.us.i, %.preheader.us.i ], [ %.2133.us.i, %.lr.ph.us.i ], [ %.4.us.i, %bb.dh ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %.0137.us.i, %.preheader.us.i ], [ 256, %.lr.ph.us.i ], [ 256, %bb.dh ]
  %i.px = add i32 %.061134.us.i, 1
  %exitcond1253.not = icmp eq i32 %.061134.us.i, %i.ox
  br i1 %exitcond1253.not, label %._crit_edge138.i, label %.preheader.us.i

.preheader.i523:                                  ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.0137.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.0.i88.i, %.preheader.preheader.i ] ; 3 uses
  %.061134.i = phi i32 [ %i.qs, %._crit_edge.i ], [ %i.pa, %.preheader.preheader.i ] ; 4 uses
  %.2133.i = phi i32 [ %.3.lcssa.i, %._crit_edge.i ], [ %.163153.i, %.preheader.preheader.i ] ; 3 uses
  %.266132.i = phi i32 [ %.367.lcssa.i, %._crit_edge.i ], [ %.165152.i, %.preheader.preheader.i ] ; 3 uses
  %.not79111.i = icmp ugt i32 %.0137.i, %i.oz
  br i1 %.not79111.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i523
  %i.py = icmp eq i32 %.061134.i, %.0.i.i
  %or.cond84.i = select i1 %.not76.i, i1 %i.py, i1 false
  br i1 %or.cond84.i, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.1114.us119.i = phi i32 [ %i.qr, %.lr.ph.split.i ], [ %.0137.i, %.lr.ph.i ] ; 3 uses
  %.3113.us120.i = phi i32 [ %i.qq, %.lr.ph.split.i ], [ %.2133.i, %.lr.ph.i ]
  %.367112.us121.i = phi i32 [ %i.qj, %.lr.ph.split.i ], [ %.266132.i, %.lr.ph.i ]
  %i.pz = shl nuw nsw i32 %.1114.us119.i, 8
  %i.qa = or i32 %i.pz, %.061134.i
  %i.qb = and i32 %i.qa, 65535
  %i.qc = zext nneg i32 %i.qb to i64              ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !8
  %i.qf = zext i8 %i.qe to i32
  %i.qg = xor i32 %i.qf, -1
  %i.qh = lshr i32 %i.qg, %i.nz
  %i.qi = and i32 %i.qh, 1
  %i.qj = add i32 %i.qi, %.367112.us121.i         ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.qc
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !8
  %i.qm = zext i8 %i.ql to i32
  %i.qn = xor i32 %i.qm, -1
  %i.qo = lshr i32 %i.qn, %i.nz
  %i.qp = and i32 %i.qo, 1
  %i.qq = add i32 %i.qp, %.3113.us120.i           ; 2 uses
  %i.qr = add i32 %.1114.us119.i, 1
  %exitcond177.not.i = icmp eq i32 %.1114.us119.i, %i.oz
  br i1 %exitcond177.not.i, label %._crit_edge.i, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.i, %.preheader.i523
  %.367.lcssa.i = phi i32 [ %.266132.i, %.preheader.i523 ], [ %.266132.i, %.lr.ph.i ], [ %i.qj, %.lr.ph.split.i ] ; 2 uses
  %.3.lcssa.i = phi i32 [ %.2133.i, %.preheader.i523 ], [ %.2133.i, %.lr.ph.i ], [ %i.qq, %.lr.ph.split.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0137.i, %.preheader.i523 ], [ %i.pb, %.lr.ph.i ], [ %i.pb, %.lr.ph.split.i ]
  %i.qs = add i32 %.061134.i, 1
  %exitcond1254.not = icmp eq i32 %.061134.i, %i.ox
  br i1 %exitcond1254.not, label %._crit_edge138.i, label %.preheader.i523

._crit_edge138.i:                                 ; preds = %._crit_edge.us.i, %._crit_edge.i, %spec_ith_char.exit89.i
  %.266.lcssa.i = phi i32 [ %.165152.i, %spec_ith_char.exit89.i ], [ %.367.lcssa.i, %._crit_edge.i ], [ %.367.lcssa.us.i, %._crit_edge.us.i ] ; 3 uses
  %.2.lcssa.i = phi i32 [ %.163153.i, %spec_ith_char.exit89.i ], [ %.3.lcssa.i, %._crit_edge.i ], [ %.3.lcssa.us.i, %._crit_edge.us.i ] ; 3 uses
  %i.qt = load i8, ptr %i.nr, align 2, !tbaa !35
  %i.qu = zext i8 %i.qt to i32
  %i.qv = add nuw nsw i32 %.069151.i, %i.qu       ; 2 uses
  %.not75.i = icmp samesign ugt i32 %i.qv, %i.no
  br i1 %.not75.i, label %._crit_edge156.i, label %bb.cv

._crit_edge156.i:                                 ; preds = %._crit_edge138.i
  %i.qw = load i8, ptr %i.ns, align 2, !tbaa !35
  %i.qx = zext i8 %i.qw to i32
  %i.qy = add nuw nsw i32 %.070159.i, %i.qx       ; 2 uses
  %.not73.i = icmp samesign ugt i32 %i.qy, %i.ni
  br i1 %.not73.i, label %._crit_edge163.i, label %.lr.ph155.i

._crit_edge163.i:                                 ; preds = %._crit_edge156.i, %bb.cu, %.thread.i519
  %.064.lcssa.i = phi i32 [ 0, %.thread.i519 ], [ 0, %bb.cu ], [ %.266.lcssa.i, %._crit_edge156.i ]
  %.062.lcssa.i = phi i32 [ 0, %.thread.i519 ], [ 0, %bb.cu ], [ %.2.lcssa.i, %._crit_edge156.i ]
  %i.qz = sub i32 %.07191.i, %.064.lcssa.i
  %i.ra = sub i32 %.07191.i, %.062.lcssa.i        ; 2 uses
  %i.rb = icmp eq i32 %i.na, 1
  %i.rc = icmp ne i64 %indvars.iv1255, %i.mx
  %or.cond.i521 = and i1 %i.rc, %i.rb
  %i.rd = add nsw i32 %i.ra, -4096
  %spec.select.i522 = select i1 %or.cond.i521, i32 %i.rd, i32 %i.ra
  br label %get_score.exit

get_score.exit:                                   ; preds = %.thread92.i, %._crit_edge163.i
  %.1548 = phi i32 [ %i.qz, %._crit_edge163.i ], [ %.83.i, %.thread92.i ] ; 2 uses
  %storemerge74.i = phi i32 [ %spec.select.i522, %._crit_edge163.i ], [ %.83.i, %.thread92.i ] ; 2 uses
  %i.re = icmp samesign ult i64 %i.my, 6
  br i1 %i.re, label %get_score.exit.thread, label %bb.di

get_score.exit.thread:                            ; preds = %bb.ct, %get_score.exit
  %storemerge74.i571 = phi i32 [ %storemerge74.i, %get_score.exit ], [ -7340032, %bb.ct ]
  %.1548570 = phi i32 [ %.1548, %get_score.exit ], [ -7340032, %bb.ct ]
  %i.rf = trunc nuw nsw i64 %i.my to i32
  %i.rg = sub nuw nsw i32 6, %i.rf                ; 2 uses
  %i.rh = mul i32 %.1548570, %i.rg
  %i.ri = mul i32 %storemerge74.i571, %i.rg
  br label %bb.di

bb.di:                                            ; preds = %get_score.exit.thread, %get_score.exit
  %.0547 = phi i32 [ %i.rh, %get_score.exit.thread ], [ %.1548, %get_score.exit ]
  %.0546 = phi i32 [ %i.ri, %get_score.exit.thread ], [ %storemerge74.i, %get_score.exit ]
  %i.rj = add nsw i32 %.0547, %.0366978           ; 2 uses
  %i.rk = add nsw i32 %i.rj, %.0546               ; 2 uses
  %i.rl = icmp sgt i32 %i.rk, %.1407975
  br i1 %i.rl, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.rm = add nuw nsw i64 %indvars.iv1255, 2
  %.not477 = icmp samesign ugt i64 %i.rm, %i.jz
  %i.rn = trunc i64 %i.my to i32
  %i.ro = add i32 %i.rn, 2
  br i1 %.not477, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 661, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.dl:                                            ; preds = %bb.dj, %bb.di
  %.2408 = phi i32 [ %i.rk, %bb.dj ], [ %.1407975, %bb.di ] ; 2 uses
  %.2405 = phi i32 [ %i.mr, %bb.dj ], [ %.1404976, %bb.di ] ; 2 uses
  %.2402 = phi i32 [ %i.ro, %bb.dj ], [ %.1401977, %bb.di ] ; 2 uses
  %exitcond1261.not = icmp eq i64 %indvars.iv.next1256, %wide.trip.count1260
  br i1 %exitcond1261.not, label %._crit_edge984, label %.lr.ph983

._crit_edge984:                                   ; preds = %bb.dl, %bb.cn
  %.1407.lcssa = phi i32 [ %.0406989, %bb.cn ], [ %.2408, %bb.dl ] ; 2 uses
  %.1404.lcssa = phi i32 [ %.0403990, %bb.cn ], [ %.2405, %bb.dl ] ; 2 uses
  %.1401.lcssa = phi i32 [ %.0400991, %bb.cn ], [ %.2402, %bb.dl ] ; 6 uses
  %indvars.iv.next1263 = add nuw nsw i64 %indvars.iv1262, 1 ; 2 uses
  %exitcond1266.not = icmp eq i64 %indvars.iv.next1263, %wide.trip.count1265
  br i1 %exitcond1266.not, label %._crit_edge993, label %bb.cn

._crit_edge993:                                   ; preds = %._crit_edge984
  %i.rp = icmp slt i32 %.1407.lcssa, -2147483646
  br i1 %i.rp, label %._crit_edge993.thread, label %bb.dm

._crit_edge993.thread:                            ; preds = %.preheader578, %._crit_edge993
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !38
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.10, ptr noundef %i.rr, i64 noundef -2147483647) #11
  br label %.loopexit

bb.dm:                                            ; preds = %._crit_edge993
  %i.rs = icmp ugt i32 %.1401.lcssa, 1
  br i1 %i.rs, label %.lr.ph1033.preheader, label %bb.dn

.lr.ph1033.preheader:                             ; preds = %bb.dm
  %i.rt = add i32 %.1401.lcssa, -1
  %wide.trip.count1272 = zext i32 %i.rt to i64
  br label %.lr.ph1033

bb.dn:                                            ; preds = %bb.dm
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 674, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

.lr.ph1033:                                       ; preds = %.lr.ph1033.preheader, %._crit_edge1031
  %indvars.iv1269 = phi i64 [ 0, %.lr.ph1033.preheader ], [ %indvars.iv.next1270, %._crit_edge1031 ] ; 2 uses
  %i.ru = trunc nuw i64 %indvars.iv1269 to i32    ; 2 uses
  %i.rv = add i32 %.1404.lcssa, %i.ru             ; 2 uses
  %i.rw = zext i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.rw ; 10 uses
  %i.ry = add nuw i32 %i.rv, 1
  %i.rz = zext i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.rz ; 10 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sc = load i8, ptr %i.sb, align 8, !tbaa !34  ; 2 uses
  %i.sd = zext i8 %i.sc to i32                    ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rx, i64 9
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !33  ; 2 uses
  %i.sg = zext i8 %i.sf to i32                    ; 2 uses
  %.not4691027 = icmp ugt i8 %i.sc, %i.sf
  br i1 %.not4691027, label %._crit_edge1031, label %.lr.ph1030

.lr.ph1030:                                       ; preds = %.lr.ph1033
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.si = load i8, ptr %i.sh, align 8, !tbaa !34  ; 2 uses
  %i.sj = zext i8 %i.si to i32
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 9
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !33  ; 2 uses
  %i.sm = zext i8 %i.sl to i32
  %.not4701022 = icmp ugt i8 %i.si, %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rx, i64 11
  %i.so = getelementptr inbounds nuw i8, ptr %i.sa, i64 11
  %i.sp = shl nuw i32 1, %i.ru                    ; 5 uses
  %i.sq = trunc i32 %i.sp to i8
  %i.sr = xor i8 %i.sq, -1                        ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sa, i64 10
  %i.st = getelementptr inbounds nuw i8, ptr %i.rx, i64 10 ; 2 uses
  br i1 %.not4701022, label %.lr.ph1030.split.us, label %.lr.ph1030.split

.lr.ph1030.split.us:                              ; preds = %.lr.ph1030
  %i.su = load i8, ptr %i.st, align 2, !tbaa !35
  %i.sv = zext i8 %i.su to i32
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %.lr.ph1030.split.us
  %.14181028.us = phi i32 [ %i.sd, %.lr.ph1030.split.us ], [ %i.sw, %bb.do ]
  %i.sw = add nuw nsw i32 %.14181028.us, %i.sv    ; 2 uses
  %.not469.us = icmp samesign ugt i32 %i.sw, %i.sg
  br i1 %.not469.us, label %._crit_edge1031, label %bb.do

.lr.ph1030.split:                                 ; preds = %.lr.ph1030
  %.val506 = load ptr, ptr %i.rx, align 16, !tbaa !31 ; 4 uses
  %.not.i525 = icmp eq ptr %.val506, null
  %i.sx = getelementptr inbounds nuw i8, ptr %.val506, i64 14
  %i.sy = getelementptr inbounds nuw i8, ptr %.val506, i64 12
  br label %.lr.ph1025

.lr.ph1025:                                       ; preds = %.lr.ph1030.split, %._crit_edge1026
  %.14181028 = phi i32 [ %i.sd, %.lr.ph1030.split ], [ %i.wc, %._crit_edge1026 ] ; 4 uses
  %i.sz = zext nneg i32 %.14181028 to i64
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph1025, %._crit_edge1012
  %.14151023 = phi i32 [ %i.sj, %.lr.ph1025 ], [ %i.vz, %._crit_edge1012 ] ; 4 uses
  br i1 %.not.i525, label %spec_ith_char.exit527, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ta = load i16, ptr %i.sx, align 2, !tbaa !29
  %i.tb = icmp eq i16 %i.ta, 1
  br i1 %i.tb, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.tc = load i16, ptr %i.sy, align 4, !tbaa !37
  %i.td = zext i16 %i.tc to i32
  %i.te = icmp samesign ult i32 %.14181028, %i.td
  br i1 %i.te, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.tf = load ptr, ptr %.val506, align 8, !tbaa !8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.sz
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !8
  %i.ti = zext i8 %i.th to i32
  br label %spec_ith_char.exit527

spec_ith_char.exit527:                            ; preds = %bb.dp, %bb.du
  %.0.i526 = phi i32 [ %i.ti, %bb.du ], [ %.14181028, %bb.dp ] ; 4 uses
  %.val = load ptr, ptr %i.sa, align 16, !tbaa !31 ; 4 uses
  %.not.i528 = icmp eq ptr %.val, null
  br i1 %.not.i528, label %spec_ith_char.exit530, label %bb.dv

bb.dv:                                            ; preds = %spec_ith_char.exit527
  %i.tj = getelementptr inbounds nuw i8, ptr %.val, i64 14
  %i.tk = load i16, ptr %i.tj, align 2, !tbaa !29
  %i.tl = icmp eq i16 %i.tk, 1
  br i1 %i.tl, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.tm = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.tn = load i16, ptr %i.tm, align 4, !tbaa !37
  %i.to = zext i16 %i.tn to i32
  %i.tp = icmp samesign ult i32 %.14151023, %i.to
  br i1 %i.tp, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.tq = load ptr, ptr %.val, align 8, !tbaa !8
  %i.tr = zext nneg i32 %.14151023 to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !8
  %i.tu = zext i8 %i.tt to i32
  br label %spec_ith_char.exit530

spec_ith_char.exit530:                            ; preds = %spec_ith_char.exit527, %bb.dz
  %.0.i529 = phi i32 [ %i.tu, %bb.dz ], [ %.14151023, %spec_ith_char.exit527 ] ; 4 uses
  %i.tv = load i8, ptr %i.sn, align 1, !tbaa !32
  %.not471 = icmp ne i8 %i.tv, 0                  ; 4 uses
  %i.tw = select i1 %.not471, i32 255, i32 %.0.i526 ; 3 uses
  %i.tx = load i8, ptr %i.so, align 1, !tbaa !32
  %.fr1078 = freeze i8 %i.tx
  %.not472 = icmp eq i8 %.fr1078, 0               ; 2 uses
  %i.ty = select i1 %.not472, i32 %.0.i529, i32 255 ; 6 uses
  %i.tz = select i1 %.not471, i32 0, i32 %.0.i526 ; 3 uses
  %.not4731007 = icmp ugt i32 %i.tz, %i.tw
  br i1 %.not4731007, label %._crit_edge1012, label %.preheader574.lr.ph.a

.preheader574.lr.ph.a:                            ; preds = %spec_ith_char.exit530
  br i1 %.not472, label %.preheader574.preheader.a, label %.preheader574.us

.preheader574.preheader.a:                        ; preds = %.preheader574.lr.ph.a
  %i.ua = add nuw nsw i32 %.0.i529, 1             ; 3 uses
  br label %.preheader574

.preheader574.us:                                 ; preds = %.preheader574.lr.ph.a, %._crit_edge1000.us
  %.03621011.us = phi i32 [ %.1363.lcssa.us, %._crit_edge1000.us ], [ 0, %.preheader574.lr.ph.a ] ; 3 uses
  %.03641008.us = phi i32 [ %i.un, %._crit_edge1000.us ], [ %i.tz, %.preheader574.lr.ph.a ] ; 4 uses
  %.not474997.us = icmp ugt i32 %.03621011.us, %i.ty
  br i1 %.not474997.us, label %._crit_edge1000.us, label %.lr.ph999.us

.lr.ph999.us:                                     ; preds = %.preheader574.us
  %i.ub = icmp eq i32 %.03641008.us, %.0.i526
  %or.cond499.us = select i1 %.not471, i1 %i.ub, i1 false
  br i1 %or.cond499.us, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

.lr.ph999.split.us1013:                           ; preds = %.lr.ph999.us, %filter_set_atpos.exit.us1017
  %.1363998.us1015 = phi i32 [ %i.um, %filter_set_atpos.exit.us1017 ], [ %.03621011.us, %.lr.ph999.us ] ; 4 uses
  %i.uc = icmp eq i32 %.1363998.us1015, %.0.i529
  br i1 %i.uc, label %filter_set_atpos.exit.us1017, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph999.split.us1013
  %i.ud = shl nuw nsw i32 %.1363998.us1015, 8
  %i.ue = or i32 %i.ud, %.03641008.us
  %i.uf = and i32 %i.ue, 65535
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 %i.ug ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !8   ; 2 uses
  %i.uj = zext i8 %i.ui to i32
  %i.uk = and i32 %i.sp, %i.uj
  %.not.not.i.us1016 = icmp eq i32 %i.uk, 0
  br i1 %.not.not.i.us1016, label %filter_set_atpos.exit.us1017, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ul = and i8 %i.ui, %i.sr
  store i8 %i.ul, ptr %i.uh, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1017

filter_set_atpos.exit.us1017:                     ; preds = %bb.eb, %bb.ea, %.lr.ph999.split.us1013
  %i.um = add i32 %.1363998.us1015, 1
  %exitcond1267.not = icmp eq i32 %.1363998.us1015, %i.ty
  br i1 %exitcond1267.not, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

._crit_edge1000.us:                               ; preds = %filter_set_atpos.exit.us1017, %.lr.ph999.us, %.preheader574.us
  %.1363.lcssa.us = phi i32 [ %.03621011.us, %.preheader574.us ], [ 256, %.lr.ph999.us ], [ 256, %filter_set_atpos.exit.us1017 ]
  %i.un = add nuw nsw i32 %.03641008.us, 1
  %.not473.us.not = icmp ult i32 %.03641008.us, %i.tw
  br i1 %.not473.us.not, label %.preheader574.us, label %._crit_edge1012

.preheader574:                                    ; preds = %.preheader574.preheader.a, %._crit_edge1000
  %.03621011 = phi i32 [ %.1363.lcssa, %._crit_edge1000 ], [ %.0.i529, %.preheader574.preheader.a ] ; 7 uses
  %.03641008 = phi i32 [ %i.vw, %._crit_edge1000 ], [ %i.tz, %.preheader574.preheader.a ] ; 6 uses
  %.not474997 = icmp ugt i32 %.03621011, %i.ty
  br i1 %.not474997, label %._crit_edge1000, label %.lr.ph999

.lr.ph999:                                        ; preds = %.preheader574
  %i.uo = icmp eq i32 %.03641008, %.0.i526
  %or.cond499 = select i1 %.not471, i1 %i.uo, i1 false
  br i1 %or.cond499, label %._crit_edge1000, label %.lr.ph999.split.preheader

.lr.ph999.split.preheader:                        ; preds = %.lr.ph999
  %i.up = add i32 %i.ty, %.03621011
  %i.uq = and i32 %i.up, 1
  %lcmp.mod1586.not.not = icmp eq i32 %i.uq, 0
  br i1 %lcmp.mod1586.not.not, label %.lr.ph999.split.prol, label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol:                             ; preds = %.lr.ph999.split.preheader
  %i.ur = shl nuw nsw i32 %.03621011, 8
  %i.us = or i32 %i.ur, %.03641008
  %i.ut = and i32 %i.us, 65535
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 %i.uu ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !8   ; 2 uses
  %i.ux = zext i8 %i.uw to i32
  %i.uy = and i32 %i.sp, %i.ux
  %.not.not.i.us.prol = icmp eq i32 %i.uy, 0
  br i1 %.not.not.i.us.prol, label %filter_set_atpos.exit.us1003.prol, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph999.split.prol
  %i.uz = and i8 %i.uw, %i.sr
  store i8 %i.uz, ptr %i.uv, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.prol

filter_set_atpos.exit.us1003.prol:                ; preds = %bb.ec, %.lr.ph999.split.prol
  %i.va = add i32 %.03621011, 1
  br label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol.loopexit:                    ; preds = %filter_set_atpos.exit.us1003.prol, %.lr.ph999.split.preheader
  %.1363998.us1002.unr = phi i32 [ %.03621011, %.lr.ph999.split.preheader ], [ %i.va, %filter_set_atpos.exit.us1003.prol ]
  %i.vb = icmp eq i32 %i.ty, %.03621011
  br i1 %i.vb, label %._crit_edge1000, label %.lr.ph999.split

.lr.ph999.split:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1
  %.1363998.us1002 = phi i32 [ %i.vv, %filter_set_atpos.exit.us1003.1 ], [ %.1363998.us1002.unr, %.lr.ph999.split.prol.loopexit ] ; 3 uses
  %i.vc = shl nuw nsw i32 %.1363998.us1002, 8
  %i.vd = or i32 %i.vc, %.03641008
  %i.ve = and i32 %i.vd, 65535
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %i.vf ; 2 uses
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !8   ; 2 uses
  %i.vi = zext i8 %i.vh to i32
  %i.vj = and i32 %i.sp, %i.vi
  %.not.not.i.us = icmp eq i32 %i.vj, 0
  br i1 %.not.not.i.us, label %filter_set_atpos.exit.us1003, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph999.split
  %i.vk = and i8 %i.vh, %i.sr
  store i8 %i.vk, ptr %i.vg, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003

filter_set_atpos.exit.us1003:                     ; preds = %bb.ed, %.lr.ph999.split
  %i.vl = add i32 %.1363998.us1002, 1             ; 2 uses
  %i.vm = shl nuw nsw i32 %i.vl, 8
  %i.vn = or i32 %i.vm, %.03641008
  %i.vo = and i32 %i.vn, 65535
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 %i.vp ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !8   ; 2 uses
  %i.vs = zext i8 %i.vr to i32
  %i.vt = and i32 %i.sp, %i.vs
  %.not.not.i.us.1 = icmp eq i32 %i.vt, 0
  br i1 %.not.not.i.us.1, label %filter_set_atpos.exit.us1003.1, label %bb.ee

bb.ee:                                            ; preds = %filter_set_atpos.exit.us1003
  %i.vu = and i8 %i.vr, %i.sr
  store i8 %i.vu, ptr %i.vq, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.1

filter_set_atpos.exit.us1003.1:                   ; preds = %bb.ee, %filter_set_atpos.exit.us1003
  %i.vv = add i32 %.1363998.us1002, 2
  %exitcond1268.not.1 = icmp eq i32 %i.vl, %i.ty
  br i1 %exitcond1268.not.1, label %._crit_edge1000, label %.lr.ph999.split

._crit_edge1000:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1, %.lr.ph999, %.preheader574
  %.1363.lcssa = phi i32 [ %.03621011, %.preheader574 ], [ %i.ua, %.lr.ph999 ], [ %i.ua, %filter_set_atpos.exit.us1003.1 ], [ %i.ua, %.lr.ph999.split.prol.loopexit ]
  %i.vw = add nuw nsw i32 %.03641008, 1
  %.not473.not = icmp ult i32 %.03641008, %i.tw
  br i1 %.not473.not, label %.preheader574, label %._crit_edge1012

._crit_edge1012:                                  ; preds = %._crit_edge1000.us, %._crit_edge1000, %spec_ith_char.exit530
  %i.vx = load i8, ptr %i.ss, align 2, !tbaa !35
  %i.vy = zext i8 %i.vx to i32
  %i.vz = add nuw nsw i32 %.14151023, %i.vy       ; 2 uses
  %.not470 = icmp samesign ugt i32 %i.vz, %i.sm
  br i1 %.not470, label %._crit_edge1026, label %bb.dp

._crit_edge1026:                                  ; preds = %._crit_edge1012
  %i.wa = load i8, ptr %i.st, align 2, !tbaa !35
  %i.wb = zext i8 %i.wa to i32
  %i.wc = add nuw nsw i32 %.14181028, %i.wb       ; 2 uses
  %.not469 = icmp samesign ugt i32 %i.wc, %i.sg
  br i1 %.not469, label %._crit_edge1031, label %.lr.ph1025

._crit_edge1031:                                  ; preds = %._crit_edge1026, %bb.do, %.lr.ph1033
  %indvars.iv.next1270 = add nuw nsw i64 %indvars.iv1269, 1 ; 2 uses
  %exitcond1273.not = icmp eq i64 %indvars.iv.next1270, %wide.trip.count1272
  br i1 %exitcond1273.not, label %bb.ef, label %.lr.ph1033

bb.ef:                                            ; preds = %._crit_edge1031
  %i.wd = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.we = load i8, ptr %i.wd, align 8, !tbaa !34  ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.rx, i64 9 ; 2 uses
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !33  ; 2 uses
  %.not4611058 = icmp ugt i8 %i.we, %i.wg
  br i1 %.not4611058, label %.loopexit, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.ef
  %i.wh = add i32 %.1401.lcssa, -2
  %i.wi = zext i8 %i.we to i32
  %i.wj = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.sa, i64 9 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.rx, i64 11 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sa, i64 11 ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.wo = shl nuw i32 1, %i.wh                    ; 3 uses
  %i.wp = trunc i32 %i.wo to i8
  %i.wq = xor i8 %i.wp, -1                        ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.sa, i64 10
  %i.ws = getelementptr inbounds nuw i8, ptr %i.rx, i64 10
  %.pre1276 = load i8, ptr %i.wk, align 1, !tbaa !33 ; 2 uses
  %i.wt = load i8, ptr %i.wj, align 8, !tbaa !34  ; 2 uses
  %i.wu = zext i8 %i.wt to i32
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph1061, %._crit_edge1057
  %i.wv = phi i8 [ %i.wg, %.lr.ph1061 ], [ %i.zn, %._crit_edge1057 ]
  %i.ww = phi i8 [ %.pre1276, %.lr.ph1061 ], [ %i.zo, %._crit_edge1057 ] ; 2 uses
  %i.wx = phi i8 [ %.pre1276, %.lr.ph1061 ], [ %i.zp, %._crit_edge1057 ] ; 2 uses
  %.24191059 = phi i32 [ %i.wi, %.lr.ph1061 ], [ %i.zs, %._crit_edge1057 ] ; 4 uses
  %.not4621053 = icmp ugt i8 %i.wt, %i.wx
  br i1 %.not4621053, label %._crit_edge1057, label %.lr.ph1056

.lr.ph1056:                                       ; preds = %bb.eg
  %i.wy = zext nneg i32 %.24191059 to i64
  %.1399.val = load ptr, ptr %i.rx, align 8, !tbaa !31 ; 4 uses
  %.not.i531 = icmp eq ptr %.1399.val, null
  %i.wz = getelementptr inbounds nuw i8, ptr %.1399.val, i64 14
  %i.xa = getelementptr inbounds nuw i8, ptr %.1399.val, i64 12
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1056, %._crit_edge1052
  %i.xb = phi i8 [ %i.ww, %.lr.ph1056 ], [ %i.zi, %._crit_edge1052 ]
  %.24161054 = phi i32 [ %i.wu, %.lr.ph1056 ], [ %i.zl, %._crit_edge1052 ] ; 4 uses
  br i1 %.not.i531, label %spec_ith_char.exit533, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xc = load i16, ptr %i.wz, align 2, !tbaa !29
  %i.xd = icmp eq i16 %i.xc, 1
  br i1 %i.xd, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.xe = load i16, ptr %i.xa, align 4, !tbaa !37
  %i.xf = zext i16 %i.xe to i32
  %i.xg = icmp samesign ult i32 %.24191059, %i.xf
  br i1 %i.xg, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.xh = load ptr, ptr %.1399.val, align 8, !tbaa !8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.wy
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !8
  %i.xk = zext i8 %i.xj to i32
  br label %spec_ith_char.exit533

spec_ith_char.exit533:                            ; preds = %bb.eh, %bb.em
  %.0.i532 = phi i32 [ %i.xk, %bb.em ], [ %.24191059, %bb.eh ] ; 3 uses
  %.1397.val = load ptr, ptr %i.sa, align 8, !tbaa !31 ; 4 uses
  %.not.i534 = icmp eq ptr %.1397.val, null
  br i1 %.not.i534, label %spec_ith_char.exit536, label %bb.en

bb.en:                                            ; preds = %spec_ith_char.exit533
  %i.xl = getelementptr inbounds nuw i8, ptr %.1397.val, i64 14
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !29
  %i.xn = icmp eq i16 %i.xm, 1
  br i1 %i.xn, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.xo = getelementptr inbounds nuw i8, ptr %.1397.val, i64 12
  %i.xp = load i16, ptr %i.xo, align 4, !tbaa !37
  %i.xq = zext i16 %i.xp to i32
  %i.xr = icmp samesign ult i32 %.24161054, %i.xq
  br i1 %i.xr, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.xs = load ptr, ptr %.1397.val, align 8, !tbaa !8
  %i.xt = zext nneg i32 %.24161054 to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !8
  %i.xw = zext i8 %i.xv to i32
  br label %spec_ith_char.exit536

spec_ith_char.exit536:                            ; preds = %spec_ith_char.exit533, %bb.er
  %.0.i535 = phi i32 [ %i.xw, %bb.er ], [ %.24161054, %spec_ith_char.exit533 ] ; 4 uses
  %i.xx = load i8, ptr %i.wl, align 1, !tbaa !32
  %.not463 = icmp eq i8 %i.xx, 0                  ; 2 uses
  %i.xy = select i1 %.not463, i32 %.0.i532, i32 255 ; 2 uses
  %i.xz = load i8, ptr %i.wm, align 1, !tbaa !32
  %.not464 = icmp eq i8 %i.xz, 0                  ; 2 uses
  %i.ya = select i1 %.not464, i32 %.0.i535, i32 255 ; 4 uses
  %i.yb = select i1 %.not463, i32 %.0.i532, i32 0 ; 2 uses
  %.not4651048 = icmp ugt i32 %i.yb, %i.xy
  br i1 %.not4651048, label %._crit_edge1052, label %.preheader.preheader

.preheader.preheader:                             ; preds = %spec_ith_char.exit536
  %i.yc = select i1 %.not464, i32 %.0.i535, i32 0
  %i.yd = add nuw nsw i32 %i.ya, 1                ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1040
  %.01051 = phi i32 [ %.1.lcssa, %._crit_edge1040 ], [ %i.yc, %.preheader.preheader ] ; 4 uses
  %.03611049 = phi i32 [ %i.zh, %._crit_edge1040 ], [ %i.yb, %.preheader.preheader ] ; 5 uses
  %.not4661037 = icmp ugt i32 %.01051, %i.ya
  br i1 %.not4661037, label %._crit_edge1040, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %.preheader
  %i.ye = icmp eq i32 %.03611049, %.0.i532
  %.fr = freeze i1 %i.ye
  br i1 %.fr, label %.lr.ph1039.split, label %.lr.ph1039.split.us.preheader

.lr.ph1039.split.us.preheader:                    ; preds = %.lr.ph1039
  %.pre1278 = load i8, ptr %i.wm, align 1, !tbaa !32
  br label %.lr.ph1039.split.us

.lr.ph1039.split.us:                              ; preds = %.lr.ph1039.split.us.preheader, %filter_set_end.exit.us
  %i.yf = phi i8 [ %i.yq, %filter_set_end.exit.us ], [ %.pre1278, %.lr.ph1039.split.us.preheader ] ; 3 uses
  %.11038.us = phi i32 [ %i.yr, %filter_set_end.exit.us ], [ %.01051, %.lr.ph1039.split.us.preheader ] ; 4 uses
  %.not468.us = icmp ne i8 %i.yf, 0
  %i.yg = icmp eq i32 %.11038.us, %.0.i535
  %or.cond505.us = select i1 %.not468.us, i1 %i.yg, i1 false
  br i1 %or.cond505.us, label %filter_set_end.exit.us, label %bb.es

bb.es:                                            ; preds = %.lr.ph1039.split.us
  %i.yh = shl nuw nsw i32 %.11038.us, 8
  %i.yi = or i32 %i.yh, %.03611049
  %i.yj = and i32 %i.yi, 65535
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.yk ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !8   ; 2 uses
  %i.yn = zext i8 %i.ym to i32
  %i.yo = and i32 %i.wo, %i.yn
  %.not.not.i537.us = icmp eq i32 %i.yo, 0
  br i1 %.not.not.i537.us, label %filter_set_end.exit.us, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.yp = and i8 %i.ym, %i.wq
  store i8 %i.yp, ptr %i.yl, align 1, !tbaa !8
  %.pre1277 = load i8, ptr %i.wm, align 1, !tbaa !32
  br label %filter_set_end.exit.us

filter_set_end.exit.us:                           ; preds = %bb.et, %bb.es, %.lr.ph1039.split.us
  %i.yq = phi i8 [ %.pre1277, %bb.et ], [ %i.yf, %bb.es ], [ %i.yf, %.lr.ph1039.split.us ]
  %i.yr = add i32 %.11038.us, 1
  %exitcond1274.not = icmp eq i32 %.11038.us, %i.ya
  br i1 %exitcond1274.not, label %._crit_edge1040, label %.lr.ph1039.split.us

.lr.ph1039.split:                                 ; preds = %.lr.ph1039
  %i.ys = load i8, ptr %i.wl, align 1, !tbaa !32
  %.not1079 = icmp eq i8 %i.ys, 0
  br i1 %.not1079, label %.lr.ph1039.split.split, label %._crit_edge1040

.lr.ph1039.split.split:                           ; preds = %.lr.ph1039.split, %filter_set_end.exit
  %i.yt = phi i8 [ %i.zf, %filter_set_end.exit ], [ 0, %.lr.ph1039.split ] ; 2 uses
  %.11038 = phi i32 [ %i.zg, %filter_set_end.exit ], [ %.01051, %.lr.ph1039.split ] ; 4 uses
  %i.yu = shl nuw nsw i32 %.11038, 8
  %i.yv = or i32 %i.yu, %.03611049
end_hunk_0
