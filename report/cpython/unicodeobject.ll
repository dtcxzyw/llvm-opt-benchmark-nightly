inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@unicode_from_format:bb.a
  %i.pt = phi ptr [ %i.pp, %bb.fk ], [ %i.pr, %bb.fl ]
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !193
  %i.pv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.153, i64 noundef %i.pu) #33
  br label %bb.gq

bb.fn:                                            ; preds = %bb.fa
  br i1 %i.os, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.pw = load ptr, ptr %i.t, align 16
  %i.px = zext nneg i32 %i.ot to i64
  %i.py = getelementptr i8, ptr %i.pw, i64 %i.px
  %i.pz = add nuw nsw i32 %i.ot, 8
  store i32 %i.pz, ptr %3, align 16
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.qa = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 8
  store ptr %i.qb, ptr %i.s, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.qc = phi ptr [ %i.py, %bb.fo ], [ %i.qa, %bb.fp ]
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !193
  %i.qe = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.154, i64 noundef %i.qd) #33
  br label %bb.gq

bb.fr:                                            ; preds = %bb.fa
  br i1 %i.os, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.qf = load ptr, ptr %i.t, align 16
  %i.qg = zext nneg i32 %i.ot to i64
  %i.qh = getelementptr i8, ptr %i.qf, i64 %i.qg
  %i.qi = add nuw nsw i32 %i.ot, 8
  store i32 %i.qi, ptr %3, align 16
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.qj = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 8
  store ptr %i.qk, ptr %i.s, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.ql = phi ptr [ %i.qh, %bb.fs ], [ %i.qj, %bb.ft ]
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !193
  %i.qn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.155, i64 noundef %i.qm) #33
  br label %bb.gq

bb.fv:                                            ; preds = %bb.bq, %bb.bn
  %i.qo = phi i1 [ %i.hb, %bb.bq ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.qp = phi i32 [ %i.ha, %bb.bq ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.qq = phi i8 [ %.pre502.i.jt0, %bb.bq ], [ %i.fr, %bb.bn ]
  %.5306.i163 = phi ptr [ %.4305.i, %bb.bq ], [ %.5306.i164, %bb.bn ] ; 5 uses
  switch i8 %i.qq, label %bb.gm [
    i8 111, label %bb.fw
    i8 117, label %bb.ga
    i8 120, label %bb.ge
    i8 88, label %bb.gi
  ]

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.qr = load ptr, ptr %i.t, align 16
  %i.qs = zext nneg i32 %i.qp to i64
  %i.qt = getelementptr i8, ptr %i.qr, i64 %i.qs
  %i.qu = add nuw nsw i32 %i.qp, 8
  store i32 %i.qu, ptr %3, align 16
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.qv = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 8
  store ptr %i.qw, ptr %i.s, align 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.qx = phi ptr [ %i.qt, %bb.fx ], [ %i.qv, %bb.fy ]
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !7
  %i.qz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.156, i32 noundef %i.qy) #33
  br label %bb.gq

bb.ga:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ra = load ptr, ptr %i.t, align 16
  %i.rb = zext nneg i32 %i.qp to i64
  %i.rc = getelementptr i8, ptr %i.ra, i64 %i.rb
  %i.rd = add nuw nsw i32 %i.qp, 8
  store i32 %i.rd, ptr %3, align 16
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.re = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.rf = getelementptr i8, ptr %i.re, i64 8
  store ptr %i.rf, ptr %i.s, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.rg = phi ptr [ %i.rc, %bb.gb ], [ %i.re, %bb.gc ]
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !7
  %i.ri = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.157, i32 noundef %i.rh) #33
  br label %bb.gq

bb.ge:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.rj = load ptr, ptr %i.t, align 16
  %i.rk = zext nneg i32 %i.qp to i64
  %i.rl = getelementptr i8, ptr %i.rj, i64 %i.rk
  %i.rm = add nuw nsw i32 %i.qp, 8
  store i32 %i.rm, ptr %3, align 16
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  %i.rn = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 8
  store ptr %i.ro, ptr %i.s, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.rp = phi ptr [ %i.rl, %bb.gf ], [ %i.rn, %bb.gg ]
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !7
  %i.rr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.158, i32 noundef %i.rq) #33
  br label %bb.gq

