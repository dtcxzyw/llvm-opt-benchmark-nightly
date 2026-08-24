Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_string?download=true
inline.NumInlined: 115
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@archive_string_normalize_C:bb.a
bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.tb = phi i32 [ %i.ta, %bb.cz ], [ 0, %bb.cy ] ; 8 uses
  %i.tc = icmp samesign uge i32 %i.rz, %i.tb
  %or.cond13.4 = and i1 %i.sb, %i.tc
  %i.td = icmp ne i32 %i.tb, 228                  ; 2 uses
  %or.cond15.4 = and i1 %i.td, %or.cond13.4
  br i1 %or.cond15.4, label %.lr.ph1142.preheader, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.te = zext nneg i32 %i.sf to i64              ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.te ; 4 uses
  %i.tg = sub i64 %i.se, %i.te                    ; 4 uses
  store i32 %i.tb, ptr %i.ar, align 4, !tbaa !20
  %i.th = call i32 %.0625(ptr noundef nonnull %i.as, ptr noundef nonnull %i.tf, i64 noundef %i.tg) #23, !callees !72 ; 4 uses
  %i.ti = icmp slt i32 %i.th, 1
  br i1 %i.ti, label %.lr.ph1142.preheader, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tj = load i32, ptr %i.as, align 8, !tbaa !20 ; 4 uses
  %i.tk = icmp ugt i32 %i.tj, 119364
  br i1 %i.tk, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tl = lshr i32 %i.tj, 8
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !15
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.tp
  %i.tr = lshr i32 %i.tj, 4
  %i.ts = and i32 %i.tr, 15
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !15
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.tw
  %i.ty = and i32 %i.tj, 15
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !15
  %i.uc = zext i8 %i.ub to i32
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ud = phi i32 [ %i.uc, %bb.dd ], [ 0, %bb.dc ] ; 8 uses
  %i.ue = icmp samesign uge i32 %i.tb, %i.ud
  %or.cond13.5 = and i1 %i.td, %i.ue
  %i.uf = icmp ne i32 %i.ud, 228                  ; 2 uses
  %or.cond15.5 = and i1 %i.uf, %or.cond13.5
  br i1 %or.cond15.5, label %.lr.ph1142.preheader, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ug = zext nneg i32 %i.th to i64              ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ug ; 4 uses
  %i.ui = sub i64 %i.tg, %i.ug                    ; 4 uses
  store i32 %i.ud, ptr %i.at, align 8, !tbaa !20
  %i.uj = call i32 %.0625(ptr noundef nonnull %i.au, ptr noundef nonnull %i.uh, i64 noundef %i.ui) #23, !callees !72 ; 4 uses
  %i.uk = icmp slt i32 %i.uj, 1
  br i1 %i.uk, label %.lr.ph1142.preheader, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ul = load i32, ptr %i.au, align 4, !tbaa !20 ; 4 uses
  %i.um = icmp ugt i32 %i.ul, 119364
  br i1 %i.um, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.un = lshr i32 %i.ul, 8
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !15
  %i.ur = zext i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.ur
  %i.ut = lshr i32 %i.ul, 4
  %i.uu = and i32 %i.ut, 15
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !15
  %i.uy = zext i8 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.uy
  %i.va = and i32 %i.ul, 15
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !15
  %i.ve = zext i8 %i.vd to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.vf = phi i32 [ %i.ve, %bb.dh ], [ 0, %bb.dg ] ; 8 uses
  %i.vg = icmp samesign uge i32 %i.ud, %i.vf
  %or.cond13.6 = and i1 %i.uf, %i.vg
  %i.vh = icmp ne i32 %i.vf, 228                  ; 2 uses
  %or.cond15.6 = and i1 %i.vh, %or.cond13.6
  br i1 %or.cond15.6, label %.lr.ph1142.preheader, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vi = zext nneg i32 %i.uj to i64              ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.vi ; 4 uses
  %i.vk = sub i64 %i.ui, %i.vi                    ; 4 uses
  store i32 %i.vf, ptr %i.av, align 4, !tbaa !20
  %i.vl = call i32 %.0625(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.vj, i64 noundef %i.vk) #23, !callees !72 ; 4 uses
  %i.vm = icmp slt i32 %i.vl, 1
  br i1 %i.vm, label %.lr.ph1142.preheader, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.vn = load i32, ptr %i.aw, align 16, !tbaa !20 ; 4 uses
  %i.vo = icmp ugt i32 %i.vn, 119364
  br i1 %i.vo, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.vp = lshr i32 %i.vn, 8
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !15
  %i.vt = zext i8 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.vt
  %i.vv = lshr i32 %i.vn, 4
  %i.vw = and i32 %i.vv, 15
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !15
  %i.wa = zext i8 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.wa
  %i.wc = and i32 %i.vn, 15
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !15
  %i.wg = zext i8 %i.wf to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.wh = phi i32 [ %i.wg, %bb.dl ], [ 0, %bb.dk ] ; 8 uses
  %i.wi = icmp samesign uge i32 %i.vf, %i.wh
  %or.cond13.7 = and i1 %i.vh, %i.wi
  %i.wj = icmp ne i32 %i.wh, 228                  ; 2 uses
  %or.cond15.7 = and i1 %i.wj, %or.cond13.7
  br i1 %or.cond15.7, label %.lr.ph1142.preheader, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wk = zext nneg i32 %i.vl to i64              ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.wk ; 4 uses
  %i.wm = sub i64 %i.vk, %i.wk                    ; 4 uses
  store i32 %i.wh, ptr %i.ax, align 16, !tbaa !20
  %i.wn = call i32 %.0625(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.wl, i64 noundef %i.wm) #23, !callees !72 ; 5 uses
  %i.wo = icmp slt i32 %i.wn, 1
  br i1 %i.wo, label %.lr.ph1142.preheader, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wp = load i32, ptr %i.ay, align 4, !tbaa !20 ; 4 uses
  %i.wq = icmp ugt i32 %i.wp, 119364
  br i1 %i.wq, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wr = lshr i32 %i.wp, 8
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !15
  %i.wv = zext i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.wv
  %i.wx = lshr i32 %i.wp, 4
  %i.wy = and i32 %i.wx, 15
  %i.wz = zext nneg i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !15
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.xc
  %i.xe = and i32 %i.wp, 15
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !15
  %i.xi = zext i8 %i.xh to i32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.xj = phi i32 [ %i.xi, %bb.dp ], [ 0, %bb.do ] ; 6 uses
  %i.xk = icmp samesign uge i32 %i.wh, %i.xj
  %i.xl = icmp ne i32 %i.xj, 228
  %i.xm = and i1 %i.xk, %i.xl
  %or.cond15.8 = and i1 %i.xm, %i.wj
  br i1 %or.cond15.8, label %.lr.ph1142.preheader, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xn = zext nneg i32 %i.wn to i64              ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.xn
  %i.xp = sub i64 %i.wm, %i.xn
  store i32 %i.xj, ptr %i.az, align 4, !tbaa !20
  br label %.lr.ph1142.preheader

