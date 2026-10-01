Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filtering?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_add_acpatt:bb.a

bb.dy:                                            ; preds = %bb.dx
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.tt = load ptr, ptr %.val, align 8, !tbaa !8
  %i.tu = zext nneg i32 %.14151023 to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tu
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !8
  %i.tx = zext i8 %i.tw to i32
  br label %spec_ith_char.exit530

spec_ith_char.exit530:                            ; preds = %spec_ith_char.exit527, %bb.dz
  %.0.i529 = phi i32 [ %i.tx, %bb.dz ], [ %.14151023, %spec_ith_char.exit527 ] ; 4 uses
  %i.ty = load i8, ptr %i.sq, align 1, !tbaa !32
  %.not471 = icmp ne i8 %i.ty, 0                  ; 4 uses
  %i.tz = select i1 %.not471, i32 255, i32 %.0.i526 ; 3 uses
  %i.ua = load i8, ptr %i.sr, align 1, !tbaa !32
  %.fr1078 = freeze i8 %i.ua
  %.not472 = icmp eq i8 %.fr1078, 0               ; 2 uses
  %i.ub = select i1 %.not472, i32 %.0.i529, i32 255 ; 6 uses
  %i.uc = select i1 %.not471, i32 0, i32 %.0.i526 ; 3 uses
  %.not4731007 = icmp ugt i32 %i.uc, %i.tz
  br i1 %.not4731007, label %._crit_edge1012, label %.preheader574.lr.ph

.preheader574.lr.ph:                              ; preds = %spec_ith_char.exit530
  br i1 %.not472, label %.preheader574.preheader, label %.preheader574.us

.preheader574.preheader:                          ; preds = %.preheader574.lr.ph
  %i.ud = add nuw nsw i32 %.0.i529, 1             ; 3 uses
  br label %.preheader574

.preheader574.us:                                 ; preds = %.preheader574.lr.ph, %._crit_edge1000.us
  %.03621011.us = phi i32 [ %.1363.lcssa.us, %._crit_edge1000.us ], [ 0, %.preheader574.lr.ph ] ; 3 uses
  %.03641008.us = phi i32 [ %i.uq, %._crit_edge1000.us ], [ %i.uc, %.preheader574.lr.ph ] ; 4 uses
  %.not474997.us = icmp ugt i32 %.03621011.us, %i.ub
  br i1 %.not474997.us, label %._crit_edge1000.us, label %.lr.ph999.us

.lr.ph999.us:                                     ; preds = %.preheader574.us
  %i.ue = icmp eq i32 %.03641008.us, %.0.i526
  %or.cond499.us = select i1 %.not471, i1 %i.ue, i1 false
  br i1 %or.cond499.us, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

.lr.ph999.split.us1013:                           ; preds = %.lr.ph999.us, %filter_set_atpos.exit.us1017
  %.1363998.us1015 = phi i32 [ %i.up, %filter_set_atpos.exit.us1017 ], [ %.03621011.us, %.lr.ph999.us ] ; 4 uses
  %i.uf = icmp eq i32 %.1363998.us1015, %.0.i529
  br i1 %i.uf, label %filter_set_atpos.exit.us1017, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph999.split.us1013
  %i.ug = shl nuw nsw i32 %.1363998.us1015, 8
  %i.uh = or i32 %i.ug, %.03641008.us
  %i.ui = and i32 %i.uh, 65535
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 %i.uj ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !8   ; 2 uses
  %i.um = zext i8 %i.ul to i32
  %i.un = and i32 %i.ss, %i.um
  %.not.not.i.us1016 = icmp eq i32 %i.un, 0
  br i1 %.not.not.i.us1016, label %filter_set_atpos.exit.us1017, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uo = and i8 %i.ul, %i.su
  store i8 %i.uo, ptr %i.uk, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1017

filter_set_atpos.exit.us1017:                     ; preds = %bb.eb, %bb.ea, %.lr.ph999.split.us1013
  %i.up = add i32 %.1363998.us1015, 1
  %exitcond1267.not = icmp eq i32 %.1363998.us1015, %i.ub
  br i1 %exitcond1267.not, label %._crit_edge1000.us, label %.lr.ph999.split.us1013

._crit_edge1000.us:                               ; preds = %filter_set_atpos.exit.us1017, %.lr.ph999.us, %.preheader574.us
  %.1363.lcssa.us = phi i32 [ %.03621011.us, %.preheader574.us ], [ 256, %.lr.ph999.us ], [ 256, %filter_set_atpos.exit.us1017 ]
  %i.uq = add nuw nsw i32 %.03641008.us, 1
  %.not473.us.not = icmp ult i32 %.03641008.us, %i.tz
  br i1 %.not473.us.not, label %.preheader574.us, label %._crit_edge1012

