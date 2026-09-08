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
  %i.td = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.te = load i16, ptr %i.td, align 4, !tbaa !35
  %i.tf = zext i16 %i.te to i32
  %i.tg = icmp samesign ult i32 %.14151023, %i.tf
  br i1 %i.tg, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.th = load ptr, ptr %.val, align 8, !tbaa !8
  %i.ti = zext nneg i32 %.14151023 to i64
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !8
  %i.tl = zext i8 %i.tk to i32
  br label %spec_ith_char.exit530

spec_ith_char.exit530:                            ; preds = %spec_ith_char.exit527, %bb.dz
  %.0.i529 = phi i32 [ %i.tl, %bb.dz ], [ %.14151023, %spec_ith_char.exit527 ] ; 4 uses
  %i.tm = load i8, ptr %i.se, align 1, !tbaa !30  ; 2 uses
  %.not471 = icmp eq i8 %i.tm, 0                  ; 2 uses
  %i.tn = select i1 %.not471, i32 %.0.i526, i32 255 ; 3 uses
  %i.to = load i8, ptr %i.sf, align 1, !tbaa !30
  %.fr1078 = freeze i8 %i.to
  %.not472 = icmp eq i8 %.fr1078, 0               ; 2 uses
  %i.tp = select i1 %.not472, i32 %.0.i529, i32 255 ; 6 uses
  %i.tq = select i1 %.not471, i32 %.0.i526, i32 0 ; 3 uses
  %.not4731007 = icmp ugt i32 %i.tq, %i.tn
  br i1 %.not4731007, label %._crit_edge1012, label %.preheader574.lr.ph

.preheader574.lr.ph:                              ; preds = %spec_ith_char.exit530
  %.not475 = icmp ne i8 %i.tm, 0                  ; 2 uses
  br i1 %.not472, label %.preheader574.preheader, label %.preheader574.us

.preheader574.preheader:                          ; preds = %.preheader574.lr.ph
  %i.tr = add nuw nsw i32 %.0.i529, 1             ; 3 uses
  br label %.preheader574

.preheader574.us:                                 ; preds = %.preheader574.lr.ph, %._crit_edge1000.us
  %.03621011.us = phi i32 [ %.1363.lcssa.us, %._crit_edge1000.us ], [ 0, %.preheader574.lr.ph ] ; 3 uses
  %.03641008.us = phi i32 [ %i.ue, %._crit_edge1000.us ], [ %i.tq, %.preheader574.lr.ph ] ; 4 uses
  %.not474997.us = icmp ugt i32 %.03621011.us, %i.tp
  br i1 %.not474997.us, label %._crit_edge1000.us, label %.lr.ph999.us

.lr.ph999.us:                                     ; preds = %.preheader574.us
  %i.ts = icmp eq i32 %.03641008.us, %.0.i526
  %or.cond499.us = select i1 %.not475, i1 %i.ts, i1 false
  br i1 %or.cond499.us, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

.lr.ph999.split.us1013:                           ; preds = %.lr.ph999.us, %filter_set_atpos.exit.us1017
  %.1363998.us1015 = phi i32 [ %i.ud, %filter_set_atpos.exit.us1017 ], [ %.03621011.us, %.lr.ph999.us ] ; 4 uses
  %i.tt = icmp eq i32 %.1363998.us1015, %.0.i529
  br i1 %i.tt, label %filter_set_atpos.exit.us1017, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph999.split.us1013
  %i.tu = shl nuw nsw i32 %.1363998.us1015, 8
  %i.tv = or i32 %i.tu, %.03641008.us
  %i.tw = and i32 %i.tv, 65535
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 %i.tx ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !8   ; 2 uses
  %i.ua = zext i8 %i.tz to i32
  %i.ub = and i32 %i.sg, %i.ua
  %.not.not.i.us1016 = icmp eq i32 %i.ub, 0
  br i1 %.not.not.i.us1016, label %filter_set_atpos.exit.us1017, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uc = and i8 %i.tz, %i.si
  store i8 %i.uc, ptr %i.ty, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1017