.lr.ph1142.preheader:                             ; preds = %bb.dr, %bb.df, %bb.dj, %bb.de, %bb.db, %bb.dm, %bb.da, %bb.cx, %bb.di, %bb.cw, %bb.ct, %bb.dn, %bb.cs, %bb.cp, %bb.dq, %bb.co, %bb.cl
  %.11140.ph = phi i32 [ 10, %bb.dr ], [ 2, %bb.cl ], [ 2, %bb.co ], [ 9, %bb.dq ], [ 3, %bb.cp ], [ 3, %bb.cs ], [ 9, %bb.dn ], [ 4, %bb.ct ], [ 4, %bb.cw ], [ 7, %bb.di ], [ 5, %bb.cx ], [ 5, %bb.da ], [ 8, %bb.dm ], [ 6, %bb.db ], [ 6, %bb.de ], [ 8, %bb.dj ], [ 7, %bb.df ]
  %.25931139.ph = phi i32 [ %i.wn, %bb.dr ], [ %i.oz, %bb.cl ], [ %i.oz, %bb.co ], [ %i.wn, %bb.dq ], [ %i.qb, %bb.cp ], [ %i.qb, %bb.cs ], [ %i.wn, %bb.dn ], [ %i.rd, %bb.ct ], [ %i.rd, %bb.cw ], [ %i.uj, %bb.di ], [ %i.sf, %bb.cx ], [ %i.sf, %bb.da ], [ %i.vl, %bb.dm ], [ %i.th, %bb.db ], [ %i.th, %bb.de ], [ %i.vl, %bb.dj ], [ %i.uj, %bb.df ]
  %.26011137.ph = phi i32 [ %i.xj, %bb.dr ], [ %i.os, %bb.cl ], [ %i.pv, %bb.co ], [ %i.xj, %bb.dq ], [ %i.pv, %bb.cp ], [ %i.qx, %bb.cs ], [ %i.wh, %bb.dn ], [ %i.qx, %bb.ct ], [ %i.rz, %bb.cw ], [ %i.vf, %bb.di ], [ %i.rz, %bb.cx ], [ %i.tb, %bb.da ], [ %i.wh, %bb.dm ], [ %i.tb, %bb.db ], [ %i.ud, %bb.de ], [ %i.vf, %bb.dj ], [ %i.ud, %bb.df ]
  %.16071136.ph = phi i32 [ %i.xj, %bb.dr ], [ %i.os, %bb.cl ], [ %i.os, %bb.co ], [ %i.wh, %bb.dq ], [ %i.pv, %bb.cp ], [ %i.pv, %bb.cs ], [ %i.wh, %bb.dn ], [ %i.qx, %bb.ct ], [ %i.qx, %bb.cw ], [ %i.ud, %bb.di ], [ %i.rz, %bb.cx ], [ %i.rz, %bb.da ], [ %i.vf, %bb.dm ], [ %i.tb, %bb.db ], [ %i.tb, %bb.de ], [ %i.vf, %bb.dj ], [ %i.ud, %bb.df ]
  %.36321134.ph = phi i32 [ -1, %bb.dr ], [ %.06291210, %bb.cl ], [ %.06291210, %bb.co ], [ %.06291210, %bb.dq ], [ %.06291210, %bb.cp ], [ %.06291210, %bb.cs ], [ %.06291210, %bb.dn ], [ %.06291210, %bb.ct ], [ %.06291210, %bb.cw ], [ %.06291210, %bb.di ], [ %.06291210, %bb.cx ], [ %.06291210, %bb.da ], [ %.06291210, %bb.dm ], [ %.06291210, %bb.db ], [ %.06291210, %bb.de ], [ %.06291210, %bb.dj ], [ %.06291210, %bb.df ]
  %.37201133.ph = phi ptr [ %i.xo, %bb.dr ], [ %i.ox, %bb.cl ], [ %i.ox, %bb.co ], [ %i.wl, %bb.dq ], [ %i.pz, %bb.cp ], [ %i.pz, %bb.cs ], [ %i.wl, %bb.dn ], [ %i.rb, %bb.ct ], [ %i.rb, %bb.cw ], [ %i.uh, %bb.di ], [ %i.sd, %bb.cx ], [ %i.sd, %bb.da ], [ %i.vj, %bb.dm ], [ %i.tf, %bb.db ], [ %i.tf, %bb.de ], [ %i.vj, %bb.dj ], [ %i.uh, %bb.df ]
  %.37401132.ph = phi i64 [ %i.xp, %bb.dr ], [ %i.oy, %bb.cl ], [ %i.oy, %bb.co ], [ %i.wm, %bb.dq ], [ %i.qa, %bb.cp ], [ %i.qa, %bb.cs ], [ %i.wm, %bb.dn ], [ %i.rc, %bb.ct ], [ %i.rc, %bb.cw ], [ %i.ui, %bb.di ], [ %i.se, %bb.cx ], [ %i.se, %bb.da ], [ %i.vk, %bb.dm ], [ %i.tg, %bb.db ], [ %i.tg, %bb.de ], [ %i.vk, %bb.dj ], [ %i.ui, %bb.df ]
  br label %.lr.ph1142

