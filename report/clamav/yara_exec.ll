Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/yara_exec?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
begin_hunk_0_@yr_execute_code:bb.a
bb.dk:                                            ; preds = %bb.b
  %i.qc = add nsw i32 %.0519, -1                  ; 4 uses
  %i.qd = sext i32 %.0519 to i64
  %i.qe = getelementptr [8 x i8], ptr %i.b, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 -16    ; 4 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !33 ; 3 uses
  %i.qh = icmp eq i64 %i.qg, -1483400188077313
  br i1 %i.qh, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.qi = icmp slt i32 %.0519, 16386
  br i1 %i.qi, label %bb.dm, label %.loopexit634

bb.dm:                                            ; preds = %bb.dl
  store i64 0, ptr %i.qf, align 8, !tbaa !33
  br label %bb.ge

bb.dn:                                            ; preds = %bb.dk
  %i.qj = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.qk = load i32, ptr %0, align 8, !tbaa !31
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.ql
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !72 ; 2 uses
  %.not573.a = icmp eq ptr %i.qn, null
  br i1 %.not573.a, label %.loopexit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qo = sext i32 %i.qc to i64
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.qo
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !33
  %i.qr = inttoptr i64 %i.qq to ptr
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !69
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.qv
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !74 ; 3 uses
  %.not574 = icmp eq ptr %i.qx, null
  br i1 %.not574, label %.loopexit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !76 ; 2 uses
  %.not673 = icmp eq i32 %i.ra, 0
  br i1 %.not673, label %.loopexit, label %.lr.ph661.preheader

.lr.ph661.preheader:                              ; preds = %bb.dp
  %i.rb = zext i32 %i.ra to i64
  br label %.lr.ph661

.lr.ph661:                                        ; preds = %.lr.ph661.preheader, %bb.dr
  %indvars.iv688 = phi i64 [ 0, %.lr.ph661.preheader ], [ %indvars.iv.next689, %bb.dr ] ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv688
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !20
  %i.re = zext i32 %i.rd to i64                   ; 2 uses
  %i.rf = icmp eq i64 %i.qg, %i.re
  br i1 %i.rf, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph661
  %i.rg = icmp slt i32 %.0519, 16386
  br i1 %i.rg, label %bb.ds, label %.loopexit634

bb.dr:                                            ; preds = %.lr.ph661
  %i.rh = icmp sge i64 %i.qg, %i.re
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 2 uses
  %i.ri = icmp samesign ult i64 %indvars.iv.next689, %i.rb
  %or.cond669 = select i1 %i.rh, i1 %i.ri, i1 false
  br i1 %or.cond669, label %.lr.ph661, label %.loopexit

bb.ds:                                            ; preds = %bb.dq
  store i64 1, ptr %i.qf, align 8, !tbaa !33
  br label %bb.ge

.loopexit:                                        ; preds = %bb.dr, %bb.dp, %bb.do, %bb.dn
  %i.rj = icmp slt i32 %.0519, 16386
  br i1 %i.rj, label %bb.dt, label %.loopexit634

bb.dt:                                            ; preds = %.loopexit
  store i64 0, ptr %i.qf, align 8, !tbaa !33
  br label %bb.ge

bb.du:                                            ; preds = %bb.b
  %i.rk = add nsw i32 %.0519, -2                  ; 4 uses
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !33 ; 2 uses
  %i.ro = sext i32 %.0519 to i64
  %i.rp = getelementptr [8 x i8], ptr %i.b, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24    ; 4 uses
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !33 ; 2 uses
  %i.rs = icmp eq i64 %i.rr, -1483400188077313
  %i.rt = icmp eq i64 %i.rn, -1483400188077313
  %or.cond37 = select i1 %i.rs, i1 true, i1 %i.rt
  br i1 %or.cond37, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.ru = icmp slt i32 %.0519, 16387
  br i1 %i.ru, label %bb.dw, label %.loopexit634

bb.dw:                                            ; preds = %bb.dv
  store i64 0, ptr %i.rq, align 8, !tbaa !33
  br label %bb.ge