filter_set_atpos.exit.us1017:                     ; preds = %bb.eb, %bb.ea, %.lr.ph999.split.us1013
  %i.ud = add i32 %.1363998.us1015, 1
  %exitcond1267.not = icmp eq i32 %.1363998.us1015, %i.tp
  br i1 %exitcond1267.not, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

._crit_edge1000.us:                               ; preds = %filter_set_atpos.exit.us1017, %.lr.ph999.us, %.preheader574.us
  %.1363.lcssa.us = phi i32 [ %.03621011.us, %.preheader574.us ], [ 256, %.lr.ph999.us ], [ 256, %filter_set_atpos.exit.us1017 ]
  %i.ue = add nuw nsw i32 %.03641008.us, 1
  %.not473.us.not = icmp ult i32 %.03641008.us, %i.tn
  br i1 %.not473.us.not, label %.preheader574.us, label %._crit_edge1012

.preheader574:                                    ; preds = %.preheader574.preheader, %._crit_edge1000
  %.03621011 = phi i32 [ %.1363.lcssa, %._crit_edge1000 ], [ %.0.i529, %.preheader574.preheader ] ; 7 uses
  %.03641008 = phi i32 [ %i.vn, %._crit_edge1000 ], [ %i.tq, %.preheader574.preheader ] ; 6 uses
  %.not474997 = icmp ugt i32 %.03621011, %i.tp
  br i1 %.not474997, label %._crit_edge1000, label %.lr.ph999

.lr.ph999:                                        ; preds = %.preheader574
  %i.uf = icmp eq i32 %.03641008, %.0.i526
  %or.cond499 = select i1 %.not475, i1 %i.uf, i1 false
  br i1 %or.cond499, label %._crit_edge1000, label %.lr.ph999.split.preheader

.lr.ph999.split.preheader:                        ; preds = %.lr.ph999
  %i.ug = add i32 %i.tp, %.03621011
  %i.uh = and i32 %i.ug, 1
  %lcmp.mod1581.not.not = icmp eq i32 %i.uh, 0
  br i1 %lcmp.mod1581.not.not, label %.lr.ph999.split.prol, label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol:                             ; preds = %.lr.ph999.split.preheader
  %i.ui = shl nuw nsw i32 %.03621011, 8
  %i.uj = or i32 %i.ui, %.03641008
  %i.uk = and i32 %i.uj, 65535
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 %i.ul ; 2 uses
  %i.un = load i8, ptr %i.um, align 1, !tbaa !8   ; 2 uses
  %i.uo = zext i8 %i.un to i32
  %i.up = and i32 %i.sg, %i.uo
  %.not.not.i.us.prol = icmp eq i32 %i.up, 0
  br i1 %.not.not.i.us.prol, label %filter_set_atpos.exit.us1003.prol, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph999.split.prol
  %i.uq = and i8 %i.un, %i.si
  store i8 %i.uq, ptr %i.um, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.prol

filter_set_atpos.exit.us1003.prol:                ; preds = %bb.ec, %.lr.ph999.split.prol
  %i.ur = add i32 %.03621011, 1
  br label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol.loopexit:                    ; preds = %filter_set_atpos.exit.us1003.prol, %.lr.ph999.split.preheader
  %.1363998.us1002.unr = phi i32 [ %.03621011, %.lr.ph999.split.preheader ], [ %i.ur, %filter_set_atpos.exit.us1003.prol ]
  %i.us = icmp eq i32 %i.tp, %.03621011
  br i1 %i.us, label %._crit_edge1000, label %.lr.ph999.split