.preheader574:                                    ; preds = %.preheader574.preheader, %._crit_edge1000
  %.03621011 = phi i32 [ %.1363.lcssa, %._crit_edge1000 ], [ %.0.i529, %.preheader574.preheader ] ; 7 uses
  %.03641008 = phi i32 [ %i.vz, %._crit_edge1000 ], [ %i.uc, %.preheader574.preheader ] ; 6 uses
  %.not474997 = icmp ugt i32 %.03621011, %i.ub
  br i1 %.not474997, label %._crit_edge1000, label %.lr.ph999

.lr.ph999:                                        ; preds = %.preheader574
  %i.ur = icmp eq i32 %.03641008, %.0.i526
  %or.cond499 = select i1 %.not471, i1 %i.ur, i1 false
  br i1 %or.cond499, label %._crit_edge1000, label %.lr.ph999.split.preheader

.lr.ph999.split.preheader:                        ; preds = %.lr.ph999
  %i.us = add i32 %i.ub, %.03621011
  %i.ut = and i32 %i.us, 1
  %lcmp.mod1581.not.not = icmp eq i32 %i.ut, 0
  br i1 %lcmp.mod1581.not.not, label %.lr.ph999.split.prol, label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol:                             ; preds = %.lr.ph999.split.preheader
  %i.uu = shl nuw nsw i32 %.03621011, 8
  %i.uv = or i32 %i.uu, %.03641008
  %i.uw = and i32 %i.uv, 65535
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 %i.ux ; 2 uses
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !8   ; 2 uses
  %i.va = zext i8 %i.uz to i32
  %i.vb = and i32 %i.ss, %i.va
  %.not.not.i.us.prol = icmp eq i32 %i.vb, 0
  br i1 %.not.not.i.us.prol, label %filter_set_atpos.exit.us1003.prol, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph999.split.prol
  %i.vc = and i8 %i.uz, %i.su
  store i8 %i.vc, ptr %i.uy, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.prol

filter_set_atpos.exit.us1003.prol:                ; preds = %bb.ec, %.lr.ph999.split.prol
  %i.vd = add i32 %.03621011, 1
  br label %.lr.ph999.split.prol.loopexit

.lr.ph999.split.prol.loopexit:                    ; preds = %filter_set_atpos.exit.us1003.prol, %.lr.ph999.split.preheader
  %.1363998.us1002.unr = phi i32 [ %.03621011, %.lr.ph999.split.preheader ], [ %i.vd, %filter_set_atpos.exit.us1003.prol ]
  %i.ve = icmp eq i32 %i.ub, %.03621011
  br i1 %i.ve, label %._crit_edge1000, label %.lr.ph999.split

.lr.ph999.split:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1
  %.1363998.us1002 = phi i32 [ %i.vy, %filter_set_atpos.exit.us1003.1 ], [ %.1363998.us1002.unr, %.lr.ph999.split.prol.loopexit ] ; 3 uses
  %i.vf = shl nuw nsw i32 %.1363998.us1002, 8
  %i.vg = or i32 %i.vf, %.03641008
  %i.vh = and i32 %i.vg, 65535
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 %i.vi ; 2 uses
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !8   ; 2 uses
  %i.vl = zext i8 %i.vk to i32
  %i.vm = and i32 %i.ss, %i.vl
  %.not.not.i.us = icmp eq i32 %i.vm, 0
  br i1 %.not.not.i.us, label %filter_set_atpos.exit.us1003, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph999.split
  %i.vn = and i8 %i.vk, %i.su
  store i8 %i.vn, ptr %i.vj, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003

filter_set_atpos.exit.us1003:                     ; preds = %bb.ed, %.lr.ph999.split
  %i.vo = add i32 %.1363998.us1002, 1             ; 2 uses
  %i.vp = shl nuw nsw i32 %i.vo, 8
  %i.vq = or i32 %i.vp, %.03641008
  %i.vr = and i32 %i.vq, 65535
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 %i.vs ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !8   ; 2 uses
  %i.vv = zext i8 %i.vu to i32
  %i.vw = and i32 %i.ss, %i.vv
  %.not.not.i.us.1 = icmp eq i32 %i.vw, 0
  br i1 %.not.not.i.us.1, label %filter_set_atpos.exit.us1003.1, label %bb.ee