bb.gi:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.rs = load ptr, ptr %i.t, align 16
  %i.rt = zext nneg i32 %i.qp to i64
  %i.ru = getelementptr i8, ptr %i.rs, i64 %i.rt
  %i.rv = add nuw nsw i32 %i.qp, 8
  store i32 %i.rv, ptr %3, align 16
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.rw = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rw, i64 8
  store ptr %i.rx, ptr %i.s, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.ry = phi ptr [ %i.ru, %bb.gj ], [ %i.rw, %bb.gk ]
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !7
  %i.sa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.159, i32 noundef %i.rz) #33
  br label %bb.gq

bb.gm:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.sb = load ptr, ptr %i.t, align 16
  %i.sc = zext nneg i32 %i.qp to i64
  %i.sd = getelementptr i8, ptr %i.sb, i64 %i.sc
  %i.se = add nuw nsw i32 %i.qp, 8
  store i32 %i.se, ptr %3, align 16
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.sf = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 8
  store ptr %i.sg, ptr %i.s, align 8
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.sh = phi ptr [ %i.sd, %bb.gn ], [ %i.sf, %bb.go ]
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !7
  %i.sj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.160, i32 noundef %i.si) #33
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.gl, %bb.gh, %bb.gd, %bb.fz, %bb.fu, %bb.fq, %bb.fm, %bb.fi, %bb.fe, %bb.ez, %bb.ev, %bb.er, %bb.en, %bb.ej, %bb.ee, %bb.ea, %bb.dw, %bb.ds, %bb.do, %bb.dj, %bb.df, %bb.db, %bb.cx, %bb.ct, %bb.co, %bb.ck, %bb.cg, %bb.cc, %bb.by
  %.5306.i165 = phi ptr [ %.5306.i163, %bb.gp ], [ %.5306.i163, %bb.gl ], [ %.5306.i163, %bb.gh ], [ %.5306.i163, %bb.gd ], [ %.5306.i163, %bb.fz ], [ %.5306.i159, %bb.fu ], [ %.5306.i159, %bb.fq ], [ %.5306.i159, %bb.fm ], [ %.5306.i159, %bb.fi ], [ %.5306.i159, %bb.fe ], [ %.5306.i160, %bb.ez ], [ %.5306.i160, %bb.ev ], [ %.5306.i160, %bb.er ], [ %.5306.i160, %bb.en ], [ %.5306.i160, %bb.ej ], [ %.5306.i161, %bb.ee ], [ %.5306.i161, %bb.ea ], [ %.5306.i161, %bb.dw ], [ %.5306.i161, %bb.ds ], [ %.5306.i161, %bb.do ], [ %.5306.i158, %bb.dj ], [ %.5306.i158, %bb.df ], [ %.5306.i158, %bb.db ], [ %.5306.i158, %bb.cx ], [ %.5306.i158, %bb.ct ], [ %.5306.i162, %bb.co ], [ %.5306.i162, %bb.ck ], [ %.5306.i162, %bb.cg ], [ %.5306.i162, %bb.cc ], [ %.5306.i162, %bb.by ]
  %.0308.in.i = phi i32 [ %i.sj, %bb.gp ], [ %i.sa, %bb.gl ], [ %i.rr, %bb.gh ], [ %i.ri, %bb.gd ], [ %i.qz, %bb.fz ], [ %i.qn, %bb.fu ], [ %i.qe, %bb.fq ], [ %i.pv, %bb.fm ], [ %i.pm, %bb.fi ], [ %i.pd, %bb.fe ], [ %i.or, %bb.ez ], [ %i.oi, %bb.ev ], [ %i.nz, %bb.er ], [ %i.nq, %bb.en ], [ %i.nh, %bb.ej ], [ %i.mv, %bb.ee ], [ %i.mm, %bb.ea ], [ %i.md, %bb.dw ], [ %i.lu, %bb.ds ], [ %i.ll, %bb.do ], [ %i.kz, %bb.dj ], [ %i.kq, %bb.df ], [ %i.kh, %bb.db ], [ %i.jy, %bb.cx ], [ %i.jp, %bb.ct ], [ %i.jd, %bb.co ], [ %i.iu, %bb.ck ], [ %i.il, %bb.cg ], [ %i.ic, %bb.cc ], [ %i.ht, %bb.by ]
  %.0308.i = sext i32 %.0308.in.i to i64
  %i.sk = load i8, ptr %i.a, align 16, !tbaa !205
  %i.sl = icmp eq i8 %i.sk, 45                    ; 4 uses
  %.neg495.i = sext i1 %i.sl to i64
  %i.sm = zext i1 %i.sl to i64                    ; 3 uses
  %i.sn = sub nsw i64 %.0308.i, %i.sm             ; 3 uses
  %i.so = call i64 @llvm.smax.i64(i64 %.1317.i, i64 %i.sn) ; 2 uses
  %i.sp = add i64 %i.so, %i.sm
  %i.sq = call i64 @llvm.smax.i64(i64 %.2315.i, i64 %i.sp) ; 6 uses
  %i.sr = and i32 %.2312.i, 1
  %.not412.i = icmp eq i32 %i.sr, 0               ; 2 uses
  %i.ss = and i32 %.2312.i, 17
  %or.cond416.i = icmp eq i32 %i.ss, 16
  %i.st = sub i64 %i.sq, %i.sm
  %.2318.i = select i1 %or.cond416.i, i64 %i.st, i64 %i.so ; 2 uses
  %.neg478.i = add i64 %i.sq, %.neg495.i
  %i.su = sub i64 %.neg478.i, %.2318.i            ; 2 uses
  %i.sv = call i64 @llvm.smax.i64(i64 %i.su, i64 0) ; 4 uses
  %i.sw = sub i64 %.2318.i, %i.sn                 ; 2 uses
  %i.sx = call i64 @llvm.smax.i64(i64 %i.sw, i64 0) ; 2 uses
  %i.sy = load i32, ptr %i.w, align 4, !tbaa !276
  %i.sz = icmp ugt i32 %i.sy, 126
  br i1 %i.sz, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ta = load i64, ptr %i.x, align 8, !tbaa !278
  %i.tb = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = icmp sle i64 %i.sq, %i.tc
  %i.te = icmp eq i64 %i.sq, 0
  %or.cond20.i = or i1 %i.te, %i.td
  br i1 %or.cond20.i, label %.critedge418.i, label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %.old19.i = icmp eq i64 %i.sq, 0
  br i1 %.old19.i, label %.critedge418.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.tf = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %i.sq, i32 noundef 127) #33
  %i.tg = icmp eq i32 %i.tf, -1
  br i1 %i.tg, label %.critedge422.i, label %.critedge418.i