.lr.ph1142:                                       ; preds = %.lr.ph1142.preheader, %bb.eg
  %.11140 = phi i32 [ %.4, %bb.eg ], [ %.11140.ph, %.lr.ph1142.preheader ] ; 9 uses
  %.25931139 = phi i32 [ %.6, %bb.eg ], [ %.25931139.ph, %.lr.ph1142.preheader ] ; 5 uses
  %.05961138 = phi i32 [ %.1597, %bb.eg ], [ 1, %.lr.ph1142.preheader ] ; 9 uses
  %.26011137 = phi i32 [ %.6605, %bb.eg ], [ %.26011137.ph, %.lr.ph1142.preheader ] ; 6 uses
  %.16071136 = phi i32 [ %.4610, %bb.eg ], [ %.16071136.ph, %.lr.ph1142.preheader ] ; 4 uses
  %.181135 = phi ptr [ %.19, %bb.eg ], [ %.16141086, %.lr.ph1142.preheader ]
  %.36321134 = phi i32 [ %.6635, %bb.eg ], [ %.36321134.ph, %.lr.ph1142.preheader ] ; 4 uses
  %.37201133 = phi ptr [ %.6723, %bb.eg ], [ %.37201133.ph, %.lr.ph1142.preheader ] ; 7 uses
  %.37401132 = phi i64 [ %.6743, %bb.eg ], [ %.37401132.ph, %.lr.ph1142.preheader ] ; 7 uses
  %i.xq = load i32, ptr %i.a, align 4, !tbaa !20  ; 2 uses
  %i.xr = sext i32 %.05961138 to i64              ; 3 uses
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !20 ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ea, %.lr.ph1142
  %.01935.i814 = phi i32 [ 930, %.lr.ph1142 ], [ %.2.i819, %bb.ea ] ; 3 uses
  %.02034.i815 = phi i32 [ 0, %.lr.ph1142 ], [ %.222.i818, %bb.ea ] ; 3 uses
  %i.xu = add nuw nsw i32 %.02034.i815, %.01935.i814
  %i.xv = lshr i32 %i.xu, 1                       ; 5 uses
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [12 x i8], ptr @u_composition_table, i64 %i.xw ; 3 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !118 ; 2 uses
  %i.xz = icmp ult i32 %i.xy, %i.xq
  br i1 %i.xz, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ya = add nuw nsw i32 %i.xv, 1
  br label %bb.ea

bb.du:                                            ; preds = %bb.ds
  %i.yb = icmp ugt i32 %i.xy, %i.xq
  br i1 %i.yb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.yc = add nsw i32 %i.xv, -1
  br label %bb.ea