bb.ee:                                            ; preds = %filter_set_atpos.exit.us1003
  %i.vx = and i8 %i.vu, %i.su
  store i8 %i.vx, ptr %i.vt, align 1, !tbaa !8
  br label %filter_set_atpos.exit.us1003.1

filter_set_atpos.exit.us1003.1:                   ; preds = %bb.ee, %filter_set_atpos.exit.us1003
  %i.vy = add i32 %.1363998.us1002, 2
  %exitcond1268.not.1 = icmp eq i32 %i.vo, %i.ub
  br i1 %exitcond1268.not.1, label %._crit_edge1000, label %.lr.ph999.split

._crit_edge1000:                                  ; preds = %.lr.ph999.split.prol.loopexit, %filter_set_atpos.exit.us1003.1, %.lr.ph999, %.preheader574
  %.1363.lcssa = phi i32 [ %.03621011, %.preheader574 ], [ %i.ud, %.lr.ph999 ], [ %i.ud, %filter_set_atpos.exit.us1003.1 ], [ %i.ud, %.lr.ph999.split.prol.loopexit ]
  %i.vz = add nuw nsw i32 %.03641008, 1
  %.not473.not = icmp ult i32 %.03641008, %i.tz
  br i1 %.not473.not, label %.preheader574, label %._crit_edge1012

._crit_edge1012:                                  ; preds = %._crit_edge1000.us, %._crit_edge1000, %spec_ith_char.exit530
  %i.wa = load i8, ptr %i.sv, align 2, !tbaa !35
  %i.wb = zext i8 %i.wa to i32
  %i.wc = add nuw nsw i32 %.14151023, %i.wb       ; 2 uses
  %.not470 = icmp samesign ugt i32 %i.wc, %i.sp
  br i1 %.not470, label %._crit_edge1026, label %bb.dp

._crit_edge1026:                                  ; preds = %._crit_edge1012
  %i.wd = load i8, ptr %i.sw, align 2, !tbaa !35
  %i.we = zext i8 %i.wd to i32
  %i.wf = add nuw nsw i32 %.14181028, %i.we       ; 2 uses
  %.not469 = icmp samesign ugt i32 %i.wf, %i.sj
  br i1 %.not469, label %._crit_edge1031, label %.lr.ph1025

._crit_edge1031:                                  ; preds = %._crit_edge1026, %bb.do, %.lr.ph1033
  %indvars.iv.next1270 = add nuw nsw i64 %indvars.iv1269, 1 ; 2 uses
  %exitcond1273.not = icmp eq i64 %indvars.iv.next1270, %wide.trip.count1272
  br i1 %exitcond1273.not, label %bb.ef, label %.lr.ph1033

bb.ef:                                            ; preds = %._crit_edge1031
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.wh = load i8, ptr %i.wg, align 8, !tbaa !34  ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.sa, i64 9 ; 2 uses
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !33  ; 2 uses
  %.not4611058 = icmp ugt i8 %i.wh, %i.wj
  br i1 %.not4611058, label %.loopexit, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.ef
  %i.wk = add i32 %.1401.lcssa, -2
  %i.wl = zext i8 %i.wh to i32
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.sd, i64 9 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.sa, i64 11 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.sd, i64 11 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.wr = shl nuw i32 1, %i.wk                    ; 3 uses
  %i.ws = trunc i32 %i.wr to i8
  %i.wt = xor i8 %i.ws, -1                        ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.sd, i64 10
  %i.wv = getelementptr inbounds nuw i8, ptr %i.sa, i64 10
  %.pre1276 = load i8, ptr %i.wn, align 1, !tbaa !33 ; 2 uses
  %i.ww = load i8, ptr %i.wm, align 8, !tbaa !34  ; 2 uses
  %i.wx = zext i8 %i.ww to i32
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph1061, %._crit_edge1057
  %i.wy = phi i8 [ %i.wj, %.lr.ph1061 ], [ %i.zn, %._crit_edge1057 ]
  %i.wz = phi i8 [ %.pre1276, %.lr.ph1061 ], [ %i.zo, %._crit_edge1057 ] ; 2 uses
  %i.xa = phi i8 [ %.pre1276, %.lr.ph1061 ], [ %i.zp, %._crit_edge1057 ] ; 2 uses
  %.24191059 = phi i32 [ %i.wl, %.lr.ph1061 ], [ %i.zs, %._crit_edge1057 ] ; 4 uses
  %.not4621053 = icmp ugt i8 %i.ww, %i.xa
  br i1 %.not4621053, label %._crit_edge1057, label %.lr.ph1056