bb.dx:                                            ; preds = %bb.du
  %i.rv = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.rw = load i32, ptr %0, align 8, !tbaa !31
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.rx
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !72 ; 2 uses
  %.not568.a = icmp eq ptr %i.rz, null
  br i1 %.not568.a, label %.loopexit633.a, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.sa = sext i32 %.0519 to i64
  %i.sb = getelementptr [8 x i8], ptr %i.b, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 -8
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !33
  %i.se = inttoptr i64 %i.sd to ptr
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 40
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !69
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.si
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !74 ; 3 uses
  %.not569.a = icmp eq ptr %i.sk, null
  br i1 %.not569.a, label %.loopexit633.a, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !76 ; 2 uses
  %.not671 = icmp eq i32 %i.sn, 0
  br i1 %.not671, label %.loopexit633.a, label %.lr.ph657.preheader

.lr.ph657.preheader:                              ; preds = %bb.dz
  %i.so = zext i32 %i.sn to i64
  br label %.lr.ph657

.lr.ph657:                                        ; preds = %.lr.ph657.preheader, %bb.eb
  %indvars.iv685 = phi i64 [ 0, %.lr.ph657.preheader ], [ %indvars.iv.next686, %bb.eb ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv685
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !20
  %i.sr = zext i32 %i.sq to i64                   ; 2 uses
  %.not570.a = icmp sgt i64 %i.rr, %i.sr
  %.not571 = icmp slt i64 %i.rn, %i.sr            ; 2 uses
  %or.cond603 = select i1 %.not570.a, i1 true, i1 %.not571
  br i1 %or.cond603, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph657
  %i.ss = icmp slt i32 %.0519, 16387
  br i1 %i.ss, label %bb.ec, label %.loopexit634

bb.eb:                                            ; preds = %.lr.ph657
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %i.st = icmp samesign uge i64 %indvars.iv.next686, %i.so
  %or.cond670.not = select i1 %.not571, i1 true, i1 %i.st
  br i1 %or.cond670.not, label %.loopexit633.a, label %.lr.ph657

bb.ec:                                            ; preds = %bb.ea
  store i64 1, ptr %i.rq, align 8, !tbaa !33
  br label %bb.ge

.loopexit633.a:                                   ; preds = %bb.eb, %bb.dz, %bb.dy, %bb.dx
  %i.su = icmp slt i32 %.0519, 16387
  br i1 %i.su, label %bb.ed, label %.loopexit634

bb.ed:                                            ; preds = %.loopexit633.a
  store i64 0, ptr %i.rq, align 8, !tbaa !33
  br label %bb.ge

bb.ee:                                            ; preds = %bb.b
  %i.sv = icmp slt i32 %.0519, 16385
  br i1 %i.sv, label %bb.ef, label %.loopexit634

bb.ef:                                            ; preds = %bb.ee
  %i.sw = sext i32 %.0519 to i64
  %i.sx = getelementptr [8 x i8], ptr %i.b, i64 %i.sw
  %i.sy = getelementptr i8, ptr %i.sx, i64 -8     ; 2 uses
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !33
  %i.ta = inttoptr i64 %i.sz to ptr
  %i.tb = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.tc = load i32, ptr %0, align 8, !tbaa !31
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.td
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !42
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 40
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !69
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !20
  %i.tl = zext i32 %i.tk to i64
  store i64 %i.tl, ptr %i.sy, align 8, !tbaa !33
  br label %bb.ge

bb.eg:                                            ; preds = %bb.b
  %i.tm = add nsw i32 %.0519, -1                  ; 4 uses
  %i.tn = sext i32 %.0519 to i64
  %i.to = getelementptr [8 x i8], ptr %i.b, i64 %i.tn
  %i.tp = getelementptr i8, ptr %i.to, i64 -16    ; 3 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !33 ; 4 uses
  %i.tr = icmp eq i64 %i.tq, -1483400188077313
  br i1 %i.tr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ts = icmp slt i32 %.0519, 16386
  br i1 %i.ts, label %bb.ge, label %.loopexit634

bb.ei:                                            ; preds = %bb.eg
  %i.tt = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.tu = load i32, ptr %0, align 8, !tbaa !31
  %i.tv = zext i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tv
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !72 ; 2 uses
  %i.ty = icmp ne ptr %i.tx, null
  %i.tz = icmp sgt i64 %i.tq, 0
  %or.cond39 = and i1 %i.tz, %i.ty
  br i1 %or.cond39, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.ua = sext i32 %i.tm to i64
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ua
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !33
  %i.ud = inttoptr i64 %i.uc to ptr
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !69
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.ue, i64 %i.uh
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !74 ; 2 uses
  %.not565 = icmp eq ptr %i.uj, null
  br i1 %.not565, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !76
  %i.um = zext i32 %i.ul to i64
  %.not566 = icmp samesign ugt i64 %i.tq, %i.um
  br i1 %.not566, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.un = icmp slt i32 %.0519, 16386
  br i1 %i.un, label %bb.em, label %.loopexit634

bb.em:                                            ; preds = %bb.el
  %i.uo = getelementptr [4 x i8], ptr %i.uk, i64 %i.tq
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !20
  %i.uq = zext i32 %i.up to i64
  store i64 %i.uq, ptr %i.tp, align 8, !tbaa !33
  br label %bb.ge

bb.en:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %i.ur = icmp slt i32 %.0519, 16386
  br i1 %i.ur, label %bb.eo, label %.loopexit634

bb.eo:                                            ; preds = %bb.en
  store i64 -1483400188077313, ptr %i.tp, align 8, !tbaa !33
  br label %bb.ge

bb.ep:                                            ; preds = %.lr.ph, %bb.ep
  %indvars.iv = phi i64 [ %.pn644, %.lr.ph ], [ %indvars.iv.next, %bb.ep ] ; 2 uses
  %.1525651 = phi i64 [ %.1525646, %.lr.ph ], [ %.1525, %bb.ep ]
  %.0510649 = phi i32 [ 0, %.lr.ph ], [ %i.uz, %bb.ep ] ; 2 uses
  %.3648 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.ep ]
  %i.us = inttoptr i64 %.1525651 to ptr
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !69
  %i.uv = zext i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !20
  %.not564 = icmp ne i32 %i.ux, -2
  %i.uy = zext i1 %.not564 to i32
  %spec.select = add nuw nsw i32 %.3648, %i.uy    ; 3 uses
  %i.uz = add nuw nsw i32 %.0510649, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %.1525.in = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %.1525 = load i64, ptr %.1525.in, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq i64 %.1525, -1483400188077313
  br i1 %.not, label %._crit_edge.loopexit, label %bb.ep