bb.dw:                                            ; preds = %bb.du
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !120 ; 2 uses
  %i.yf = icmp ult i32 %i.ye, %i.xt
  br i1 %i.yf, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.yg = add nuw nsw i32 %i.xv, 1
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dw
  %i.yh = icmp ugt i32 %i.ye, %i.xt
  br i1 %i.yh, label %bb.dz, label %get_nfc.exit821

bb.dz:                                            ; preds = %bb.dy
  %i.yi = add nsw i32 %i.xv, -1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dx, %bb.dv, %bb.dt
  %.222.i818 = phi i32 [ %.02034.i815, %bb.dz ], [ %i.ya, %bb.dt ], [ %.02034.i815, %bb.dv ], [ %i.yg, %bb.dx ] ; 2 uses
  %.2.i819 = phi i32 [ %i.yi, %bb.dz ], [ %.01935.i814, %bb.dt ], [ %i.yc, %bb.dv ], [ %.01935.i814, %bb.dx ] ; 2 uses
  %.not.i820 = icmp slt i32 %.2.i819, %.222.i818
  br i1 %.not.i820, label %get_nfc.exit821.thread, label %bb.ds, !llvm.loop !121

get_nfc.exit821.thread:                           ; preds = %bb.ea
  %i.yj = add nsw i32 %.05961138, 1
  br label %bb.eg, !llvm.loop !124

get_nfc.exit821:                                  ; preds = %bb.dy
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !122
  store i32 %i.yl, ptr %i.a, align 4, !tbaa !20
  %i.ym = add nsw i32 %.05961138, 1               ; 2 uses
  %i.yn = icmp slt i32 %i.ym, %.11140
  br i1 %i.yn, label %.lr.ph1102.preheader, label %._crit_edge1103

.lr.ph1102.preheader:                             ; preds = %get_nfc.exit821
  %i.yo = sext i32 %i.ym to i64                   ; 5 uses
  %i.yp = sext i32 %.05961138 to i64              ; 3 uses
  %i.yq = add i32 %.11140, -2
  %i.yr = sub i32 %.05961138, %.11140
  %i.ys = and i32 %i.yr, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ys, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph1102.prol, label %.lr.ph1102.prol.loopexit

.lr.ph1102.prol:                                  ; preds = %.lr.ph1102.preheader
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.yo
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !20
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.yp
  store i32 %i.yu, ptr %i.yv, align 4, !tbaa !20
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.yo
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !20
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.yp
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !20
  %indvars.iv.next.prol = add nsw i64 %i.yo, 1
  br label %.lr.ph1102.prol.loopexit

.lr.ph1102.prol.loopexit:                         ; preds = %.lr.ph1102.prol, %.lr.ph1102.preheader
  %indvars.iv.unr = phi i64 [ %i.yo, %.lr.ph1102.preheader ], [ %indvars.iv.next.prol, %.lr.ph1102.prol ]
  %.05881101.unr = phi i64 [ %i.yp, %.lr.ph1102.preheader ], [ %i.yo, %.lr.ph1102.prol ]
  %i.yz = icmp eq i32 %i.yq, %.05961138
  br i1 %i.yz, label %._crit_edge1103, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %.lr.ph1102.prol.loopexit, %.lr.ph1102
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph1102 ], [ %indvars.iv.unr, %.lr.ph1102.prol.loopexit ] ; 6 uses
  %.05881101 = phi i64 [ %indvars.iv.next, %.lr.ph1102 ], [ %.05881101.unr, %.lr.ph1102.prol.loopexit ] ; 2 uses
  %i.za = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !20
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05881101
  store i32 %i.zb, ptr %i.zc, align 4, !tbaa !20
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !20
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.05881101
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !20
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.zh, ptr %i.zi, align 4, !tbaa !20
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !20
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.zk, ptr %i.zl, align 4, !tbaa !20
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %.11140, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge1103, label %.lr.ph1102, !llvm.loop !125

._crit_edge1103:                                  ; preds = %.lr.ph1102.prol.loopexit, %.lr.ph1102, %get_nfc.exit821
  %i.zm = add i32 %.11140, -1                     ; 3 uses
  %i.zn = icmp sgt i32 %.11140, 1
  br i1 %i.zn, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %._crit_edge1103
  %i.zo = icmp eq i32 %.05961138, %i.zm
  %i.zp = icmp sgt i32 %.25931139, 0
  %or.cond17 = select i1 %i.zo, i1 %i.zp, i1 false
  %i.zq = icmp eq i32 %.26011137, %.16071136
  %or.cond812 = select i1 %or.cond17, i1 %i.zq, i1 false
  br i1 %or.cond812, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.zr = zext nneg i32 %.11140 to i64
  %i.zs = getelementptr [4 x i8], ptr %i.d, i64 %i.zr
  %i.zt = getelementptr i8, ptr %i.zs, i64 -8
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !20 ; 3 uses
  %i.zv = icmp samesign ult i32 %.11140, 11
  br i1 %i.zv, label %.lr.ph1110.preheader, label %._crit_edge1111