.lr.ph1056:                                       ; preds = %bb.eg
  %i.xb = zext nneg i32 %.24191059 to i64
  %.1399.val = load ptr, ptr %i.sa, align 8, !tbaa !31 ; 4 uses
  %.not.i531 = icmp eq ptr %.1399.val, null
  %i.xc = getelementptr inbounds nuw i8, ptr %.1399.val, i64 14
  %i.xd = getelementptr inbounds nuw i8, ptr %.1399.val, i64 12
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1056, %._crit_edge1052
  %i.xe = phi i8 [ %i.wz, %.lr.ph1056 ], [ %i.zi, %._crit_edge1052 ]
  %.24161054 = phi i32 [ %i.wx, %.lr.ph1056 ], [ %i.zl, %._crit_edge1052 ] ; 4 uses
  br i1 %.not.i531, label %spec_ith_char.exit533, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xf = load i16, ptr %i.xc, align 2, !tbaa !29
  %i.xg = icmp eq i16 %i.xf, 1
  br i1 %i.xg, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.xh = load i16, ptr %i.xd, align 4, !tbaa !37
  %i.xi = zext i16 %i.xh to i32
  %i.xj = icmp samesign ult i32 %.24191059, %i.xi
  br i1 %i.xj, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.xk = load ptr, ptr %.1399.val, align 8, !tbaa !8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xb
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !8
  %i.xn = zext i8 %i.xm to i32
  br label %spec_ith_char.exit533

spec_ith_char.exit533:                            ; preds = %bb.eh, %bb.em
  %.0.i532 = phi i32 [ %i.xn, %bb.em ], [ %.24191059, %bb.eh ] ; 3 uses
  %.1397.val = load ptr, ptr %i.sd, align 8, !tbaa !31 ; 4 uses
  %.not.i534 = icmp eq ptr %.1397.val, null
  br i1 %.not.i534, label %spec_ith_char.exit536, label %bb.en

bb.en:                                            ; preds = %spec_ith_char.exit533
  %i.xo = getelementptr inbounds nuw i8, ptr %.1397.val, i64 14
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !29
  %i.xq = icmp eq i16 %i.xp, 1
  br i1 %i.xq, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.xr = getelementptr inbounds nuw i8, ptr %.1397.val, i64 12
  %i.xs = load i16, ptr %i.xr, align 4, !tbaa !37
  %i.xt = zext i16 %i.xs to i32
  %i.xu = icmp samesign ult i32 %.24161054, %i.xt
  br i1 %i.xu, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.xv = load ptr, ptr %.1397.val, align 8, !tbaa !8
  %i.xw = zext nneg i32 %.24161054 to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !8
  %i.xz = zext i8 %i.xy to i32
  br label %spec_ith_char.exit536

spec_ith_char.exit536:                            ; preds = %spec_ith_char.exit533, %bb.er
  %.0.i535 = phi i32 [ %i.xz, %bb.er ], [ %.24161054, %spec_ith_char.exit533 ] ; 4 uses
  %i.ya = load i8, ptr %i.wo, align 1, !tbaa !32
  %.not463 = icmp eq i8 %i.ya, 0                  ; 2 uses
  %i.yb = select i1 %.not463, i32 %.0.i532, i32 255 ; 2 uses
  %i.yc = load i8, ptr %i.wp, align 1, !tbaa !32
  %.not464 = icmp eq i8 %i.yc, 0                  ; 2 uses
  %i.yd = select i1 %.not464, i32 %.0.i535, i32 255 ; 4 uses
  %i.ye = select i1 %.not463, i32 %.0.i532, i32 0 ; 2 uses
  %.not4651048 = icmp ugt i32 %i.ye, %i.yb
  br i1 %.not4651048, label %._crit_edge1052, label %.preheader.preheader

.preheader.preheader:                             ; preds = %spec_ith_char.exit536
  %i.yf = select i1 %.not464, i32 %.0.i535, i32 0
  %i.yg = add nuw nsw i32 %i.yd, 1                ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1040
  %.01051 = phi i32 [ %.1.lcssa, %._crit_edge1040 ], [ %i.yf, %.preheader.preheader ] ; 4 uses
  %.03611049 = phi i32 [ %i.zh, %._crit_edge1040 ], [ %i.ye, %.preheader.preheader ] ; 5 uses
  %.not4661037 = icmp ugt i32 %.01051, %i.yd
  br i1 %.not4661037, label %._crit_edge1040, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %.preheader
  %i.yh = icmp eq i32 %.03611049, %.0.i532
  %.fr = freeze i1 %i.yh
  br i1 %.fr, label %.lr.ph1039.split, label %.lr.ph1039.split.us.preheader