.lr.ph999.split:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1
  %.1363998.us1002 = phi i32 [ %i.vm, %filter_set_atpos.exit.us1003.1 ], [ %.1363998.us1002.unr, %.lr.ph999.split.prol.loopexit ] ; 3 uses
  %i.ut = shl nuw nsw i32 %.1363998.us1002, 8
  %i.uu = or i32 %i.ut, %.03641008
  %i.uv = and i32 %i.uu, 65535
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 %i.uw ; 2 uses
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !8   ; 2 uses
  %i.uz = zext i8 %i.uy to i32
  %i.va = and i32 %i.sg, %i.uz
  %.not.not.i.us = icmp eq i32 %i.va, 0
  br i1 %.not.not.i.us, label %filter_set_atpos.exit.us1003, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph999.split
  %i.vb = and i8 %i.uy, %i.si
  store i8 %i.vb, ptr %i.ux, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003

filter_set_atpos.exit.us1003:                     ; preds = %bb.ed, %.lr.ph999.split
  %i.vc = add i32 %.1363998.us1002, 1             ; 2 uses
  %i.vd = shl nuw nsw i32 %i.vc, 8
  %i.ve = or i32 %i.vd, %.03641008
  %i.vf = and i32 %i.ve, 65535
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 %i.vg ; 2 uses
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !8   ; 2 uses
  %i.vj = zext i8 %i.vi to i32
  %i.vk = and i32 %i.sg, %i.vj
  %.not.not.i.us.1 = icmp eq i32 %i.vk, 0
  br i1 %.not.not.i.us.1, label %filter_set_atpos.exit.us1003.1, label %bb.ee

bb.ee:                                            ; preds = %filter_set_atpos.exit.us1003
  %i.vl = and i8 %i.vi, %i.si
  store i8 %i.vl, ptr %i.vh, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.1

filter_set_atpos.exit.us1003.1:                   ; preds = %bb.ee, %filter_set_atpos.exit.us1003
  %i.vm = add i32 %.1363998.us1002, 2
  %exitcond1268.not.1 = icmp eq i32 %i.vc, %i.tp
  br i1 %exitcond1268.not.1, label %._crit_edge1000, label %.lr.ph999.split

._crit_edge1000:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1, %.lr.ph999, %.preheader574
  %.1363.lcssa = phi i32 [ %.03621011, %.preheader574 ], [ %i.tr, %.lr.ph999 ], [ %i.tr, %filter_set_atpos.exit.us1003.1 ], [ %i.tr, %.lr.ph999.split.prol.loopexit ]
  %i.vn = add nuw nsw i32 %.03641008, 1
  %.not473.not = icmp ult i32 %.03641008, %i.tn
  br i1 %.not473.not, label %.preheader574, label %._crit_edge1012

._crit_edge1012:                                  ; preds = %._crit_edge1000.us, %._crit_edge1000, %spec_ith_char.exit530
  %i.vo = load i8, ptr %i.sj, align 2, !tbaa !33
  %i.vp = zext i8 %i.vo to i32
  %i.vq = add nuw nsw i32 %.14151023, %i.vp       ; 2 uses
  %.not470 = icmp samesign ugt i32 %i.vq, %i.sd
  br i1 %.not470, label %._crit_edge1026, label %bb.dp

._crit_edge1026:                                  ; preds = %._crit_edge1012
  %i.vr = load i8, ptr %i.sk, align 2, !tbaa !33
  %i.vs = zext i8 %i.vr to i32
  %i.vt = add nuw nsw i32 %.14181028, %i.vs       ; 2 uses
  %.not469 = icmp samesign ugt i32 %i.vt, %i.rx
  br i1 %.not469, label %._crit_edge1031, label %.lr.ph1025

._crit_edge1031:                                  ; preds = %._crit_edge1026, %bb.do, %.lr.ph1033
  %indvars.iv.next1270 = add nuw nsw i64 %indvars.iv1269, 1 ; 2 uses
  %exitcond1273.not = icmp eq i64 %indvars.iv.next1270, %wide.trip.count1272
  br i1 %exitcond1273.not, label %bb.ef, label %.lr.ph1033

