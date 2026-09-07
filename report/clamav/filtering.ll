Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filtering?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_add_acpatt:bb.a
bb.dw:                                            ; preds = %bb.dv
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.tc = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.td = load i16, ptr %i.tc, align 4, !tbaa !33
  %i.te = zext i16 %i.td to i32
  %i.tf = icmp samesign ult i32 %.14151023, %i.te
  br i1 %i.tf, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.tg = load ptr, ptr %.val, align 8, !tbaa !8
  %i.th = zext nneg i32 %.14151023 to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !8
  %i.tk = zext i8 %i.tj to i32
  br label %spec_ith_char.exit530

spec_ith_char.exit530:                            ; preds = %spec_ith_char.exit527, %bb.dz
  %.0.i529 = phi i32 [ %i.tk, %bb.dz ], [ %.14151023, %spec_ith_char.exit527 ] ; 4 uses
  %i.tl = load i8, ptr %i.sd, align 1, !tbaa !28  ; 2 uses
  %.not471 = icmp eq i8 %i.tl, 0                  ; 2 uses
  %i.tm = select i1 %.not471, i32 %.0.i526, i32 255 ; 3 uses
  %i.tn = load i8, ptr %i.se, align 1, !tbaa !28
  %.fr1078 = freeze i8 %i.tn
  %.not472 = icmp eq i8 %.fr1078, 0               ; 2 uses
  %i.to = select i1 %.not472, i32 %.0.i529, i32 255 ; 6 uses
  %i.tp = select i1 %.not471, i32 %.0.i526, i32 0 ; 3 uses
  %.not4731007 = icmp ugt i32 %i.tp, %i.tm
  br i1 %.not4731007, label %._crit_edge1012, label %.preheader574.lr.ph

.preheader574.lr.ph:                              ; preds = %spec_ith_char.exit530
  %.not475 = icmp ne i8 %i.tl, 0                  ; 2 uses
  br i1 %.not472, label %.preheader574.preheader, label %.preheader574.us

.preheader574.preheader:                          ; preds = %.preheader574.lr.ph
  %i.tq = add nuw nsw i32 %.0.i529, 1             ; 3 uses
  br label %.preheader574

.preheader574.us:                                 ; preds = %.preheader574.lr.ph, %._crit_edge1000.us
  %.03621011.us = phi i32 [ %.1363.lcssa.us, %._crit_edge1000.us ], [ 0, %.preheader574.lr.ph ] ; 3 uses
  %.03641008.us = phi i32 [ %i.ud, %._crit_edge1000.us ], [ %i.tp, %.preheader574.lr.ph ] ; 4 uses
  %.not474997.us = icmp ugt i32 %.03621011.us, %i.to
  br i1 %.not474997.us, label %._crit_edge1000.us, label %.lr.ph999.us

.lr.ph999.us:                                     ; preds = %.preheader574.us
  %i.tr = icmp eq i32 %.03641008.us, %.0.i526
  %or.cond499.us = select i1 %.not475, i1 %i.tr, i1 false
  br i1 %or.cond499.us, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

.lr.ph999.split.us1013:                           ; preds = %.lr.ph999.us, %filter_set_atpos.exit.us1017
  %.1363998.us1015 = phi i32 [ %i.uc, %filter_set_atpos.exit.us1017 ], [ %.03621011.us, %.lr.ph999.us ] ; 4 uses
  %i.ts = icmp eq i32 %.1363998.us1015, %.0.i529
  br i1 %i.ts, label %filter_set_atpos.exit.us1017, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph999.split.us1013
  %i.tt = shl nuw nsw i32 %.1363998.us1015, 8
  %i.tu = or i32 %i.tt, %.03641008.us
  %i.tv = and i32 %i.tu, 65535
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 %i.tw ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !8   ; 2 uses
  %i.tz = zext i8 %i.ty to i32
  %i.ua = and i32 %i.sf, %i.tz
  %.not.not.i.us1016 = icmp eq i32 %i.ua, 0
  br i1 %.not.not.i.us1016, label %filter_set_atpos.exit.us1017, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ub = and i8 %i.ty, %i.sh
  store i8 %i.ub, ptr %i.tx, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1017