.lr.ph1110.preheader:                             ; preds = %bb.ec
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xr ; 2 uses
  %i.zx = call i32 %.0625(ptr noundef nonnull %i.zw, ptr noundef %.37201133, i64 noundef %.37401132) #23, !callees !72 ; 3 uses
  %i.zy = icmp slt i32 %i.zx, 1
  br i1 %i.zy, label %._crit_edge1111, label %.lr.ph1903

.lr.ph1110:                                       ; preds = %bb.ef
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next1365 ; 2 uses
  %i.aaa = call i32 %.0625(ptr noundef nonnull %i.zz, ptr noundef nonnull %i.abd, i64 noundef %i.abe) #23, !callees !72 ; 3 uses
  %i.aab = icmp slt i32 %i.aaa, 1
  br i1 %i.aab, label %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge, label %.lr.ph1903, !llvm.loop !126

.lr.ph1903:                                       ; preds = %.lr.ph1110.preheader, %.lr.ph1110
  %i.aac = phi i32 [ %i.aaa, %.lr.ph1110 ], [ %i.zx, %.lr.ph1110.preheader ] ; 3 uses
  %i.aad = phi ptr [ %i.zz, %.lr.ph1110 ], [ %i.zw, %.lr.ph1110.preheader ]
  %.474111041902 = phi i64 [ %i.abe, %.lr.ph1110 ], [ %.37401132, %.lr.ph1110.preheader ] ; 2 uses
  %.472111051901 = phi ptr [ %i.abd, %.lr.ph1110 ], [ %.37201133, %.lr.ph1110.preheader ] ; 2 uses
  %.260811061900 = phi i32 [ %i.aay, %.lr.ph1110 ], [ %i.zu, %.lr.ph1110.preheader ] ; 3 uses
  %indvars.iv13641899 = phi i64 [ %indvars.iv.next1365, %.lr.ph1110 ], [ %i.xr, %.lr.ph1110.preheader ] ; 3 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !20 ; 4 uses
  %i.aaf = icmp ugt i32 %i.aae, 119364
  br i1 %i.aaf, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph1903
  %i.aag = lshr i32 %i.aae, 8
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !15
  %i.aak = zext i8 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.aak
  %i.aam = lshr i32 %i.aae, 4
  %i.aan = and i32 %i.aam, 15
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aao
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !15
  %i.aar = zext i8 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.aar
  %i.aat = and i32 %i.aae, 15
  %i.aau = zext nneg i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aau
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !15
  %i.aax = zext i8 %i.aaw to i32
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph1903, %bb.ed
  %i.aay = phi i32 [ %i.aax, %bb.ed ], [ 0, %.lr.ph1903 ] ; 9 uses
  %i.aaz = icmp sge i32 %.260811061900, %i.aay
  %i.aba = icmp ne i32 %.260811061900, 228
  %or.cond19 = and i1 %i.aba, %i.aaz
  %i.abb = icmp ne i32 %i.aay, 228
  %or.cond21 = and i1 %i.abb, %or.cond19
  br i1 %or.cond21, label %._crit_edge1111.loopexit.split.loop.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.abc = zext nneg i32 %i.aac to i64            ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.472111051901, i64 %i.abc ; 4 uses
  %i.abe = sub i64 %.474111041902, %i.abc         ; 4 uses
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv13641899
  store i32 %i.aay, ptr %i.abf, align 4, !tbaa !20
  %indvars.iv.next1365 = add nsw i64 %indvars.iv13641899, 1 ; 4 uses
  %exitcond1367.not = icmp eq i64 %indvars.iv.next1365, 10
  br i1 %exitcond1367.not, label %._crit_edge1111, label %.lr.ph1110, !llvm.loop !126

._crit_edge1111.loopexit.split.loop.exit:         ; preds = %bb.ee
  %4 = trunc nsw i64 %indvars.iv13641899 to i32
  br label %._crit_edge1111

.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge: ; preds = %.lr.ph1110
  %5 = trunc nsw i64 %indvars.iv.next1365 to i32
  br label %._crit_edge1111