bb.ef:                                            ; preds = %._crit_edge1031
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.vv = load i8, ptr %i.vu, align 8, !tbaa !32  ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ro, i64 9 ; 2 uses
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !31  ; 2 uses
  %.not4611058 = icmp ugt i8 %i.vv, %i.vx
  br i1 %.not4611058, label %.loopexit, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.ef
  %i.vy = add i32 %.1401.lcssa, -2
  %i.vz = zext i8 %i.vv to i32
  %i.wa = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.rr, i64 9 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ro, i64 11 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.rr, i64 11 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.wf = shl nuw i32 1, %i.vy                    ; 3 uses
  %i.wg = trunc i32 %i.wf to i8
  %i.wh = xor i8 %i.wg, -1                        ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.rr, i64 10
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ro, i64 10
  %.pre1276 = load i8, ptr %i.wb, align 1, !tbaa !31 ; 2 uses
  %i.wk = load i8, ptr %i.wa, align 8, !tbaa !32  ; 2 uses
  %i.wl = zext i8 %i.wk to i32
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph1061, %._crit_edge1057
  %4 = phi i8 [ %i.vx, %.lr.ph1061 ], [ %18, %._crit_edge1057 ]
  %5 = phi i8 [ %.pre1276, %.lr.ph1061 ], [ %19, %._crit_edge1057 ] ; 2 uses
  %6 = phi i8 [ %.pre1276, %.lr.ph1061 ], [ %20, %._crit_edge1057 ] ; 2 uses
  %.24191059 = phi i32 [ %i.vz, %.lr.ph1061 ], [ %i.yq, %._crit_edge1057 ] ; 4 uses
  %.not4621053 = icmp ugt i8 %i.wk, %6
  br i1 %.not4621053, label %._crit_edge1057, label %.lr.ph1056

.lr.ph1056:                                       ; preds = %bb.eg
  %i.wm = zext nneg i32 %.24191059 to i64
  %.1399.val = load ptr, ptr %i.ro, align 8, !tbaa !29 ; 4 uses
  %.not.i531 = icmp eq ptr %.1399.val, null
  %i.wn = getelementptr inbounds nuw i8, ptr %.1399.val, i64 14
  %i.wo = getelementptr inbounds nuw i8, ptr %.1399.val, i64 12
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1056, %._crit_edge1052
  %7 = phi i8 [ %5, %.lr.ph1056 ], [ %16, %._crit_edge1052 ]
  %.24161054 = phi i32 [ %i.wl, %.lr.ph1056 ], [ %i.yn, %._crit_edge1052 ] ; 4 uses
  br i1 %.not.i531, label %spec_ith_char.exit533, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wp = load i16, ptr %i.wn, align 2, !tbaa !27
  %i.wq = icmp eq i16 %i.wp, 1
  br i1 %i.wq, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.wr = load i16, ptr %i.wo, align 4, !tbaa !35
  %i.ws = zext i16 %i.wr to i32
  %i.wt = icmp samesign ult i32 %.24191059, %i.ws
  br i1 %i.wt, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.wu = load ptr, ptr %.1399.val, align 8, !tbaa !8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wm
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !8
  %i.wx = zext i8 %i.ww to i32
  br label %spec_ith_char.exit533

spec_ith_char.exit533:                            ; preds = %bb.eh, %bb.em
  %.0.i532 = phi i32 [ %i.wx, %bb.em ], [ %.24191059, %bb.eh ] ; 3 uses
  %.1397.val = load ptr, ptr %i.rr, align 8, !tbaa !29 ; 4 uses
  %.not.i534 = icmp eq ptr %.1397.val, null
  br i1 %.not.i534, label %spec_ith_char.exit536, label %bb.en