filter_set_atpos.exit.us1017:                     ; preds = %bb.eb, %bb.ea, %.lr.ph999.split.us1013
  %i.uc = add i32 %.1363998.us1015, 1
  %exitcond1267.not = icmp eq i32 %.1363998.us1015, %i.to
  br i1 %exitcond1267.not, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

._crit_edge1000.us:                               ; preds = %filter_set_atpos.exit.us1017, %.lr.ph999.us, %.preheader574.us
  %.1363.lcssa.us = phi i32 [ %.03621011.us, %.preheader574.us ], [ 256, %.lr.ph999.us ], [ 256, %filter_set_atpos.exit.us1017 ]
  %i.ud = add nuw nsw i32 %.03641008.us, 1
  %.not473.us.not = icmp ult i32 %.03641008.us, %i.tm
  br i1 %.not473.us.not, label %.preheader574.us, label %._crit_edge1012

.preheader574:                                    ; preds = %.preheader574.preheader, %._crit_edge1000
  %.03621011 = phi i32 [ %.1363.lcssa, %._crit_edge1000 ], [ %.0.i529, %.preheader574.preheader ] ; 7 uses
  %.03641008 = phi i32 [ %i.vm, %._crit_edge1000 ], [ %i.tp, %.preheader574.preheader ] ; 6 uses
  %.not474997 = icmp ugt i32 %.03621011, %i.to
  br i1 %.not474997, label %._crit_edge1000, label %.lr.ph999

.lr.ph999:                                        ; preds = %.preheader574
  %i.ue = icmp eq i32 %.03641008, %.0.i526
  %or.cond499 = select i1 %.not475, i1 %i.ue, i1 false
  br i1 %or.cond499, label %._crit_edge1000, label %.lr.ph999.split.preheader

.lr.ph999.split.preheader:                        ; preds = %.lr.ph999
  %i.uf = add i32 %i.to, %.03621011
  %i.ug = and i32 %i.uf, 1
  %lcmp.mod1581.not.not = icmp eq i32 %i.ug, 0
  br i1 %lcmp.mod1581.not.not, label %.lr.ph999.split.prol, label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol:                             ; preds = %.lr.ph999.split.preheader
  %i.uh = shl nuw nsw i32 %.03621011, 8
  %i.ui = or i32 %i.uh, %.03641008
  %i.uj = and i32 %i.ui, 65535
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 %i.uk ; 2 uses
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !8   ; 2 uses
  %i.un = zext i8 %i.um to i32
  %i.uo = and i32 %i.sf, %i.un
  %.not.not.i.us.prol = icmp eq i32 %i.uo, 0
  br i1 %.not.not.i.us.prol, label %filter_set_atpos.exit.us1003.prol, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph999.split.prol
  %i.up = and i8 %i.um, %i.sh
  store i8 %i.up, ptr %i.ul, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.prol

filter_set_atpos.exit.us1003.prol:                ; preds = %bb.ec, %.lr.ph999.split.prol
  %i.uq = add i32 %.03621011, 1
  br label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol.loopexit:                    ; preds = %filter_set_atpos.exit.us1003.prol, %.lr.ph999.split.preheader
  %.1363998.us1002.unr = phi i32 [ %.03621011, %.lr.ph999.split.preheader ], [ %i.uq, %filter_set_atpos.exit.us1003.prol ]
  %i.ur = icmp eq i32 %i.to, %.03621011
  br i1 %i.ur, label %._crit_edge1000, label %.lr.ph999.split