.critedge418.i:                                   ; preds = %bb.gt, %bb.gs, %bb.gr
  %.not413.i = icmp slt i64 %i.su, 1              ; 2 uses
  %.not413.not.i = xor i1 %.not413.i, true
  %or.cond419.i = select i1 %.not413.not.i, i1 %.not412.i, i1 false
  br i1 %or.cond419.i, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %.critedge418.i
  %i.th = load ptr, ptr %0, align 8, !tbaa !352
  %i.ti = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tj = call i64 @PyUnicode_Fill(ptr noundef %i.th, i64 noundef %i.ti, i64 noundef %i.sv, i32 noundef 32)
  %i.tk = icmp eq i64 %i.tj, -1
  br i1 %i.tk, label %.critedge422.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tl = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tm = add i64 %i.tl, %i.sv
  store i64 %i.tm, ptr %i.y, align 8, !tbaa !279
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %.critedge418.i
  br i1 %i.sl, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.tn = call i32 @_PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 45) #33
  %i.to = icmp eq i32 %i.tn, -1
  br i1 %i.to, label %.critedge422.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.not416.i = icmp slt i64 %i.sw, 1
  br i1 %.not416.i, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.tp = load ptr, ptr %0, align 8, !tbaa !352
  %i.tq = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tr = call i64 @PyUnicode_Fill(ptr noundef %i.tp, i64 noundef %i.tq, i64 noundef %i.sx, i32 noundef 48)
  %i.ts = icmp eq i64 %i.tr, -1
  br i1 %i.ts, label %.critedge422.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.tt = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tu = add i64 %i.tt, %i.sx
  store i64 %i.tu, ptr %i.y, align 8, !tbaa !279
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.sl to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.tv = call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 noundef %i.sn) #33
  %i.tw = icmp slt i32 %i.tv, 0
  br i1 %i.tw, label %.critedge422.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %or.cond420.i = select i1 %.not413.i, i1 true, i1 %.not412.i
  br i1 %or.cond420.i, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.tx = load ptr, ptr %0, align 8, !tbaa !352
  %i.ty = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tz = call i64 @PyUnicode_Fill(ptr noundef %i.tx, i64 noundef %i.ty, i64 noundef %i.sv, i32 noundef 32)
  %i.ua = icmp eq i64 %i.tz, -1
  br i1 %i.ua, label %.critedge422.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ub = load i64, ptr %i.y, align 8, !tbaa !279
  %i.uc = add i64 %i.ub, %i.sv
  store i64 %i.uc, ptr %i.y, align 8, !tbaa !279
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.kh

