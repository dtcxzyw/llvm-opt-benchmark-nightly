Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z06?download=true
begin_hunk_0_@Reduce:bb.a
  store ptr %i.nx, ptr %i.oa, align 8, !tbaa !8
  store ptr %i.nx, ptr %i.nz, align 8, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store ptr %i.nx, ptr %i.ob, align 8, !tbaa !8
  store ptr %i.nx, ptr %i.nx, align 8, !tbaa !8
  %i.oc = load i32, ptr @otop, align 4, !tbaa !4  ; 2 uses
  %i.od = add nsw i32 %i.oc, -1
  store i32 %i.od, ptr @otop, align 4, !tbaa !4
  %i.oe = sext i32 %i.oc to i64
  %i.of = getelementptr inbounds [8 x i8], ptr @obj_stack, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !13 ; 6 uses
  %i.oh = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.oi = zext i8 %i.oh to i32                    ; 2 uses
  store i32 %i.oi, ptr @zz_size, align 4, !tbaa !4
  %i.oj = zext i8 %i.oh to i64
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.oj ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !13 ; 4 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.on = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.oo = tail call ptr @GetMemory(i32 noundef %i.oi, ptr noundef %i.on) #6
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  store ptr %i.ol, ptr @zz_hold, align 8, !tbaa !13
  %i.op = load ptr, ptr %i.ol, align 8, !tbaa !8
  store ptr %i.op, ptr %i.ok, align 8, !tbaa !13
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.oq = phi ptr [ %i.oo, %bb.bv ], [ %i.ol, %bb.bw ] ; 12 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  store i8 0, ptr %i.or, align 8, !tbaa !8
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store ptr %i.oq, ptr %i.os, align 8, !tbaa !8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store ptr %i.oq, ptr %i.ot, align 8, !tbaa !8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store ptr %i.oq, ptr %i.ou, align 8, !tbaa !8
  store ptr %i.oq, ptr %i.oq, align 8, !tbaa !8
  store ptr %i.oq, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.oq, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.nx, ptr @zz_hold, align 8, !tbaa !13
  %i.ov = load ptr, ptr %i.nx, align 8, !tbaa !8
  store ptr %i.ov, ptr @zz_tmp, align 8, !tbaa !13
  %i.ow = load ptr, ptr %i.oq, align 8, !tbaa !8
  store ptr %i.ow, ptr %i.nx, align 8, !tbaa !8
  %i.ox = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.oy = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store ptr %i.ox, ptr %i.pa, align 8, !tbaa !8
  %i.pb = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.pb, ptr %i.oy, align 8, !tbaa !8
  %i.pc = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !8
  %i.pe = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 4 uses
  store ptr %i.pe, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.og, ptr @zz_hold, align 8, !tbaa !13
  %i.pf = icmp eq ptr %i.og, null
  %i.pg = icmp eq ptr %i.pe, null
  %or.cond27 = select i1 %i.pf, i1 true, i1 %i.pg
  br i1 %or.cond27, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ph = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !8  ; 3 uses
  store ptr %i.pi, ptr @zz_tmp, align 8, !tbaa !13
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !8  ; 2 uses
  store ptr %i.pk, ptr %i.ph, align 8, !tbaa !8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  store ptr %i.og, ptr %i.pl, align 8, !tbaa !8
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  store ptr %i.pe, ptr %i.pm, align 8, !tbaa !8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.pn = getelementptr inbounds nuw i8, ptr %i.og, i64 34
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nx, i64 34
  store i16 %i.po, ptr %i.pp, align 2, !tbaa !8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.og, i64 36 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4
  %i.ps = and i32 %i.pr, 1048575                  ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.nx, i64 36 ; 3 uses
  %i.pu = load i32, ptr %i.pt, align 4
  %i.pv = and i32 %i.pu, -1048576
  %i.pw = or disjoint i32 %i.pv, %i.ps
  store i32 %i.pw, ptr %i.pt, align 4
  %i.px = load i32, ptr %i.pq, align 4
  %i.py = and i32 %i.px, -1048576
  %i.pz = or disjoint i32 %i.py, %i.ps
  store i32 %i.pz, ptr %i.pt, align 4
  %i.qa = load ptr, ptr %i.nj, align 8, !tbaa !8
  %i.qb = tail call ptr @ChildSym(ptr noundef %i.qa, i32 noundef 146) #6
  %i.qc = getelementptr inbounds nuw i8, ptr %i.nx, i64 80
  store ptr %i.qb, ptr %i.qc, align 8, !tbaa !8
  %i.qd = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.qe = zext i8 %i.qd to i32                    ; 2 uses
  store i32 %i.qe, ptr @zz_size, align 4, !tbaa !4
  %i.qf = zext i8 %i.qd to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.qf ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !13 ; 4 uses
  %i.qi = icmp eq ptr %i.qh, null
  br i1 %i.qi, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.qj = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.qk = tail call ptr @GetMemory(i32 noundef %i.qe, ptr noundef %i.qj) #6
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  store ptr %i.qh, ptr @zz_hold, align 8, !tbaa !13
  %i.ql = load ptr, ptr %i.qh, align 8, !tbaa !8
  store ptr %i.ql, ptr %i.qg, align 8, !tbaa !13
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.qm = phi ptr [ %i.qk, %bb.ca ], [ %i.qh, %bb.cb ] ; 12 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  store i8 0, ptr %i.qn, align 8, !tbaa !8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  store ptr %i.qm, ptr %i.qo, align 8, !tbaa !8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store ptr %i.qm, ptr %i.qp, align 8, !tbaa !8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store ptr %i.qm, ptr %i.qq, align 8, !tbaa !8
  store ptr %i.qm, ptr %i.qm, align 8, !tbaa !8
  store ptr %i.qm, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.qm, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.e, ptr @zz_hold, align 8, !tbaa !13
  %i.qr = load ptr, ptr %i.e, align 8, !tbaa !8
  store ptr %i.qr, ptr @zz_tmp, align 8, !tbaa !13
  %i.qs = load ptr, ptr %i.qm, align 8, !tbaa !8
  store ptr %i.qs, ptr %i.e, align 8, !tbaa !8
  %i.qt = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.qu = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store ptr %i.qt, ptr %i.qw, align 8, !tbaa !8
  %i.qx = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.qx, ptr %i.qu, align 8, !tbaa !8
  %i.qy = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !8
  %i.ra = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 4 uses
  store ptr %i.ra, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.nx, ptr @zz_hold, align 8, !tbaa !13
  %i.rb = icmp eq ptr %i.ra, null
  br i1 %i.rb, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rc = load ptr, ptr %i.nz, align 8, !tbaa !8  ; 3 uses
  store ptr %i.rc, ptr @zz_tmp, align 8, !tbaa !13
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 16 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !8  ; 2 uses
  store ptr %i.re, ptr %i.nz, align 8, !tbaa !8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  store ptr %i.nx, ptr %i.rf, align 8, !tbaa !8
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  store ptr %i.ra, ptr %i.rg, align 8, !tbaa !8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %bb.bq
  %i.rh = load ptr, ptr %i.nj, align 8, !tbaa !8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 41
  %i.rj = load i16, ptr %i.ri, align 1
  %i.rk = and i16 %i.rj, 4
  %.not243 = icmp eq i16 %i.rk, 0
  br i1 %.not243, label %bb.ct, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rl = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 10), align 1, !tbaa !8 ; 2 uses
  %i.rm = zext i8 %i.rl to i32                    ; 2 uses
  store i32 %i.rm, ptr @zz_size, align 4, !tbaa !4
  %i.rn = zext i8 %i.rl to i64
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.rn ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !13 ; 4 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.rr = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.rs = tail call ptr @GetMemory(i32 noundef %i.rm, ptr noundef %i.rr) #6 ; 2 uses
  store ptr %i.rs, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  store ptr %i.rp, ptr @zz_hold, align 8, !tbaa !13
  %i.rt = load ptr, ptr %i.rp, align 8, !tbaa !8
  store ptr %i.rt, ptr %i.ro, align 8, !tbaa !13
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.ru = phi ptr [ %i.rs, %bb.cg ], [ %i.rp, %bb.ch ] ; 16 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  store i8 10, ptr %i.rv, align 8, !tbaa !8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  store ptr %i.ru, ptr %i.rx, align 8, !tbaa !8
  store ptr %i.ru, ptr %i.rw, align 8, !tbaa !8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store ptr %i.ru, ptr %i.ry, align 8, !tbaa !8
  store ptr %i.ru, ptr %i.ru, align 8, !tbaa !8
  %i.rz = load i32, ptr @otop, align 4, !tbaa !4  ; 2 uses
  %i.sa = add nsw i32 %i.rz, -1
  store i32 %i.sa, ptr @otop, align 4, !tbaa !4
  %i.sb = sext i32 %i.rz to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr @obj_stack, i64 %i.sb
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !13 ; 6 uses
  %i.se = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.sf = zext i8 %i.se to i32                    ; 2 uses
  store i32 %i.sf, ptr @zz_size, align 4, !tbaa !4
  %i.sg = zext i8 %i.se to i64
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.sg ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !13 ; 4 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sk = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.sl = tail call ptr @GetMemory(i32 noundef %i.sf, ptr noundef %i.sk) #6
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  store ptr %i.si, ptr @zz_hold, align 8, !tbaa !13
  %i.sm = load ptr, ptr %i.si, align 8, !tbaa !8
  store ptr %i.sm, ptr %i.sh, align 8, !tbaa !13
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %i.sn = phi ptr [ %i.sl, %bb.cj ], [ %i.si, %bb.ck ] ; 12 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  store i8 0, ptr %i.so, align 8, !tbaa !8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  store ptr %i.sn, ptr %i.sp, align 8, !tbaa !8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  store ptr %i.sn, ptr %i.sq, align 8, !tbaa !8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  store ptr %i.sn, ptr %i.sr, align 8, !tbaa !8
  store ptr %i.sn, ptr %i.sn, align 8, !tbaa !8
  store ptr %i.sn, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.sn, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.ru, ptr @zz_hold, align 8, !tbaa !13
  %i.ss = load ptr, ptr %i.ru, align 8, !tbaa !8
  store ptr %i.ss, ptr @zz_tmp, align 8, !tbaa !13
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !8
  store ptr %i.st, ptr %i.ru, align 8, !tbaa !8
  %i.su = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.sv = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store ptr %i.su, ptr %i.sx, align 8, !tbaa !8
  %i.sy = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.sy, ptr %i.sv, align 8, !tbaa !8
  %i.sz = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store ptr %i.sz, ptr %i.ta, align 8, !tbaa !8
  %i.tb = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 4 uses
  store ptr %i.tb, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.sd, ptr @zz_hold, align 8, !tbaa !13
  %i.tc = icmp eq ptr %i.sd, null
  %i.td = icmp eq ptr %i.tb, null
  %or.cond35 = select i1 %i.tc, i1 true, i1 %i.td
  br i1 %or.cond35, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.te = getelementptr inbounds nuw i8, ptr %i.sd, i64 16 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !8  ; 3 uses
  store ptr %i.tf, ptr @zz_tmp, align 8, !tbaa !13
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 16 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !8  ; 2 uses
  store ptr %i.th, ptr %i.te, align 8, !tbaa !8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  store ptr %i.sd, ptr %i.ti, align 8, !tbaa !8
  store ptr %i.tf, ptr %i.tg, align 8, !tbaa !8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  store ptr %i.tb, ptr %i.tj, align 8, !tbaa !8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sd, i64 34
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ru, i64 34
  store i16 %i.tl, ptr %i.tm, align 2, !tbaa !8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sd, i64 36 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4
  %i.tp = and i32 %i.to, 1048575                  ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ru, i64 36 ; 3 uses
  %i.tr = load i32, ptr %i.tq, align 4
  %i.ts = and i32 %i.tr, -1048576
  %i.tt = or disjoint i32 %i.ts, %i.tp
  store i32 %i.tt, ptr %i.tq, align 4
  %i.tu = load i32, ptr %i.tn, align 4
  %i.tv = and i32 %i.tu, -1048576
  %i.tw = or disjoint i32 %i.tv, %i.tp
  store i32 %i.tw, ptr %i.tq, align 4
  %i.tx = load ptr, ptr %i.nj, align 8, !tbaa !8
  %i.ty = tail call ptr @ChildSym(ptr noundef %i.tx, i32 noundef 144) #6
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ru, i64 80
  store ptr %i.ty, ptr %i.tz, align 8, !tbaa !8
  %i.ua = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.ub = zext i8 %i.ua to i32                    ; 2 uses
  store i32 %i.ub, ptr @zz_size, align 4, !tbaa !4
  %i.uc = zext i8 %i.ua to i64
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.uc ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !13 ; 4 uses
  %i.uf = icmp eq ptr %i.ue, null
  br i1 %i.uf, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ug = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.uh = tail call ptr @GetMemory(i32 noundef %i.ub, ptr noundef %i.ug) #6
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store ptr %i.ue, ptr @zz_hold, align 8, !tbaa !13
  %i.ui = load ptr, ptr %i.ue, align 8, !tbaa !8
  store ptr %i.ui, ptr %i.ud, align 8, !tbaa !13
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.uj = phi ptr [ %i.uh, %bb.co ], [ %i.ue, %bb.cp ] ; 13 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 32
  store i8 0, ptr %i.uk, align 8, !tbaa !8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  store ptr %i.uj, ptr %i.ul, align 8, !tbaa !8
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store ptr %i.uj, ptr %i.um, align 8, !tbaa !8
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store ptr %i.uj, ptr %i.un, align 8, !tbaa !8
  store ptr %i.uj, ptr %i.uj, align 8, !tbaa !8
  store ptr %i.uj, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.uj, ptr @zz_res, align 8, !tbaa !13
  %i.uo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !8  ; 4 uses
  store ptr %i.up, ptr @zz_hold, align 8, !tbaa !13
  %i.uq = icmp eq ptr %i.up, null
  br i1 %i.uq, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ur = load ptr, ptr %i.up, align 8, !tbaa !8
  store ptr %i.ur, ptr @zz_tmp, align 8, !tbaa !13
  %i.us = load ptr, ptr %i.uj, align 8, !tbaa !8
  store ptr %i.us, ptr %i.up, align 8, !tbaa !8
  %i.ut = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.uu = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store ptr %i.ut, ptr %i.uw, align 8, !tbaa !8
  %i.ux = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.ux, ptr %i.uu, align 8, !tbaa !8
  %i.uy = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  store ptr %i.uy, ptr %i.uz, align 8, !tbaa !8
  %.pre267 = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 3 uses
  store ptr %.pre267, ptr @zz_res, align 8, !tbaa !13
  %i.va = icmp eq ptr %.pre267, null
  br i1 %i.va, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.vb = phi ptr [ %.pre267, %bb.cr ], [ %i.uj, %bb.cq ] ; 2 uses
  %i.vc = load ptr, ptr %i.rw, align 8, !tbaa !8  ; 3 uses
  store ptr %i.vc, ptr @zz_tmp, align 8, !tbaa !13
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 16 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !8  ; 2 uses
  store ptr %i.ve, ptr %i.rw, align 8, !tbaa !8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  store ptr %i.ru, ptr %i.vf, align 8, !tbaa !8
  store ptr %i.vc, ptr %i.vd, align 8, !tbaa !8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  store ptr %i.vb, ptr %i.vg, align 8, !tbaa !8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs, %bb.ce
  store ptr %i.e, ptr @zz_hold, align 8, !tbaa !13
  %i.vh = load i32, ptr @otop, align 4, !tbaa !4  ; 3 uses
  %i.vi = add nsw i32 %i.vh, 1                    ; 2 uses
  store i32 %i.vi, ptr @otop, align 4, !tbaa !4
  %i.vj = icmp slt i32 %i.vh, 99
  br i1 %i.vj, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.vk = sext i32 %i.vi to i64
  %i.vl = getelementptr inbounds [8 x i8], ptr @obj_stack, i64 %i.vk
  store ptr %i.e, ptr %i.vl, align 8, !tbaa !13
  br label %bb.fr

