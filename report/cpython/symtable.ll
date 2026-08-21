Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/symtable?download=true
inline.NumInlined: 193
inline.NumDeleted: 37
begin_hunk_0_@symtable_visit_stmt:bb.a
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cu
  %i.rh = add nuw nsw i64 %.012612035, 1          ; 2 uses
  %i.ri = load i64, ptr %i.re, align 8, !tbaa !43
  %.not1454 = icmp slt i64 %i.rh, %i.ri
  br i1 %.not1454, label %bb.cu, label %.loopexit, !llvm.loop !92

bb.cu:                                            ; preds = %.lr.ph2036, %bb.ct
  %.012612035 = phi i64 [ 0, %.lr.ph2036 ], [ %i.rh, %bb.ct ] ; 2 uses
  %i.rj = getelementptr [8 x i8], ptr %i.rg, i64 %.012612035
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !47
  %i.rl = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.rk)
  %.not1453.not = icmp eq i32 %i.rl, 0
  br i1 %.not1453.not, label %Py_DECREF.exit1617.thread, label %bb.ct

.loopexit:                                        ; preds = %bb.ct, %.preheader1844, %.critedge1552
  %i.rm = load ptr, ptr %i.ql, align 8, !tbaa !35
  %i.rn = getelementptr i8, ptr %i.rm, i64 100    ; 2 uses
  %i.ro = load i16, ptr %i.rn, align 4
  %i.rp = and i16 %i.ro, -2049
  %i.rq = or disjoint i16 %i.rp, %i.qp
  store i16 %i.rq, ptr %i.rn, align 4
  br label %Py_DECREF.exit1617

bb.cv:                                            ; preds = %bb.b
  %i.rr = getelementptr i8, ptr %1, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !22
  %i.rt = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.rs)
  %.not1442 = icmp eq i32 %i.rt, 0
  br i1 %.not1442, label %Py_DECREF.exit1617.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ru = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !35
  %i.rw = getelementptr i8, ptr %i.rv, i64 100    ; 2 uses
  %i.rx = load i16, ptr %i.rw, align 4            ; 2 uses
  %i.ry = and i16 %i.rx, 2048
  %i.rz = or i16 %i.rx, 2048
  store i16 %i.rz, ptr %i.rw, align 4
  %i.sa = getelementptr i8, ptr %1, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !22 ; 4 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %.critedge1556, label %.lr.ph2022

.lr.ph2022:                                       ; preds = %bb.cw
  %i.sd = getelementptr i8, ptr %i.sb, i64 16
  %i.se = load i64, ptr %i.sb, align 8, !tbaa !43
  %i.sf = icmp sgt i64 %i.se, 0
  br i1 %i.sf, label %.lr.ph2025, label %.critedge1556

bb.cx:                                            ; preds = %.lr.ph2025
  %i.sg = add nuw nsw i64 %.0126220212024, 1      ; 2 uses
  %i.sh = load i64, ptr %i.sb, align 8, !tbaa !43
  %i.si = icmp slt i64 %i.sg, %i.sh
  br i1 %i.si, label %.lr.ph2025, label %.critedge1556

.lr.ph2025:                                       ; preds = %.lr.ph2022, %bb.cx
  %.0126220212024 = phi i64 [ %i.sg, %bb.cx ], [ 0, %.lr.ph2022 ] ; 2 uses
  %i.sj = getelementptr [8 x i8], ptr %i.sd, i64 %.0126220212024
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !47
  %i.sl = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.sk)
  %.not1443.not = icmp eq i32 %i.sl, 0
  br i1 %.not1443.not, label %Py_DECREF.exit1617.thread, label %bb.cx

.critedge1556:                                    ; preds = %bb.cx, %.lr.ph2022, %bb.cw
  %i.sm = getelementptr i8, ptr %1, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !22 ; 4 uses
  %.not1445 = icmp eq ptr %i.sn, null
  br i1 %.not1445, label %.loopexit1848, label %.preheader1847

.preheader1847:                                   ; preds = %.critedge1556
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !43
  %.not14472026 = icmp sgt i64 %i.so, 0
  br i1 %.not14472026, label %.lr.ph2028, label %.loopexit1848

.lr.ph2028:                                       ; preds = %.preheader1847
  %i.sp = getelementptr i8, ptr %i.sn, i64 16
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cz
  %i.sq = add nuw nsw i64 %.012632027, 1          ; 2 uses
  %i.sr = load i64, ptr %i.sn, align 8, !tbaa !43
  %.not1447 = icmp slt i64 %i.sq, %i.sr
  br i1 %.not1447, label %bb.cz, label %.loopexit1848, !llvm.loop !93

bb.cz:                                            ; preds = %.lr.ph2028, %bb.cy
  %.012632027 = phi i64 [ 0, %.lr.ph2028 ], [ %i.sq, %bb.cy ] ; 2 uses
  %i.ss = getelementptr [8 x i8], ptr %i.sp, i64 %.012632027
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !47
  %i.su = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.st)
  %.not1446.not = icmp eq i32 %i.su, 0
  br i1 %.not1446.not, label %Py_DECREF.exit1617.thread, label %bb.cy

.loopexit1848:                                    ; preds = %bb.cy, %.preheader1847, %.critedge1556
  %i.sv = load ptr, ptr %i.ru, align 8, !tbaa !35
  %i.sw = getelementptr i8, ptr %i.sv, i64 100    ; 2 uses
  %i.sx = load i16, ptr %i.sw, align 4
  %i.sy = and i16 %i.sx, -2049
  %i.sz = or disjoint i16 %i.sy, %i.ry
  store i16 %i.sz, ptr %i.sw, align 4
  br label %Py_DECREF.exit1617

bb.da:                                            ; preds = %bb.b
  %i.ta = getelementptr i8, ptr %1, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !22
  %i.tc = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.tb)
  %.not1436 = icmp eq i32 %i.tc, 0
  br i1 %.not1436, label %Py_DECREF.exit1617.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.td = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !35
  %i.tf = getelementptr i8, ptr %i.te, i64 100    ; 2 uses
  %i.tg = load i16, ptr %i.tf, align 4            ; 2 uses
  %i.th = and i16 %i.tg, 2048
  %i.ti = or i16 %i.tg, 2048
  store i16 %i.ti, ptr %i.tf, align 4
  %i.tj = getelementptr i8, ptr %1, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !22 ; 4 uses
  %i.tl = icmp eq ptr %i.tk, null
  br i1 %i.tl, label %.critedge1560, label %.lr.ph2014

.lr.ph2014:                                       ; preds = %bb.db
  %i.tm = getelementptr i8, ptr %i.tk, i64 16
  %i.tn = load i64, ptr %i.tk, align 8, !tbaa !43
  %i.to = icmp sgt i64 %i.tn, 0
  br i1 %i.to, label %.lr.ph2017, label %.critedge1560

bb.dc:                                            ; preds = %.lr.ph2017
  %i.tp = add nuw nsw i64 %.0126420132016, 1      ; 2 uses
  %i.tq = load i64, ptr %i.tk, align 8, !tbaa !43
  %i.tr = icmp slt i64 %i.tp, %i.tq
  br i1 %i.tr, label %.lr.ph2017, label %.critedge1560

.lr.ph2017:                                       ; preds = %.lr.ph2014, %bb.dc
  %.0126420132016 = phi i64 [ %i.tp, %bb.dc ], [ 0, %.lr.ph2014 ] ; 2 uses
  %i.ts = getelementptr [8 x i8], ptr %i.tm, i64 %.0126420132016
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !47
  %i.tu = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.tt)
  %.not1437.not = icmp eq i32 %i.tu, 0
  br i1 %.not1437.not, label %Py_DECREF.exit1617.thread, label %bb.dc

.critedge1560:                                    ; preds = %bb.dc, %.lr.ph2014, %bb.db
  %i.tv = getelementptr i8, ptr %1, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !22 ; 4 uses
  %.not1439 = icmp eq ptr %i.tw, null
  br i1 %.not1439, label %.loopexit1852, label %.preheader1851