bb.hg:                                            ; preds = %.thread189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ud = load i32, ptr %3, align 16              ; 3 uses
  %i.ue = icmp ult i32 %i.ud, 41
  br i1 %i.ue, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.uf = load ptr, ptr %i.t, align 16
  %i.ug = zext nneg i32 %i.ud to i64
  %i.uh = getelementptr i8, ptr %i.uf, i64 %i.ug
  %i.ui = add nuw nsw i32 %i.ud, 8
  store i32 %i.ui, ptr %3, align 16
  br label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  %i.uj = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.uk = getelementptr i8, ptr %i.uj, i64 8
  store ptr %i.uk, ptr %i.s, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.ul = phi ptr [ %i.uh, %bb.hh ], [ %i.uj, %bb.hi ]
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !353
  %i.un = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.161, ptr noundef %i.um) #33
  %i.uo = sext i32 %i.un to i64                   ; 3 uses
  %i.up = load i8, ptr %i.u, align 1, !tbaa !205
  switch i8 %i.up, label %bb.hl [
    i8 88, label %bb.hk
    i8 120, label %bb.hm
  ]

bb.hk:                                            ; preds = %bb.hj
  store i8 120, ptr %i.u, align 1, !tbaa !205
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.uq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #34
  %i.ur = add i64 %i.uq, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.v, ptr nonnull align 16 %i.b, i64 %i.ur, i1 false)
  store i8 48, ptr %i.b, align 16, !tbaa !205
  store i8 120, ptr %i.u, align 1, !tbaa !205
  %i.us = add nsw i64 %i.uo, 2
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk, %bb.hj
  %.1309.i = phi i64 [ %i.uo, %bb.hk ], [ %i.us, %bb.hl ], [ %i.uo, %bb.hj ]
  %i.ut = call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %.1309.i) #33
  %i.uu = icmp sgt i32 %i.ut, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.uu, label %bb.kh, label %.thread56

bb.hn:                                            ; preds = %.thread189
  %i.uv = load i32, ptr %3, align 16              ; 5 uses
  %i.uw = icmp ult i32 %i.uv, 41                  ; 2 uses
  br i1 %.not397.i140, label %bb.hs, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  br i1 %i.uw, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.ux = load ptr, ptr %i.t, align 16
  %i.uy = zext nneg i32 %i.uv to i64
  %i.uz = getelementptr i8, ptr %i.ux, i64 %i.uy
  %i.va = add nuw nsw i32 %i.uv, 8
  store i32 %i.va, ptr %3, align 16
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.vb = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 8
  store ptr %i.vc, ptr %i.s, align 8
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.vd = phi ptr [ %i.uz, %bb.hp ], [ %i.vb, %bb.hq ]
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !354
  %i.vf = call fastcc i32 @unicode_fromformat_write_wcstr(ptr noundef %0, ptr noundef %i.ve, i64 noundef %.2315.i, i64 noundef %.1317.i, i32 noundef %.2312.i)
  %i.vg = icmp sgt i32 %i.vf, -1
  br i1 %i.vg, label %bb.kh, label %.thread56