bb.en:                                            ; preds = %spec_ith_char.exit533
  %i.wy = getelementptr inbounds nuw i8, ptr %.1397.val, i64 14
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !27
  %i.xa = icmp eq i16 %i.wz, 1
  br i1 %i.xa, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.xb = getelementptr inbounds nuw i8, ptr %.1397.val, i64 12
  %i.xc = load i16, ptr %i.xb, align 4, !tbaa !35
  %i.xd = zext i16 %i.xc to i32
  %i.xe = icmp samesign ult i32 %.24161054, %i.xd
  br i1 %i.xe, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.xf = load ptr, ptr %.1397.val, align 8, !tbaa !8
  %i.xg = zext nneg i32 %.24161054 to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !8
  %i.xj = zext i8 %i.xi to i32
  br label %spec_ith_char.exit536

spec_ith_char.exit536:                            ; preds = %spec_ith_char.exit533, %bb.er
  %.0.i535 = phi i32 [ %i.xj, %bb.er ], [ %.24161054, %spec_ith_char.exit533 ] ; 4 uses
  %i.xk = load i8, ptr %i.wc, align 1, !tbaa !30
  %.not463 = icmp eq i8 %i.xk, 0                  ; 2 uses
  %i.xl = select i1 %.not463, i32 %.0.i532, i32 255 ; 2 uses
  %i.xm = load i8, ptr %i.wd, align 1, !tbaa !30
  %.not464 = icmp eq i8 %i.xm, 0                  ; 2 uses
  %i.xn = select i1 %.not464, i32 %.0.i535, i32 255 ; 4 uses
  %i.xo = select i1 %.not463, i32 %.0.i532, i32 0 ; 2 uses
  %.not4651048 = icmp ugt i32 %i.xo, %i.xl
  br i1 %.not4651048, label %._crit_edge1052, label %.preheader.preheader

.preheader.preheader:                             ; preds = %spec_ith_char.exit536
  %i.xp = select i1 %.not464, i32 %.0.i535, i32 0
  %i.xq = add nuw nsw i32 %i.xn, 1                ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1040
  %.01051 = phi i32 [ %.1.lcssa, %._crit_edge1040 ], [ %i.xp, %.preheader.preheader ] ; 4 uses
  %.03611049 = phi i32 [ %i.yk, %._crit_edge1040 ], [ %i.xo, %.preheader.preheader ] ; 5 uses
  %.not4661037 = icmp ugt i32 %.01051, %i.xn
  br i1 %.not4661037, label %._crit_edge1040, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %.preheader
  %i.xr = icmp eq i32 %.03611049, %.0.i532
  %.fr = freeze i1 %i.xr
  br i1 %.fr, label %.lr.ph1039.split, label %.lr.ph1039.split.us.preheader

.lr.ph1039.split.us.preheader:                    ; preds = %.lr.ph1039
  %8 = load i8, ptr %i.wd, align 1, !tbaa !30
  %.not468.us = icmp ne i8 %8, 0
  br label %.lr.ph1039.split.us

.lr.ph1039.split.us:                              ; preds = %.lr.ph1039.split.us.preheader, %filter_set_end.exit.us
  %.11038.us = phi i32 [ %i.yc, %filter_set_end.exit.us ], [ %.01051, %.lr.ph1039.split.us.preheader ] ; 4 uses
  %i.xs = icmp eq i32 %.11038.us, %.0.i535
  %or.cond505.us = select i1 %.not468.us, i1 %i.xs, i1 false
  br i1 %or.cond505.us, label %filter_set_end.exit.us, label %bb.es

bb.es:                                            ; preds = %.lr.ph1039.split.us
  %i.xt = shl nuw nsw i32 %.11038.us, 8
  %i.xu = or i32 %i.xt, %.03611049
  %i.xv = and i32 %i.xu, 65535
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.xw ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !8   ; 2 uses
  %i.xz = zext i8 %i.xy to i32
  %i.ya = and i32 %i.wf, %i.xz
  %.not.not.i537.us = icmp eq i32 %i.ya, 0
  br i1 %.not.not.i537.us, label %filter_set_end.exit.us, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.yb = and i8 %i.xy, %i.wh
  store i8 %i.yb, ptr %i.xx, align 1, !tbaa !8
  br label %filter_set_end.exit.us