.lr.ph999.split:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1
  %.1363998.us1002 = phi i32 [ %i.vl, %filter_set_atpos.exit.us1003.1 ], [ %.1363998.us1002.unr, %.lr.ph999.split.prol.loopexit ] ; 3 uses
  %i.us = shl nuw nsw i32 %.1363998.us1002, 8
  %i.ut = or i32 %i.us, %.03641008
  %i.uu = and i32 %i.ut, 65535
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 %i.uv ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !8   ; 2 uses
  %i.uy = zext i8 %i.ux to i32
  %i.uz = and i32 %i.sf, %i.uy
  %.not.not.i.us = icmp eq i32 %i.uz, 0
  br i1 %.not.not.i.us, label %filter_set_atpos.exit.us1003, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph999.split
  %i.va = and i8 %i.ux, %i.sh
  store i8 %i.va, ptr %i.uw, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003

filter_set_atpos.exit.us1003:                     ; preds = %bb.ed, %.lr.ph999.split
  %i.vb = add i32 %.1363998.us1002, 1             ; 2 uses
  %i.vc = shl nuw nsw i32 %i.vb, 8
  %i.vd = or i32 %i.vc, %.03641008
  %i.ve = and i32 %i.vd, 65535
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %i.vf ; 2 uses
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !8   ; 2 uses
  %i.vi = zext i8 %i.vh to i32
  %i.vj = and i32 %i.sf, %i.vi
  %.not.not.i.us.1 = icmp eq i32 %i.vj, 0
  br i1 %.not.not.i.us.1, label %filter_set_atpos.exit.us1003.1, label %bb.ee

bb.ee:                                            ; preds = %filter_set_atpos.exit.us1003
  %i.vk = and i8 %i.vh, %i.sh
  store i8 %i.vk, ptr %i.vg, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.1

filter_set_atpos.exit.us1003.1:                   ; preds = %bb.ee, %filter_set_atpos.exit.us1003
  %i.vl = add i32 %.1363998.us1002, 2
  %exitcond1268.not.1 = icmp eq i32 %i.vb, %i.to
  br i1 %exitcond1268.not.1, label %._crit_edge1000, label %.lr.ph999.split

._crit_edge1000:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1, %.lr.ph999, %.preheader574
  %.1363.lcssa = phi i32 [ %.03621011, %.preheader574 ], [ %i.tq, %.lr.ph999 ], [ %i.tq, %filter_set_atpos.exit.us1003.1 ], [ %i.tq, %.lr.ph999.split.prol.loopexit ]
  %i.vm = add nuw nsw i32 %.03641008, 1
  %.not473.not = icmp ult i32 %.03641008, %i.tm
  br i1 %.not473.not, label %.preheader574, label %._crit_edge1012

._crit_edge1012:                                  ; preds = %._crit_edge1000.us, %._crit_edge1000, %spec_ith_char.exit530
  %i.vn = load i8, ptr %i.si, align 2, !tbaa !31
  %i.vo = zext i8 %i.vn to i32
  %i.vp = add nuw nsw i32 %.14151023, %i.vo       ; 2 uses
  %.not470 = icmp samesign ugt i32 %i.vp, %i.sc
  br i1 %.not470, label %._crit_edge1026, label %bb.dp

._crit_edge1026:                                  ; preds = %._crit_edge1012
  %i.vq = load i8, ptr %i.sj, align 2, !tbaa !31
  %i.vr = zext i8 %i.vq to i32
  %i.vs = add nuw nsw i32 %.14181028, %i.vr       ; 2 uses
  %.not469 = icmp samesign ugt i32 %i.vs, %i.rw
  br i1 %.not469, label %._crit_edge1031, label %.lr.ph1025

._crit_edge1031:                                  ; preds = %._crit_edge1026, %bb.do, %.lr.ph1033
  %indvars.iv.next1270 = add nuw nsw i64 %indvars.iv1269, 1 ; 2 uses
  %exitcond1273.not = icmp eq i64 %indvars.iv.next1270, %wide.trip.count1272
  br i1 %exitcond1273.not, label %bb.ef, label %.lr.ph1033