bb.hs:                                            ; preds = %bb.hn
  br i1 %i.uw, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.vh = load ptr, ptr %i.t, align 16
  %i.vi = zext nneg i32 %i.uv to i64
  %i.vj = getelementptr i8, ptr %i.vh, i64 %i.vi
  %i.vk = add nuw nsw i32 %i.uv, 8
  store i32 %i.vk, ptr %3, align 16
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %i.vl = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.vm = getelementptr i8, ptr %i.vl, i64 8
  store ptr %i.vm, ptr %i.s, align 8
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.vn = phi ptr [ %i.vj, %bb.ht ], [ %i.vl, %bb.hu ]
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !355
  %i.vp = call fastcc i32 @unicode_fromformat_write_utf8(ptr noundef %0, ptr noundef %i.vo, i64 noundef %.2315.i, i64 noundef %.1317.i, i32 noundef %.2312.i)
  %i.vq = icmp sgt i32 %i.vp, -1
  br i1 %i.vq, label %bb.kh, label %.thread56

bb.hw:                                            ; preds = %bb.ax, %.thread189
  %.5306.i151 = phi ptr [ %.4305.i, %bb.ax ], [ %.5306.i164, %.thread189 ]
  %i.vr = load i32, ptr %3, align 16              ; 3 uses
  %i.vs = icmp ult i32 %i.vr, 41
  br i1 %i.vs, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.vt = load ptr, ptr %i.t, align 16
  %i.vu = zext nneg i32 %i.vr to i64
  %i.vv = getelementptr i8, ptr %i.vt, i64 %i.vu
  %i.vw = add nuw nsw i32 %i.vr, 8
  store i32 %i.vw, ptr %3, align 16
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.vx = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 8
  store ptr %i.vy, ptr %i.s, align 8
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.vz = phi ptr [ %i.vv, %bb.hx ], [ %i.vx, %bb.hy ]
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !194
  %i.wb = call fastcc i32 @unicode_fromformat_write_str(ptr noundef %0, ptr noundef %i.wa, i64 noundef %.2315.i, i64 noundef %.1317.i, i32 noundef %.2312.i)
  %.not408.i.a = icmp eq i32 %i.wb, -1
  br i1 %.not408.i.a, label %.thread56, label %bb.kh

bb.ia:                                            ; preds = %.thread189
  %i.wc = load i32, ptr %3, align 16              ; 4 uses
  %i.wd = icmp ult i32 %i.wc, 41
  br i1 %i.wd, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.we = load ptr, ptr %i.t, align 16
  %i.wf = zext nneg i32 %i.wc to i64
  %i.wg = getelementptr i8, ptr %i.we, i64 %i.wf
  %i.wh = add nuw nsw i32 %i.wc, 8                ; 2 uses
  store i32 %i.wh, ptr %3, align 16
  br label %bb.id

bb.ic:                                            ; preds = %bb.ia
  %i.wi = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 8
  store ptr %i.wj, ptr %i.s, align 8
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.wk = phi i32 [ %i.wh, %bb.ib ], [ %i.wc, %bb.ic ] ; 5 uses
  %i.wl = phi ptr [ %i.wg, %bb.ib ], [ %i.wi, %bb.ic ]
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !194 ; 3 uses
  %i.wn = icmp ult i32 %i.wk, 41                  ; 2 uses
  br i1 %.not397.i140, label %bb.ih, label %bb.ie