._crit_edge1111:                                  ; preds = %bb.ef, %.lr.ph1110.preheader, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge, %._crit_edge1111.loopexit.split.loop.exit, %bb.ec
  %.4741.lcssa = phi i64 [ %.37401132, %bb.ec ], [ %.37401132, %.lr.ph1110.preheader ], [ %.474111041902, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.abe, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.abe, %bb.ef ]
  %.4721.lcssa = phi ptr [ %.37201133, %bb.ec ], [ %.37201133, %.lr.ph1110.preheader ], [ %.472111051901, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.abd, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.abd, %bb.ef ]
  %.2608.lcssa = phi i32 [ %i.zu, %bb.ec ], [ %i.zu, %.lr.ph1110.preheader ], [ %.260811061900, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aay, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aay, %bb.ef ]
  %.0.lcssa = phi i32 [ %.05961138, %bb.ec ], [ %.05961138, %.lr.ph1110.preheader ], [ %4, %._crit_edge1111.loopexit.split.loop.exit ], [ %5, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ 10, %bb.ef ] ; 2 uses
  %.4603 = phi i32 [ %.26011137, %bb.ec ], [ %.26011137, %.lr.ph1110.preheader ], [ %i.aay, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aay, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aay, %bb.ef ]
  %.4595 = phi i32 [ %.25931139, %bb.ec ], [ %i.zx, %.lr.ph1110.preheader ], [ %i.aac, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aaa, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aac, %bb.ef ]
  %i.abg = icmp sgt i32 %.0.lcssa, 9              ; 2 uses
  %..3632 = select i1 %i.abg, i32 -1, i32 %.36321134
  %..0 = select i1 %i.abg, i32 10, i32 %.0.lcssa
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge1103, %bb.eb, %._crit_edge1111, %get_nfc.exit821.thread
  %.6743 = phi i64 [ %.37401132, %get_nfc.exit821.thread ], [ %.4741.lcssa, %._crit_edge1111 ], [ %.37401132, %._crit_edge1103 ], [ %.37401132, %bb.eb ] ; 2 uses
  %.6723 = phi ptr [ %.37201133, %get_nfc.exit821.thread ], [ %.4721.lcssa, %._crit_edge1111 ], [ %.37201133, %._crit_edge1103 ], [ %.37201133, %bb.eb ] ; 2 uses
  %.6635 = phi i32 [ %.36321134, %get_nfc.exit821.thread ], [ %..3632, %._crit_edge1111 ], [ %.36321134, %._crit_edge1103 ], [ %.36321134, %bb.eb ] ; 2 uses
  %.19 = phi ptr [ %.181135, %get_nfc.exit821.thread ], [ null, %._crit_edge1111 ], [ null, %._crit_edge1103 ], [ null, %bb.eb ] ; 2 uses
  %.4610 = phi i32 [ %.16071136, %get_nfc.exit821.thread ], [ %.2608.lcssa, %._crit_edge1111 ], [ %.16071136, %._crit_edge1103 ], [ %.16071136, %bb.eb ] ; 2 uses
  %.6605 = phi i32 [ %.26011137, %get_nfc.exit821.thread ], [ %.4603, %._crit_edge1111 ], [ %.26011137, %._crit_edge1103 ], [ %.26011137, %bb.eb ] ; 2 uses
  %.1597 = phi i32 [ %i.yj, %get_nfc.exit821.thread ], [ 0, %._crit_edge1111 ], [ 0, %._crit_edge1103 ], [ 0, %bb.eb ] ; 2 uses
  %.6 = phi i32 [ %.25931139, %get_nfc.exit821.thread ], [ %.4595, %._crit_edge1111 ], [ %.25931139, %._crit_edge1103 ], [ %.25931139, %bb.eb ] ; 2 uses
  %.4 = phi i32 [ %.11140, %get_nfc.exit821.thread ], [ %..0, %._crit_edge1111 ], [ %i.zm, %._crit_edge1103 ], [ %i.zm, %bb.eb ] ; 3 uses
  %i.abh = icmp slt i32 %.1597, %.4
  br i1 %i.abh, label %.lr.ph1142, label %._crit_edge1143.loopexit

._crit_edge1143.loopexit:                         ; preds = %bb.eg
  %i.abi = icmp sgt i32 %.6, 0
  br label %._crit_edge1143

._crit_edge1143:                                  ; preds = %._crit_edge1143.loopexit, %bb.ck, %bb.ch
  %.3740.lcssa = phi i64 [ %i.cr, %bb.ch ], [ %i.cr, %bb.ck ], [ %.6743, %._crit_edge1143.loopexit ] ; 9 uses
  %.3720.lcssa = phi ptr [ %i.cq, %bb.ch ], [ %i.cq, %bb.ck ], [ %.6723, %._crit_edge1143.loopexit ] ; 5 uses
  %.3632.lcssa = phi i32 [ %.06291210, %bb.ch ], [ %.06291210, %bb.ck ], [ %.6635, %._crit_edge1143.loopexit ]
  %.18.lcssa = phi ptr [ %.16141086, %bb.ch ], [ %.16141086, %bb.ck ], [ %.19, %._crit_edge1143.loopexit ] ; 6 uses
  %.1607.lcssa = phi i32 [ %i.nv, %bb.ch ], [ %i.nv, %bb.ck ], [ %.4610, %._crit_edge1143.loopexit ] ; 2 uses
  %.2601.lcssa = phi i32 [ 0, %bb.ch ], [ %i.os, %bb.ck ], [ %.6605, %._crit_edge1143.loopexit ]
  %.2593.lcssa = phi i1 [ false, %bb.ch ], [ true, %bb.ck ], [ %i.abi, %._crit_edge1143.loopexit ]
  %.1.lcssa = phi i32 [ 1, %bb.ch ], [ 1, %bb.ck ], [ %.4, %._crit_edge1143.loopexit ] ; 2 uses
  %.not800 = icmp eq ptr %.18.lcssa, null
  br i1 %.not800, label %.preheader881, label %bb.eh

