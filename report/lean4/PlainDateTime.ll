Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/PlainDateTime?download=true
inline.NumInlined: 1392
inline.NumDeleted: 55
begin_hunk_0_@l_Std_Time_PlainDateTime_ofWallTime:bb.a
  br i1 %.not.i447, label %lean_nat_lt.exit, label %.split1293, !prof !16

.split1293:                                       ; preds = %lean_dec.exit522
  %i.qn = icmp ugt ptr %i.jt, inttoptr (i64 21 to ptr)
  br i1 %i.qn, label %bb.gt, label %bb.gm

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit522
  %i.qo = tail call zeroext i1 @lean_nat_big_lt(ptr noundef nonnull inttoptr (i64 21 to ptr), ptr noundef %i.jt) #6
  br i1 %i.qo, label %bb.gt, label %bb.gp

bb.gm:                                            ; preds = %.split1293
  %i.qp = lshr i64 %i.ju, 1
  %i.qq = add nuw i64 %i.qp, 2                    ; 3 uses
  %i.qr = icmp sgt i64 %i.qq, -1
  br i1 %i.qr, label %bb.gn, label %bb.go, !prof !13

bb.gn:                                            ; preds = %bb.gm
  %i.qs = shl nuw i64 %i.qq, 1
  %i.qt = or disjoint i64 %i.qs, 1
  %i.qu = inttoptr i64 %i.qt to ptr
  br label %lean_dec.exit518

bb.go:                                            ; preds = %bb.gm
  %i.qv = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) %i.qq) #6
  br label %lean_dec.exit518

bb.gp:                                            ; preds = %lean_nat_lt.exit
  %i.qw = tail call ptr @lean_nat_big_add(ptr noundef %i.jt, ptr noundef nonnull inttoptr (i64 5 to ptr)) #6 ; 3 uses
  %i.qx = load i32, ptr %i.jt, align 4, !tbaa !12 ; 3 uses
  %i.qy = icmp sgt i32 %i.qx, 1
  br i1 %i.qy, label %bb.gq, label %bb.gr, !prof !13

bb.gq:                                            ; preds = %bb.gp
  %i.qz = add nsw i32 %i.qx, -1
  store i32 %i.qz, ptr %i.jt, align 4, !tbaa !12
  br label %lean_dec.exit518

bb.gr:                                            ; preds = %bb.gp
  %.not.i.i516 = icmp eq i32 %i.qx, 0
  br i1 %.not.i.i516, label %lean_dec.exit518, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jt) #6
  br label %lean_dec.exit518

lean_dec.exit518:                                 ; preds = %bb.gn, %bb.go, %bb.gq, %bb.gr, %bb.gs
  %.0.i1008 = phi ptr [ %i.qw, %bb.gq ], [ %i.qw, %bb.gs ], [ %i.qw, %bb.gr ], [ %i.qv, %bb.go ], [ %i.qu, %bb.gn ] ; 3 uses
  %i.ra = ptrtoint ptr %.0.i1008 to i64           ; 2 uses
  %i.rb = and i64 %i.ra, 1
  %.not.i783 = icmp eq i64 %i.rb, 0
  %i.rc = icmp ult ptr %.0.i1008, inttoptr (i64 4294967296 to ptr)
  %or.cond.i784 = or i1 %i.rc, %.not.i783
  br i1 %or.cond.i784, label %lean_nat_to_int.exit786, label %lean_nat_to_int.exit786.sink.split

bb.gt:                                            ; preds = %.split1293, %lean_nat_lt.exit
  %i.rd = ptrtoint ptr %.0.i77512821286 to i64    ; 2 uses
  %i.re = and i64 %i.rd, 1
  %.not.i787 = icmp eq i64 %i.re, 0
  br i1 %.not.i787, label %bb.gy, label %bb.gu, !prof !16

bb.gu:                                            ; preds = %bb.gt
  %i.rf = ptrtoint ptr %.0.i677 to i64            ; 2 uses
  %i.rg = and i64 %i.rf, 1
  %.not7.i788 = icmp eq i64 %i.rg, 0
  br i1 %.not7.i788, label %lean_int_add.exit791, label %bb.gv, !prof !16

bb.gv:                                            ; preds = %bb.gu
  %i.rh = shl i64 %i.rd, 31
  %i.ri = ashr i64 %i.rh, 32
  %i.rj = shl i64 %i.rf, 31
  %i.rk = ashr i64 %i.rj, 32
  %i.rl = add nsw i64 %i.ri, %i.rk                ; 3 uses
  %i.rm = add nsw i64 %i.rl, 2147483648
  %i.rn = icmp ult i64 %i.rm, 4294967296
  br i1 %i.rn, label %bb.gw, label %bb.gx, !prof !13

bb.gw:                                            ; preds = %bb.gv
  %i.ro = shl nsw i64 %i.rl, 1
  %i.rp = and i64 %i.ro, 8589934590
  %i.rq = or disjoint i64 %i.rp, 1
  %i.rr = inttoptr i64 %i.rq to ptr
  br label %lean_dec.exit514

bb.gx:                                            ; preds = %bb.gv
  %i.rs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.rl) #6
  br label %lean_dec.exit514

lean_int_add.exit791:                             ; preds = %bb.gu
  %i.rt = tail call ptr @lean_int_big_add(ptr noundef %.0.i77512821286, ptr noundef %.0.i677) #6
  br label %lean_dec.exit514

bb.gy:                                            ; preds = %bb.gt
  %i.ru = tail call ptr @lean_int_big_add(ptr noundef %.0.i77512821286, ptr noundef %.0.i677) #6 ; 3 uses
  %i.rv = load i32, ptr %.0.i77512821286, align 4, !tbaa !12 ; 3 uses
  %i.rw = icmp sgt i32 %i.rv, 1
  br i1 %i.rw, label %bb.gz, label %bb.ha, !prof !13

bb.gz:                                            ; preds = %bb.gy
  %i.rx = add nsw i32 %i.rv, -1
  store i32 %i.rx, ptr %.0.i77512821286, align 4, !tbaa !12
  br label %lean_dec.exit514

bb.ha:                                            ; preds = %bb.gy
  %.not.i.i512 = icmp eq i32 %i.rv, 0
  br i1 %.not.i.i512, label %lean_dec.exit514, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i77512821286) #6
  br label %lean_dec.exit514

lean_dec.exit514:                                 ; preds = %bb.gx, %bb.gw, %lean_int_add.exit791, %bb.gz, %bb.ha, %bb.hb
  %.0.i7891296 = phi ptr [ %i.rt, %lean_int_add.exit791 ], [ %i.ru, %bb.gz ], [ %i.ru, %bb.ha ], [ %i.ru, %bb.hb ], [ %i.rs, %bb.gx ], [ %i.rr, %bb.gw ] ; 3 uses
  br i1 %.not.i447, label %bb.he, label %bb.hc, !prof !16

bb.hc:                                            ; preds = %lean_dec.exit514
  %i.ry = icmp ult ptr %i.jt, inttoptr (i64 20 to ptr)
  br i1 %i.ry, label %lean_nat_to_int.exit786, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.rz = add i64 %i.ju, -20
  %i.sa = inttoptr i64 %i.rz to ptr
  br label %lean_dec.exit510

bb.he:                                            ; preds = %lean_dec.exit514
  %i.sb = tail call ptr @lean_nat_big_sub(ptr noundef %i.jt, ptr noundef nonnull inttoptr (i64 21 to ptr)) #6 ; 3 uses
  %i.sc = load i32, ptr %i.jt, align 4, !tbaa !12 ; 3 uses
  %i.sd = icmp sgt i32 %i.sc, 1
  br i1 %i.sd, label %bb.hf, label %bb.hg, !prof !13

bb.hf:                                            ; preds = %bb.he
  %i.se = add nsw i32 %i.sc, -1
  store i32 %i.se, ptr %i.jt, align 4, !tbaa !12
  br label %lean_dec.exit510

bb.hg:                                            ; preds = %bb.he
  %.not.i.i508 = icmp eq i32 %i.sc, 0
  br i1 %.not.i.i508, label %lean_dec.exit510, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jt) #6
  br label %lean_dec.exit510

lean_dec.exit510:                                 ; preds = %bb.hd, %bb.hf, %bb.hg, %bb.hh
  %.1.i1010 = phi ptr [ %i.sb, %bb.hf ], [ %i.sb, %bb.hh ], [ %i.sb, %bb.hg ], [ %i.sa, %bb.hd ] ; 3 uses
  %i.sf = ptrtoint ptr %.1.i1010 to i64           ; 2 uses
  %i.sg = and i64 %i.sf, 1
  %.not.i792 = icmp eq i64 %i.sg, 0
  %i.sh = icmp ult ptr %.1.i1010, inttoptr (i64 4294967296 to ptr)
  %or.cond.i793 = or i1 %i.sh, %.not.i792
  br i1 %or.cond.i793, label %lean_nat_to_int.exit786, label %lean_nat_to_int.exit786.sink.split

lean_nat_to_int.exit786.sink.split:               ; preds = %lean_dec.exit510, %lean_dec.exit518
  %.sink1389 = phi i64 [ %i.ra, %lean_dec.exit518 ], [ %i.sf, %lean_dec.exit510 ]
  %.0408.ph = phi ptr [ %.0.i77512821286, %lean_dec.exit518 ], [ %.0.i7891296, %lean_dec.exit510 ]
  %i.si = lshr i64 %.sink1389, 1
  %i.sj = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.si) #6
  br label %lean_nat_to_int.exit786

