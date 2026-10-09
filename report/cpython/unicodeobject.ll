Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@unicode_from_format:bb.a
  br i1 %i.oy, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.pt = load ptr, ptr %i.t, align 16
  %i.pu = zext nneg i32 %i.oz to i64
  %i.pv = getelementptr i8, ptr %i.pt, i64 %i.pu
  %i.pw = add nuw nsw i32 %i.oz, 8
  store i32 %i.pw, ptr %3, align 16
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.px = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.py = getelementptr i8, ptr %i.px, i64 8
  store ptr %i.py, ptr %i.s, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.pz = phi ptr [ %i.pv, %bb.fk ], [ %i.px, %bb.fl ]
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !226
  %i.qb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.153, i64 noundef %i.qa) #33
  br label %bb.gq

bb.fn:                                            ; preds = %bb.fa
  br i1 %i.oy, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.qc = load ptr, ptr %i.t, align 16
  %i.qd = zext nneg i32 %i.oz to i64
  %i.qe = getelementptr i8, ptr %i.qc, i64 %i.qd
  %i.qf = add nuw nsw i32 %i.oz, 8
  store i32 %i.qf, ptr %3, align 16
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.qg = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 8
  store ptr %i.qh, ptr %i.s, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.qi = phi ptr [ %i.qe, %bb.fo ], [ %i.qg, %bb.fp ]
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !226
  %i.qk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.154, i64 noundef %i.qj) #33
  br label %bb.gq

bb.fr:                                            ; preds = %bb.fa
  br i1 %i.oy, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.ql = load ptr, ptr %i.t, align 16
  %i.qm = zext nneg i32 %i.oz to i64
  %i.qn = getelementptr i8, ptr %i.ql, i64 %i.qm
  %i.qo = add nuw nsw i32 %i.oz, 8
  store i32 %i.qo, ptr %3, align 16
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.qp = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 8
  store ptr %i.qq, ptr %i.s, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.qr = phi ptr [ %i.qn, %bb.fs ], [ %i.qp, %bb.ft ]
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !226
  %i.qt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.155, i64 noundef %i.qs) #33
  br label %bb.gq

bb.fv:                                            ; preds = %bb.bq, %bb.bn
  %i.qu = phi i1 [ %i.he, %bb.bq ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.qv = phi i32 [ %i.hd, %bb.bq ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.qw = phi i8 [ %i.hc, %bb.bq ], [ %i.gt, %bb.bn ]
  %.5334.i151 = phi ptr [ %.4333.i, %bb.bq ], [ %.5334.i152, %bb.bn ] ; 5 uses
  switch i8 %i.qw, label %bb.gm [
    i8 111, label %bb.fw
    i8 117, label %bb.ga
    i8 120, label %bb.ge
    i8 88, label %bb.gi
  ]

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.qu, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.qx = load ptr, ptr %i.t, align 16
  %i.qy = zext nneg i32 %i.qv to i64
  %i.qz = getelementptr i8, ptr %i.qx, i64 %i.qy
  %i.ra = add nuw nsw i32 %i.qv, 8
  store i32 %i.ra, ptr %3, align 16
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.rb = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 8
  store ptr %i.rc, ptr %i.s, align 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.rd = phi ptr [ %i.qz, %bb.fx ], [ %i.rb, %bb.fy ]
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !43
  %i.rf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.156, i32 noundef %i.re) #33
  br label %bb.gq

bb.ga:                                            ; preds = %bb.fv
  br i1 %i.qu, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.rg = load ptr, ptr %i.t, align 16
  %i.rh = zext nneg i32 %i.qv to i64
  %i.ri = getelementptr i8, ptr %i.rg, i64 %i.rh
  %i.rj = add nuw nsw i32 %i.qv, 8
  store i32 %i.rj, ptr %3, align 16
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.rk = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.rl = getelementptr i8, ptr %i.rk, i64 8
  store ptr %i.rl, ptr %i.s, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.rm = phi ptr [ %i.ri, %bb.gb ], [ %i.rk, %bb.gc ]
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !43
  %i.ro = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.157, i32 noundef %i.rn) #33
  br label %bb.gq

bb.ge:                                            ; preds = %bb.fv
  br i1 %i.qu, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.rp = load ptr, ptr %i.t, align 16
  %i.rq = zext nneg i32 %i.qv to i64
  %i.rr = getelementptr i8, ptr %i.rp, i64 %i.rq
  %i.rs = add nuw nsw i32 %i.qv, 8
  store i32 %i.rs, ptr %3, align 16
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  %i.rt = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rt, i64 8
  store ptr %i.ru, ptr %i.s, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.rv = phi ptr [ %i.rr, %bb.gf ], [ %i.rt, %bb.gg ]
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !43
  %i.rx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.158, i32 noundef %i.rw) #33
  br label %bb.gq