.preheader1851:                                   ; preds = %.critedge1560
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !43
  %.not14412018 = icmp sgt i64 %i.tx, 0
  br i1 %.not14412018, label %.lr.ph2020, label %.loopexit1852

.lr.ph2020:                                       ; preds = %.preheader1851
  %i.ty = getelementptr i8, ptr %i.tw, i64 16
  br label %bb.de

bb.dd:                                            ; preds = %bb.de
  %i.tz = add nuw nsw i64 %.012682019, 1          ; 2 uses
  %i.ua = load i64, ptr %i.tw, align 8, !tbaa !43
  %.not1441 = icmp slt i64 %i.tz, %i.ua
  br i1 %.not1441, label %bb.de, label %.loopexit1852, !llvm.loop !94

bb.de:                                            ; preds = %.lr.ph2020, %bb.dd
  %.012682019 = phi i64 [ 0, %.lr.ph2020 ], [ %i.tz, %bb.dd ] ; 2 uses
  %i.ub = getelementptr [8 x i8], ptr %i.ty, i64 %.012682019
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !47
  %i.ud = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.uc)
  %.not1440.not = icmp eq i32 %i.ud, 0
  br i1 %.not1440.not, label %Py_DECREF.exit1617.thread, label %bb.dd

.loopexit1852:                                    ; preds = %bb.dd, %.preheader1851, %.critedge1560
  %i.ue = load ptr, ptr %i.td, align 8, !tbaa !35
  %i.uf = getelementptr i8, ptr %i.ue, i64 100    ; 2 uses
  %i.ug = load i16, ptr %i.uf, align 4
  %i.uh = and i16 %i.ug, -2049
  %i.ui = or disjoint i16 %i.uh, %i.th
  store i16 %i.ui, ptr %i.uf, align 4
  br label %Py_DECREF.exit1617

bb.df:                                            ; preds = %bb.b
  %i.uj = getelementptr i8, ptr %1, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !22
  %i.ul = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.uk)
  %.not1433 = icmp eq i32 %i.ul, 0
  br i1 %.not1433, label %Py_DECREF.exit1617.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.um = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !35
  %i.uo = getelementptr i8, ptr %i.un, i64 100    ; 2 uses
  %i.up = load i16, ptr %i.uo, align 4            ; 2 uses
  %i.uq = and i16 %i.up, 2048
  %i.ur = or i16 %i.up, 2048
  store i16 %i.ur, ptr %i.uo, align 4
  %i.us = getelementptr i8, ptr %1, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !22 ; 3 uses
  %i.uu = icmp eq ptr %i.ut, null
  %i.uv = getelementptr i8, ptr %i.ut, i64 16
  br i1 %i.uu, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %symtable_visit_match_case.exit
  %i.uw = phi i64 [ %i.vq, %symtable_visit_match_case.exit ], [ 0, %bb.dg ] ; 3 uses
  %2 = load i64, ptr %i.ut, align 8, !tbaa !43
  %.not1435 = icmp slt i64 %i.uw, %2
  br i1 %.not1435, label %bb.di, label %bb.dn

bb.di:                                            ; preds = %bb.dh
  %i.ux = getelementptr [8 x i8], ptr %i.uv, i64 %i.uw
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !95 ; 3 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !97
  %i.va = tail call fastcc i32 @symtable_visit_pattern(ptr noundef nonnull %0, ptr noundef %i.uz), !inline_history !100
  %.not.i1638 = icmp eq i32 %i.va, 0
  br i1 %.not.i1638, label %Py_DECREF.exit1617.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vb = getelementptr i8, ptr %i.uy, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !101 ; 2 uses
  %.not21.i = icmp eq ptr %i.vc, null
  br i1 %.not21.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.vd = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef nonnull %i.vc), !inline_history !100
  %.not22.i = icmp eq i32 %i.vd, 0
  br i1 %.not22.i, label %Py_DECREF.exit1617.thread, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.ve = getelementptr i8, ptr %i.uy, i64 16
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !102 ; 4 uses
  %i.vg = icmp eq ptr %i.vf, null
  br i1 %i.vg, label %symtable_visit_match_case.exit, label %.lr.ph2009

.lr.ph2009:                                       ; preds = %bb.dl
  %i.vh = getelementptr i8, ptr %i.vf, i64 16
  %i.vi = load i64, ptr %i.vf, align 8, !tbaa !43
  %i.vj = icmp sgt i64 %i.vi, 0
  br i1 %i.vj, label %.lr.ph2012, label %symtable_visit_match_case.exit

bb.dm:                                            ; preds = %.lr.ph2012
  %i.vk = add nuw nsw i64 %.016.i20082011, 1      ; 2 uses
  %i.vl = load i64, ptr %i.vf, align 8, !tbaa !43
  %i.vm = icmp slt i64 %i.vk, %i.vl
  br i1 %i.vm, label %.lr.ph2012, label %symtable_visit_match_case.exit

.lr.ph2012:                                       ; preds = %.lr.ph2009, %bb.dm
  %.016.i20082011 = phi i64 [ %i.vk, %bb.dm ], [ 0, %.lr.ph2009 ] ; 2 uses
  %i.vn = getelementptr [8 x i8], ptr %i.vh, i64 %.016.i20082011
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !47
  %i.vp = tail call fastcc i32 @symtable_visit_stmt(ptr noundef nonnull %0, ptr noundef %i.vo), !inline_history !100
  %.not23.not.i = icmp eq i32 %i.vp, 0
  br i1 %.not23.not.i, label %Py_DECREF.exit1617.thread, label %bb.dm

symtable_visit_match_case.exit:                   ; preds = %bb.dm, %.lr.ph2009, %bb.dl
  %i.vq = add nuw nsw i64 %i.uw, 1
  br label %bb.dh, !llvm.loop !103

bb.dn:                                            ; preds = %bb.dh, %bb.dg
  %i.vr = load ptr, ptr %i.um, align 8, !tbaa !35
  %i.vs = getelementptr i8, ptr %i.vr, i64 100    ; 2 uses
  %i.vt = load i16, ptr %i.vs, align 4
  %i.vu = and i16 %i.vt, -2049
  %i.vv = or disjoint i16 %i.vu, %i.uq
  store i16 %i.vv, ptr %i.vs, align 4
  br label %Py_DECREF.exit1617

bb.do:                                            ; preds = %bb.b
  %i.vw = getelementptr i8, ptr %1, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !22 ; 2 uses
  %.not1429 = icmp eq ptr %i.vx, null
  br i1 %.not1429, label %Py_DECREF.exit1617, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.vy = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef nonnull %i.vx)
  %.not1430 = icmp eq i32 %i.vy, 0
  br i1 %.not1430, label %Py_DECREF.exit1617.thread, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vz = getelementptr i8, ptr %1, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !22 ; 2 uses
  %.not1431 = icmp eq ptr %i.wa, null
  br i1 %.not1431, label %Py_DECREF.exit1617, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wb = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef nonnull %i.wa)
  %.not1432 = icmp eq i32 %i.wb, 0
  br i1 %.not1432, label %Py_DECREF.exit1617.thread, label %Py_DECREF.exit1617

bb.ds:                                            ; preds = %bb.b
  %i.wc = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !35
  %i.we = getelementptr i8, ptr %i.wd, i64 100    ; 2 uses
  %i.wf = load i16, ptr %i.we, align 4            ; 2 uses
  %i.wg = and i16 %i.wf, 2048
  %i.wh = or i16 %i.wf, 2048
  store i16 %i.wh, ptr %i.we, align 4
  %i.wi = load ptr, ptr %i.wc, align 8, !tbaa !35
  %i.wj = getelementptr i8, ptr %i.wi, i64 100    ; 2 uses
  %i.wk = load i16, ptr %i.wj, align 4            ; 2 uses
  %i.wl = and i16 %i.wk, 4096
  %i.wm = or i16 %i.wk, 4096
  store i16 %i.wm, ptr %i.wj, align 4
  %i.wn = getelementptr i8, ptr %1, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !22 ; 4 uses
  %i.wp = icmp eq ptr %i.wo, null
  br i1 %i.wp, label %.critedge1566, label %.lr.ph1989