bb.cv:                                            ; preds = %bb.ct
  %i.vm = zext nneg i32 %i.vh to i64
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr @obj_stack, i64 %i.vm
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !13
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 32
  %i.vq = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.vp) #6 ; 0 uses
  br label %bb.fr

bb.cw:                                            ; preds = %bb.a
  %i.vr = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.60) #6 ; 0 uses
  store ptr %i.e, ptr @zz_hold, align 8, !tbaa !13
  %i.vs = load i8, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %.off253 = add i8 %i.vs, -11
  %switch254 = icmp ult i8 %.off253, 2
  %i.vt = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %i.vu = zext i8 %i.vs to i64
  %i.vv = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.vu
  %.in241.in = select i1 %switch254, ptr %i.vt, ptr %i.vv
  %.in241 = load i8, ptr %.in241.in, align 1, !tbaa !8 ; 2 uses
  %i.vw = zext i8 %.in241 to i32
  store i32 %i.vw, ptr @zz_size, align 4, !tbaa !4
  %i.vx = zext i8 %.in241 to i64
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.vx
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !13
  store ptr %i.vz, ptr %i.e, align 8, !tbaa !8
  %i.wa = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.wb = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.wc
  store ptr %i.wa, ptr %i.wd, align 8, !tbaa !13
  br label %bb.fr