bb.gi:                                            ; preds = %bb.fv
  br i1 %i.qu, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.ry = load ptr, ptr %i.t, align 16
  %i.rz = zext nneg i32 %i.qv to i64
  %i.sa = getelementptr i8, ptr %i.ry, i64 %i.rz
  %i.sb = add nuw nsw i32 %i.qv, 8
  store i32 %i.sb, ptr %3, align 16
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.sc = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 8
  store ptr %i.sd, ptr %i.s, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.se = phi ptr [ %i.sa, %bb.gj ], [ %i.sc, %bb.gk ]
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !43
  %i.sg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.159, i32 noundef %i.sf) #33
  br label %bb.gq

bb.gm:                                            ; preds = %bb.fv
  br i1 %i.qu, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.sh = load ptr, ptr %i.t, align 16
  %i.si = zext nneg i32 %i.qv to i64
  %i.sj = getelementptr i8, ptr %i.sh, i64 %i.si
  %i.sk = add nuw nsw i32 %i.qv, 8
  store i32 %i.sk, ptr %3, align 16
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.sl = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sm = getelementptr i8, ptr %i.sl, i64 8
  store ptr %i.sm, ptr %i.s, align 8
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.sn = phi ptr [ %i.sj, %bb.gn ], [ %i.sl, %bb.go ]
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !43
  %i.sp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.160, i32 noundef %i.so) #33
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.gl, %bb.gh, %bb.gd, %bb.fz, %bb.fu, %bb.fq, %bb.fm, %bb.fi, %bb.fe, %bb.ez, %bb.ev, %bb.er, %bb.en, %bb.ej, %bb.ee, %bb.ea, %bb.dw, %bb.ds, %bb.do, %bb.dj, %bb.df, %bb.db, %bb.cx, %bb.ct, %bb.co, %bb.ck, %bb.cg, %bb.cc, %bb.by
  %.5334.i153 = phi ptr [ %.5334.i151, %bb.gp ], [ %.5334.i151, %bb.gl ], [ %.5334.i151, %bb.gh ], [ %.5334.i151, %bb.gd ], [ %.5334.i151, %bb.fz ], [ %.5334.i147, %bb.fu ], [ %.5334.i147, %bb.fq ], [ %.5334.i147, %bb.fm ], [ %.5334.i147, %bb.fi ], [ %.5334.i147, %bb.fe ], [ %.5334.i148, %bb.ez ], [ %.5334.i148, %bb.ev ], [ %.5334.i148, %bb.er ], [ %.5334.i148, %bb.en ], [ %.5334.i148, %bb.ej ], [ %.5334.i149, %bb.ee ], [ %.5334.i149, %bb.ea ], [ %.5334.i149, %bb.dw ], [ %.5334.i149, %bb.ds ], [ %.5334.i149, %bb.do ], [ %.5334.i146, %bb.dj ], [ %.5334.i146, %bb.df ], [ %.5334.i146, %bb.db ], [ %.5334.i146, %bb.cx ], [ %.5334.i146, %bb.ct ], [ %.5334.i150, %bb.co ], [ %.5334.i150, %bb.ck ], [ %.5334.i150, %bb.cg ], [ %.5334.i150, %bb.cc ], [ %.5334.i150, %bb.by ]
  %.0314.in.i = phi i32 [ %i.sp, %bb.gp ], [ %i.sg, %bb.gl ], [ %i.rx, %bb.gh ], [ %i.ro, %bb.gd ], [ %i.rf, %bb.fz ], [ %i.qt, %bb.fu ], [ %i.qk, %bb.fq ], [ %i.qb, %bb.fm ], [ %i.ps, %bb.fi ], [ %i.pj, %bb.fe ], [ %i.ox, %bb.ez ], [ %i.oo, %bb.ev ], [ %i.of, %bb.er ], [ %i.nw, %bb.en ], [ %i.nn, %bb.ej ], [ %i.nb, %bb.ee ], [ %i.ms, %bb.ea ], [ %i.mj, %bb.dw ], [ %i.ma, %bb.ds ], [ %i.lr, %bb.do ], [ %i.lf, %bb.dj ], [ %i.kw, %bb.df ], [ %i.kn, %bb.db ], [ %i.ke, %bb.cx ], [ %i.jv, %bb.ct ], [ %i.jj, %bb.co ], [ %i.ja, %bb.ck ], [ %i.ir, %bb.cg ], [ %i.ii, %bb.cc ], [ %i.hz, %bb.by ]
  %.0314.i = sext i32 %.0314.in.i to i64
  %i.sq = load i8, ptr %i.a, align 16, !tbaa !237
  %i.sr = icmp eq i8 %i.sq, 45                    ; 4 uses
  %.neg498.i = sext i1 %i.sr to i64
  %i.ss = zext i1 %i.sr to i64                    ; 3 uses
  %i.st = sub nsw i64 %.0314.i, %i.ss             ; 3 uses
  %i.su = call i64 @llvm.smax.i64(i64 %.1306.i, i64 %i.st) ; 2 uses
  %i.sv = add i64 %i.su, %i.ss
  %i.sw = call i64 @llvm.smax.i64(i64 %.2310.i, i64 %i.sv) ; 6 uses
  %i.sx = and i32 %.2313.i, 1
  %.not414.i = icmp eq i32 %i.sx, 0               ; 2 uses
  %i.sy = and i32 %.2313.i, 17
  %or.cond419.i = icmp eq i32 %i.sy, 16
  %i.sz = sub i64 %i.sw, %i.ss
  %.2307.i = select i1 %or.cond419.i, i64 %i.sz, i64 %i.su ; 2 uses
  %.neg481.i = add i64 %i.sw, %.neg498.i
  %i.ta = sub i64 %.neg481.i, %.2307.i            ; 2 uses
  %i.tb = call i64 @llvm.smax.i64(i64 %i.ta, i64 0) ; 4 uses
  %i.tc = sub i64 %.2307.i, %i.st                 ; 2 uses
  %i.td = call i64 @llvm.smax.i64(i64 %i.tc, i64 0) ; 2 uses
  %i.te = load i32, ptr %i.w, align 4, !tbaa !247
  %i.tf = icmp ugt i32 %i.te, 126
  br i1 %i.tf, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.tg = load i64, ptr %i.x, align 8, !tbaa !248
  %i.th = load i64, ptr %i.y, align 8, !tbaa !249
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = icmp sle i64 %i.sw, %i.ti
  %i.tk = icmp eq i64 %i.sw, 0
  %or.cond20.i = or i1 %i.tk, %i.tj
  br i1 %or.cond20.i, label %.critedge421.i, label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %.old19.i = icmp eq i64 %i.sw, 0
  br i1 %.old19.i, label %.critedge421.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.tl = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %i.sw, i32 noundef 127) #33
  %i.tm = icmp eq i32 %i.tl, -1
  br i1 %i.tm, label %.critedge425.i, label %.critedge421.i