lean_nat_to_int.exit786:                          ; preds = %lean_nat_to_int.exit786.sink.split, %bb.hc, %lean_dec.exit510, %lean_dec.exit518
  %.0410 = phi ptr [ inttoptr (i64 1 to ptr), %bb.hc ], [ %.0.i1008, %lean_dec.exit518 ], [ %.1.i1010, %lean_dec.exit510 ], [ %i.sj, %lean_nat_to_int.exit786.sink.split ] ; 2 uses
  %.0408 = phi ptr [ %.0.i7891296, %bb.hc ], [ %.0.i77512821286, %lean_dec.exit518 ], [ %.0.i7891296, %lean_dec.exit510 ], [ %.0408.ph, %lean_nat_to_int.exit786.sink.split ] ; 8 uses
  %i.sk = load atomic i32, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__13_once seq_cst, align 4, !tbaa !15
  %i.sl = icmp eq i32 %i.sk, 1
  br i1 %i.sl, label %bb.hi, label %bb.hj, !prof !13

bb.hi:                                            ; preds = %lean_nat_to_int.exit786
  %i.sm = load ptr, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__13, align 8, !tbaa !10
  br label %lean_obj_once.exit797

bb.hj:                                            ; preds = %lean_nat_to_int.exit786
  %i.sn = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__13, ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__13_once, ptr noundef nonnull @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__13) #6
  br label %lean_obj_once.exit797

lean_obj_once.exit797:                            ; preds = %bb.hi, %bb.hj
  %.0.i796 = phi ptr [ %i.sm, %bb.hi ], [ %i.sn, %bb.hj ] ; 6 uses
  %i.so = ptrtoint ptr %.0389 to i64              ; 4 uses
  %i.sp = and i64 %i.so, 1
  %.not.i798 = icmp eq i64 %i.sp, 0               ; 2 uses
  br i1 %.not.i798, label %.critedge.i805, label %bb.hk, !prof !16

bb.hk:                                            ; preds = %lean_obj_once.exit797
  %i.sq = ptrtoint ptr %.0.i796 to i64            ; 3 uses
  %i.sr = and i64 %i.sq, 1
  %.not21.i = icmp eq i64 %i.sr, 0
  br i1 %.not21.i, label %.critedge.i805, label %bb.hl, !prof !16

bb.hl:                                            ; preds = %bb.hk
  %i.ss = shl i64 %i.sq, 31
  %i.st = ashr i64 %i.ss, 32                      ; 3 uses
  %i.su = icmp eq i64 %i.st, 0
  br i1 %i.su, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.sv = shl i64 %i.so, 31
  %i.sw = ashr i64 %i.sv, 32
  %i.sx = srem i64 %i.sw, %i.st                   ; 2 uses
  %i.sy = icmp slt i64 %i.sx, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.st, i1 true)
  %i.sz = select i1 %i.sy, i64 %.p.i, i64 0
  %.0.i799 = add nsw i64 %i.sz, %i.sx             ; 3 uses
  %1 = icmp ult i64 %.0.i799, 2147483648
  br i1 %1, label %bb.hn, label %bb.ho, !prof !13

bb.hn:                                            ; preds = %bb.hm
  %i.ta = shl nuw nsw i64 %.0.i799, 1
  %i.tb = or disjoint i64 %i.ta, 1
  %i.tc = inttoptr i64 %i.tb to ptr
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %i.td = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i799) #6
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn, %bb.hl
  %.1.i8001014.ph = phi ptr [ %.0389, %bb.hl ], [ %i.tc, %bb.hn ], [ %i.td, %bb.ho ] ; 3 uses
  %i.te = lshr i64 %i.sq, 1                       ; 2 uses
  %i.tf = trunc i64 %i.te to i32                  ; 2 uses
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %lean_int_ediv.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %sext.i = shl i64 %i.te, 32
  %i.th = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ti = shl i64 %i.so, 31
  %i.tj = ashr i64 %i.ti, 32                      ; 2 uses
  %i.tk = sdiv i64 %i.tj, %i.th
  %i.tl = srem i64 %i.tj, %i.th
  %i.tm = icmp slt i64 %i.tl, 0
  %i.tn = icmp sgt i32 %i.tf, 0
  %.v.i = select i1 %i.tn, i64 -1, i64 1
  %i.to = select i1 %i.tm, i64 %.v.i, i64 0
  %.0.i803 = add nsw i64 %i.to, %i.tk             ; 3 uses
  %i.tp = add nsw i64 %.0.i803, 2147483648
  %i.tq = icmp ult i64 %i.tp, 4294967296
  br i1 %i.tq, label %bb.hr, label %bb.hs, !prof !13

bb.hr:                                            ; preds = %bb.hq
  %i.tr = shl nsw i64 %.0.i803, 1
  %i.ts = and i64 %i.tr, 8589934590
  %i.tt = or disjoint i64 %i.ts, 1
  %i.tu = inttoptr i64 %i.tt to ptr
  br label %lean_int_ediv.exit

bb.hs:                                            ; preds = %bb.hq
  %i.tv = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i803) #6
  br label %lean_int_ediv.exit

.critedge.i805:                                   ; preds = %bb.hk, %lean_obj_once.exit797
  %i.tw = tail call ptr @lean_int_big_emod(ptr noundef %.0389, ptr noundef %.0.i796) #6
  %i.tx = tail call ptr @lean_int_big_ediv(ptr noundef %.0389, ptr noundef %.0.i796) #6
  br label %lean_int_ediv.exit

lean_int_ediv.exit:                               ; preds = %bb.hp, %bb.hr, %bb.hs, %.critedge.i805
  %.1.i8001012 = phi ptr [ %i.tw, %.critedge.i805 ], [ %.1.i8001014.ph, %bb.hp ], [ %.1.i8001014.ph, %bb.hr ], [ %.1.i8001014.ph, %bb.hs ]
  %.1.i804 = phi ptr [ %i.tx, %.critedge.i805 ], [ inttoptr (i64 1 to ptr), %bb.hp ], [ %i.tu, %bb.hr ], [ %i.tv, %bb.hs ] ; 7 uses
  %i.ty = ptrtoint ptr %.1.i804 to i64            ; 2 uses
  %i.tz = and i64 %i.ty, 1
  %.not.i806 = icmp eq i64 %i.tz, 0
  br i1 %.not.i806, label %bb.hy, label %bb.ht, !prof !16

bb.ht:                                            ; preds = %lean_int_ediv.exit
  %i.ua = ptrtoint ptr %.0.i796 to i64            ; 2 uses
  %i.ub = and i64 %i.ua, 1
  %.not21.i807 = icmp eq i64 %i.ub, 0
  br i1 %.not21.i807, label %lean_int_emod.exit812, label %bb.hu, !prof !16

bb.hu:                                            ; preds = %bb.ht
  %i.uc = shl i64 %i.ua, 31
  %i.ud = ashr i64 %i.uc, 32                      ; 3 uses
  %i.ue = icmp eq i64 %i.ud, 0
  br i1 %i.ue, label %lean_dec.exit594, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.uf = shl i64 %i.ty, 31
  %i.ug = ashr i64 %i.uf, 32
  %i.uh = srem i64 %i.ug, %i.ud                   ; 2 uses
  %i.ui = icmp slt i64 %i.uh, 0
  %.p.i808 = tail call i64 @llvm.abs.i64(i64 %i.ud, i1 true)
  %i.uj = select i1 %i.ui, i64 %.p.i808, i64 0
  %.0.i809 = add nsw i64 %i.uj, %i.uh             ; 3 uses
  %2 = icmp ult i64 %.0.i809, 2147483648
  br i1 %2, label %bb.hw, label %bb.hx, !prof !13

bb.hw:                                            ; preds = %bb.hv
  %i.uk = shl nuw nsw i64 %.0.i809, 1
  %i.ul = or disjoint i64 %i.uk, 1
  %i.um = inttoptr i64 %i.ul to ptr
  br label %lean_dec.exit594

bb.hx:                                            ; preds = %bb.hv
  %i.un = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i809) #6
  br label %lean_dec.exit594

lean_int_emod.exit812:                            ; preds = %bb.ht
  %i.uo = tail call ptr @lean_int_big_emod(ptr noundef %.1.i804, ptr noundef %.0.i796) #6
  br label %lean_dec.exit594

bb.hy:                                            ; preds = %lean_int_ediv.exit
  %i.up = tail call ptr @lean_int_big_emod(ptr noundef %.1.i804, ptr noundef %.0.i796) #6 ; 3 uses
  %i.uq = load i32, ptr %.1.i804, align 4, !tbaa !12 ; 3 uses
  %i.ur = icmp sgt i32 %i.uq, 1
  br i1 %i.ur, label %bb.hz, label %bb.ia, !prof !13

bb.hz:                                            ; preds = %bb.hy
  %i.us = add nsw i32 %i.uq, -1
  store i32 %i.us, ptr %.1.i804, align 4, !tbaa !12
  br label %lean_dec.exit594

bb.ia:                                            ; preds = %bb.hy
  %.not.i.i592 = icmp eq i32 %i.uq, 0
  br i1 %.not.i.i592, label %lean_dec.exit594, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i804) #6
  br label %lean_dec.exit594

lean_dec.exit594:                                 ; preds = %bb.hx, %bb.hw, %bb.hu, %lean_int_emod.exit812, %bb.hz, %bb.ia, %bb.ib
  %.1.i8101301 = phi ptr [ %i.uo, %lean_int_emod.exit812 ], [ %i.up, %bb.hz ], [ %i.up, %bb.ia ], [ %i.up, %bb.ib ], [ %i.un, %bb.hx ], [ %i.um, %bb.hw ], [ %.1.i804, %bb.hu ]
  %i.ut = load atomic i32, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__14_once seq_cst, align 4, !tbaa !15
  %i.uu = icmp eq i32 %i.ut, 1
  br i1 %i.uu, label %bb.ic, label %bb.id, !prof !13

bb.ic:                                            ; preds = %lean_dec.exit594
  %i.uv = load ptr, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__14, align 8, !tbaa !10
  br label %lean_obj_once.exit814

bb.id:                                            ; preds = %lean_dec.exit594
  %i.uw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__14, ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__14_once, ptr noundef nonnull @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__14) #6
  br label %lean_obj_once.exit814