bb.ef:                                            ; preds = %._crit_edge1031
  %i.vt = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.vu = load i8, ptr %i.vt, align 8, !tbaa !30  ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.rn, i64 9
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !29  ; 2 uses
  %.not4611058 = icmp ugt i8 %i.vu, %i.vw
  br i1 %.not4611058, label %.loopexit, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.ef
  %i.vx = add i32 %.1401.lcssa, -2
  %i.vy = zext i8 %i.vu to i32
  %i.vz = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.rq, i64 9
  %i.wb = getelementptr inbounds nuw i8, ptr %i.rn, i64 11
  %i.wc = getelementptr inbounds nuw i8, ptr %i.rq, i64 11
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.we = shl nuw i32 1, %i.vx                    ; 3 uses
  %i.wf = trunc i32 %i.we to i8
  %i.wg = xor i8 %i.wf, -1                        ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.rq, i64 10
  %i.wi = getelementptr inbounds nuw i8, ptr %i.rn, i64 10
  %.pre1276 = load i8, ptr %i.vz, align 8, !tbaa !30 ; 2 uses
  %i.wj = load i8, ptr %i.wa, align 1, !tbaa !29  ; 2 uses
  %.not4621053 = icmp ugt i8 %.pre1276, %i.wj
  %4 = zext i8 %.pre1276 to i32
  %5 = zext i8 %i.wj to i32
  %i.wk = zext i8 %i.vw to i32
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph1061, %._crit_edge1057
  %.24191059 = phi i32 [ %i.vy, %.lr.ph1061 ], [ %i.yp, %._crit_edge1057 ] ; 4 uses
  br i1 %.not4621053, label %._crit_edge1057, label %.lr.ph1056

.lr.ph1056:                                       ; preds = %bb.eg
  %i.wl = zext nneg i32 %.24191059 to i64
  %.1399.val = load ptr, ptr %i.rn, align 8, !tbaa !27 ; 4 uses
  %.not.i531 = icmp eq ptr %.1399.val, null
  %i.wm = getelementptr inbounds nuw i8, ptr %.1399.val, i64 14
  %i.wn = getelementptr inbounds nuw i8, ptr %.1399.val, i64 12
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1056, %._crit_edge1052
  %.24161054 = phi i32 [ %4, %.lr.ph1056 ], [ %i.ym, %._crit_edge1052 ] ; 4 uses
  br i1 %.not.i531, label %spec_ith_char.exit533, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wo = load i16, ptr %i.wm, align 2, !tbaa !25
  %i.wp = icmp eq i16 %i.wo, 1
  br i1 %i.wp, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.wq = load i16, ptr %i.wn, align 4, !tbaa !33
  %i.wr = zext i16 %i.wq to i32
  %i.ws = icmp samesign ult i32 %.24191059, %i.wr
  br i1 %i.ws, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.wt = load ptr, ptr %.1399.val, align 8, !tbaa !8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wl
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !8
  %i.ww = zext i8 %i.wv to i32
  br label %spec_ith_char.exit533

spec_ith_char.exit533:                            ; preds = %bb.eh, %bb.em
  %.0.i532 = phi i32 [ %i.ww, %bb.em ], [ %.24191059, %bb.eh ] ; 3 uses
  %.1397.val = load ptr, ptr %i.rq, align 8, !tbaa !27 ; 4 uses
  %.not.i534 = icmp eq ptr %.1397.val, null
  br i1 %.not.i534, label %spec_ith_char.exit536, label %bb.en