.preheader881:                                    ; preds = %._crit_edge1143
  %i.abj = ptrtoint ptr %.26501084 to i64
  %i.abk = ptrtoint ptr %.26821083 to i64         ; 2 uses
  %i.abl = sub i64 %i.abj, %i.abk
  %i.abm = load i32, ptr %i.a, align 4, !tbaa !20
  %i.abn = call i64 %.0624(ptr noundef %.26821083, i64 noundef %i.abl, i32 noundef %i.abm) #23, !callees !73 ; 2 uses
  %i.abo = icmp eq i64 %i.abn, 0
  br i1 %i.abo, label %.lr.ph1152, label %._crit_edge1153

.lr.ph1152:                                       ; preds = %.preheader881
  %i.abp = mul i64 %.3740.lcssa, %.0626
  %i.abq = add i64 %i.abp, %.0627
  br label %bb.ep

bb.eh:                                            ; preds = %._crit_edge1143
  %i.abr = zext nneg i32 %.06401085 to i64
  %i.abs = getelementptr inbounds nuw i8, ptr %.26821083, i64 %i.abr
  %i.abt = icmp ugt ptr %i.abs, %.26501084
  br i1 %i.abt, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.abu = load ptr, ptr %0, align 8, !tbaa !14
  %i.abv = ptrtoint ptr %.26821083 to i64
  %i.abw = ptrtoint ptr %i.abu to i64
  %i.abx = sub i64 %i.abv, %i.abw
  store i64 %i.abx, ptr %i.s, align 8, !tbaa !9
  %i.aby = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.abz = mul i64 %.3740.lcssa, %.0626
  %i.aca = add i64 %i.abz, %.0627
  %i.acb = add i64 %i.aca, %i.aby
  %i.acc = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.acb)
  %i.acd = icmp eq ptr %i.acc, null
  br i1 %i.acd, label %.thread826, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ace = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.acf = load i64, ptr %i.s, align 8, !tbaa !9
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.acf
  %i.ach = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.ach
  %i.acj = getelementptr inbounds i8, ptr %i.aci, i64 %i.ae
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eh
  %.35715 = phi ptr [ %i.acg, %bb.ej ], [ %.26821083, %bb.eh ] ; 6 uses
  %.19667 = phi ptr [ %i.acj, %bb.ej ], [ %.26501084, %bb.eh ] ; 2 uses
  switch i32 %.06401085, label %bb.er [
    i32 4, label %bb.el
    i32 3, label %bb.em
    i32 2, label %bb.en
    i32 1, label %bb.eo
  ]

bb.el:                                            ; preds = %bb.ek
  %i.ack = getelementptr inbounds nuw i8, ptr %.18.lcssa, i64 1
  %i.acl = load i8, ptr %.18.lcssa, align 1, !tbaa !15
  %i.acm = getelementptr inbounds nuw i8, ptr %.35715, i64 1
  store i8 %i.acl, ptr %.35715, align 1, !tbaa !15
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.36716 = phi ptr [ %i.acm, %bb.el ], [ %.35715, %bb.ek ] ; 2 uses
  %.20 = phi ptr [ %i.ack, %bb.el ], [ %.18.lcssa, %bb.ek ] ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.20, i64 1
  %i.aco = load i8, ptr %.20, align 1, !tbaa !15
  %i.acp = getelementptr inbounds nuw i8, ptr %.36716, i64 1
  store i8 %i.aco, ptr %.36716, align 1, !tbaa !15
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ek
  %.37 = phi ptr [ %i.acp, %bb.em ], [ %.35715, %bb.ek ] ; 2 uses
  %.21 = phi ptr [ %i.acn, %bb.em ], [ %.18.lcssa, %bb.ek ] ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.21, i64 1
  %i.acr = load i8, ptr %.21, align 1, !tbaa !15
  %i.acs = getelementptr inbounds nuw i8, ptr %.37, i64 1
  store i8 %i.acr, ptr %.37, align 1, !tbaa !15
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ek
  %.38 = phi ptr [ %i.acs, %bb.en ], [ %.35715, %bb.ek ] ; 2 uses
  %.22 = phi ptr [ %i.acq, %bb.en ], [ %.18.lcssa, %bb.ek ]
  %i.act = load i8, ptr %.22, align 1, !tbaa !15
  %i.acu = getelementptr inbounds nuw i8, ptr %.38, i64 1
  store i8 %i.act, ptr %.38, align 1, !tbaa !15
  br label %bb.er