lean_obj_once.exit814:                            ; preds = %bb.ic, %bb.id
  %.0.i813 = phi ptr [ %i.uv, %bb.ic ], [ %i.uw, %bb.id ] ; 3 uses
  br i1 %.not.i798, label %bb.ij, label %bb.ie, !prof !16

bb.ie:                                            ; preds = %lean_obj_once.exit814
  %i.ux = ptrtoint ptr %.0.i813 to i64            ; 2 uses
  %i.uy = and i64 %i.ux, 1
  %.not18.i816 = icmp eq i64 %i.uy, 0
  br i1 %.not18.i816, label %lean_int_ediv.exit822, label %bb.if, !prof !16

bb.if:                                            ; preds = %bb.ie
  %i.uz = lshr i64 %i.ux, 1                       ; 2 uses
  %i.va = trunc i64 %i.uz to i32                  ; 2 uses
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %lean_dec.exit590, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %sext.i817 = shl i64 %i.uz, 32
  %i.vc = ashr exact i64 %sext.i817, 32           ; 2 uses
  %i.vd = shl i64 %i.so, 31
  %i.ve = ashr i64 %i.vd, 32                      ; 2 uses
  %i.vf = sdiv i64 %i.ve, %i.vc
  %i.vg = srem i64 %i.ve, %i.vc
  %i.vh = icmp slt i64 %i.vg, 0
  %i.vi = icmp sgt i32 %i.va, 0
  %.v.i818 = select i1 %i.vi, i64 -1, i64 1
  %i.vj = select i1 %i.vh, i64 %.v.i818, i64 0
  %.0.i819 = add nsw i64 %i.vj, %i.vf             ; 3 uses
  %i.vk = add nsw i64 %.0.i819, 2147483648
  %i.vl = icmp ult i64 %i.vk, 4294967296
  br i1 %i.vl, label %bb.ih, label %bb.ii, !prof !13

bb.ih:                                            ; preds = %bb.ig
  %i.vm = shl nsw i64 %.0.i819, 1
  %i.vn = and i64 %i.vm, 8589934590
  %i.vo = or disjoint i64 %i.vn, 1
  %i.vp = inttoptr i64 %i.vo to ptr
  br label %lean_dec.exit590

bb.ii:                                            ; preds = %bb.ig
  %i.vq = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i819) #6
  br label %lean_dec.exit590

lean_int_ediv.exit822:                            ; preds = %bb.ie
  %i.vr = tail call ptr @lean_int_big_ediv(ptr noundef %.0389, ptr noundef %.0.i813) #6
  br label %lean_dec.exit590

bb.ij:                                            ; preds = %lean_obj_once.exit814
  %i.vs = tail call ptr @lean_int_big_ediv(ptr noundef %.0389, ptr noundef %.0.i813) #6 ; 3 uses
  %i.vt = load i32, ptr %.0389, align 4, !tbaa !12 ; 3 uses
  %i.vu = icmp sgt i32 %i.vt, 1
  br i1 %i.vu, label %bb.ik, label %bb.il, !prof !13

bb.ik:                                            ; preds = %bb.ij
  %i.vv = add nsw i32 %i.vt, -1
  store i32 %i.vv, ptr %.0389, align 4, !tbaa !12
  br label %lean_dec.exit590

bb.il:                                            ; preds = %bb.ij
  %.not.i.i588 = icmp eq i32 %i.vt, 0
  br i1 %.not.i.i588, label %lean_dec.exit590, label %bb.im

bb.im:                                            ; preds = %bb.il
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0389) #6
  br label %lean_dec.exit590

lean_dec.exit590:                                 ; preds = %bb.ii, %bb.ih, %bb.if, %lean_int_ediv.exit822, %bb.ik, %bb.il, %bb.im
  %.1.i8201304 = phi ptr [ %i.vr, %lean_int_ediv.exit822 ], [ %i.vs, %bb.ik ], [ %i.vs, %bb.il ], [ %i.vs, %bb.im ], [ %i.vq, %bb.ii ], [ %i.vp, %bb.ih ], [ inttoptr (i64 1 to ptr), %bb.if ]
  br i1 %.not.i690, label %bb.is, label %bb.in, !prof !16

bb.in:                                            ; preds = %lean_dec.exit590
  %i.vw = ptrtoint ptr %.0.i681 to i64            ; 2 uses
  %i.vx = and i64 %i.vw, 1
  %.not21.i824 = icmp eq i64 %i.vx, 0
  br i1 %.not21.i824, label %lean_int_emod.exit829, label %bb.io, !prof !16

bb.io:                                            ; preds = %bb.in
  %i.vy = shl i64 %i.vw, 31
  %i.vz = ashr i64 %i.vy, 32                      ; 3 uses
  %i.wa = icmp eq i64 %i.vz, 0
  br i1 %i.wa, label %lean_dec.exit586, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.wb = shl i64 %i.eb, 31
  %i.wc = ashr i64 %i.wb, 32
  %i.wd = srem i64 %i.wc, %i.vz                   ; 2 uses
  %i.we = icmp slt i64 %i.wd, 0
  %.p.i825 = tail call i64 @llvm.abs.i64(i64 %i.vz, i1 true)
  %i.wf = select i1 %i.we, i64 %.p.i825, i64 0
  %.0.i826 = add nsw i64 %i.wf, %i.wd             ; 3 uses
  %3 = icmp ult i64 %.0.i826, 2147483648
  br i1 %3, label %bb.iq, label %bb.ir, !prof !13

bb.iq:                                            ; preds = %bb.ip
  %i.wg = shl nuw nsw i64 %.0.i826, 1
  %i.wh = or disjoint i64 %i.wg, 1
  %i.wi = inttoptr i64 %i.wh to ptr
  br label %lean_dec.exit586

bb.ir:                                            ; preds = %bb.ip
  %i.wj = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i826) #6
  br label %lean_dec.exit586

lean_int_emod.exit829:                            ; preds = %bb.in
  %i.wk = tail call ptr @lean_int_big_emod(ptr noundef %.0.i68812251229, ptr noundef %.0.i681) #6
  br label %lean_dec.exit586

bb.is:                                            ; preds = %lean_dec.exit590
  %i.wl = tail call ptr @lean_int_big_emod(ptr noundef %.0.i68812251229, ptr noundef %.0.i681) #6 ; 3 uses
  %i.wm = load i32, ptr %.0.i68812251229, align 4, !tbaa !12 ; 3 uses
  %i.wn = icmp sgt i32 %i.wm, 1
  br i1 %i.wn, label %bb.it, label %bb.iu, !prof !13

bb.it:                                            ; preds = %bb.is
  %i.wo = add nsw i32 %i.wm, -1
  store i32 %i.wo, ptr %.0.i68812251229, align 4, !tbaa !12
  br label %lean_dec.exit586

bb.iu:                                            ; preds = %bb.is
  %.not.i.i584 = icmp eq i32 %i.wm, 0
  br i1 %.not.i.i584, label %lean_dec.exit586, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i68812251229) #6
  br label %lean_dec.exit586

lean_dec.exit586:                                 ; preds = %bb.ir, %bb.iq, %bb.io, %lean_int_emod.exit829, %bb.it, %bb.iu, %bb.iv
  %.1.i8271307 = phi ptr [ %i.wk, %lean_int_emod.exit829 ], [ %i.wl, %bb.it ], [ %i.wl, %bb.iu ], [ %i.wl, %bb.iv ], [ %i.wj, %bb.ir ], [ %i.wi, %bb.iq ], [ %.0.i68812251229, %bb.io ]
  %i.wp = tail call ptr @l_Fin_succ___redArg(ptr noundef %.1.i7801291) #6 ; 9 uses
  %i.wq = ptrtoint ptr %.1.i7801291 to i64
  %i.wr = and i64 %i.wq, 1
  %.not.i579 = icmp eq i64 %i.wr, 0
  br i1 %.not.i579, label %bb.iw, label %lean_dec.exit582

bb.iw:                                            ; preds = %lean_dec.exit586
  %i.ws = load i32, ptr %.1.i7801291, align 4, !tbaa !12 ; 3 uses
  %i.wt = icmp sgt i32 %i.ws, 1
  br i1 %i.wt, label %bb.ix, label %bb.iy, !prof !13

bb.ix:                                            ; preds = %bb.iw
  %i.wu = add nsw i32 %i.ws, -1
  store i32 %i.wu, ptr %.1.i7801291, align 4, !tbaa !12
  br label %lean_dec.exit582

bb.iy:                                            ; preds = %bb.iw
  %.not.i.i580 = icmp eq i32 %i.ws, 0
  br i1 %.not.i.i580, label %lean_dec.exit582, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i7801291) #6
  br label %lean_dec.exit582

lean_dec.exit582:                                 ; preds = %lean_dec.exit586, %bb.iz, %bb.iy, %bb.ix
  %i.wv = ptrtoint ptr %i.wp to i64               ; 2 uses
  %i.ww = and i64 %i.wv, 1
  %.not1038 = icmp eq i64 %i.ww, 0
  br i1 %.not1038, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !16

lean_nat_le.exit:                                 ; preds = %lean_dec.exit582
  %i.wx = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef %i.wp) #6
  br i1 %i.wx, label %lean_dec.exit578, label %bb.ct

lean_nat_le.exit.thread:                          ; preds = %lean_dec.exit582
  %.not1390 = icmp ult ptr %i.wp, inttoptr (i64 3 to ptr)
  br i1 %.not1390, label %lean_dec.exit578, label %bb.cx

bb.ja:                                            ; preds = %.split1334, %lean_int_dec_eq.exit875
  %.not.i830 = icmp eq i64 %i.acq, 0
  br i1 %.not.i830, label %bb.jf, label %bb.jb, !prof !16