bb.en:                                            ; preds = %spec_ith_char.exit533
  %i.wx = getelementptr inbounds nuw i8, ptr %.1397.val, i64 14
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !25
  %i.wz = icmp eq i16 %i.wy, 1
  br i1 %i.wz, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.xa = getelementptr inbounds nuw i8, ptr %.1397.val, i64 12
  %i.xb = load i16, ptr %i.xa, align 4, !tbaa !33
  %i.xc = zext i16 %i.xb to i32
  %i.xd = icmp samesign ult i32 %.24161054, %i.xc
  br i1 %i.xd, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.xe = load ptr, ptr %.1397.val, align 8, !tbaa !8
  %i.xf = zext nneg i32 %.24161054 to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !8
  %i.xi = zext i8 %i.xh to i32
  br label %spec_ith_char.exit536

spec_ith_char.exit536:                            ; preds = %spec_ith_char.exit533, %bb.er
  %.0.i535 = phi i32 [ %i.xi, %bb.er ], [ %.24161054, %spec_ith_char.exit533 ] ; 4 uses
  %i.xj = load i8, ptr %i.wb, align 1, !tbaa !28  ; 2 uses
  %.not463 = icmp ne i8 %i.xj, 0                  ; 3 uses
  %i.xk = select i1 %.not463, i32 255, i32 %.0.i532 ; 2 uses
  %i.xl = load i8, ptr %i.wc, align 1, !tbaa !28  ; 3 uses
  %.not464 = icmp eq i8 %i.xl, 0                  ; 2 uses
  %i.xm = select i1 %.not464, i32 %.0.i535, i32 255 ; 4 uses
  %i.xn = select i1 %.not463, i32 0, i32 %.0.i532 ; 2 uses
  %.not4651048 = icmp ugt i32 %i.xn, %i.xk
  br i1 %.not4651048, label %._crit_edge1052, label %.preheader.preheader

.preheader.preheader:                             ; preds = %spec_ith_char.exit536
  %i.xo = select i1 %.not464, i32 %.0.i535, i32 0
  %i.xp = add nuw nsw i32 %i.xm, 1                ; 3 uses
  %.not468.us = icmp ne i8 %i.xl, 0
  %.not1079 = icmp eq i8 %i.xj, 0
  %.not468 = icmp ne i8 %i.xl, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1040
  %.01051 = phi i32 [ %.1.lcssa, %._crit_edge1040 ], [ %i.xo, %.preheader.preheader ] ; 4 uses
  %.03611049 = phi i32 [ %i.yj, %._crit_edge1040 ], [ %i.xn, %.preheader.preheader ] ; 5 uses
  %.not4661037 = icmp ugt i32 %.01051, %i.xm
  br i1 %.not4661037, label %._crit_edge1040, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %.preheader
  %i.xq = icmp eq i32 %.03611049, %.0.i532
  %.fr = freeze i1 %i.xq
  br i1 %.fr, label %.lr.ph1039.split.split.a, label %.lr.ph1039.split.us

.lr.ph1039.split.us:                              ; preds = %.lr.ph1039, %filter_set_end.exit.us
  %.11038.us = phi i32 [ %i.yb, %filter_set_end.exit.us ], [ %.01051, %.lr.ph1039 ] ; 4 uses
  %i.xr = icmp eq i32 %.11038.us, %.0.i535
  %or.cond505.us = select i1 %.not468.us, i1 %i.xr, i1 false
  br i1 %or.cond505.us, label %filter_set_end.exit.us, label %bb.es

bb.es:                                            ; preds = %.lr.ph1039.split.us
  %i.xs = shl nuw nsw i32 %.11038.us, 8
  %i.xt = or i32 %i.xs, %.03611049
  %i.xu = and i32 %i.xt, 65535
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.xv ; 2 uses
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !8   ; 2 uses
  %i.xy = zext i8 %i.xx to i32
  %i.xz = and i32 %i.we, %i.xy
  %.not.not.i537.us = icmp eq i32 %i.xz, 0
  br i1 %.not.not.i537.us, label %filter_set_end.exit.us, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ya = and i8 %i.xx, %i.wg
  store i8 %i.ya, ptr %i.xw, align 1, !tbaa !8
  br label %filter_set_end.exit.us