._crit_edge.loopexit:                             ; preds = %bb.ep
  %i.va = trunc nsw i64 %indvars.iv to i32
  %i.vb = trunc nsw i64 %indvars.iv.next to i32
  %5 = icmp samesign ugt i32 %spec.select, %.0510649
  %i.vc = zext nneg i32 %spec.select to i64
  %i.vd = zext i1 %5 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.5.in.lcssa = phi i32 [ %.0519, %.preheader ], [ %i.va, %._crit_edge.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ 0, %.preheader ], [ %i.vc, %._crit_edge.loopexit ]
  %.0510.lcssa = phi i64 [ 1, %.preheader ], [ %i.vd, %._crit_edge.loopexit ]
  %.5.lcssa = phi i32 [ %.5643, %.preheader ], [ %i.vb, %._crit_edge.loopexit ] ; 2 uses
  %i.ve = sext i32 %.5.in.lcssa to i64
  %i.vf = getelementptr [8 x i8], ptr %i.b, i64 %i.ve
  %i.vg = getelementptr i8, ptr %i.vf, i64 -16    ; 3 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !33 ; 2 uses
  %.not561 = icmp eq i64 %i.vh, -1483400188077313
  %i.vi = icmp slt i32 %.5.in.lcssa, 16386        ; 2 uses
  br i1 %.not561, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %._crit_edge
  br i1 %i.vi, label %bb.er, label %.loopexit634

bb.er:                                            ; preds = %bb.eq
  %.not563 = icmp sle i64 %i.vh, %.3.lcssa
  %i.vj = zext i1 %.not563 to i64
  store i64 %i.vj, ptr %i.vg, align 8, !tbaa !33
  br label %bb.ge

bb.es:                                            ; preds = %._crit_edge
  br i1 %i.vi, label %bb.et, label %.loopexit634

bb.et:                                            ; preds = %bb.es
  store i64 %.0510.lcssa, ptr %i.vg, align 8, !tbaa !33
  br label %bb.ge