filter_set_end.exit.us:                           ; preds = %bb.et, %bb.es, %.lr.ph1039.split.us
  %i.yc = add i32 %.11038.us, 1
  %exitcond1274.not = icmp eq i32 %.11038.us, %i.xn
  br i1 %exitcond1274.not, label %._crit_edge1040, label %.lr.ph1039.split.us

.lr.ph1039.split:                                 ; preds = %.lr.ph1039
  %9 = load i8, ptr %i.wc, align 1, !tbaa !30
  %.not1079 = icmp eq i8 %9, 0
  br i1 %.not1079, label %.lr.ph1039.split.split.a, label %._crit_edge1040

.lr.ph1039.split.splitthread-pre-split:           ; preds = %filter_set_end.exit
  %10 = add i32 %.11038, 1
  %.pr = load i8, ptr %i.wc, align 1, !tbaa !30
  br label %.lr.ph1039.split.split.a

.lr.ph1039.split.split.a:                         ; preds = %.lr.ph1039.split, %.lr.ph1039.split.splitthread-pre-split
  %11 = phi i8 [ %.pr, %.lr.ph1039.split.splitthread-pre-split ], [ 0, %.lr.ph1039.split ]
  %.11038 = phi i32 [ %10, %.lr.ph1039.split.splitthread-pre-split ], [ %.01051, %.lr.ph1039.split ] ; 4 uses
  %12 = shl nuw nsw i32 %.11038, 8
  %13 = or i32 %12, %.03611049
  %.not467.not = icmp eq i8 %11, 0
  br i1 %.not467.not, label %bb.eu, label %filter_set_end.exit

bb.eu:                                            ; preds = %.lr.ph1039.split.split.a
  %14 = load i8, ptr %i.wd, align 1, !tbaa !30
  %.not468 = icmp ne i8 %14, 0
  %15 = icmp eq i32 %.11038, %.0.i535
  %or.cond505.a = select i1 %.not468, i1 %15, i1 false
  br i1 %or.cond505.a, label %filter_set_end.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.yd = and i32 %13, 65535
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.ye ; 2 uses
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !8   ; 2 uses
  %i.yh = zext i8 %i.yg to i32
  %i.yi = and i32 %i.wf, %i.yh
  %.not.not.i537 = icmp eq i32 %i.yi, 0
  br i1 %.not.not.i537, label %filter_set_end.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yj = and i8 %i.yg, %i.wh
  store i8 %i.yj, ptr %i.yf, align 1, !tbaa !8
  br label %filter_set_end.exit

filter_set_end.exit:                              ; preds = %bb.ew, %bb.ev, %bb.eu, %.lr.ph1039.split.split.a
  %exitcond1275.not = icmp eq i32 %.11038, %i.xn
  br i1 %exitcond1275.not, label %._crit_edge1040, label %.lr.ph1039.split.splitthread-pre-split, !llvm.loop !12

._crit_edge1040:                                  ; preds = %filter_set_end.exit.us, %filter_set_end.exit, %.lr.ph1039.split, %.preheader
  %.1.lcssa = phi i32 [ %.01051, %.preheader ], [ %i.xq, %filter_set_end.exit ], [ %i.xq, %.lr.ph1039.split ], [ %i.xq, %filter_set_end.exit.us ]
  %i.yk = add nuw nsw i32 %.03611049, 1
  %.not465.not = icmp ult i32 %.03611049, %i.xl
  br i1 %.not465.not, label %.preheader, label %._crit_edge1052.loopexit