bb.ie:                                            ; preds = %bb.id
end_hunk_0
begin_hunk_1_@unicode_fromformat_write_wcstr:bb.a
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i64 %3, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef %1) #34
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.02025 = phi i64 [ %i.f, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.d = getelementptr [4 x i8], ptr %1, i64 %.02025
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.02025, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !763

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.b
  %.121 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ], [ %3, %bb.c ], [ %.02025, %.lr.ph ] ; 2 uses
  %i.g = icmp slt i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.h = tail call i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr noundef %1, i64 noundef %.121)
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %.critedge
  %i.i = tail call ptr @PyUnicode_FromWideChar(ptr noundef %1, i64 noundef %.121) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc i32 @unicode_fromformat_write_str(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %2, i64 noundef -1, i32 noundef %4) ; 3 uses
  %i.l = load i32, ptr %i.i, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.i, align 8, !tbaa !205
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %i.h, %bb.d ], [ -1, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unicode_fromformat_write_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = icmp eq i64 %3, -1
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i64 %3, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  br label %bb.d

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %storemerge24 = phi i64 [ %i.g, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 %storemerge24
  %i.f = load i8, ptr %i.e, align 1, !tbaa !205
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i64 %storemerge24, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !764

.critedge:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  %storemerge.lcssa23 = phi i64 [ 0, %.preheader ], [ %3, %bb.c ], [ %storemerge24, %.lr.ph ] ; 2 uses
  %i.h = icmp eq i64 %storemerge.lcssa23, %3
  %spec.select = select i1 %i.h, ptr %i.a, ptr null
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.b
  %i.i = phi i64 [ %i.d, %bb.b ], [ %storemerge.lcssa23, %.critedge ] ; 2 uses
  %.018 = phi ptr [ null, %bb.b ], [ %spec.select, %.critedge ] ; 2 uses
  %i.j = icmp slt i64 %2, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef %0, ptr noundef %1, i64 noundef %i.i, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef %.018)
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.d
  %i.l = call fastcc ptr @unicode_decode_utf8(ptr noundef %1, i64 noundef %i.i, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %.018), !inline_history !291 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call fastcc i32 @unicode_fromformat_write_str(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef %2, i64 noundef -1, i32 noundef %4) ; 3 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !205
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1 = phi i32 [ %i.k, %bb.e ], [ -1, %bb.f ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unicode_fromformat_write_str(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !207 ; 4 uses
  %i.b = icmp ne i64 %3, -1
  %.not = icmp slt i64 %3, %.val
  %or.cond66 = select i1 %i.b, i1 %.not, i1 false
  %.not61 = icmp sgt i64 %2, %.val
  %or.cond67 = select i1 %or.cond66, i1 true, i1 %.not61
  br i1 %or.cond67, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1) #33
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.not62 = icmp eq i64 %3, -1
  %i.d = tail call i64 @llvm.smin.i64(i64 %3, i64 %.val)
  %.058 = select i1 %.not62, i64 %.val, i64 %i.d  ; 5 uses
  %i.e = tail call i64 @llvm.smax.i64(i64 %.058, i64 %2) ; 4 uses
  %i.f = getelementptr i8, ptr %1, i64 32
  %.val71 = load i32, ptr %i.f, align 8           ; 2 uses
  %i.g = and i32 %.val71, 64
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i32 %.val71, 2
  %i.i = and i32 %i.h, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.i, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.i, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %switch.select6.i, %bb.d ], [ 127, %bb.c ]
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !276  ; 3 uses
  %i.l = icmp ugt i32 %.0.i, %i.k
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.m = tail call i32 @_PyUnicode_FindMaxChar(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.058) ; 3 uses
  %.not63 = icmp ugt i32 %i.m, %i.k
  br i1 %.not63, label %bb.f, label %.thread

.thread:                                          ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %bb.e
  %.075 = phi i32 [ %i.m, %bb.e ], [ %i.k, %PyUnicode_MAX_CHAR_VALUE.exit ]
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !278
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !279
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp sle i64 %i.e, %i.r
  %i.t = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.t, %i.s
  br i1 %or.cond, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.old1 = icmp eq i64 %i.e, 0
  br i1 %.old1, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.074 = phi i32 [ %.075, %.thread ], [ %i.m, %bb.f ]
  %i.u = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %i.e, i32 noundef %.074) #33
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.m, label %.critedge