bb.eu:                                            ; preds = %bb.b
  %i.vk = icmp slt i32 %.0519, 16384
  br i1 %i.vk, label %bb.ev, label %.loopexit634

bb.ev:                                            ; preds = %bb.eu
  %i.vl = load i64, ptr %2, align 8, !tbaa !78
  %i.vm = add nsw i32 %.0519, 1
  %i.vn = sext i32 %.0519 to i64
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.vn
  store i64 %i.vl, ptr %i.vo, align 8, !tbaa !33
  br label %bb.ge

bb.ew:                                            ; preds = %bb.b
  %i.vp = icmp slt i32 %.0519, 16384
  br i1 %i.vp, label %bb.ex, label %.loopexit634

bb.ex:                                            ; preds = %bb.ew
  %i.vq = load i64, ptr %i.j, align 8, !tbaa !79
  %i.vr = add nsw i32 %.0519, 1
  %i.vs = sext i32 %.0519 to i64
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.vs
  store i64 %i.vq, ptr %i.vt, align 8, !tbaa !33
  br label %bb.ge

bb.ey:                                            ; preds = %bb.b
  %i.vu = icmp slt i32 %.0519, 16385
  br i1 %i.vu, label %bb.ez, label %.loopexit634

bb.ez:                                            ; preds = %bb.ey
  %i.vv = sext i32 %.0519 to i64
  %i.vw = getelementptr [8 x i8], ptr %i.b, i64 %i.vv
  %i.vx = getelementptr i8, ptr %i.vw, i64 -8     ; 2 uses
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !33 ; 2 uses
  %i.vz = load ptr, ptr %i.i, align 8, !tbaa !80  ; 3 uses
  %i.wa = add i64 %i.vy, 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 88
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !15
  %.not.i = icmp ult i64 %i.wa, %i.wc
  br i1 %.not.i, label %bb.fa, label %read_int8_t.exit

bb.fa:                                            ; preds = %bb.ez
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 104
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !16
  %i.wf = call ptr %i.we(ptr noundef nonnull %i.vz, i64 noundef %i.vy, i64 noundef 1, i32 noundef 0) #7, !inline_history !21 ; 2 uses
  %.not7.i = icmp eq ptr %i.wf, null
  br i1 %.not7.i, label %read_int8_t.exit, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !17
  %i.wh = sext i8 %i.wg to i64
  br label %read_int8_t.exit

read_int8_t.exit:                                 ; preds = %bb.ez, %bb.fa, %bb.fb
  %.0.i = phi i64 [ -1483400188077313, %bb.ez ], [ %i.wh, %bb.fb ], [ -1483400188077313, %bb.fa ]
  store i64 %.0.i, ptr %i.vx, align 8, !tbaa !33
  br label %bb.ge

bb.fc:                                            ; preds = %bb.b
  %i.wi = icmp slt i32 %.0519, 16385
  br i1 %i.wi, label %bb.fd, label %.loopexit634

bb.fd:                                            ; preds = %bb.fc
  %i.wj = sext i32 %.0519 to i64
  %i.wk = getelementptr [8 x i8], ptr %i.b, i64 %i.wj
  %i.wl = getelementptr i8, ptr %i.wk, i64 -8     ; 2 uses
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !33 ; 2 uses
  %i.wn = load ptr, ptr %i.i, align 8, !tbaa !80  ; 3 uses
  %i.wo = add i64 %i.wm, 2
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 88
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !15
  %.not.i605 = icmp ult i64 %i.wo, %i.wq
  br i1 %.not.i605, label %bb.fe, label %read_int16_t.exit

bb.fe:                                            ; preds = %bb.fd
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 104
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !16
  %i.wt = call ptr %i.ws(ptr noundef nonnull %i.wn, i64 noundef %i.wm, i64 noundef 2, i32 noundef 0) #7, !inline_history !22 ; 2 uses
  %.not7.i607 = icmp eq ptr %i.wt, null
  br i1 %.not7.i607, label %read_int16_t.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !19
  %i.wv = sext i16 %i.wu to i64
  br label %read_int16_t.exit