bb.jb:                                            ; preds = %bb.ja
  %i.wy = ptrtoint ptr %.0.i677 to i64            ; 2 uses
  %i.wz = and i64 %i.wy, 1
  %.not7.i831 = icmp eq i64 %i.wz, 0
  br i1 %.not7.i831, label %lean_int_sub.exit834, label %bb.jc, !prof !16

bb.jc:                                            ; preds = %bb.jb
  %i.xa = shl i64 %i.acp, 31
  %i.xb = ashr i64 %i.xa, 32
  %i.xc = shl i64 %i.wy, 31
  %i.xd = ashr i64 %i.xc, 32
  %i.xe = sub nsw i64 %i.xb, %i.xd                ; 3 uses
  %i.xf = add nsw i64 %i.xe, 2147483648
  %i.xg = icmp ult i64 %i.xf, 4294967296
  br i1 %i.xg, label %bb.jd, label %bb.je, !prof !13

bb.jd:                                            ; preds = %bb.jc
  %i.xh = shl nsw i64 %i.xe, 1
  %i.xi = and i64 %i.xh, 8589934590
  %i.xj = or disjoint i64 %i.xi, 1
  %i.xk = inttoptr i64 %i.xj to ptr
  br label %lean_dec.exit498

bb.je:                                            ; preds = %bb.jc
  %i.xl = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.xe) #6
  br label %lean_dec.exit498

lean_int_sub.exit834:                             ; preds = %bb.jb
  %i.xm = tail call ptr @lean_int_big_sub(ptr noundef %.1.i869, ptr noundef %.0.i677) #6
  br label %lean_dec.exit498

bb.jf:                                            ; preds = %bb.ja
  %i.xn = tail call ptr @lean_int_big_sub(ptr noundef %.1.i869, ptr noundef %.0.i677) #6 ; 3 uses
  %i.xo = load i32, ptr %.1.i869, align 4, !tbaa !12 ; 3 uses
  %i.xp = icmp sgt i32 %i.xo, 1
  br i1 %i.xp, label %bb.jg, label %bb.jh, !prof !13

bb.jg:                                            ; preds = %bb.jf
  %i.xq = add nsw i32 %i.xo, -1
  store i32 %i.xq, ptr %.1.i869, align 4, !tbaa !12
  br label %lean_dec.exit498

bb.jh:                                            ; preds = %bb.jf
  %.not.i.i496 = icmp eq i32 %i.xo, 0
  br i1 %.not.i.i496, label %lean_dec.exit498, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i869) #6
  br label %lean_dec.exit498

lean_dec.exit498:                                 ; preds = %bb.je, %bb.jd, %.split1334, %lean_int_sub.exit834, %bb.ji, %bb.jh, %bb.jg, %lean_int_dec_eq.exit875
  %.0402 = phi ptr [ %.1.i869, %lean_int_dec_eq.exit875 ], [ %i.xn, %bb.jg ], [ %i.xn, %bb.jh ], [ %i.xn, %bb.ji ], [ %i.xm, %lean_int_sub.exit834 ], [ %.1.i869, %.split1334 ], [ %i.xl, %bb.je ], [ %i.xk, %bb.jd ] ; 6 uses
  %i.xr = ptrtoint ptr %.0402 to i64              ; 3 uses
  %i.xs = and i64 %i.xr, 1                        ; 2 uses
  %.not.i835 = icmp eq i64 %i.xs, 0               ; 2 uses
  br i1 %.not.i835, label %.critedge.i838, label %bb.jj, !prof !16

bb.jj:                                            ; preds = %lean_dec.exit498
  %i.xt = ptrtoint ptr %.0.i665 to i64            ; 2 uses
  %i.xu = and i64 %i.xt, 1
  %.not7.i836 = icmp eq i64 %i.xu, 0
  br i1 %.not7.i836, label %.critedge.i838, label %bb.jk, !prof !16

bb.jk:                                            ; preds = %bb.jj
  %i.xv = shl i64 %i.xr, 31
  %i.xw = ashr i64 %i.xv, 32
  %i.xx = shl i64 %i.xt, 31
  %i.xy = ashr i64 %i.xx, 32
  %i.xz = mul nsw i64 %i.xw, %i.xy                ; 3 uses
  %i.ya = add nsw i64 %i.xz, 2147483648
  %i.yb = icmp ult i64 %i.ya, 4294967296
  br i1 %i.yb, label %bb.jl, label %bb.jm, !prof !13

bb.jl:                                            ; preds = %bb.jk
  %i.yc = shl nsw i64 %i.xz, 1
  %i.yd = and i64 %i.yc, 8589934590
  %i.ye = or disjoint i64 %i.yd, 1
  %i.yf = inttoptr i64 %i.ye to ptr
  br label %lean_int_mul.exit839

bb.jm:                                            ; preds = %bb.jk
  %i.yg = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.xz) #6
  br label %lean_int_mul.exit839

.critedge.i838:                                   ; preds = %bb.jj, %lean_dec.exit498
  %i.yh = tail call ptr @lean_int_big_mul(ptr noundef %.0402, ptr noundef %.0.i665) #6
  br label %lean_int_mul.exit839

lean_int_mul.exit839:                             ; preds = %bb.jl, %bb.jm, %.critedge.i838
  %.0.i837 = phi ptr [ %i.yh, %.critedge.i838 ], [ %i.yf, %bb.jl ], [ %i.yg, %bb.jm ] ; 6 uses
  %.pre1074 = ptrtoint ptr %.0.i837 to i64        ; 2 uses
  %.pre1075 = and i64 %.pre1074, 1
  %i.yi = icmp eq i64 %.pre1075, 0                ; 2 uses
  br i1 %.not.i864, label %lean_int_sub.exit844, label %bb.jn, !prof !16

bb.jn:                                            ; preds = %lean_int_mul.exit839
  br i1 %i.yi, label %lean_int_sub.exit844.thread1314, label %bb.jo, !prof !16

lean_int_sub.exit844.thread1314:                  ; preds = %bb.jn
  %i.yj = tail call ptr @lean_int_big_sub(ptr noundef %.0.i86113251330, ptr noundef %.0.i837) #6
  br label %bb.jr

bb.jo:                                            ; preds = %bb.jn
  %i.yk = shl i64 %i.abs, 31
  %i.yl = ashr i64 %i.yk, 32
  %i.ym = shl i64 %.pre1074, 31
  %i.yn = ashr i64 %i.ym, 32
  %i.yo = sub nsw i64 %i.yl, %i.yn                ; 3 uses
  %i.yp = add nsw i64 %i.yo, 2147483648
  %i.yq = icmp ult i64 %i.yp, 4294967296
  br i1 %i.yq, label %bb.jp, label %bb.jq, !prof !13

bb.jp:                                            ; preds = %bb.jo
  %i.yr = shl nsw i64 %i.yo, 1
  %i.ys = and i64 %i.yr, 8589934590
  %i.yt = or disjoint i64 %i.ys, 1
  %i.yu = inttoptr i64 %i.yt to ptr
  br label %lean_dec.exit570

bb.jq:                                            ; preds = %bb.jo
  %i.yv = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.yo) #6
  br label %lean_dec.exit570

lean_int_sub.exit844:                             ; preds = %lean_int_mul.exit839
  %i.yw = tail call ptr @lean_int_big_sub(ptr noundef %.0.i86113251330, ptr noundef %.0.i837) #6 ; 2 uses
  br i1 %i.yi, label %bb.jr, label %lean_dec.exit574.thread
end_hunk_0
begin_hunk_1_@l_Std_Time_PlainDateTime_ofWallTime:bb.a
  br label %lean_obj_once.exit945

lean_obj_once.exit945:                            ; preds = %bb.oa, %bb.ob
  %.0.i944 = phi ptr [ %i.ali, %bb.oa ], [ %i.alj, %bb.ob ] ; 3 uses
  %i.alk = ptrtoint ptr %.1.i9411359 to i64       ; 3 uses
  %i.all = and i64 %i.alk, 1
  %.not.i.i946 = icmp eq i64 %i.all, 0
  br i1 %.not.i.i946, label %lean_int_dec_le.exit, label %bb.oc, !prof !16

bb.oc:                                            ; preds = %lean_obj_once.exit945
  %i.alm = ptrtoint ptr %.0.i944 to i64           ; 2 uses
  %i.aln = and i64 %i.alm, 1
  %.not7.i.i947 = icmp eq i64 %i.aln, 0
  br i1 %.not7.i.i947, label %lean_int_dec_le.exit.thread1029, label %lean_int_dec_le.exit.thread, !prof !16

lean_int_dec_le.exit:                             ; preds = %lean_obj_once.exit945
  %i.alo = tail call zeroext i1 @lean_int_big_le(ptr noundef %.1.i9411359, ptr noundef %.0.i944) #6
  br i1 %i.alo, label %bb.og, label %lean_dec.exit

lean_int_dec_le.exit.thread1029:                  ; preds = %bb.oc
  %i.alp = tail call zeroext i1 @lean_int_big_le(ptr noundef %.1.i9411359, ptr noundef %.0.i944) #6
  br i1 %i.alp, label %.thread1018, label %lean_dec.exit

lean_int_dec_le.exit.thread:                      ; preds = %bb.oc
  %i.alq = lshr i64 %i.alk, 1
  %i.alr = trunc i64 %i.alq to i32
  %i.als = lshr i64 %i.alm, 1
  %i.alt = trunc i64 %i.als to i32
  %.not = icmp sgt i32 %i.alr, %i.alt
  br i1 %.not, label %lean_dec.exit, label %.thread1018

.thread1018:                                      ; preds = %lean_int_dec_le.exit.thread1029, %lean_int_dec_le.exit.thread
  %i.alu = ptrtoint ptr %.0.i927 to i64           ; 2 uses
  %i.alv = and i64 %i.alu, 1
  %.not7.i951 = icmp eq i64 %i.alv, 0
  br i1 %.not7.i951, label %lean_int_add.exit954, label %bb.od, !prof !16