.lr.ph1039.split.us.preheader:                    ; preds = %.lr.ph1039
  %i.yi = load i8, ptr %i.wp, align 1, !tbaa !32
  %.not468.us = icmp ne i8 %i.yi, 0
  br label %.lr.ph1039.split.us

.lr.ph1039.split.us:                              ; preds = %.lr.ph1039.split.us.preheader, %filter_set_end.exit.us
  %.11038.us = phi i32 [ %i.yt, %filter_set_end.exit.us ], [ %.01051, %.lr.ph1039.split.us.preheader ] ; 4 uses
  %i.yj = icmp eq i32 %.11038.us, %.0.i535
  %or.cond505.us = select i1 %.not468.us, i1 %i.yj, i1 false
  br i1 %or.cond505.us, label %filter_set_end.exit.us, label %bb.es

bb.es:                                            ; preds = %.lr.ph1039.split.us
  %i.yk = shl nuw nsw i32 %.11038.us, 8
  %i.yl = or i32 %i.yk, %.03611049
  %i.ym = and i32 %i.yl, 65535
  %i.yn = zext nneg i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.yn ; 2 uses
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !8   ; 2 uses
  %i.yq = zext i8 %i.yp to i32
  %i.yr = and i32 %i.wr, %i.yq
  %.not.not.i537.us = icmp eq i32 %i.yr, 0
  br i1 %.not.not.i537.us, label %filter_set_end.exit.us, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ys = and i8 %i.yp, %i.wt
  store i8 %i.ys, ptr %i.yo, align 1, !tbaa !8
  br label %filter_set_end.exit.us

filter_set_end.exit.us:                           ; preds = %bb.et, %bb.es, %.lr.ph1039.split.us
  %i.yt = add i32 %.11038.us, 1
  %exitcond1274.not = icmp eq i32 %.11038.us, %i.yd
  br i1 %exitcond1274.not, label %._crit_edge1040, label %.lr.ph1039.split.us

.lr.ph1039.split:                                 ; preds = %.lr.ph1039
  %i.yu = load i8, ptr %i.wo, align 1, !tbaa !32
  %.not1079 = icmp eq i8 %i.yu, 0
  br i1 %.not1079, label %.lr.ph1039.split.split, label %._crit_edge1040

.lr.ph1039.split.splitthread-pre-split:           ; preds = %filter_set_end.exit
  %4 = add i32 %.11038, 1
  %.pr = load i8, ptr %i.wo, align 1, !tbaa !32
  br label %.lr.ph1039.split.split

.lr.ph1039.split.split:                           ; preds = %.lr.ph1039.split, %.lr.ph1039.split.splitthread-pre-split
  %i.yv = phi i8 [ %.pr, %.lr.ph1039.split.splitthread-pre-split ], [ 0, %.lr.ph1039.split ]
  %.11038 = phi i32 [ %4, %.lr.ph1039.split.splitthread-pre-split ], [ %.01051, %.lr.ph1039.split ] ; 4 uses
  %i.yw = shl nuw nsw i32 %.11038, 8
  %i.yx = or i32 %i.yw, %.03611049
  %.not467.not = icmp eq i8 %i.yv, 0
  br i1 %.not467.not, label %bb.eu, label %filter_set_end.exit

bb.eu:                                            ; preds = %.lr.ph1039.split.split
  %i.yy = load i8, ptr %i.wp, align 1, !tbaa !32
  %.not468 = icmp ne i8 %i.yy, 0
  %i.yz = icmp eq i32 %.11038, %.0.i535
  %or.cond505 = select i1 %.not468, i1 %i.yz, i1 false
  br i1 %or.cond505, label %filter_set_end.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.za = and i32 %i.yx, 65535
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.zb ; 2 uses
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !8   ; 2 uses
  %i.ze = zext i8 %i.zd to i32
  %i.zf = and i32 %i.wr, %i.ze
  %.not.not.i537 = icmp eq i32 %i.zf, 0
  br i1 %.not.not.i537, label %filter_set_end.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.zg = and i8 %i.zd, %i.wt
  store i8 %i.zg, ptr %i.zc, align 1, !tbaa !8
  br label %filter_set_end.exit