.lr.ph1989:                                       ; preds = %bb.ds
  %i.wq = getelementptr i8, ptr %i.wo, i64 16
  %i.wr = load i64, ptr %i.wo, align 8, !tbaa !43
  %i.ws = icmp sgt i64 %i.wr, 0
  br i1 %i.ws, label %.lr.ph1992, label %.critedge1566

bb.dt:                                            ; preds = %.lr.ph1992
  %i.wt = add nuw nsw i64 %.0127019881991, 1      ; 2 uses
  %i.wu = load i64, ptr %i.wo, align 8, !tbaa !43
  %i.wv = icmp slt i64 %i.wt, %i.wu
  br i1 %i.wv, label %.lr.ph1992, label %.critedge1566

.lr.ph1992:                                       ; preds = %.lr.ph1989, %bb.dt
  %.0127019881991 = phi i64 [ %i.wt, %bb.dt ], [ 0, %.lr.ph1989 ] ; 2 uses
  %i.ww = getelementptr [8 x i8], ptr %i.wq, i64 %.0127019881991
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !47
  %i.wy = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.wx)
  %.not1421.not = icmp eq i32 %i.wy, 0
  br i1 %.not1421.not, label %Py_DECREF.exit1617.thread, label %bb.dt

.critedge1566:                                    ; preds = %bb.dt, %.lr.ph1989, %bb.ds
  %i.wz = getelementptr i8, ptr %1, i64 16
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !22 ; 3 uses
  %i.xb = icmp eq ptr %i.xa, null
  %i.xc = getelementptr i8, ptr %i.xa, i64 16
  br i1 %i.xb, label %.critedge1568, label %bb.du

bb.du:                                            ; preds = %.critedge1566, %symtable_visit_excepthandler.exit
  %i.xd = phi i64 [ %i.ym, %symtable_visit_excepthandler.exit ], [ 0, %.critedge1566 ] ; 3 uses
  %3 = load i64, ptr %i.xa, align 8, !tbaa !43
  %.not1424 = icmp slt i64 %i.xd, %3
  br i1 %.not1424, label %bb.dv, label %.critedge1568

bb.dv:                                            ; preds = %bb.du
  %i.xe = getelementptr [8 x i8], ptr %i.xc, i64 %i.xd
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !104 ; 7 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !22 ; 2 uses
  %.not.i1639 = icmp eq ptr %i.xh, null
  br i1 %.not.i1639, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xi = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef nonnull %i.xh), !inline_history !106
  %.not27.i = icmp eq i32 %i.xi, 0
  br i1 %.not27.i, label %Py_DECREF.exit1617.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.xj = getelementptr i8, ptr %i.xf, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !22 ; 3 uses
  %.not28.i = icmp eq ptr %i.xk, null
  br i1 %.not28.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xl = getelementptr i8, ptr %i.xf, i64 32
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !107 ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xf, i64 40
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !109 ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xf, i64 36
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !110 ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xf, i64 44
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !111 ; 2 uses
  %i.xt = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.xk, ptr noundef nonnull @.str.23) #7
  %.not.i.i1677 = icmp eq i32 %i.xt, 0
  br i1 %.not.i.i1677, label %symtable_add_def_ctx.exit, label %symtable_add_def_ctx.exit.thread

symtable_add_def_ctx.exit.thread:                 ; preds = %bb.dy
  %i.xu = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.xu, ptr noundef nonnull @.str.24) #7
  %i.xv = load ptr, ptr %0, align 8, !tbaa !31
  %i.xw = add i32 %i.xq, 1
  %i.xx = add i32 %i.xs, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.xv, i32 noundef %i.xm, i32 noundef %i.xw, i32 noundef %i.xo, i32 noundef %i.xx) #7
  br label %Py_DECREF.exit1617.thread

symtable_add_def_ctx.exit:                        ; preds = %bb.dy
  %.sroa.5.8.insert.ext.i = zext i32 %i.xs to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.xq to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  %.sroa.2.0.insert.ext.i = zext i32 %i.xo to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.xm to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.xy = load ptr, ptr %i.wc, align 8, !tbaa !35
  %i.xz = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.xk, i32 noundef 2, ptr noundef %i.xy, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.3.8.insert.insert.i)
  %.not29.i = icmp eq i32 %i.xz, 0
  br i1 %.not29.i, label %Py_DECREF.exit1617.thread, label %bb.dz

bb.dz:                                            ; preds = %symtable_add_def_ctx.exit, %bb.dx
  %i.ya = getelementptr i8, ptr %i.xf, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !22 ; 4 uses
  %i.yc = icmp eq ptr %i.yb, null
  br i1 %i.yc, label %symtable_visit_excepthandler.exit, label %.lr.ph1994

.lr.ph1994:                                       ; preds = %bb.dz
  %i.yd = getelementptr i8, ptr %i.yb, i64 16
  %i.ye = load i64, ptr %i.yb, align 8, !tbaa !43
  %i.yf = icmp sgt i64 %i.ye, 0
  br i1 %i.yf, label %.lr.ph1997, label %symtable_visit_excepthandler.exit

bb.ea:                                            ; preds = %.lr.ph1997
  %i.yg = add nuw nsw i64 %.021.i19931996, 1      ; 2 uses
  %i.yh = load i64, ptr %i.yb, align 8, !tbaa !43
  %i.yi = icmp slt i64 %i.yg, %i.yh
  br i1 %i.yi, label %.lr.ph1997, label %symtable_visit_excepthandler.exit

.lr.ph1997:                                       ; preds = %.lr.ph1994, %bb.ea
  %.021.i19931996 = phi i64 [ %i.yg, %bb.ea ], [ 0, %.lr.ph1994 ] ; 2 uses
  %i.yj = getelementptr [8 x i8], ptr %i.yd, i64 %.021.i19931996
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !47
  %i.yl = tail call fastcc i32 @symtable_visit_stmt(ptr noundef nonnull %0, ptr noundef %i.yk), !inline_history !106
  %.not30.not.i = icmp eq i32 %i.yl, 0
  br i1 %.not30.not.i, label %Py_DECREF.exit1617.thread, label %bb.ea

symtable_visit_excepthandler.exit:                ; preds = %bb.ea, %.lr.ph1994, %bb.dz
  %i.ym = add nuw nsw i64 %i.xd, 1
  br label %bb.du, !llvm.loop !112

.critedge1568:                                    ; preds = %bb.du, %.critedge1566
  %i.yn = getelementptr i8, ptr %1, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !22 ; 4 uses
  %i.yp = icmp eq ptr %i.yo, null
  br i1 %i.yp, label %.critedge1570, label %.lr.ph1999

.lr.ph1999:                                       ; preds = %.critedge1568
  %i.yq = getelementptr i8, ptr %i.yo, i64 16
  %i.yr = load i64, ptr %i.yo, align 8, !tbaa !43
  %i.ys = icmp sgt i64 %i.yr, 0
  br i1 %i.ys, label %.lr.ph2002, label %.critedge1570

bb.eb:                                            ; preds = %.lr.ph2002
  %i.yt = add nuw nsw i64 %.0127919982001, 1      ; 2 uses
  %i.yu = load i64, ptr %i.yo, align 8, !tbaa !43
  %i.yv = icmp slt i64 %i.yt, %i.yu
  br i1 %i.yv, label %.lr.ph2002, label %.critedge1570

.lr.ph2002:                                       ; preds = %.lr.ph1999, %bb.eb
  %.0127919982001 = phi i64 [ %i.yt, %bb.eb ], [ 0, %.lr.ph1999 ] ; 2 uses
  %i.yw = getelementptr [8 x i8], ptr %i.yq, i64 %.0127919982001
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !47
  %i.yy = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.yx)
  %.not1425.not = icmp eq i32 %i.yy, 0
  br i1 %.not1425.not, label %Py_DECREF.exit1617.thread, label %bb.eb

.critedge1570:                                    ; preds = %bb.eb, %.lr.ph1999, %.critedge1568
  %i.yz = getelementptr i8, ptr %1, i64 32
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !22 ; 4 uses
  %i.zb = icmp eq ptr %i.za, null
  br i1 %i.zb, label %.critedge1805, label %.lr.ph2004