.critedge421.i:                                   ; preds = %bb.gt, %bb.gs, %bb.gr
  %.not415.i = icmp slt i64 %i.ta, 1              ; 2 uses
  %.not415.not.i = xor i1 %.not415.i, true
  %or.cond422.i = select i1 %.not415.not.i, i1 %.not414.i, i1 false
  br i1 %or.cond422.i, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %.critedge421.i
  %i.tn = load ptr, ptr %0, align 8, !tbaa !257
  %i.to = load i64, ptr %i.y, align 8, !tbaa !249
  %i.tp = call i64 @PyUnicode_Fill(ptr noundef %i.tn, i64 noundef %i.to, i64 noundef %i.tb, i32 noundef 32)
  %i.tq = icmp eq i64 %i.tp, -1
  br i1 %i.tq, label %.critedge425.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tr = load i64, ptr %i.y, align 8, !tbaa !249
  %i.ts = add i64 %i.tr, %i.tb
  store i64 %i.ts, ptr %i.y, align 8, !tbaa !249
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %.critedge421.i
  br i1 %i.sr, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.tt = call i32 @_PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 45) #33
  %i.tu = icmp eq i32 %i.tt, -1
  br i1 %i.tu, label %.critedge425.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.not417.i = icmp slt i64 %i.tc, 1
  br i1 %.not417.i, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.tv = load ptr, ptr %0, align 8, !tbaa !257
  %i.tw = load i64, ptr %i.y, align 8, !tbaa !249
  %i.tx = call i64 @PyUnicode_Fill(ptr noundef %i.tv, i64 noundef %i.tw, i64 noundef %i.td, i32 noundef 48)
  %i.ty = icmp eq i64 %i.tx, -1
  br i1 %i.ty, label %.critedge425.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.tz = load i64, ptr %i.y, align 8, !tbaa !249
  %i.ua = add i64 %i.tz, %i.td
  store i64 %i.ua, ptr %i.y, align 8, !tbaa !249
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.sr to i64
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.ub = call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 noundef %i.st) #33
  %i.uc = icmp slt i32 %i.ub, 0
  br i1 %i.uc, label %.critedge425.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %or.cond423.i = select i1 %.not415.i, i1 true, i1 %.not414.i
  br i1 %or.cond423.i, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ud = load ptr, ptr %0, align 8, !tbaa !257
  %i.ue = load i64, ptr %i.y, align 8, !tbaa !249
  %i.uf = call i64 @PyUnicode_Fill(ptr noundef %i.ud, i64 noundef %i.ue, i64 noundef %i.tb, i32 noundef 32)
  %i.ug = icmp eq i64 %i.uf, -1
  br i1 %i.ug, label %.critedge425.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.uh = load i64, ptr %i.y, align 8, !tbaa !249
  %i.ui = add i64 %i.uh, %i.tb
  store i64 %i.ui, ptr %i.y, align 8, !tbaa !249
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.kh