.critedge:                                        ; preds = %.thread, %bb.f, %bb.g
  %i.w = sub i64 %2, %.058                        ; 2 uses
  %5 = tail call i64 @llvm.smax.i64(i64 %i.w, i64 0) ; 4 uses
  %.not66 = icmp slt i64 %i.w, 1                  ; 2 uses
  %.not66.not = xor i1 %.not66, true
  %i.x = and i32 %4, 1
  %.not64 = icmp eq i32 %i.x, 0                   ; 2 uses
  %or.cond68 = and i1 %.not64, %.not66.not
  br i1 %or.cond68, label %bb.h, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %bb.j

bb.h:                                             ; preds = %.critedge
  %i.y = load ptr, ptr %0, align 8, !tbaa !352
  %i.z = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !279
  %i.ab = tail call i64 @PyUnicode_Fill(ptr noundef %i.y, i64 noundef %i.aa, i64 noundef %5, i32 noundef 32)
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !279
  %i.ae = add i64 %i.ad, %5                       ; 2 uses
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !279
  br label %bb.j

bb.j:                                             ; preds = %.critedge._crit_edge, %bb.i
  %i.af = phi i64 [ %.pre, %.critedge._crit_edge ], [ %i.ae, %bb.i ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !352
  %i.ah = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.ai = tail call fastcc i32 @_copy_characters(ptr noundef %i.ag, i64 noundef %i.af, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.058, i32 noundef 0) ; 0 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !279
  %i.ak = add i64 %i.aj, %.058                    ; 2 uses
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !279
  %or.cond70 = or i1 %.not64, %.not66
  br i1 %or.cond70, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %0, align 8, !tbaa !352
  %i.am = tail call i64 @PyUnicode_Fill(ptr noundef %i.al, i64 noundef %i.ak, i64 noundef %5, i32 noundef 32)
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !279
  %i.ap = add i64 %i.ao, %5
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !279
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.h, %bb.g, %bb.b
  %.057 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.j ]
  ret i32 %.057
}

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_ASCII(ptr noundef) local_unnamed_addr #3