._crit_edge1052.loopexit:                         ; preds = %._crit_edge1040
  %.pre1277 = load i8, ptr %i.wb, align 1, !tbaa !31
  br label %._crit_edge1052

._crit_edge1052:                                  ; preds = %._crit_edge1052.loopexit, %spec_ith_char.exit536
  %16 = phi i8 [ %.pre1277, %._crit_edge1052.loopexit ], [ %7, %spec_ith_char.exit536 ] ; 4 uses
  %i.yl = load i8, ptr %i.wi, align 2, !tbaa !33
  %i.ym = zext i8 %i.yl to i32
  %i.yn = add nuw nsw i32 %.24161054, %i.ym       ; 2 uses
  %17 = zext i8 %16 to i32
  %.not462 = icmp samesign ugt i32 %i.yn, %17
  br i1 %.not462, label %._crit_edge1057.loopexit, label %bb.eh

._crit_edge1057.loopexit:                         ; preds = %._crit_edge1052
  %.pre1278 = load i8, ptr %i.vw, align 1, !tbaa !31
  br label %._crit_edge1057

._crit_edge1057:                                  ; preds = %._crit_edge1057.loopexit, %bb.eg
  %18 = phi i8 [ %.pre1278, %._crit_edge1057.loopexit ], [ %4, %bb.eg ] ; 2 uses
  %19 = phi i8 [ %16, %._crit_edge1057.loopexit ], [ %5, %bb.eg ]
  %20 = phi i8 [ %16, %._crit_edge1057.loopexit ], [ %6, %bb.eg ]
  %i.yo = load i8, ptr %i.wj, align 2, !tbaa !33
  %i.yp = zext i8 %i.yo to i32
  %i.yq = add nuw nsw i32 %.24191059, %i.yp       ; 2 uses
  %21 = zext i8 %18 to i32
  %.not461 = icmp samesign ugt i32 %i.yq, %21
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
  store i64 %.01923, ptr %3, align 8, !tbaa !45
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
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !42}
!13 = !{!"short", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 short", !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"any p2 pointer", !15, i64 0}
!19 = !{!"p2 _ZTS14cli_ac_special", !18, i64 0}
!20 = !{!"cli_ac_patt", !16, i64 0, !16, i64 8, !4, i64 16, !4, i64 22, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !4, i64 52, !17, i64 56, !15, i64 64, !4, i64 72, !4, i64 76, !13, i64 80, !13, i64 82, !13, i64 84, !13, i64 86, !19, i64 88, !13, i64 96, !13, i64 98, !4, i64 100, !5, i64 116, !5, i64 120, !5, i64 124, !4, i64 128, !4, i64 129}
!21 = !{!20, !16, i64 8}
!22 = !{!20, !16, i64 0}
!23 = !{!20, !19, i64 88}
!24 = !{!"p1 _ZTS14cli_ac_special", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"cli_ac_special", !4, i64 0, !4, i64 8, !13, i64 12, !13, i64 14, !13, i64 16}
!27 = !{!26, !13, i64 14}
!28 = !{!"char_spec", !24, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11}
!29 = !{!28, !24, i64 0}
!30 = !{!28, !4, i64 11}
!31 = !{!28, !4, i64 9}
!32 = !{!28, !4, i64 8}
!33 = !{!28, !4, i64 10}
!34 = !{!26, !13, i64 16}
!35 = !{!26, !13, i64 12}
!36 = !{!20, !17, i64 56}
!37 = !{!5, !5, i64 0}
!38 = !{!"choice", !5, i64 0, !5, i64 4, !5, i64 8}
!39 = !{!38, !5, i64 0}
!40 = !{!38, !5, i64 4}
!41 = !{!38, !5, i64 8}
!42 = !{!"llvm.loop.unswitch.partial.disable"}
!43 = !{!"long", !4, i64 0}
!44 = !{!"filter_match_info", !43, i64 0}
!45 = !{!44, !43, i64 0}
end_hunk_0