filter_set_end.exit.us:                           ; preds = %bb.et, %bb.es, %.lr.ph1039.split.us
  %i.yb = add i32 %.11038.us, 1
  %exitcond1274.not = icmp eq i32 %.11038.us, %i.xm
  br i1 %exitcond1274.not, label %._crit_edge1040, label %.lr.ph1039.split.us

.lr.ph1039.split.split.a:                         ; preds = %.lr.ph1039
  br i1 %.not1079, label %bb.eu, label %._crit_edge1040

bb.eu:                                            ; preds = %.lr.ph1039.split.split.a, %filter_set_end.exit
  %.11038 = phi i32 [ %9, %filter_set_end.exit ], [ %.01051, %.lr.ph1039.split.split.a ] ; 4 uses
  %6 = icmp eq i32 %.11038, %.0.i535
  %or.cond505 = select i1 %.not468, i1 %6, i1 false
  %or.cond505.a = select i1 %.not463, i1 true, i1 %or.cond505
  br i1 %or.cond505.a, label %filter_set_end.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %7 = shl nuw nsw i32 %.11038, 8
  %8 = or i32 %7, %.03611049
  %i.yc = and i32 %8, 65535
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.yd ; 2 uses
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !8   ; 2 uses
  %i.yg = zext i8 %i.yf to i32
  %i.yh = and i32 %i.we, %i.yg
  %.not.not.i537 = icmp eq i32 %i.yh, 0
  br i1 %.not.not.i537, label %filter_set_end.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yi = and i8 %i.yf, %i.wg
  store i8 %i.yi, ptr %i.ye, align 1, !tbaa !8
  br label %filter_set_end.exit

filter_set_end.exit:                              ; preds = %bb.ew, %bb.ev, %bb.eu
  %9 = add i32 %.11038, 1
  %exitcond1275.not = icmp eq i32 %.11038, %i.xm
  br i1 %exitcond1275.not, label %._crit_edge1040, label %bb.eu, !llvm.loop !10

._crit_edge1040:                                  ; preds = %filter_set_end.exit.us, %filter_set_end.exit, %.lr.ph1039.split.split.a, %.preheader
  %.1.lcssa = phi i32 [ %.01051, %.preheader ], [ %i.xp, %filter_set_end.exit ], [ %i.xp, %.lr.ph1039.split.split.a ], [ %i.xp, %filter_set_end.exit.us ]
  %i.yj = add nuw nsw i32 %.03611049, 1
  %.not465.not = icmp ult i32 %.03611049, %i.xk
  br i1 %.not465.not, label %.preheader, label %._crit_edge1052

._crit_edge1052:                                  ; preds = %._crit_edge1040, %spec_ith_char.exit536
  %i.yk = load i8, ptr %i.wh, align 2, !tbaa !31
  %i.yl = zext i8 %i.yk to i32
  %i.ym = add nuw nsw i32 %.24161054, %i.yl       ; 2 uses
  %.not462 = icmp samesign ugt i32 %i.ym, %5
  br i1 %.not462, label %._crit_edge1057, label %bb.eh

._crit_edge1057:                                  ; preds = %._crit_edge1052, %bb.eg
  %i.yn = load i8, ptr %i.wi, align 2, !tbaa !31
  %i.yo = zext i8 %i.yn to i32
  %i.yp = add nuw nsw i32 %.24191059, %i.yo       ; 2 uses
  %.not461 = icmp samesign ugt i32 %i.yp, %i.wk
  br i1 %.not461, label %.loopexit, label %bb.eg