bb.od:                                            ; preds = %.thread1018
  %i.alw = shl i64 %i.alk, 31
  %i.alx = ashr i64 %i.alw, 32
  %i.aly = shl i64 %i.alu, 31
  %i.alz = ashr i64 %i.aly, 32
  %i.ama = add nsw i64 %i.alx, %i.alz             ; 3 uses
  %i.amb = add nsw i64 %i.ama, 2147483648
  %i.amc = icmp ult i64 %i.amb, 4294967296
  br i1 %i.amc, label %bb.oe, label %bb.of, !prof !13

bb.oe:                                            ; preds = %bb.od
  %i.amd = shl nsw i64 %i.ama, 1
  %i.ame = and i64 %i.amd, 8589934590
  %i.amf = or disjoint i64 %i.ame, 1
  %i.amg = inttoptr i64 %i.amf to ptr
  br label %lean_dec.exit458

bb.of:                                            ; preds = %bb.od
  %i.amh = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ama) #6
  br label %lean_dec.exit458

lean_int_add.exit954:                             ; preds = %.thread1018
  %i.ami = tail call ptr @lean_int_big_add(ptr noundef %.1.i9411359, ptr noundef %.0.i927) #6
  br label %lean_dec.exit458

bb.og:                                            ; preds = %lean_int_dec_le.exit
  %i.amj = tail call ptr @lean_int_big_add(ptr noundef %.1.i9411359, ptr noundef %.0.i927) #6 ; 3 uses
  %i.amk = load i32, ptr %.1.i9411359, align 4, !tbaa !12 ; 3 uses
  %i.aml = icmp sgt i32 %i.amk, 1
  br i1 %i.aml, label %bb.oh, label %bb.oi, !prof !13

bb.oh:                                            ; preds = %bb.og
  %i.amm = add nsw i32 %i.amk, -1
  store i32 %i.amm, ptr %.1.i9411359, align 4, !tbaa !12
  br label %lean_dec.exit458

bb.oi:                                            ; preds = %bb.og
  %.not.i.i456 = icmp eq i32 %i.amk, 0
  br i1 %.not.i.i456, label %lean_dec.exit458, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i9411359) #6
  br label %lean_dec.exit458

lean_dec.exit458:                                 ; preds = %bb.of, %bb.oe, %lean_int_add.exit954, %bb.oh, %bb.oi, %bb.oj
  %.0.i9521362 = phi ptr [ %i.ami, %lean_int_add.exit954 ], [ %i.amj, %bb.oh ], [ %i.amj, %bb.oi ], [ %i.amj, %bb.oj ], [ %i.amh, %bb.of ], [ %i.amg, %bb.oe ] ; 6 uses
  %i.amn = ptrtoint ptr %.0.i9361356 to i64       ; 2 uses
  %i.amo = and i64 %i.amn, 1
  %.not.i955 = icmp eq i64 %i.amo, 0
  br i1 %.not.i955, label %bb.oo, label %bb.ok, !prof !16

bb.ok:                                            ; preds = %lean_dec.exit458
  %i.amp = ptrtoint ptr %.0.i677 to i64           ; 2 uses
  %i.amq = and i64 %i.amp, 1
  %.not7.i956 = icmp eq i64 %i.amq, 0
  br i1 %.not7.i956, label %lean_int_sub.exit959, label %bb.ol, !prof !16

bb.ol:                                            ; preds = %bb.ok
  %i.amr = shl i64 %i.amn, 31
  %i.ams = ashr i64 %i.amr, 32
  %i.amt = shl i64 %i.amp, 31
  %i.amu = ashr i64 %i.amt, 32
  %i.amv = sub nsw i64 %i.ams, %i.amu             ; 3 uses
  %i.amw = add nsw i64 %i.amv, 2147483648
  %i.amx = icmp ult i64 %i.amw, 4294967296
  br i1 %i.amx, label %bb.om, label %bb.on, !prof !13

bb.om:                                            ; preds = %bb.ol
  %i.amy = shl nsw i64 %i.amv, 1
  %i.amz = and i64 %i.amy, 8589934590
  %i.ana = or disjoint i64 %i.amz, 1
  %i.anb = inttoptr i64 %i.ana to ptr
  br label %lean_dec.exit

bb.on:                                            ; preds = %bb.ol
  %i.anc = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.amv) #6
  br label %lean_dec.exit

lean_int_sub.exit959:                             ; preds = %bb.ok
  %i.and = tail call ptr @lean_int_big_sub(ptr noundef %.0.i9361356, ptr noundef %.0.i677) #6
  br label %lean_dec.exit

bb.oo:                                            ; preds = %lean_dec.exit458
  %i.ane = tail call ptr @lean_int_big_sub(ptr noundef %.0.i9361356, ptr noundef %.0.i677) #6 ; 3 uses
  %i.anf = load i32, ptr %.0.i9361356, align 4, !tbaa !12 ; 3 uses
  %i.ang = icmp sgt i32 %i.anf, 1
  br i1 %i.ang, label %bb.op, label %bb.oq, !prof !13

bb.op:                                            ; preds = %bb.oo
  %i.anh = add nsw i32 %i.anf, -1
  store i32 %i.anh, ptr %.0.i9361356, align 4, !tbaa !12
  br label %lean_dec.exit

bb.oq:                                            ; preds = %bb.oo
  %.not.i.i = icmp eq i32 %i.anf, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.or

bb.or:                                            ; preds = %bb.oq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i9361356) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.on, %bb.om, %lean_int_sub.exit959, %lean_int_dec_le.exit.thread1029, %bb.or, %bb.oq, %bb.op, %lean_int_dec_le.exit.thread, %lean_int_dec_le.exit
  %.0389 = phi ptr [ %.1.i9411359, %lean_int_dec_le.exit.thread ], [ %.1.i9411359, %lean_int_dec_le.exit ], [ %.0.i9521362, %bb.op ], [ %.0.i9521362, %bb.oq ], [ %.0.i9521362, %bb.or ], [ %.0.i9521362, %lean_int_sub.exit959 ], [ %.1.i9411359, %lean_int_dec_le.exit.thread1029 ], [ %.0.i9521362, %bb.om ], [ %.0.i9521362, %bb.on ] ; 9 uses
  %.0388 = phi ptr [ %.0.i9361356, %lean_int_dec_le.exit.thread ], [ %.0.i9361356, %lean_int_dec_le.exit ], [ %i.ane, %bb.op ], [ %i.ane, %bb.oq ], [ %i.ane, %bb.or ], [ %i.and, %lean_int_sub.exit959 ], [ %.0.i9361356, %lean_int_dec_le.exit.thread1029 ], [ %i.anb, %bb.om ], [ %i.anc, %bb.on ] ; 9 uses
  %i.ani = ptrtoint ptr %.0388 to i64             ; 3 uses
  %i.anj = and i64 %i.ani, 1
  %.not.i960 = icmp eq i64 %i.anj, 0
  br i1 %.not.i960, label %bb.pb, label %bb.os, !prof !16

bb.os:                                            ; preds = %lean_dec.exit
  %i.ank = ptrtoint ptr %.0.i669 to i64           ; 3 uses
  %i.anl = and i64 %i.ank, 1
  %.not18.i961 = icmp eq i64 %i.anl, 0
  br i1 %.not18.i961, label %lean_int_emod.exit974, label %bb.ot, !prof !16

bb.ot:                                            ; preds = %bb.os
  %i.anm = lshr i64 %i.ank, 1                     ; 2 uses
  %i.ann = trunc i64 %i.anm to i32                ; 2 uses
  %i.ano = icmp eq i32 %i.ann, 0
  br i1 %i.ano, label %bb.ox, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %sext.i962 = shl i64 %i.anm, 32
  %i.anp = ashr exact i64 %sext.i962, 32          ; 2 uses
  %i.anq = shl i64 %i.ani, 31
  %i.anr = ashr i64 %i.anq, 32                    ; 2 uses
  %i.ans = sdiv i64 %i.anr, %i.anp
  %i.ant = srem i64 %i.anr, %i.anp
  %i.anu = icmp slt i64 %i.ant, 0
  %i.anv = icmp sgt i32 %i.ann, 0
  %.v.i963 = select i1 %i.anv, i64 -1, i64 1
  %i.anw = select i1 %i.anu, i64 %.v.i963, i64 0
  %.0.i964 = add nsw i64 %i.anw, %i.ans           ; 3 uses
  %i.anx = add nsw i64 %.0.i964, 2147483648
  %i.any = icmp ult i64 %i.anx, 4294967296
  br i1 %i.any, label %bb.ov, label %bb.ow, !prof !13

bb.ov:                                            ; preds = %bb.ou
  %i.anz = shl nsw i64 %.0.i964, 1
  %i.aoa = and i64 %i.anz, 8589934590
  %i.aob = or disjoint i64 %i.aoa, 1
  %i.aoc = inttoptr i64 %i.aob to ptr
  br label %bb.ox

bb.ow:                                            ; preds = %bb.ou
  %i.aod = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i964) #6
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov, %bb.ot
  %.1.i9651022.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.ot ], [ %i.aoc, %bb.ov ], [ %i.aod, %bb.ow ] ; 3 uses
  %i.aoe = shl i64 %i.ank, 31
  %i.aof = ashr i64 %i.aoe, 32                    ; 3 uses
  %i.aog = icmp eq i64 %i.aof, 0
  br i1 %i.aog, label %lean_dec.exit478, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.aoh = shl i64 %i.ani, 31
  %i.aoi = ashr i64 %i.aoh, 32
  %i.aoj = srem i64 %i.aoi, %i.aof                ; 2 uses
  %i.aok = icmp slt i64 %i.aoj, 0
  %.p.i970 = tail call i64 @llvm.abs.i64(i64 %i.aof, i1 true)
  %i.aol = select i1 %i.aok, i64 %.p.i970, i64 0
  %.0.i971 = add nsw i64 %i.aol, %i.aoj           ; 3 uses
  %4 = icmp ult i64 %.0.i971, 2147483648
  br i1 %4, label %bb.oz, label %bb.pa, !prof !13