.lr.ph2004:                                       ; preds = %.critedge1570
  %i.zc = getelementptr i8, ptr %i.za, i64 16
  %i.zd = load i64, ptr %i.za, align 8, !tbaa !43
  %i.ze = icmp sgt i64 %i.zd, 0
  br i1 %i.ze, label %.lr.ph2007, label %.critedge1805

bb.ec:                                            ; preds = %.lr.ph2007
  %i.zf = add nuw nsw i64 %.0127820032006, 1      ; 2 uses
  %i.zg = load i64, ptr %i.za, align 8, !tbaa !43
  %i.zh = icmp slt i64 %i.zf, %i.zg
  br i1 %i.zh, label %.lr.ph2007, label %.critedge1805

.lr.ph2007:                                       ; preds = %.lr.ph2004, %bb.ec
  %.0127820032006 = phi i64 [ %i.zf, %bb.ec ], [ 0, %.lr.ph2004 ] ; 2 uses
  %i.zi = getelementptr [8 x i8], ptr %i.zc, i64 %.0127820032006
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !47
  %i.zk = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.zj)
  %.not1427.not = icmp eq i32 %i.zk, 0
  br i1 %.not1427.not, label %Py_DECREF.exit1617.thread, label %bb.ec

.critedge1805:                                    ; preds = %bb.ec, %.lr.ph2004, %.critedge1570
  %i.zl = load ptr, ptr %i.wc, align 8, !tbaa !35
  %i.zm = getelementptr i8, ptr %i.zl, i64 100    ; 2 uses
  %i.zn = load i16, ptr %i.zm, align 4
  %i.zo = and i16 %i.zn, -4097
  %i.zp = or disjoint i16 %i.zo, %i.wl
  store i16 %i.zp, ptr %i.zm, align 4
  %i.zq = load ptr, ptr %i.wc, align 8, !tbaa !35
  %i.zr = getelementptr i8, ptr %i.zq, i64 100    ; 2 uses
  %i.zs = load i16, ptr %i.zr, align 4
  %i.zt = and i16 %i.zs, -2049
  %i.zu = or disjoint i16 %i.zt, %i.wg
  store i16 %i.zu, ptr %i.zr, align 4
  br label %Py_DECREF.exit1617

bb.ed:                                            ; preds = %bb.b
  %i.zv = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !35
  %i.zx = getelementptr i8, ptr %i.zw, i64 100    ; 2 uses
  %i.zy = load i16, ptr %i.zx, align 4            ; 2 uses
  %i.zz = and i16 %i.zy, 2048
  %i.aaa = or i16 %i.zy, 2048
  store i16 %i.aaa, ptr %i.zx, align 4
  %i.aab = load ptr, ptr %i.zv, align 8, !tbaa !35
  %i.aac = getelementptr i8, ptr %i.aab, i64 100  ; 2 uses
  %i.aad = load i16, ptr %i.aac, align 4          ; 2 uses
  %i.aae = and i16 %i.aad, 4096
  %i.aaf = or i16 %i.aad, 4096
  store i16 %i.aaf, ptr %i.aac, align 4
  %i.aag = getelementptr i8, ptr %1, i64 8
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !22 ; 4 uses
  %i.aai = icmp eq ptr %i.aah, null
  br i1 %i.aai, label %.critedge1574, label %.lr.ph1969

.lr.ph1969:                                       ; preds = %bb.ed
  %i.aaj = getelementptr i8, ptr %i.aah, i64 16
  %i.aak = load i64, ptr %i.aah, align 8, !tbaa !43
  %i.aal = icmp sgt i64 %i.aak, 0
  br i1 %i.aal, label %.lr.ph1972, label %.critedge1574

bb.ee:                                            ; preds = %.lr.ph1972
  %i.aam = add nuw nsw i64 %.0127719681971, 1     ; 2 uses
  %i.aan = load i64, ptr %i.aah, align 8, !tbaa !43
  %i.aao = icmp slt i64 %i.aam, %i.aan
  br i1 %i.aao, label %.lr.ph1972, label %.critedge1574

.lr.ph1972:                                       ; preds = %.lr.ph1969, %bb.ee
  %.0127719681971 = phi i64 [ %i.aam, %bb.ee ], [ 0, %.lr.ph1969 ] ; 2 uses
  %i.aap = getelementptr [8 x i8], ptr %i.aaj, i64 %.0127719681971
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !47
  %i.aar = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.aaq)
  %.not1413.not = icmp eq i32 %i.aar, 0
  br i1 %.not1413.not, label %Py_DECREF.exit1617.thread, label %bb.ee

.critedge1574:                                    ; preds = %bb.ee, %.lr.ph1969, %bb.ed
  %i.aas = getelementptr i8, ptr %1, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !22 ; 3 uses
  %i.aau = icmp eq ptr %i.aat, null
  %i.aav = getelementptr i8, ptr %i.aat, i64 16
  br i1 %i.aau, label %.critedge1576, label %bb.ef

bb.ef:                                            ; preds = %.critedge1574, %symtable_visit_excepthandler.exit1658
  %i.aaw = phi i64 [ %i.acf, %symtable_visit_excepthandler.exit1658 ], [ 0, %.critedge1574 ] ; 3 uses
  %4 = load i64, ptr %i.aat, align 8, !tbaa !43
  %.not1416 = icmp slt i64 %i.aaw, %4
  br i1 %.not1416, label %bb.eg, label %.critedge1576

bb.eg:                                            ; preds = %bb.ef
  %i.aax = getelementptr [8 x i8], ptr %i.aav, i64 %i.aaw
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !104 ; 7 uses
  %i.aaz = getelementptr i8, ptr %i.aay, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !22 ; 2 uses
  %.not.i1642 = icmp eq ptr %i.aba, null
  br i1 %.not.i1642, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.abb = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef nonnull %i.aba), !inline_history !106
  %.not27.i1643 = icmp eq i32 %i.abb, 0
  br i1 %.not27.i1643, label %Py_DECREF.exit1617.thread, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.abc = getelementptr i8, ptr %i.aay, i64 16
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !22 ; 3 uses
  %.not28.i1644 = icmp eq ptr %i.abd, null
  br i1 %.not28.i1644, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.abe = getelementptr i8, ptr %i.aay, i64 32
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !107 ; 2 uses
  %i.abg = getelementptr i8, ptr %i.aay, i64 40
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !109 ; 2 uses
  %i.abi = getelementptr i8, ptr %i.aay, i64 36
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !110 ; 2 uses
  %i.abk = getelementptr i8, ptr %i.aay, i64 44
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !111 ; 2 uses
  %i.abm = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.abd, ptr noundef nonnull @.str.23) #7
  %.not.i.i1681 = icmp eq i32 %i.abm, 0
  br i1 %.not.i.i1681, label %symtable_add_def_ctx.exit1685, label %symtable_add_def_ctx.exit1685.thread

symtable_add_def_ctx.exit1685.thread:             ; preds = %bb.ej
  %i.abn = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.abn, ptr noundef nonnull @.str.24) #7
  %i.abo = load ptr, ptr %0, align 8, !tbaa !31
  %i.abp = add i32 %i.abj, 1
  %i.abq = add i32 %i.abl, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.abo, i32 noundef %i.abf, i32 noundef %i.abp, i32 noundef %i.abh, i32 noundef %i.abq) #7
  br label %Py_DECREF.exit1617.thread