.loopexit:                                        ; preds = %._crit_edge1057, %bb.ef, %bb.ae, %.thread1355, %.critedge492, %._crit_edge993.thread, %._crit_edge.thread
  %.2431 = phi i32 [ %i.w, %._crit_edge.thread ], [ -1, %.critedge492 ], [ -1, %bb.ae ], [ -1, %._crit_edge993.thread ], [ %.1401.lcssa, %bb.ef ], [ -1, %.thread1355 ], [ %.1401.lcssa, %._crit_edge1057 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.2431
}

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #5

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1, 1) i32 @filter_search_ext(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.b = icmp ult i64 %2, 2
  br i1 %i.b, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.01824 = phi i8 [ %i.j, %.critedge ], [ -1, %.lr.ph.preheader ]
  %.01923 = phi i64 [ %i.n, %.critedge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.01923
  %i.e = load i16, ptr %i.d, align 1, !tbaa !8
  %i.f = shl i8 %.01824, 1
  %i.g = zext i16 %i.e to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = or i8 %i.i, %i.f                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = or i8 %i.l, %i.j
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i64 %.01923, ptr %3, align 8, !tbaa !44
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  %i.n = add nuw i64 %.01923, 1
  %exitcond.not = icmp eq i64 %.01923, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.critedge, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ -1, %.critedge ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 -1, -9) i64 @filter_search(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.b = icmp ult i64 %2, 2
  br i1 %i.b, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01825 = phi i8 [ %i.j, %bb.b ], [ -1, %.lr.ph.preheader ]
  %.01924 = phi i64 [ %i.n, %bb.b ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.01924
  %i.e = load i16, ptr %i.d, align 1, !tbaa !8
  %i.f = shl i8 %.01825, 1
  %i.g = zext i16 %i.e to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = or i8 %i.i, %i.f                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = or i8 %i.l, %i.j
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %bb.b, label %.loopexit.split.loop.exit

bb.b:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %.01924, 1
  %exitcond.not = icmp eq i64 %.01924, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit.split.loop.exit:                        ; preds = %.lr.ph
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.01924, i64 8)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.split.loop.exit, %bb.a
  %.2 = phi i64 [ -1, %bb.a ], [ %i.o, %.loopexit.split.loop.exit ], [ -1, %bb.b ]
  ret i64 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = distinct !{!9, !36}
!10 = distinct !{!10, !41}
!11 = !{!"short", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"any p2 pointer", !13, i64 0}
!17 = !{!"p2 _ZTS14cli_ac_special", !16, i64 0}
!18 = !{!"cli_ac_patt", !14, i64 0, !14, i64 8, !4, i64 16, !4, i64 22, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !4, i64 52, !15, i64 56, !13, i64 64, !4, i64 72, !4, i64 76, !11, i64 80, !11, i64 82, !11, i64 84, !11, i64 86, !17, i64 88, !11, i64 96, !11, i64 98, !4, i64 100, !5, i64 116, !5, i64 120, !5, i64 124, !4, i64 128, !4, i64 129}
!19 = !{!18, !14, i64 8}
!20 = !{!18, !14, i64 0}
!21 = !{!18, !17, i64 88}
!22 = !{!"p1 _ZTS14cli_ac_special", !13, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"cli_ac_special", !4, i64 0, !4, i64 8, !11, i64 12, !11, i64 14, !11, i64 16}
!25 = !{!24, !11, i64 14}
!26 = !{!"char_spec", !22, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11}
!27 = !{!26, !22, i64 0}
!28 = !{!26, !4, i64 11}
!29 = !{!26, !4, i64 9}
!30 = !{!26, !4, i64 8}
!31 = !{!26, !4, i64 10}
!32 = !{!24, !11, i64 16}
!33 = !{!24, !11, i64 12}
!34 = !{!18, !15, i64 56}
!35 = !{!5, !5, i64 0}
!36 = !{!"llvm.loop.peeled.count", i32 1}
!37 = !{!"choice", !5, i64 0, !5, i64 4, !5, i64 8}
!38 = !{!37, !5, i64 0}
!39 = !{!37, !5, i64 4}
!40 = !{!37, !5, i64 8}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = !{!"long", !4, i64 0}
!43 = !{!"filter_match_info", !42, i64 0}
!44 = !{!43, !42, i64 0}
end_hunk_0