bb.oz:                                            ; preds = %bb.oy
  %i.aom = shl nuw nsw i64 %.0.i971, 1
  %i.aon = or disjoint i64 %i.aom, 1
  %i.aoo = inttoptr i64 %i.aon to ptr
  br label %lean_dec.exit478

bb.pa:                                            ; preds = %bb.oy
  %i.aop = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i971) #6
  br label %lean_dec.exit478

lean_int_emod.exit974:                            ; preds = %bb.os
  %i.aoq = tail call ptr @lean_int_big_ediv(ptr noundef %.0388, ptr noundef %.0.i669) #6
  %i.aor = tail call ptr @lean_int_big_emod(ptr noundef %.0388, ptr noundef %.0.i669) #6
  br label %lean_dec.exit478

bb.pb:                                            ; preds = %lean_dec.exit
  %i.aos = tail call ptr @lean_int_big_ediv(ptr noundef %.0388, ptr noundef %.0.i669) #6 ; 3 uses
  %i.aot = tail call ptr @lean_int_big_emod(ptr noundef %.0388, ptr noundef %.0.i669) #6 ; 3 uses
  %i.aou = load i32, ptr %.0388, align 4, !tbaa !12 ; 3 uses
  %i.aov = icmp sgt i32 %i.aou, 1
  br i1 %i.aov, label %bb.pc, label %bb.pd, !prof !13

bb.pc:                                            ; preds = %bb.pb
  %i.aow = add nsw i32 %i.aou, -1
  store i32 %i.aow, ptr %.0388, align 4, !tbaa !12
  br label %lean_dec.exit478

bb.pd:                                            ; preds = %bb.pb
  %.not.i.i476 = icmp eq i32 %i.aou, 0
  br i1 %.not.i.i476, label %lean_dec.exit478, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0388) #6
  br label %lean_dec.exit478

lean_dec.exit478:                                 ; preds = %bb.pa, %bb.oz, %bb.ox, %lean_int_emod.exit974, %bb.pc, %bb.pd, %bb.pe
  %.1.i9721371 = phi ptr [ %i.aor, %lean_int_emod.exit974 ], [ %i.aot, %bb.pc ], [ %i.aot, %bb.pd ], [ %i.aot, %bb.pe ], [ %i.aop, %bb.pa ], [ %i.aoo, %bb.oz ], [ %.0388, %bb.ox ] ; 11 uses
  %.1.i96510201370 = phi ptr [ %i.aoq, %lean_int_emod.exit974 ], [ %i.aos, %bb.pc ], [ %i.aos, %bb.pd ], [ %i.aos, %bb.pe ], [ %.1.i9651022.ph, %bb.pa ], [ %.1.i9651022.ph, %bb.oz ], [ %.1.i9651022.ph, %bb.ox ] ; 9 uses
  %i.aox = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.aoy = icmp eq i32 %i.aox, 1
  br i1 %i.aoy, label %bb.pf, label %bb.pg, !prof !13

bb.pf:                                            ; preds = %lean_dec.exit478
  %i.aoz = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit976

bb.pg:                                            ; preds = %lean_dec.exit478
  %i.apa = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit976

lean_obj_once.exit976:                            ; preds = %bb.pf, %bb.pg
  %.0.i975 = phi ptr [ %i.aoz, %bb.pf ], [ %i.apa, %bb.pg ] ; 3 uses
  %i.apb = ptrtoint ptr %.1.i9721371 to i64       ; 3 uses
  %i.apc = and i64 %i.apb, 1
  %.not.i.i977 = icmp eq i64 %i.apc, 0
  br i1 %.not.i.i977, label %lean_int_dec_lt.exit981, label %bb.ph, !prof !16

bb.ph:                                            ; preds = %lean_obj_once.exit976
  %i.apd = ptrtoint ptr %.0.i975 to i64           ; 2 uses
  %i.ape = and i64 %i.apd, 1
  %.not7.i.i978 = icmp eq i64 %i.ape, 0
  br i1 %.not7.i.i978, label %lean_int_dec_lt.exit981.thread1027, label %lean_int_dec_lt.exit981.thread, !prof !16

lean_int_dec_lt.exit981:                          ; preds = %lean_obj_once.exit976
  %i.apf = tail call zeroext i1 @lean_int_big_lt(ptr noundef %.1.i9721371, ptr noundef %.0.i975) #6
  br i1 %i.apf, label %bb.mn, label %lean_dec.exit470

lean_int_dec_lt.exit981.thread1027:               ; preds = %bb.ph
  %i.apg = tail call zeroext i1 @lean_int_big_lt(ptr noundef %.1.i9721371, ptr noundef %.0.i975) #6
  br i1 %i.apg, label %.thread, label %lean_dec.exit470

lean_int_dec_lt.exit981.thread:                   ; preds = %bb.ph
  %i.aph = lshr i64 %i.apb, 1
  %i.api = trunc i64 %i.aph to i32
  %i.apj = lshr i64 %i.apd, 1
  %i.apk = trunc i64 %i.apj to i32
  %.not1036 = icmp slt i32 %i.api, %i.apk
  br i1 %.not1036, label %.thread, label %lean_dec.exit470

lean_dec.exit614:                                 ; preds = %.split1254, %lean_int_dec_eq.exit733, %.split1253, %.split1247, %lean_int_dec_eq.exit718, %.split1246, %lean_dec.exit618, %lean_dec.exit602, %lean_dec.exit610, %bb.cn, %bb.cm, %bb.cl
  %.2383.shrunk = phi i1 [ %i.hf, %lean_dec.exit618 ], [ %i.hg, %bb.cl ], [ %i.hg, %bb.cm ], [ %i.hg, %bb.cn ], [ false, %lean_dec.exit610 ], [ true, %lean_dec.exit602 ], [ true, %.split1246 ], [ true, %lean_int_dec_eq.exit718 ], [ true, %.split1247 ], [ false, %.split1253 ], [ false, %lean_int_dec_eq.exit733 ], [ false, %.split1254 ]
  %.2383 = zext i1 %.2383.shrunk to i8
  %i.apl = tail call ptr @l_Std_Time_Month_Ordinal_days(i8 noundef zeroext %.2383, ptr noundef %.0410) #6 ; 7 uses
  %i.apm = ptrtoint ptr %i.apl to i64             ; 2 uses
  %i.apn = and i64 %i.apm, 1
  %.not.i.i982 = icmp eq i64 %i.apn, 0
  br i1 %.not.i.i982, label %lean_int_dec_lt.exit986, label %bb.pi, !prof !16

bb.pi:                                            ; preds = %lean_dec.exit614
  %i.apo = ptrtoint ptr %.0418 to i64             ; 2 uses
  %i.app = and i64 %i.apo, 1
  %.not7.i.i983 = icmp eq i64 %i.app, 0
  br i1 %.not7.i.i983, label %lean_int_dec_lt.exit986.thread1375, label %lean_int_dec_lt.exit986.thread, !prof !16

lean_int_dec_lt.exit986:                          ; preds = %lean_dec.exit614
  %i.apq = tail call zeroext i1 @lean_int_big_lt(ptr noundef %i.apl, ptr noundef %.0418) #6
  br i1 %i.apq, label %bb.s, label %bb.n

lean_int_dec_lt.exit986.thread1375:               ; preds = %bb.pi
  %i.apr = tail call zeroext i1 @lean_int_big_lt(ptr noundef %i.apl, ptr noundef %.0418) #6
  br i1 %i.apr, label %bb.s, label %lean_dec.exit646

lean_int_dec_lt.exit986.thread:                   ; preds = %bb.pi
  %i.aps = lshr i64 %i.apm, 1
  %i.apt = trunc i64 %i.aps to i32
  %i.apu = lshr i64 %i.apo, 1
  %i.apv = trunc i64 %i.apu to i32
  %i.apw = icmp slt i32 %i.apt, %i.apv
  br i1 %i.apw, label %bb.s, label %lean_dec.exit646
}