bb.cx:                                            ; preds = %bb.a
  %i.we = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.wf = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %i.we, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.33) #6 ; 0 uses
  br label %bb.fr

bb.cy:                                            ; preds = %bb.a
  %i.wg = sext i32 %i.b to i64
  %i.wh = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.wg
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !13 ; 4 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 32 ; 2 uses
  %i.wk = load i8, ptr %i.wj, align 8, !tbaa !8
  switch i8 %i.wk, label %bb.dd [
    i8 102, label %bb.cz
    i8 104, label %bb.da
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.wl = add nsw i32 %i.a, -2
  store i32 %i.wl, ptr @ttop, align 4, !tbaa !4
  store ptr %i.wi, ptr @zz_hold, align 8, !tbaa !13
  %.in239 = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 102), align 1, !tbaa !8 ; 2 uses
  %i.wm = zext i8 %.in239 to i32
  store i32 %i.wm, ptr @zz_size, align 4, !tbaa !4
  %i.wn = zext i8 %.in239 to i64
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.wn
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !13
  store ptr %i.wp, ptr %i.wi, align 8, !tbaa !8
  %i.wq = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.wr = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.ws
  store ptr %i.wq, ptr %i.wt, align 8, !tbaa !13
  br label %bb.de

bb.da:                                            ; preds = %bb.cy
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wi, i64 34
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !8
  %.not238 = icmp eq i16 %i.wv, 0
  br i1 %.not238, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ww = tail call ptr @EchoFilePos(ptr noundef nonnull %i.wj) #6
  %i.wx = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.17, ptr noundef %i.ww, ptr noundef nonnull @.str.33) #6 ; 0 uses
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  %i.wy = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 6, ptr noundef nonnull @.str.63, i32 noundef 1, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.60) #6 ; 0 uses
  br label %bb.de