read_int16_t.exit:                                ; preds = %bb.fd, %bb.fe, %bb.ff
  %.0.i606 = phi i64 [ -1483400188077313, %bb.fd ], [ %i.wv, %bb.ff ], [ -1483400188077313, %bb.fe ]
  store i64 %.0.i606, ptr %i.wl, align 8, !tbaa !33
  br label %bb.ge

bb.fg:                                            ; preds = %bb.b
  %i.ww = icmp slt i32 %.0519, 16385
  br i1 %i.ww, label %bb.fh, label %.loopexit634

bb.fh:                                            ; preds = %bb.fg
  %i.wx = sext i32 %.0519 to i64
  %i.wy = getelementptr [8 x i8], ptr %i.b, i64 %i.wx
  %i.wz = getelementptr i8, ptr %i.wy, i64 -8     ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !33 ; 2 uses
  %i.xb = load ptr, ptr %i.i, align 8, !tbaa !80  ; 3 uses
  %i.xc = add i64 %i.xa, 4
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 88
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !15
  %.not.i608 = icmp ult i64 %i.xc, %i.xe
  br i1 %.not.i608, label %bb.fi, label %read_int32_t.exit

bb.fi:                                            ; preds = %bb.fh
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 104
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !16
  %i.xh = call ptr %i.xg(ptr noundef nonnull %i.xb, i64 noundef %i.xa, i64 noundef 4, i32 noundef 0) #7, !inline_history !23 ; 2 uses
  %.not7.i610 = icmp eq ptr %i.xh, null
  br i1 %.not7.i610, label %read_int32_t.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !20
  %i.xj = sext i32 %i.xi to i64
  br label %read_int32_t.exit

read_int32_t.exit:                                ; preds = %bb.fh, %bb.fi, %bb.fj
  %.0.i609 = phi i64 [ -1483400188077313, %bb.fh ], [ %i.xj, %bb.fj ], [ -1483400188077313, %bb.fi ]
  store i64 %.0.i609, ptr %i.wz, align 8, !tbaa !33
  br label %bb.ge

bb.fk:                                            ; preds = %bb.b
  %i.xk = icmp slt i32 %.0519, 16385
  br i1 %i.xk, label %bb.fl, label %.loopexit634

bb.fl:                                            ; preds = %bb.fk
  %i.xl = sext i32 %.0519 to i64
  %i.xm = getelementptr [8 x i8], ptr %i.b, i64 %i.xl
  %i.xn = getelementptr i8, ptr %i.xm, i64 -8     ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !33 ; 2 uses
  %i.xp = load ptr, ptr %i.i, align 8, !tbaa !80  ; 3 uses
  %i.xq = add i64 %i.xo, 1
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 88
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !15
  %.not.i611 = icmp ult i64 %i.xq, %i.xs
  br i1 %.not.i611, label %bb.fm, label %read_uint8_t.exit

bb.fm:                                            ; preds = %bb.fl
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 104
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !16
  %i.xv = call ptr %i.xu(ptr noundef nonnull %i.xp, i64 noundef %i.xo, i64 noundef 1, i32 noundef 0) #7, !inline_history !24 ; 2 uses
  %.not7.i613 = icmp eq ptr %i.xv, null
  br i1 %.not7.i613, label %read_uint8_t.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !17
  %i.xx = zext i8 %i.xw to i64
  br label %read_uint8_t.exit

read_uint8_t.exit:                                ; preds = %bb.fl, %bb.fm, %bb.fn
  %.0.i612 = phi i64 [ -1483400188077313, %bb.fl ], [ %i.xx, %bb.fn ], [ -1483400188077313, %bb.fm ]
  store i64 %.0.i612, ptr %i.xn, align 8, !tbaa !33
  br label %bb.ge

bb.fo:                                            ; preds = %bb.b
  %i.xy = icmp slt i32 %.0519, 16385
  br i1 %i.xy, label %bb.fp, label %.loopexit634

bb.fp:                                            ; preds = %bb.fo
  %i.xz = sext i32 %.0519 to i64
  %i.ya = getelementptr [8 x i8], ptr %i.b, i64 %i.xz
  %i.yb = getelementptr i8, ptr %i.ya, i64 -8     ; 2 uses
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !33 ; 2 uses
  %i.yd = load ptr, ptr %i.i, align 8, !tbaa !80  ; 3 uses
  %i.ye = add i64 %i.yc, 2
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 88
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !15
end_hunk_0