declare ptr @l_Std_Time_Month_Ordinal_days(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__0() #2 {
bb.a:
  ret ptr inttoptr (i64 22035 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__1() #2 {
bb.a:
  ret ptr inttoptr (i64 731 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__2() #2 {
bb.a:
  ret ptr inttoptr (i64 801 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__4_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__4, ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__3_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDateTime_ofWallTime___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__3, ptr noundef nonnull @l_Std_Time_PlainDateTime_ofWallTime___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_PlainDateTime_ofWallTime___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

end_hunk_1
begin_hunk_2_@l_Std_Time_PlainDateTime_withMilliseconds:bb.a
bb.h:                                             ; preds = %bb.g
  %i.n = add nuw i32 %.val.i.i94, 1
  store i32 %i.n, ptr %i.d, align 4, !tbaa !12
  br label %lean_inc.exit72

bb.i:                                             ; preds = %bb.g
  %.not.i.i95 = icmp eq i32 %.val.i.i94, 0
  br i1 %.not.i.i95, label %lean_inc.exit72, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit72

lean_inc.exit72:                                  ; preds = %lean_inc.exit74, %bb.h, %bb.i, %bb.j
  %i.p = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_inc.exit72
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %0, align 8, !tbaa !12
  br label %lean_dec.exit91

bb.l:                                             ; preds = %lean_inc.exit72
  %.not.i.i89 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i89, label %lean_dec.exit91, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit91

lean_dec.exit91:                                  ; preds = %bb.m, %bb.l, %bb.k, %bb.a
  %.064 = phi ptr [ %0, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.m ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 11 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !12
  %i.aa = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.aa, label %lean_dec.exit87, label %bb.n

bb.n:                                             ; preds = %lean_dec.exit91
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i69 = icmp eq i64 %i.ac, 0
  br i1 %.not.i69, label %bb.o, label %lean_inc.exit70

bb.o:                                             ; preds = %bb.n
  %.val.i.i97 = load i32, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %i.ad = icmp sgt i32 %.val.i.i97, 0
  br i1 %i.ad, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ae = add nuw i32 %.val.i.i97, 1
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !12
  br label %lean_inc.exit70

bb.q:                                             ; preds = %bb.o
  %.not.i.i98 = icmp eq i32 %.val.i.i97, 0
  br i1 %.not.i.i98, label %lean_inc.exit70, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = atomicrmw add ptr %i.z, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit70

lean_inc.exit70:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i67 = icmp eq i64 %i.ah, 0
  br i1 %.not.i67, label %bb.s, label %lean_inc.exit68

bb.s:                                             ; preds = %lean_inc.exit70
  %.val.i.i100 = load i32, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i100, 0
  br i1 %i.ai, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.aj = add nuw i32 %.val.i.i100, 1
  store i32 %i.aj, ptr %i.x, align 4, !tbaa !12
  br label %lean_inc.exit68

bb.u:                                             ; preds = %bb.s
  %.not.i.i101 = icmp eq i32 %.val.i.i100, 0
  br i1 %.not.i.i101, label %lean_inc.exit68, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = atomicrmw add ptr %i.x, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit68

lean_inc.exit68:                                  ; preds = %bb.v, %bb.u, %bb.t, %lean_inc.exit70
  %i.al = ptrtoint ptr %i.v to i64
  %i.am = and i64 %i.al, 1
  %.not.i65 = icmp eq i64 %i.am, 0
  br i1 %.not.i65, label %bb.w, label %lean_inc.exit66

bb.w:                                             ; preds = %lean_inc.exit68
  %.val.i.i103 = load i32, ptr %i.v, align 4, !tbaa !12 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i103, 0
  br i1 %i.an, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.ao = add nuw i32 %.val.i.i103, 1
  store i32 %i.ao, ptr %i.v, align 4, !tbaa !12
  br label %lean_inc.exit66

bb.y:                                             ; preds = %bb.w
  %.not.i.i104 = icmp eq i32 %.val.i.i103, 0
  br i1 %.not.i.i104, label %lean_inc.exit66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ap = atomicrmw add ptr %i.v, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit66

lean_inc.exit66:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_inc.exit68
  %i.aq = ptrtoint ptr %i.t to i64
  %i.ar = and i64 %i.aq, 1
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %bb.aa, label %lean_inc.exit

bb.aa:                                            ; preds = %lean_inc.exit66
  %.val.i.i106 = load i32, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.as = icmp sgt i32 %.val.i.i106, 0
  br i1 %i.as, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.at = add nuw i32 %.val.i.i106, 1
  store i32 %i.at, ptr %i.t, align 4, !tbaa !12
  br label %lean_inc.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i107 = icmp eq i32 %.val.i.i106, 0
  br i1 %.not.i.i107, label %lean_inc.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = atomicrmw add ptr %i.t, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit66, %bb.ab, %bb.ac, %bb.ad
  %i.av = load i32, ptr %i.c, align 8, !tbaa !12  ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %lean_inc.exit
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !12
  br label %lean_dec.exit87

bb.af:                                            ; preds = %lean_inc.exit
  %.not.i.i85 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i85, label %lean_dec.exit87, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #6
  br label %lean_dec.exit87

lean_dec.exit87:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %lean_dec.exit91
  %.062 = phi ptr [ %i.c, %lean_dec.exit91 ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ag ]
  %i.ay = load atomic i32, ptr @l_Std_Time_PlainDateTime_withMilliseconds___closed__0_once seq_cst, align 4, !tbaa !15
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %lean_dec.exit87
  %i.ba = load ptr, ptr @l_Std_Time_PlainDateTime_withMilliseconds___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.ai:                                            ; preds = %lean_dec.exit87
  %i.bb = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDateTime_withMilliseconds___closed__0, ptr noundef nonnull @l_Std_Time_PlainDateTime_withMilliseconds___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_PlainDateTime_withMilliseconds___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ah, %bb.ai
  %.0.i = phi ptr [ %i.ba, %bb.ah ], [ %i.bb, %bb.ai ] ; 3 uses
  %i.bc = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i109 = icmp eq i64 %i.bd, 0
  br i1 %.not.i109, label %bb.ao, label %bb.aj, !prof !16

bb.aj:                                            ; preds = %lean_obj_once.exit
  %i.be = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.bf = and i64 %i.be, 1
  %.not21.i = icmp eq i64 %i.bf, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.ak, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.bg = shl i64 %i.be, 31
  %i.bh = ashr i64 %i.bg, 32                      ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %lean_dec.exit83, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bj = shl i64 %i.bc, 31
  %i.bk = ashr i64 %i.bj, 32
  %i.bl = srem i64 %i.bk, %i.bh                   ; 2 uses
  %i.bm = icmp slt i64 %i.bl, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bh, i1 true)
  %i.bn = select i1 %i.bm, i64 %.p.i, i64 0
  %.0.i110 = add nsw i64 %i.bn, %i.bl             ; 3 uses
  %2 = icmp ult i64 %.0.i110, 2147483648
  br i1 %2, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.bo = shl nuw nsw i64 %.0.i110, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %lean_dec.exit83

bb.an:                                            ; preds = %bb.al
  %i.br = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i110) #6
  br label %lean_dec.exit83

lean_int_emod.exit:                               ; preds = %bb.aj
  %i.bs = tail call ptr @lean_int_big_emod(ptr noundef %i.z, ptr noundef %.0.i) #6
  br label %lean_dec.exit83

bb.ao:                                            ; preds = %lean_obj_once.exit
  %i.bt = tail call ptr @lean_int_big_emod(ptr noundef %i.z, ptr noundef %.0.i) #6 ; 3 uses
  %i.bu = load i32, ptr %i.z, align 4, !tbaa !12  ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.ap, label %bb.aq, !prof !13

bb.ap:                                            ; preds = %bb.ao
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.z, align 4, !tbaa !12
  br label %lean_dec.exit83

bb.aq:                                            ; preds = %bb.ao
  %.not.i.i81 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i81, label %lean_dec.exit83, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #6
  br label %lean_dec.exit83

lean_dec.exit83:                                  ; preds = %bb.an, %bb.am, %bb.ak, %lean_int_emod.exit, %bb.ap, %bb.aq, %bb.ar
  %.1.i138 = phi ptr [ %i.bs, %lean_int_emod.exit ], [ %i.bt, %bb.ap ], [ %i.bt, %bb.aq ], [ %i.bt, %bb.ar ], [ %i.br, %bb.an ], [ %i.bq, %bb.am ], [ %i.z, %bb.ak ] ; 6 uses
  %i.bx = load atomic i32, ptr @l_Std_Time_PlainDateTime_withMilliseconds___closed__1_once seq_cst, align 4, !tbaa !15
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %lean_dec.exit83
  %i.bz = load ptr, ptr @l_Std_Time_PlainDateTime_withMilliseconds___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit112

bb.at:                                            ; preds = %lean_dec.exit83
  %i.ca = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDateTime_withMilliseconds___closed__1, ptr noundef nonnull @l_Std_Time_PlainDateTime_withMilliseconds___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_PlainDateTime_withMilliseconds___closed__1) #6
  br label %lean_obj_once.exit112

lean_obj_once.exit112:                            ; preds = %bb.as, %bb.at
  %.0.i111 = phi ptr [ %i.bz, %bb.as ], [ %i.ca, %bb.at ] ; 2 uses
  %i.cb = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cc = and i64 %i.cb, 1
  %.not.i113 = icmp eq i64 %i.cc, 0
  br i1 %.not.i113, label %.critedge.i115, label %bb.au, !prof !16

bb.au:                                            ; preds = %lean_obj_once.exit112
  %i.cd = ptrtoint ptr %.0.i111 to i64            ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %.not7.i = icmp eq i64 %i.ce, 0
  br i1 %.not7.i, label %.critedge.i115, label %bb.av, !prof !16

bb.av:                                            ; preds = %bb.au
  %i.cf = shl i64 %i.cb, 31
  %i.cg = ashr i64 %i.cf, 32
  %i.ch = shl i64 %i.cd, 31
  %i.ci = ashr i64 %i.ch, 32
  %i.cj = mul nsw i64 %i.ci, %i.cg                ; 3 uses
  %i.ck = add nsw i64 %i.cj, 2147483648
  %i.cl = icmp ult i64 %i.ck, 4294967296
  br i1 %i.cl, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.cm = shl nsw i64 %i.cj, 1
  %i.cn = and i64 %i.cm, 8589934590
  %i.co = or disjoint i64 %i.cn, 1
  %i.cp = inttoptr i64 %i.co to ptr
  br label %lean_int_mul.exit

bb.ax:                                            ; preds = %bb.av
  %i.cq = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cj) #6
  br label %lean_int_mul.exit

.critedge.i115:                                   ; preds = %bb.au, %lean_obj_once.exit112
  %i.cr = tail call ptr @lean_int_big_mul(ptr noundef %1, ptr noundef %.0.i111) #6
  br label %lean_int_mul.exit

lean_int_mul.exit:                                ; preds = %bb.aw, %bb.ax, %.critedge.i115
  %.0.i114 = phi ptr [ %i.cr, %.critedge.i115 ], [ %i.cp, %bb.aw ], [ %i.cq, %bb.ax ] ; 6 uses
  %i.cs = ptrtoint ptr %.0.i114 to i64            ; 2 uses
  %i.ct = and i64 %i.cs, 1
  %.not.i116 = icmp eq i64 %i.ct, 0               ; 2 uses
  %.pre123 = ptrtoint ptr %.1.i138 to i64         ; 2 uses
  %.pre = and i64 %.pre123, 1
  %i.cu = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i116, label %lean_int_add.exit, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %lean_int_mul.exit
  br i1 %i.cu, label %lean_int_add.exit.thread143, label %bb.az, !prof !16

lean_int_add.exit.thread143:                      ; preds = %bb.ay
  %i.cv = tail call ptr @lean_int_big_add(ptr noundef %.0.i114, ptr noundef %.1.i138) #6
  br label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.cw = shl i64 %i.cs, 31
  %i.cx = ashr i64 %i.cw, 32
  %i.cy = shl i64 %.pre123, 31
  %i.cz = ashr i64 %i.cy, 32
  %i.da = add nsw i64 %i.cx, %i.cz                ; 3 uses
  %i.db = add nsw i64 %i.da, 2147483648
  %i.dc = icmp ult i64 %i.db, 4294967296
  br i1 %i.dc, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.dd = shl nsw i64 %i.da, 1
  %i.de = and i64 %i.dd, 8589934590
  %i.df = or disjoint i64 %i.de, 1
  %i.dg = inttoptr i64 %i.df to ptr
  br label %lean_dec.exit

bb.bb:                                            ; preds = %bb.az
  %i.dh = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.da) #6
  br label %lean_dec.exit