bb.dd:                                            ; preds = %bb.cy
  %i.wz = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.xa = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %i.wz, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #6 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.cz
  store ptr %i.e, ptr @zz_hold, align 8, !tbaa !13
  %i.xb = load i8, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %.off257 = add i8 %i.xb, -11
  %switch258 = icmp ult i8 %.off257, 2
  %i.xc = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %i.xd = zext i8 %i.xb to i64
  %i.xe = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.xd
  %.in240.in = select i1 %switch258, ptr %i.xc, ptr %i.xe
  %.in240 = load i8, ptr %.in240.in, align 1, !tbaa !8 ; 2 uses
  %i.xf = zext i8 %.in240 to i32
  store i32 %i.xf, ptr @zz_size, align 4, !tbaa !4
  %i.xg = zext i8 %.in240 to i64
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.xg
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !13
  store ptr %i.xi, ptr %i.e, align 8, !tbaa !8
  %i.xj = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.xk = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.xl
  store ptr %i.xj, ptr %i.xm, align 8, !tbaa !13
  br label %bb.fr

bb.df:                                            ; preds = %bb.a
  %i.xn = sext i32 %i.b to i64
  %i.xo = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.xn
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !13 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 32
  %i.xr = load i8, ptr %i.xq, align 8, !tbaa !8
  %.not234 = icmp eq i8 %i.xr, 104
  br i1 %.not234, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.xs = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.xt = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef %i.xs, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.35) #6 ; 0 uses
  br label %bb.dq