symtable_add_def_ctx.exit1685:                    ; preds = %bb.ej
  %.sroa.5.8.insert.ext.i1649 = zext i32 %i.abl to i64
  %.sroa.5.8.insert.shift.i1650 = shl nuw i64 %.sroa.5.8.insert.ext.i1649, 32
  %.sroa.3.8.insert.ext.i1651 = zext i32 %i.abj to i64
  %.sroa.3.8.insert.insert.i1652 = or disjoint i64 %.sroa.5.8.insert.shift.i1650, %.sroa.3.8.insert.ext.i1651
  %.sroa.2.0.insert.ext.i1645 = zext i32 %i.abh to i64
  %.sroa.2.0.insert.shift.i1646 = shl nuw i64 %.sroa.2.0.insert.ext.i1645, 32
  %.sroa.0.0.insert.ext.i1647 = zext i32 %i.abf to i64
  %.sroa.0.0.insert.insert.i1648 = or disjoint i64 %.sroa.2.0.insert.shift.i1646, %.sroa.0.0.insert.ext.i1647
  %i.abr = load ptr, ptr %i.zv, align 8, !tbaa !35
  %i.abs = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.abd, i32 noundef 2, ptr noundef %i.abr, i64 %.sroa.0.0.insert.insert.i1648, i64 %.sroa.3.8.insert.insert.i1652)
  %.not29.i1653 = icmp eq i32 %i.abs, 0
  br i1 %.not29.i1653, label %Py_DECREF.exit1617.thread, label %bb.ek

bb.ek:                                            ; preds = %symtable_add_def_ctx.exit1685, %bb.ei
  %i.abt = getelementptr i8, ptr %i.aay, i64 24
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !22 ; 4 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %symtable_visit_excepthandler.exit1658, label %.lr.ph1974

.lr.ph1974:                                       ; preds = %bb.ek
  %i.abw = getelementptr i8, ptr %i.abu, i64 16
  %i.abx = load i64, ptr %i.abu, align 8, !tbaa !43
  %i.aby = icmp sgt i64 %i.abx, 0
  br i1 %i.aby, label %.lr.ph1977, label %symtable_visit_excepthandler.exit1658

bb.el:                                            ; preds = %.lr.ph1977
  %i.abz = add nuw nsw i64 %.021.i165419731976, 1 ; 2 uses
  %i.aca = load i64, ptr %i.abu, align 8, !tbaa !43
  %i.acb = icmp slt i64 %i.abz, %i.aca
  br i1 %i.acb, label %.lr.ph1977, label %symtable_visit_excepthandler.exit1658

.lr.ph1977:                                       ; preds = %.lr.ph1974, %bb.el
  %.021.i165419731976 = phi i64 [ %i.abz, %bb.el ], [ 0, %.lr.ph1974 ] ; 2 uses
  %i.acc = getelementptr [8 x i8], ptr %i.abw, i64 %.021.i165419731976
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !47
  %i.ace = tail call fastcc i32 @symtable_visit_stmt(ptr noundef nonnull %0, ptr noundef %i.acd), !inline_history !106
  %.not30.not.i1657 = icmp eq i32 %i.ace, 0
  br i1 %.not30.not.i1657, label %Py_DECREF.exit1617.thread, label %bb.el

symtable_visit_excepthandler.exit1658:            ; preds = %bb.el, %.lr.ph1974, %bb.ek
  %i.acf = add nuw nsw i64 %i.aaw, 1
  br label %bb.ef, !llvm.loop !113

.critedge1576:                                    ; preds = %bb.ef, %.critedge1574
  %i.acg = getelementptr i8, ptr %1, i64 24
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !22 ; 4 uses
  %i.aci = icmp eq ptr %i.ach, null
  br i1 %i.aci, label %.critedge1578, label %.lr.ph1979

.lr.ph1979:                                       ; preds = %.critedge1576
  %i.acj = getelementptr i8, ptr %i.ach, i64 16
  %i.ack = load i64, ptr %i.ach, align 8, !tbaa !43
  %i.acl = icmp sgt i64 %i.ack, 0
  br i1 %i.acl, label %.lr.ph1982, label %.critedge1578

bb.em:                                            ; preds = %.lr.ph1982
  %i.acm = add nuw nsw i64 %.0127519781981, 1     ; 2 uses
  %i.acn = load i64, ptr %i.ach, align 8, !tbaa !43
  %i.aco = icmp slt i64 %i.acm, %i.acn
  br i1 %i.aco, label %.lr.ph1982, label %.critedge1578

.lr.ph1982:                                       ; preds = %.lr.ph1979, %bb.em
  %.0127519781981 = phi i64 [ %i.acm, %bb.em ], [ 0, %.lr.ph1979 ] ; 2 uses
  %i.acp = getelementptr [8 x i8], ptr %i.acj, i64 %.0127519781981
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !47
  %i.acr = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.acq)
  %.not1417.not = icmp eq i32 %i.acr, 0
  br i1 %.not1417.not, label %Py_DECREF.exit1617.thread, label %bb.em

.critedge1578:                                    ; preds = %bb.em, %.lr.ph1979, %.critedge1576
  %i.acs = getelementptr i8, ptr %1, i64 32
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !22 ; 4 uses
  %i.acu = icmp eq ptr %i.act, null
  br i1 %i.acu, label %.critedge1810, label %.lr.ph1984

.lr.ph1984:                                       ; preds = %.critedge1578
  %i.acv = getelementptr i8, ptr %i.act, i64 16
  %i.acw = load i64, ptr %i.act, align 8, !tbaa !43
  %i.acx = icmp sgt i64 %i.acw, 0
  br i1 %i.acx, label %.lr.ph1987, label %.critedge1810

bb.en:                                            ; preds = %.lr.ph1987
  %i.acy = add nuw nsw i64 %.0127419831986, 1     ; 2 uses
  %i.acz = load i64, ptr %i.act, align 8, !tbaa !43
  %i.ada = icmp slt i64 %i.acy, %i.acz
  br i1 %i.ada, label %.lr.ph1987, label %.critedge1810

.lr.ph1987:                                       ; preds = %.lr.ph1984, %bb.en
  %.0127419831986 = phi i64 [ %i.acy, %bb.en ], [ 0, %.lr.ph1984 ] ; 2 uses
  %i.adb = getelementptr [8 x i8], ptr %i.acv, i64 %.0127419831986
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !47
  %i.add = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.adc)
  %.not1419.not = icmp eq i32 %i.add, 0
  br i1 %.not1419.not, label %Py_DECREF.exit1617.thread, label %bb.en

.critedge1810:                                    ; preds = %bb.en, %.lr.ph1984, %.critedge1578
  %i.ade = load ptr, ptr %i.zv, align 8, !tbaa !35
  %i.adf = getelementptr i8, ptr %i.ade, i64 100  ; 2 uses
  %i.adg = load i16, ptr %i.adf, align 4
  %i.adh = and i16 %i.adg, -4097
  %i.adi = or disjoint i16 %i.adh, %i.aae
  store i16 %i.adi, ptr %i.adf, align 4
  %i.adj = load ptr, ptr %i.zv, align 8, !tbaa !35
  %i.adk = getelementptr i8, ptr %i.adj, i64 100  ; 2 uses
  %i.adl = load i16, ptr %i.adk, align 4
  %i.adm = and i16 %i.adl, -2049
  %i.adn = or disjoint i16 %i.adm, %i.zz
  store i16 %i.adn, ptr %i.adk, align 4
  br label %Py_DECREF.exit1617

bb.eo:                                            ; preds = %bb.b
  %i.ado = getelementptr i8, ptr %1, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !22
  %i.adq = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.adp)
  %.not1410 = icmp eq i32 %i.adq, 0
  br i1 %.not1410, label %Py_DECREF.exit1617.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.adr = getelementptr i8, ptr %1, i64 16
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !22 ; 2 uses
  %.not1411 = icmp eq ptr %i.ads, null
  br i1 %.not1411, label %Py_DECREF.exit1617, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.adt = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef nonnull %i.ads)
  %.not1412 = icmp eq i32 %i.adt, 0
  br i1 %.not1412, label %Py_DECREF.exit1617.thread, label %Py_DECREF.exit1617

bb.er:                                            ; preds = %bb.b
  %i.adu = getelementptr i8, ptr %1, i64 8
  %i.adv = getelementptr i8, ptr %1, i64 16
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !22
  %.not1406 = icmp eq i32 %i.adw, 0
  br i1 %.not1406, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.adx = tail call fastcc i32 @check_lazy_import_context(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.32)
  %.not1407 = icmp eq i32 %i.adx, 0
  br i1 %.not1407, label %Py_DECREF.exit1617.thread, label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es
  %i.ady = load ptr, ptr %i.adu, align 8, !tbaa !22 ; 4 uses
  %i.adz = icmp eq ptr %i.ady, null
  br i1 %i.adz, label %Py_DECREF.exit1617, label %.lr.ph1964