lean_int_add.exit:                                ; preds = %lean_int_mul.exit
  %i.di = tail call ptr @lean_int_big_add(ptr noundef %.0.i114, ptr noundef %.1.i138) #6 ; 2 uses
  br i1 %i.cu, label %bb.bc, label %lean_dec.exit79.thread

bb.bc:                                            ; preds = %lean_int_add.exit.thread143, %lean_int_add.exit
  %i.dj = phi ptr [ %i.cv, %lean_int_add.exit.thread143 ], [ %i.di, %lean_int_add.exit ] ; 2 uses
  %i.dk = load i32, ptr %.1.i138, align 4, !tbaa !12 ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.dm = add nsw i32 %i.dk, -1
  store i32 %i.dm, ptr %.1.i138, align 4, !tbaa !12
  br label %lean_dec.exit79

bb.be:                                            ; preds = %bb.bc
  %.not.i.i77 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i77, label %lean_dec.exit79, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i138) #6
  br label %lean_dec.exit79

lean_dec.exit79:                                  ; preds = %bb.bd, %bb.be, %bb.bf
  br i1 %.not.i116, label %lean_dec.exit79.thread, label %lean_dec.exit

lean_dec.exit79.thread:                           ; preds = %lean_int_add.exit, %lean_dec.exit79
  %.0.i118142147 = phi ptr [ %i.dj, %lean_dec.exit79 ], [ %i.di, %lean_int_add.exit ] ; 3 uses
  %i.dn = load i32, ptr %.0.i114, align 4, !tbaa !12 ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %lean_dec.exit79.thread
  %i.dp = add nsw i32 %i.dn, -1
  store i32 %i.dp, ptr %.0.i114, align 4, !tbaa !12
  br label %lean_dec.exit

bb.bh:                                            ; preds = %lean_dec.exit79.thread
  %.not.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i114) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ba, %bb.bb, %bb.bg, %bb.bh, %bb.bi, %lean_dec.exit79
  %.0.i118142146 = phi ptr [ %.0.i118142147, %bb.bg ], [ %.0.i118142147, %bb.bh ], [ %.0.i118142147, %bb.bi ], [ %i.dj, %lean_dec.exit79 ], [ %i.dh, %bb.bb ], [ %i.dg, %bb.ba ]
  br i1 %i.aa, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %lean_dec.exit
  tail call void @lean_inc_heartbeat() #6
  %i.dq = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #6 ; 7 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.bk, label %lean_alloc_ctor.exit

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bj
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 1, ptr %i.dq, align 4, !tbaa !12
  store i32 262184, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.t, ptr %i.dt, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %i.v, ptr %i.du, align 8, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store ptr %i.x, ptr %i.dv, align 8, !tbaa !10
  br label %bb.bl

bb.bl:                                            ; preds = %lean_dec.exit, %lean_alloc_ctor.exit
  %.sink150 = phi ptr [ %i.dq, %lean_alloc_ctor.exit ], [ %.062, %lean_dec.exit ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink150, i64 32
  store ptr %.0.i118142146, ptr %i.dw, align 8, !tbaa !10
  br i1 %i.e, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_inc_heartbeat() #6
  %i.dx = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 5 uses
end_hunk_2
begin_hunk_3_@_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__36:bb.a
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__35_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__35, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__35, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__35_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__35) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__28() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__27_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__27, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__27, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__27_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__27) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

declare ptr @l_Std_Time_Second_instOfNatOrdinal(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__35() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__32_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__32, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__32, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__32_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__32) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__34_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__34, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__34, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__34_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__34) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__32() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__31_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__31, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__31, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__31_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__31) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__34() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__32_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__32, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__32, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__32_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__32) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__33_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__33, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__33, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__33_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__33) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__31() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__30_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__30, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__30, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__30_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__30) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__30() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__29_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__29, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__29, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__29_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__29) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__29() #2 {
bb.a:
  ret ptr inttoptr (i64 119 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__33() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__32_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__32, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__32, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__32_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__32) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__24_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__24, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__24, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__24_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__24) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__24() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge.i, label %lean_int_sub.exit, !prof !16

.critedge.i:                                      ; preds = %lean_obj_once.exit
  %i.g = tail call ptr @lean_int_big_sub(ptr noundef %.0.i, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %lean_obj_once.exit, %.critedge.i
  %.0.i3 = phi ptr [ %i.g, %.critedge.i ], [ inttoptr (i64 1 to ptr), %lean_obj_once.exit ]
  ret ptr %.0.i3
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__27() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__23_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__23, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__23, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__23_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__23) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__26_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__26, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__26, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__26_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__26) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__23() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__22_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__22, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__22, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__22_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__22) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__26() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__23_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__23, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__23, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__23_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__23) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__25_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__25, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__25, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__25_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__25) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__22() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__21_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__21, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__21, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__21_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__21) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__21() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__20_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__20, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__20, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__20_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__20) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__20() #2 {
bb.a:
  ret ptr inttoptr (i64 47 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__25() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__23_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__23, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__23, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__23_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__23) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__24_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__24, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__24, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__24_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__24) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__18() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__17_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__17, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__17, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__17_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__17) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__10() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__9_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__9, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__9, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__9_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__9) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__17() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__14_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__14, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__14, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__14_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__14) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__16_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__16, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__16, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__16_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__16) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__14() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__13_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__13, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__13, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__13_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__13) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__16() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__14_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__14, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__14, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__14_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__14) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__15_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__15, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__15, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__15) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__13() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__12_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__12, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__12, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__12_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__12) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__12() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__11_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__11, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__11, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__11_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__11) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__15() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__14_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__14, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__14, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__14_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__14) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__6_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__6, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__6_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__6) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__6() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge.i, label %lean_int_sub.exit, !prof !16

.critedge.i:                                      ; preds = %lean_obj_once.exit
  %i.g = tail call ptr @lean_int_big_sub(ptr noundef %.0.i, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %lean_obj_once.exit, %.critedge.i
  %.0.i3 = phi ptr [ %i.g, %.critedge.i ], [ inttoptr (i64 1 to ptr), %lean_obj_once.exit ]
  ret ptr %.0.i3
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__9() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__5_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__5, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__5) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__8_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__8, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__8) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__4_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__4, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__8() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__5_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__5, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__5) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__7_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__7, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__7_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__7) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__3_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__3, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__2_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__2, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__2) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__2() #2 {
bb.a:
  ret ptr inttoptr (i64 23 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__7() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__5_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__5, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__5) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__6_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDateTime_default___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__6, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDateTime_default___closed__6_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDateTime_default___closed__6) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_init_l_Std_Time_instOrdPlainDateTime___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instOrdPlainDateTime___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instOrdPlainDateTime___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instOrdPlainDateTime___closed__3, ptr noundef nonnull @l_Std_Time_instOrdPlainDateTime___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_instOrdPlainDateTime___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = load atomic i32, ptr @l_Std_Time_instOrdPlainDateTime___closed__2_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instOrdPlainDateTime___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit8

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instOrdPlainDateTime___closed__2, ptr noundef nonnull @l_Std_Time_instOrdPlainDateTime___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_instOrdPlainDateTime___closed__2) #6
  br label %lean_obj_once.exit8

lean_obj_once.exit8:                              ; preds = %bb.d, %bb.e
  %.0.i7 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = tail call ptr @lean_alloc_object(i64 noundef 56) #6 ; 10 uses
  store i32 1, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 65535
  %i.m = or disjoint i32 %i.l, -184549376
  store i32 %i.m, ptr %i.j, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @l_compareLex___boxed, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i16 6, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  store i16 4, ptr %i.p, align 2, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %.0.i7, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !10
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_init_l_Std_Time_instOrdPlainDateTime___closed__3() #0 {
bb.a:
  %i.a = load ptr, ptr @l_Std_Time_instOrdPlainTime, align 8, !tbaa !10
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 56) #6 ; 10 uses
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_compareOn___boxed, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 6, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 4, ptr %i.i, align 2, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @l_Std_Time_instOrdPlainDateTime___closed__1_value, ptr %i.m, align 8, !tbaa !10
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_init_l_Std_Time_instOrdPlainDateTime___closed__2() #0 {
bb.a:
  %i.a = load ptr, ptr @l_Std_Time_instOrdPlainDate, align 8, !tbaa !10
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 56) #6 ; 10 uses
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_compareOn___boxed, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 6, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 4, ptr %i.i, align 2, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @l_Std_Time_instOrdPlainDateTime___closed__0_value, ptr %i.m, align 8, !tbaa !10
  ret ptr %i.b
}

declare ptr @l_compareLex___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_compareOn___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @lean_alloc_object(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!12 = !{!11, !6, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"", !5, i64 0, !5, i64 4}
!15 = !{!14, !5, i64 0}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 4001, i32 4000000}
!18 = !{!"short", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!20, !20, i64 0}
end_hunk_3