bb.hg:                                            ; preds = %.thread189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.uj = load i32, ptr %3, align 16              ; 3 uses
  %i.uk = icmp ult i32 %i.uj, 41
  br i1 %i.uk, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.ul = load ptr, ptr %i.t, align 16
  %i.um = zext nneg i32 %i.uj to i64
  %i.un = getelementptr i8, ptr %i.ul, i64 %i.um
  %i.uo = add nuw nsw i32 %i.uj, 8
  store i32 %i.uo, ptr %3, align 16
  br label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  %i.up = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 8
  store ptr %i.uq, ptr %i.s, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.ur = phi ptr [ %i.un, %bb.hh ], [ %i.up, %bb.hi ]
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !451
  %i.ut = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.161, ptr noundef %i.us) #33
  %i.uu = sext i32 %i.ut to i64                   ; 3 uses
  %i.uv = load i8, ptr %i.u, align 1, !tbaa !237
  switch i8 %i.uv, label %bb.hl [
    i8 88, label %bb.hk
    i8 120, label %bb.hm
  ]

bb.hk:                                            ; preds = %bb.hj
  store i8 120, ptr %i.u, align 1, !tbaa !237
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.uw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #34
  %i.ux = add i64 %i.uw, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.v, ptr nonnull align 16 %i.b, i64 %i.ux, i1 false)
  store i8 48, ptr %i.b, align 16, !tbaa !237
  store i8 120, ptr %i.u, align 1, !tbaa !237
  %i.uy = add nsw i64 %i.uu, 2
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk, %bb.hj
  %.1315.i = phi i64 [ %i.uu, %bb.hk ], [ %i.uy, %bb.hl ], [ %i.uu, %bb.hj ]
  %i.uz = call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %.1315.i) #33
  %i.va = icmp sgt i32 %i.uz, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.va, label %bb.kh, label %.thread56

bb.hn:                                            ; preds = %.thread189
  %i.vb = load i32, ptr %3, align 16              ; 5 uses
  %i.vc = icmp ult i32 %i.vb, 41                  ; 2 uses
  br i1 %.not399.i162, label %bb.hs, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  br i1 %i.vc, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.vd = load ptr, ptr %i.t, align 16
  %i.ve = zext nneg i32 %i.vb to i64
  %i.vf = getelementptr i8, ptr %i.vd, i64 %i.ve
  %i.vg = add nuw nsw i32 %i.vb, 8
  store i32 %i.vg, ptr %3, align 16
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.vh = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.vi = getelementptr i8, ptr %i.vh, i64 8
  store ptr %i.vi, ptr %i.s, align 8
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.vj = phi ptr [ %i.vf, %bb.hp ], [ %i.vh, %bb.hq ]
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !258
  %i.vl = call fastcc i32 @unicode_fromformat_write_wcstr(ptr noundef %0, ptr noundef %i.vk, i64 noundef %.2310.i, i64 noundef %.1306.i, i32 noundef %.2313.i)
  %i.vm = icmp sgt i32 %i.vl, -1
  br i1 %i.vm, label %bb.kh, label %.thread56

bb.hs:                                            ; preds = %bb.hn
  br i1 %i.vc, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.vn = load ptr, ptr %i.t, align 16
  %i.vo = zext nneg i32 %i.vb to i64
  %i.vp = getelementptr i8, ptr %i.vn, i64 %i.vo
  %i.vq = add nuw nsw i32 %i.vb, 8
  store i32 %i.vq, ptr %3, align 16
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %i.vr = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vr, i64 8
  store ptr %i.vs, ptr %i.s, align 8
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.vt = phi ptr [ %i.vp, %bb.ht ], [ %i.vr, %bb.hu ]
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !259
  %i.vv = call fastcc i32 @unicode_fromformat_write_utf8(ptr noundef %0, ptr noundef %i.vu, i64 noundef %.2310.i, i64 noundef %.1306.i, i32 noundef %.2313.i)
  %i.vw = icmp sgt i32 %i.vv, -1
  br i1 %i.vw, label %bb.kh, label %.thread56
end_hunk_0