.lr.ph1964:                                       ; preds = %bb.et
  %i.aea = getelementptr i8, ptr %i.ady, i64 16
  %i.aeb = load i64, ptr %i.ady, align 8, !tbaa !43
  %i.aec = icmp sgt i64 %i.aeb, 0
  br i1 %i.aec, label %.lr.ph1967, label %Py_DECREF.exit1617

bb.eu:                                            ; preds = %.lr.ph1967
  %i.aed = add nuw nsw i64 %.0127319631966, 1     ; 2 uses
  %i.aee = load i64, ptr %i.ady, align 8, !tbaa !43
  %i.aef = icmp slt i64 %i.aed, %i.aee
  br i1 %i.aef, label %.lr.ph1967, label %Py_DECREF.exit1617

.lr.ph1967:                                       ; preds = %.lr.ph1964, %bb.eu
  %.0127319631966 = phi i64 [ %i.aed, %bb.eu ], [ 0, %.lr.ph1964 ] ; 2 uses
  %i.aeg = getelementptr [8 x i8], ptr %i.aea, i64 %.0127319631966
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !114
  %i.aei = tail call fastcc i32 @symtable_visit_alias(ptr noundef %0, ptr noundef %i.aeh)
  %.not1408.not = icmp eq i32 %i.aei, 0
  br i1 %.not1408.not, label %Py_DECREF.exit1617.thread, label %bb.eu

bb.ev:                                            ; preds = %bb.b
  %i.aej = getelementptr i8, ptr %1, i64 28
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !22
  %.not1398 = icmp eq i32 %i.aek, 0
  br i1 %.not1398, label %.thread1757, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ael = tail call fastcc i32 @check_lazy_import_context(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.33)
  %.not1399 = icmp eq i32 %i.ael, 0
  br i1 %.not1399, label %Py_DECREF.exit1617.thread, label %.preheader1870

.preheader1870:                                   ; preds = %bb.ew
  %i.aem = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !22 ; 2 uses
  %i.aeo = icmp eq ptr %i.aen, null
  br i1 %i.aeo, label %.critedge1815, label %.lr.ph1956

.lr.ph1956:                                       ; preds = %.preheader1870, %bb.ez
  %i.aep = phi ptr [ %i.aex, %bb.ez ], [ %i.aen, %.preheader1870 ] ; 4 uses
  %.012721955 = phi i64 [ %i.aey, %bb.ez ], [ 0, %.preheader1870 ] ; 3 uses
  %i.aeq = load i64, ptr %i.aep, align 8, !tbaa !43 ; 2 uses
  %i.aer = icmp slt i64 %.012721955, %i.aeq
  br i1 %i.aer, label %bb.ex, label %.lr.ph1959

bb.ex:                                            ; preds = %.lr.ph1956
  %i.aes = getelementptr i8, ptr %i.aep, i64 16
  %i.aet = getelementptr [8 x i8], ptr %i.aes, i64 %.012721955
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !114
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !116 ; 2 uses
  %.not1400 = icmp eq ptr %i.aev, null
  br i1 %.not1400, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aew = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.aev, ptr noundef nonnull @.str.34) #7
  %.not1401 = icmp eq i32 %i.aew, 0
  br i1 %.not1401, label %._crit_edge, label %bb.fa

._crit_edge:                                      ; preds = %bb.ey
  %.pre2155 = load ptr, ptr %i.aem, align 8, !tbaa !22
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge, %bb.ex
  %i.aex = phi ptr [ %.pre2155, %._crit_edge ], [ %i.aep, %bb.ex ] ; 2 uses
  %i.aey = add nuw nsw i64 %.012721955, 1
  %i.aez = icmp eq ptr %i.aex, null
  br i1 %i.aez, label %.critedge1815, label %.lr.ph1956, !llvm.loop !118

bb.fa:                                            ; preds = %bb.ey
  %i.afa = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.afa, ptr noundef nonnull @.str.35) #7
  %i.afb = load ptr, ptr %0, align 8, !tbaa !31
  %i.afc = getelementptr i8, ptr %1, i64 64
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !62
  %i.afe = getelementptr i8, ptr %1, i64 72
  %i.aff = getelementptr i8, ptr %1, i64 68
  %i.afg = getelementptr i8, ptr %1, i64 76
  %i.afh = load i32, ptr %i.aff, align 4, !tbaa !64
  %i.afi = add i32 %i.afh, 1
  %i.afj = load i32, ptr %i.afe, align 8, !tbaa !63
  %i.afk = load i32, ptr %i.afg, align 4, !tbaa !65
  %i.afl = add i32 %i.afk, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.afb, i32 noundef %i.afd, i32 noundef %i.afi, i32 noundef %i.afj, i32 noundef %i.afl) #7
  br label %Py_DECREF.exit1617.thread

.thread1757:                                      ; preds = %bb.ev
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.pre2156 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 3 uses
  %i.afm = icmp eq ptr %.pre2156, null
  br i1 %i.afm, label %.critedge1815, label %.lr.ph1959thread-pre-split

.lr.ph1959thread-pre-split:                       ; preds = %.thread1757
  %.pr = load i64, ptr %.pre2156, align 8, !tbaa !43
  br label %.lr.ph1959

.lr.ph1959:                                       ; preds = %.lr.ph1956, %.lr.ph1959thread-pre-split
  %i.afn = phi i64 [ %.pr, %.lr.ph1959thread-pre-split ], [ %i.aeq, %.lr.ph1956 ]
  %i.afo = phi ptr [ %.pre2156, %.lr.ph1959thread-pre-split ], [ %i.aep, %.lr.ph1956 ] ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 16
  %i.afq = icmp sgt i64 %i.afn, 0
end_hunk_0
begin_hunk_1_@symtable_raise_if_comprehension_block:bb.a
  %i.r = load i32, ptr %i.p, align 4, !tbaa !89
  %i.s = add i32 %i.r, 1
  %i.t = load i32, ptr %i.o, align 8, !tbaa !88
  %i.u = load i32, ptr %i.q, align 4, !tbaa !90
  %i.v = add i32 %i.u, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.v) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @symtable_handle_comprehension(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !91
  %i.b = icmp eq i32 %i.a, 12                     ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 19 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr i8, ptr %i.f, i64 104      ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !55
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !55
  %i.j = getelementptr i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.k)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge128, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.n = getelementptr i8, ptr %i.m, i64 104      ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !55
  %.not110 = icmp eq ptr %2, null
  br i1 %.not110, label %.critedge128, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr i8, ptr %1, i64 44         ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %i.w = getelementptr i8, ptr %1, i64 52         ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !90
  %.sroa.230.0.insert.ext = zext i32 %i.t to i64
  %.sroa.230.0.insert.shift = shl nuw i64 %.sroa.230.0.insert.ext, 32
  %.sroa.029.0.insert.ext = zext i32 %i.r to i64
  %.sroa.029.0.insert.insert = or disjoint i64 %.sroa.230.0.insert.shift, %.sroa.029.0.insert.ext
  %.sroa.5.8.insert.ext = zext i32 %i.x to i64
  %.sroa.5.8.insert.shift = shl nuw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.331.8.insert.ext = zext i32 %i.v to i64
  %.sroa.331.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.331.8.insert.ext
  %i.y = tail call fastcc i32 @symtable_enter_block(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1, i64 %.sroa.029.0.insert.insert, i64 %.sroa.331.8.insert.insert)
  %.not111 = icmp eq i32 %i.y, 0
  br i1 %.not111, label %.critedge128, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %1, align 8, !tbaa !91
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 96
  %switch.tableidx = add i32 %i.z, -9             ; 2 uses
  %i.ac = icmp ult i32 %switch.tableidx, 3
  br i1 %i.ac, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.ad = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.symtable_handle_comprehension, i64 %i.ad
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.d ]
  store i32 %.sink, ptr %i.ab, align 8, !tbaa !135
  %i.ae = getelementptr i8, ptr %i.d, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !208
  %.not112 = icmp eq i32 %i.af, 0
  br i1 %.not112, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.aa, i64 92     ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = or i8 %i.ah, 2
  store i8 %i.ai, ptr %i.ag, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.74, i32 noundef 0) #7 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %symtable_implicit_arg.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 108
  %i.an = load i64, ptr %i.am, align 4            ; 3 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 116
  %i.ap = load i64, ptr %i.ao, align 4            ; 3 uses
  %i.aq = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.23) #7
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %check_name.exit.thread.i.i, label %check_name.exit.i.i