filter_set_end.exit:                              ; preds = %bb.ew, %bb.ev, %bb.eu, %.lr.ph1039.split.split
  %exitcond1275.not = icmp eq i32 %.11038, %i.yd
  br i1 %exitcond1275.not, label %._crit_edge1040, label %.lr.ph1039.split.splitthread-pre-split, !llvm.loop !14

._crit_edge1040:                                  ; preds = %filter_set_end.exit.us, %filter_set_end.exit, %.lr.ph1039.split, %.preheader
  %.1.lcssa = phi i32 [ %.01051, %.preheader ], [ %i.yg, %filter_set_end.exit ], [ %i.yg, %.lr.ph1039.split ], [ %i.yg, %filter_set_end.exit.us ]
  %i.zh = add nuw nsw i32 %.03611049, 1
  %.not465.not = icmp ult i32 %.03611049, %i.yb
  br i1 %.not465.not, label %.preheader, label %._crit_edge1052.loopexit

._crit_edge1052.loopexit:                         ; preds = %._crit_edge1040
  %.pre1277.a = load i8, ptr %i.wn, align 1, !tbaa !33
  br label %._crit_edge1052

._crit_edge1052:                                  ; preds = %._crit_edge1052.loopexit, %spec_ith_char.exit536
  %i.zi = phi i8 [ %.pre1277.a, %._crit_edge1052.loopexit ], [ %i.xe, %spec_ith_char.exit536 ] ; 4 uses
  %i.zj = load i8, ptr %i.wu, align 2, !tbaa !35
  %i.zk = zext i8 %i.zj to i32
  %i.zl = add nuw nsw i32 %.24161054, %i.zk       ; 2 uses
  %i.zm = zext i8 %i.zi to i32
  %.not462 = icmp samesign ugt i32 %i.zl, %i.zm
  br i1 %.not462, label %._crit_edge1057.loopexit, label %bb.eh

._crit_edge1057.loopexit:                         ; preds = %._crit_edge1052
  %.pre1278 = load i8, ptr %i.wi, align 1, !tbaa !33
  br label %._crit_edge1057

._crit_edge1057:                                  ; preds = %._crit_edge1057.loopexit, %bb.eg
  %i.zn = phi i8 [ %.pre1278, %._crit_edge1057.loopexit ], [ %i.wy, %bb.eg ] ; 2 uses
  %i.zo = phi i8 [ %i.zi, %._crit_edge1057.loopexit ], [ %i.wz, %bb.eg ]
  %i.zp = phi i8 [ %i.zi, %._crit_edge1057.loopexit ], [ %i.xa, %bb.eg ]
  %i.zq = load i8, ptr %i.wv, align 2, !tbaa !35
  %i.zr = zext i8 %i.zq to i32
  %i.zs = add nuw nsw i32 %.24191059, %i.zr       ; 2 uses
  %i.zt = zext i8 %i.zn to i32
  %.not461 = icmp samesign ugt i32 %i.zs, %i.zt
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
  store i64 %.01923, ptr %3, align 8, !tbaa !49
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
!11 = distinct !{!11, !40, !41}
!12 = distinct !{!12, !41, !40}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !46}
!15 = !{!"short", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"p1 short", !17, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{!"any p2 pointer", !17, i64 0}
!21 = !{!"p2 _ZTS14cli_ac_special", !20, i64 0}
!22 = !{!"cli_ac_patt", !18, i64 0, !18, i64 8, !4, i64 16, !4, i64 22, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !4, i64 52, !19, i64 56, !17, i64 64, !4, i64 72, !4, i64 76, !15, i64 80, !15, i64 82, !15, i64 84, !15, i64 86, !21, i64 88, !15, i64 96, !15, i64 98, !4, i64 100, !5, i64 116, !5, i64 120, !5, i64 124, !4, i64 128, !4, i64 129}
!23 = !{!22, !18, i64 8}
!24 = !{!22, !18, i64 0}
!25 = !{!22, !21, i64 88}
!26 = !{!"p1 _ZTS14cli_ac_special", !17, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"cli_ac_special", !4, i64 0, !4, i64 8, !15, i64 12, !15, i64 14, !15, i64 16}
!29 = !{!28, !15, i64 14}
!30 = !{!"char_spec", !26, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11}
!31 = !{!30, !26, i64 0}
!32 = !{!30, !4, i64 11}
!33 = !{!30, !4, i64 9}
!34 = !{!30, !4, i64 8}
end_hunk_0