bb.dh:                                            ; preds = %bb.df
  %i.xu = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !8  ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xp, i64 80
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !8  ; 4 uses
  %.not235 = icmp eq ptr %i.xv, %i.xx
  br i1 %.not235, label %bb.dp, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.xy = load ptr, ptr @StartSym, align 8, !tbaa !13
  %i.xz = icmp eq ptr %i.xv, %i.xy
  br i1 %i.xz, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ya = tail call ptr @SymName(ptr noundef %i.xx) #6
  %i.yb = load i32, ptr @ttop, align 4, !tbaa !4
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.yc
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !13
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 32
  %i.yg = tail call ptr @EchoFilePos(ptr noundef nonnull %i.yf) #6
  %i.yh = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.64, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.35, ptr noundef %i.ya, ptr noundef nonnull @.str.33, ptr noundef %i.yg) #6 ; 0 uses
  br label %bb.dp

bb.dk:                                            ; preds = %bb.di
  %i.yi = icmp eq ptr %i.xv, null
  br i1 %i.yi, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.yj = icmp eq ptr %i.xx, null
  br i1 %i.yj, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.yk = tail call ptr @SymName(ptr noundef nonnull %i.xx) #6
  %.pre = load i32, ptr @ttop, align 4, !tbaa !4
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert265 = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %.phi.trans.insert
  %.pre266 = load ptr, ptr %.phi.trans.insert265, align 8, !tbaa !13
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %i.yl = phi ptr [ %.pre266, %bb.dm ], [ %i.xp, %bb.dl ]
  %i.ym = phi ptr [ %i.yk, %bb.dm ], [ @.str.66, %bb.dl ]
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 32
  %i.yo = tail call ptr @EchoFilePos(ptr noundef nonnull %i.yn) #6
  %i.yp = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.65, i32 noundef 2, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, ptr noundef %i.ym, ptr noundef nonnull @.str.33, ptr noundef %i.yo) #6 ; 0 uses
  br label %bb.dp

bb.do:                                            ; preds = %bb.dk
  %i.yq = tail call ptr @SymName(ptr noundef nonnull %i.xv) #6
  %i.yr = load i32, ptr @ttop, align 4, !tbaa !4
end_hunk_0