check_name.exit.i.i:                              ; preds = %bb.h
  %.sroa.8.8.extract.shift.i.i.i = lshr i64 %i.ap, 32
  %.sroa.8.8.extract.trunc.i.i.i = trunc nuw i64 %.sroa.8.8.extract.shift.i.i.i to i32
  %.sroa.5.8.extract.trunc.i.i.i = trunc i64 %i.ap to i32
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %i.an, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.an to i32
  %i.ar = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.24) #7
  %i.as = load ptr, ptr %0, align 8, !tbaa !31
  %i.at = add i32 %.sroa.5.8.extract.trunc.i.i.i, 1
  %i.au = add i32 %.sroa.8.8.extract.trunc.i.i.i, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.as, i32 noundef %.sroa.0.0.extract.trunc.i.i.i, i32 noundef %i.at, i32 noundef %.sroa.3.0.extract.trunc.i.i.i, i32 noundef %i.au) #7
  br label %symtable_add_def_ctx.exit.i

check_name.exit.thread.i.i:                       ; preds = %bb.h
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.aw = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.aj, i32 noundef 4, ptr noundef %i.av, i64 %i.an, i64 %i.ap)
  %i.ax = icmp eq i32 %i.aw, 0
  br label %symtable_add_def_ctx.exit.i

symtable_add_def_ctx.exit.i:                      ; preds = %check_name.exit.thread.i.i, %check_name.exit.i.i
  %.0.i.i = phi i1 [ true, %check_name.exit.i.i ], [ %i.ax, %check_name.exit.thread.i.i ]
  %i.ay = load i32, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i.i, label %bb.i, label %symtable_implicit_arg.exit

bb.i:                                             ; preds = %symtable_add_def_ctx.exit.i
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.aj, align 8, !tbaa !22
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %symtable_implicit_arg.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #7
  br label %symtable_implicit_arg.exit

symtable_implicit_arg.exit:                       ; preds = %symtable_add_def_ctx.exit.i, %bb.i, %bb.j
  br i1 %.0.i.i, label %symtable_implicit_arg.exit.thread, label %bb.m

symtable_implicit_arg.exit.thread:                ; preds = %bb.g, %symtable_implicit_arg.exit
  store ptr null, ptr %i.e, align 8, !tbaa !35
  %i.bb = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %.val.i = load i64, ptr %i.bd, align 8, !tbaa !50 ; 5 uses
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %.critedge128, label %bb.k

bb.k:                                             ; preds = %symtable_implicit_arg.exit.thread
  %i.be = add i64 %.val.i, -1
  %i.bf = tail call i32 @PyList_SetSlice(ptr noundef nonnull %i.bc, i64 noundef %i.be, i64 noundef %.val.i, ptr noundef null) #7
  %i.bg = icmp slt i32 %i.bf, 0
  %.not12.i = icmp eq i64 %.val.i, 1
  %or.cond = or i1 %.not12.i, %i.bg
  br i1 %or.cond, label %.critedge128, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !34
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %.val.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49
  store ptr %i.bm, ptr %i.e, align 8, !tbaa !35
  br label %.critedge128

bb.m:                                             ; preds = %symtable_implicit_arg.exit
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.bo = getelementptr i8, ptr %i.bn, i64 100    ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 4
  %i.bq = or i16 %i.bp, 64
  store i16 %i.bq, ptr %i.bo, align 4
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !209
  %i.bs = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.br)
  %.not114 = icmp eq i32 %i.bs, 0
  br i1 %.not114, label %.critedge128, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.bu = getelementptr i8, ptr %i.bt, i64 100    ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = and i16 %i.bv, -65
  store i16 %i.bw, ptr %i.bu, align 4
  %i.bx = getelementptr i8, ptr %i.d, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !210 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.critedge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.ca = getelementptr i8, ptr %i.by, i64 16
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !43
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph156, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.o, %.lr.ph, %bb.n
  %i.cd = icmp eq ptr %3, null
  br i1 %i.cd, label %.critedge126, label %bb.p

bb.o:                                             ; preds = %.lr.ph156
  %i.ce = add nuw nsw i64 %.0104153155, 1         ; 2 uses
  %i.cf = load i64, ptr %i.by, align 8, !tbaa !43
  %i.cg = icmp slt i64 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph156, label %.critedge.preheader

.lr.ph156:                                        ; preds = %.lr.ph, %bb.o
  %.0104153155 = phi i64 [ %i.ce, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.ca, i64 %.0104153155
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !71
  %i.cj = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.ci)
  %.not115.not = icmp eq i32 %i.cj, 0
  br i1 %.not115.not, label %.critedge128, label %bb.o

bb.p:                                             ; preds = %.critedge.preheader, %symtable_visit_comprehension.exit
  %i.ck = phi i64 [ %i.ea, %symtable_visit_comprehension.exit ], [ 1, %.critedge.preheader ] ; 3 uses
  %6 = load i64, ptr %3, align 8, !tbaa !43
  %.not118 = icmp slt i64 %i.ck, %6
  br i1 %.not118, label %bb.q, label %.critedge126

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr [8 x i8], ptr %i.c, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !204 ; 4 uses
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.co = getelementptr i8, ptr %i.cn, i64 100    ; 2 uses
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = or i16 %i.cp, 64
  store i16 %i.cq, ptr %i.co, align 4
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !209
  %i.cs = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef %i.cr), !inline_history !211
  %.not.i130 = icmp eq i32 %i.cs, 0
  br i1 %.not.i130, label %.critedge128, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.cu = getelementptr i8, ptr %i.ct, i64 100    ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 4
  %i.cw = and i16 %i.cv, -65
  store i16 %i.cw, ptr %i.cu, align 4
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.cy = getelementptr i8, ptr %i.cx, i64 104    ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !55
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !55
  %i.db = getelementptr i8, ptr %i.cm, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !206
  %i.dd = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef %i.dc), !inline_history !211
  %.not25.i = icmp eq i32 %i.dd, 0
  br i1 %.not25.i, label %.critedge128, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.df = getelementptr i8, ptr %i.de, i64 104    ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !55
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !55
  %i.di = getelementptr i8, ptr %i.cm, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !210 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.critedge150, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.s
  %i.dl = getelementptr i8, ptr %i.dj, i64 16
  %i.dm = load i64, ptr %i.dj, align 8, !tbaa !43
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph161, label %.critedge150

bb.t:                                             ; preds = %.lr.ph161
  %i.do = add nuw nsw i64 %.021.i157160, 1        ; 2 uses
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !43
  %i.dq = icmp slt i64 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph161, label %.critedge150

.lr.ph161:                                        ; preds = %.lr.ph158, %bb.t
  %.021.i157160 = phi i64 [ %i.do, %bb.t ], [ 0, %.lr.ph158 ] ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dl, i64 %.021.i157160
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !71
  %i.dt = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef %i.ds), !inline_history !211
  %.not26.not.i = icmp eq i32 %i.dt, 0
  br i1 %.not26.not.i, label %.critedge128, label %bb.t

.critedge150:                                     ; preds = %bb.t, %.lr.ph158, %bb.s
  %i.du = getelementptr i8, ptr %i.cm, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !208
  %.not27.i = icmp eq i32 %i.dv, 0
  br i1 %.not27.i, label %symtable_visit_comprehension.exit, label %bb.u

bb.u:                                             ; preds = %.critedge150
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.dx = getelementptr i8, ptr %i.dw, i64 92     ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 4
  %i.dz = or i8 %i.dy, 2
  store i8 %i.dz, ptr %i.dx, align 4
  br label %symtable_visit_comprehension.exit