bb.ep:                                            ; preds = %.lr.ph1152, %bb.eq
  %i.acv = phi i64 [ %i.abk, %.lr.ph1152 ], [ %i.adi, %bb.eq ]
  %i.acw = load ptr, ptr %0, align 8, !tbaa !14
  %i.acx = ptrtoint ptr %i.acw to i64
  %i.acy = sub i64 %i.acv, %i.acx
  store i64 %i.acy, ptr %i.s, align 8, !tbaa !9
  %i.acz = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ada = add i64 %i.abq, %i.acz
  %i.adb = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.ada)
  %i.adc = icmp eq ptr %i.adb, null
  br i1 %i.adc, label %.thread826, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.add = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.ade = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.ade ; 3 uses
  %i.adg = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.adh = sub nsw i64 %i.adg, %.0627             ; 2 uses
  %i.adi = ptrtoint ptr %i.adf to i64
  %gepdiff = sub nsw i64 %i.adh, %i.ade
  %i.adj = load i32, ptr %i.a, align 4, !tbaa !20
  %i.adk = call i64 %.0624(ptr noundef %i.adf, i64 noundef %gepdiff, i32 noundef %i.adj) #23, !callees !73 ; 2 uses
  %i.adl = icmp eq i64 %i.adk, 0
  br i1 %i.adl, label %bb.ep, label %._crit_edge1153.loopexit, !llvm.loop !127

._crit_edge1153.loopexit:                         ; preds = %bb.eq
  %i.adm = getelementptr inbounds i8, ptr %i.add, i64 %i.adh
  br label %._crit_edge1153

._crit_edge1153:                                  ; preds = %._crit_edge1153.loopexit, %.preheader881
  %.40.lcssa = phi ptr [ %.26821083, %.preheader881 ], [ %i.adf, %._crit_edge1153.loopexit ]
  %.20668.lcssa = phi ptr [ %.26501084, %.preheader881 ], [ %i.adm, %._crit_edge1153.loopexit ]
  %.lcssa989 = phi i64 [ %i.abn, %.preheader881 ], [ %i.adk, %._crit_edge1153.loopexit ]
  %i.adn = getelementptr inbounds nuw i8, ptr %.40.lcssa, i64 %.lcssa989
  br label %bb.er

bb.er:                                            ; preds = %bb.ek, %bb.eo, %._crit_edge1153
  %.41 = phi ptr [ %i.adn, %._crit_edge1153 ], [ %.35715, %bb.ek ], [ %i.acu, %bb.eo ] ; 2 uses
  %.21669 = phi ptr [ %.20668.lcssa, %._crit_edge1153 ], [ %.19667, %bb.ek ], [ %.19667, %bb.eo ] ; 2 uses
  %i.ado = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.ado, label %.preheader865.lr.ph, label %._crit_edge1165

.preheader865.lr.ph:                              ; preds = %bb.er
  %i.adp = mul i64 %.3740.lcssa, %.0626
  %i.adq = add i64 %i.adp, %.0627
  %wide.trip.count = zext nneg i32 %.1.lcssa to i64
  br label %.preheader865

.preheader865:                                    ; preds = %.preheader865.lr.ph, %._crit_edge1158
  %indvars.iv1368 = phi i64 [ 0, %.preheader865.lr.ph ], [ %indvars.iv.next1369, %._crit_edge1158 ] ; 2 uses
  %.226701163 = phi ptr [ %.21669, %.preheader865.lr.ph ], [ %.23671.lcssa, %._crit_edge1158 ] ; 2 uses
  %.421162 = phi ptr [ %.41, %.preheader865.lr.ph ], [ %i.aeq, %._crit_edge1158 ] ; 3 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv1368 ; 2 uses
  %i.ads = ptrtoint ptr %.226701163 to i64
  %i.adt = ptrtoint ptr %.421162 to i64           ; 2 uses
  %i.adu = sub i64 %i.ads, %i.adt
  %i.adv = load i32, ptr %i.adr, align 4, !tbaa !20
  %i.adw = call i64 %.0624(ptr noundef %.421162, i64 noundef %i.adu, i32 noundef %i.adv) #23, !callees !73 ; 2 uses
  %i.adx = icmp eq i64 %i.adw, 0
  br i1 %i.adx, label %.lr.ph1157, label %._crit_edge1158

.lr.ph1157:                                       ; preds = %.preheader865, %bb.es
  %i.ady = phi i64 [ %i.ael, %bb.es ], [ %i.adt, %.preheader865 ]
  %i.adz = load ptr, ptr %0, align 8, !tbaa !14
  %i.aea = ptrtoint ptr %i.adz to i64
  %i.aeb = sub i64 %i.ady, %i.aea
  store i64 %i.aeb, ptr %i.s, align 8, !tbaa !9
  %i.aec = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aed = add i64 %i.adq, %i.aec
  %i.aee = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.aed)
  %i.aef = icmp eq ptr %i.aee, null
  br i1 %i.aef, label %.thread826, label %bb.es

bb.es:                                            ; preds = %.lr.ph1157
  %i.aeg = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.aeh = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.aeh ; 3 uses
  %i.aej = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aek = sub nsw i64 %i.aej, %.0627             ; 2 uses
  %i.ael = ptrtoint ptr %i.aei to i64
end_hunk_0