declare ptr @_PyType_GetFullyQualifiedName(ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare ptr @PyType_GetFullyQualifiedName(ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyCodec_Lookup(ptr noundef) local_unnamed_addr #3

declare ptr @PyCodec_LookupError(ptr noundef) local_unnamed_addr #3

declare i32 @_Py_EncodeLocaleEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyCodec_StrictErrors(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytes_FromString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #20

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_Py_DecodeLocaleEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib_find_char(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr [2 x i8], ptr %0, i64 %1   ; 3 uses
  %i.b = icmp sgt i64 %1, 40
  br i1 %i.b, label %bb.b, label %.thread63

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %2, 255                          ; 2 uses
  %i.d = zext nneg i16 %i.c to i32
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %.thread63, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.loopexit68
  %.043 = phi ptr [ %.245.ph55, %.loopexit68 ], [ %0, %.preheader ] ; 2 uses
  %i.f = ptrtoint ptr %.043 to i64                ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call ptr @memchr(ptr noundef %.043, i32 noundef %i.d, i64 noundef %i.g) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 81 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !208
  %i.n = icmp eq i16 %i.m, %2
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.k, %i.o
  %i.q = ashr exact i64 %i.p, 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.l, i64 2        ; 5 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.t = sub i64 %i.s, %i.f
  %i.u = icmp sgt i64 %i.t, 80
  br i1 %i.u, label %.loopexit68, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = sub i64 %i.e, %i.s
  %i.w = icmp slt i64 %i.v, 82
  br i1 %i.w, label %.thread63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.l, i64 82       ; 2 uses
  %i.y = load i16, ptr %i.r, align 2, !tbaa !208
  %i.z = icmp eq i16 %i.y, %2
  br i1 %i.z, label %.split.loop.exit165, label %bb.i

.split.loop.exit:                                 ; preds = %bb.au
  %i.aa = getelementptr i8, ptr %i.l, i64 80
  br label %.split.loop.exit165

.split.loop.exit89:                               ; preds = %bb.at
  %i.ab = getelementptr i8, ptr %i.l, i64 78
  br label %.split.loop.exit165

.split.loop.exit91:                               ; preds = %bb.as
  %i.ac = getelementptr i8, ptr %i.l, i64 76
  br label %.split.loop.exit165

.split.loop.exit93:                               ; preds = %bb.ar
  %i.ad = getelementptr i8, ptr %i.l, i64 74
  br label %.split.loop.exit165

.split.loop.exit95:                               ; preds = %bb.aq
  %i.ae = getelementptr i8, ptr %i.l, i64 72
  br label %.split.loop.exit165

.split.loop.exit97:                               ; preds = %bb.ap
  %i.af = getelementptr i8, ptr %i.l, i64 70
  br label %.split.loop.exit165

.split.loop.exit99:                               ; preds = %bb.ao
  %i.ag = getelementptr i8, ptr %i.l, i64 68
  br label %.split.loop.exit165

.split.loop.exit101:                              ; preds = %bb.an
  %i.ah = getelementptr i8, ptr %i.l, i64 66
  br label %.split.loop.exit165

.split.loop.exit103:                              ; preds = %bb.am
  %i.ai = getelementptr i8, ptr %i.l, i64 64
  br label %.split.loop.exit165

.split.loop.exit105:                              ; preds = %bb.al
  %i.aj = getelementptr i8, ptr %i.l, i64 62
  br label %.split.loop.exit165

.split.loop.exit107:                              ; preds = %bb.ak
  %i.ak = getelementptr i8, ptr %i.l, i64 60
  br label %.split.loop.exit165

.split.loop.exit109:                              ; preds = %bb.aj
  %i.al = getelementptr i8, ptr %i.l, i64 58
  br label %.split.loop.exit165

.split.loop.exit111:                              ; preds = %bb.ai
  %i.am = getelementptr i8, ptr %i.l, i64 56
  br label %.split.loop.exit165

.split.loop.exit113:                              ; preds = %bb.ah
  %i.an = getelementptr i8, ptr %i.l, i64 54
  br label %.split.loop.exit165

.split.loop.exit115:                              ; preds = %bb.ag
  %i.ao = getelementptr i8, ptr %i.l, i64 52
  br label %.split.loop.exit165

.split.loop.exit117:                              ; preds = %bb.af
  %i.ap = getelementptr i8, ptr %i.l, i64 50
  br label %.split.loop.exit165

.split.loop.exit119:                              ; preds = %bb.ae
  %i.aq = getelementptr i8, ptr %i.l, i64 48
  br label %.split.loop.exit165

.split.loop.exit121:                              ; preds = %bb.ad
  %i.ar = getelementptr i8, ptr %i.l, i64 46
  br label %.split.loop.exit165

.split.loop.exit123:                              ; preds = %bb.ac
  %i.as = getelementptr i8, ptr %i.l, i64 44
  br label %.split.loop.exit165

.split.loop.exit125:                              ; preds = %bb.ab
  %i.at = getelementptr i8, ptr %i.l, i64 42
  br label %.split.loop.exit165

.split.loop.exit127:                              ; preds = %bb.aa
  %i.au = getelementptr i8, ptr %i.l, i64 40
  br label %.split.loop.exit165

.split.loop.exit129:                              ; preds = %bb.z
  %i.av = getelementptr i8, ptr %i.l, i64 38
  br label %.split.loop.exit165

.split.loop.exit131:                              ; preds = %bb.y
  %i.aw = getelementptr i8, ptr %i.l, i64 36
  br label %.split.loop.exit165

.split.loop.exit133:                              ; preds = %bb.x
  %i.ax = getelementptr i8, ptr %i.l, i64 34
  br label %.split.loop.exit165

.split.loop.exit135:                              ; preds = %bb.w
  %i.ay = getelementptr i8, ptr %i.l, i64 32
  br label %.split.loop.exit165

.split.loop.exit137:                              ; preds = %bb.v
  %i.az = getelementptr i8, ptr %i.l, i64 30
  br label %.split.loop.exit165

end_hunk_1