symtable_visit_comprehension.exit:                ; preds = %bb.u, %.critedge150
  %i.ea = add nuw nsw i64 %i.ck, 1
  br label %bb.p, !llvm.loop !212

.critedge126:                                     ; preds = %bb.p, %.critedge.preheader
  %.not119 = icmp eq ptr %5, null
  br i1 %.not119, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge126
  %i.eb = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef nonnull %5)
  %.not120 = icmp eq i32 %i.eb, 0
  br i1 %.not120, label %.critedge128, label %bb.w

bb.w:                                             ; preds = %.critedge126, %bb.v
  %i.ec = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %4)
  %.not121 = icmp eq i32 %i.ec, 0
  br i1 %.not121, label %.critedge128, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.ee = getelementptr i8, ptr %i.ed, i64 92     ; 2 uses
  %i.ef = zext i1 %i.b to i8
  %i.eg = load i8, ptr %i.ee, align 4
  %i.eh = and i8 %i.eg, -2
  %i.ei = or disjoint i8 %i.eh, %i.ef
  store i8 %i.ei, ptr %i.ee, align 4
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ej, i64 92
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = and i8 %i.el, 2
  %.not122 = icmp eq i8 %i.em, 0
  %spec.select.not147 = select i1 %.not122, i1 true, i1 %i.b
  store ptr null, ptr %i.e, align 8, !tbaa !35
  %i.en = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !34 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %.val.i131 = load i64, ptr %i.ep, align 8, !tbaa !50 ; 5 uses
  %.not.i132 = icmp eq i64 %.val.i131, 0
  br i1 %.not.i132, label %symtable_exit_block.exit135, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = add i64 %.val.i131, -1
  %i.er = tail call i32 @PyList_SetSlice(ptr noundef nonnull %i.eo, i64 noundef %i.eq, i64 noundef %.val.i131, ptr noundef null) #7
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %.critedge128, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not12.i133 = icmp eq i64 %.val.i131, 1
  br i1 %.not12.i133, label %symtable_exit_block.exit135, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !34
  %i.eu = getelementptr i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !52
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %.val.i131
  %i.ex = getelementptr i8, ptr %i.ew, i64 -16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !49
  store ptr %i.ey, ptr %i.e, align 8, !tbaa !35
  br label %symtable_exit_block.exit135

symtable_exit_block.exit135:                      ; preds = %bb.x, %bb.z, %bb.aa
  br i1 %spec.select.not147, label %.critedge128, label %bb.ab

bb.ab:                                            ; preds = %symtable_exit_block.exit135
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !35  ; 4 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 72
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !56 ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr i8, ptr %i.ez, i64 92
  %i.fe = load i8, ptr %i.fd, align 4
  %i.ff = and i8 %i.fe, 2
  %.not124 = icmp eq i8 %i.ff, 0
  br i1 %.not124, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fg = getelementptr i8, ptr %i.ez, i64 96
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !135
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fj = getelementptr i8, ptr %0, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !37
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !57
  %i.fm = and i32 %i.fl, 8192
  %.not.i136 = icmp ne i32 %i.fm, 0
  %i.fn = icmp eq i32 %i.fb, 2
  %or.cond146 = and i1 %i.fn, %.not.i136
  br i1 %or.cond146, label %bb.af, label %allows_top_level_await.exit.thread

allows_top_level_await.exit.thread:               ; preds = %bb.ae
  %i.fo = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.fo, ptr noundef nonnull @.str.73) #7
  %i.fp = load ptr, ptr %0, align 8, !tbaa !31
  %i.fq = load i32, ptr %i.q, align 8, !tbaa !86
  %i.fr = load i32, ptr %i.u, align 4, !tbaa !89
  %i.fs = add i32 %i.fr, 1
  %i.ft = load i32, ptr %i.s, align 8, !tbaa !88
  %i.fu = load i32, ptr %i.w, align 4, !tbaa !90
  %i.fv = add i32 %i.fu, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.fp, i32 noundef %i.fq, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fv) #7
  br label %.critedge128

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.fw = getelementptr i8, ptr %i.ez, i64 92     ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = or i8 %i.fx, 2
  store i8 %i.fy, ptr %i.fw, align 4
  br label %.critedge128

.critedge128:                                     ; preds = %.lr.ph156, %bb.q, %bb.r, %.lr.ph161, %bb.y, %bb.l, %bb.k, %symtable_implicit_arg.exit.thread, %symtable_exit_block.exit135, %allows_top_level_await.exit.thread, %bb.af, %bb.w, %bb.v, %bb.m, %bb.b, %bb.c, %bb.a
  %.7 = phi i32 [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.m ], [ 0, %.lr.ph161 ], [ 0, %bb.l ], [ 0, %bb.b ], [ 1, %bb.af ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %symtable_exit_block.exit135 ], [ 0, %allows_top_level_await.exit.thread ], [ 0, %bb.q ], [ 0, %symtable_implicit_arg.exit.thread ], [ 0, %bb.k ], [ 0, %bb.y ], [ 0, %bb.r ], [ 0, %.lr.ph156 ]
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !20, i64 136}
!12 = !{!"_symtable_entry", !13, i64 0, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !8, i64 72, !17, i64 80, !8, i64 88, !8, i64 92, !8, i64 92, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 104, !18, i64 108, !19, i64 128, !20, i64 136}
!13 = !{!"_object", !9, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS11_typeobject", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS7_object", !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!19 = !{!"p1 _ZTS15_symtable_entry", !15, i64 0}
!20 = !{!"p1 _ZTS8symtable", !15, i64 0}
!21 = !{!12, !16, i64 16}
!22 = !{!9, !9, i64 0}
!23 = !{!12, !16, i64 32}
!24 = !{!12, !16, i64 24}
!25 = !{!12, !16, i64 40}
!26 = !{!12, !16, i64 48}
!27 = !{!12, !16, i64 56}
!28 = !{!12, !19, i64 128}
!29 = !{!12, !16, i64 64}
!30 = !{!12, !8, i64 108}
!31 = !{!32, !16, i64 0}
!32 = !{!"symtable", !16, i64 0, !19, i64 8, !19, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !8, i64 48, !16, i64 56, !15, i64 64}
!33 = !{!32, !16, i64 24}
!34 = !{!32, !16, i64 32}
!35 = !{!32, !19, i64 8}
!36 = !{!32, !16, i64 56}
!37 = !{!32, !15, i64 64}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS3_ts", !15, i64 0}
!40 = !{!32, !19, i64 16}
!41 = !{!42, !8, i64 0}
!42 = !{!"_mod", !8, i64 0, !9, i64 8}
!43 = !{!44, !45, i64 0}
!44 = !{!"", !45, i64 0, !46, i64 8, !9, i64 16}
!45 = !{!"long", !9, i64 0}
!46 = !{!"any p2 pointer", !15, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS5_stmt", !15, i64 0}
!49 = !{!16, !16, i64 0}
!50 = !{!51, !45, i64 16}
!51 = !{!"PyVarObject", !13, i64 0, !45, i64 16}
!52 = !{!53, !54, i64 24}
!53 = !{!"", !51, i64 0, !54, i64 24, !45, i64 32}
!54 = !{!"p2 _ZTS7_object", !46, i64 0}
!55 = !{!12, !8, i64 104}
!56 = !{!12, !8, i64 72}
!57 = !{!58, !8, i64 0}
!58 = !{!"", !8, i64 0, !18, i64 4}
!59 = !{!32, !16, i64 40}
!60 = !{!61, !8, i64 0}
!61 = !{!"_stmt", !8, i64 0, !9, i64 8, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76}
!62 = !{!61, !8, i64 64}
!63 = !{!61, !8, i64 72}
!64 = !{!61, !8, i64 68}
!65 = !{!61, !8, i64 76}
!66 = !{!67, !15, i64 48}
!67 = !{!"_arguments", !15, i64 0, !15, i64 8, !68, i64 16, !15, i64 24, !15, i64 32, !68, i64 40, !15, i64 48}
!68 = !{!"p1 _ZTS4_arg", !15, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
end_hunk_1
