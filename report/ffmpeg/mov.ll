Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_build_index:bb.a
  %i.od = mul i64 %.0421.lcssa, %i.oc
  %i.oe = udiv i64 %i.od, %i.ny
  %i.of = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  store i64 %i.oe, ptr %i.og, align 8, !tbaa !238
  br label %bb.dx

bb.cs:                                            ; preds = %bb.ao
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !162 ; 2 uses
  %.not514 = icmp eq i32 %i.oi, 0
  br i1 %.not514, label %.critedge535, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !402
  %.not515 = icmp eq i32 %i.ok, 0
  br i1 %.not515, label %.preheader590, label %.critedge535

.preheader590:                                    ; preds = %bb.ct
  %i.ol = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !164 ; 3 uses
  %.not722 = icmp eq i32 %i.om, 0
  br i1 %.not722, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader590
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !166 ; 2 uses
  %i.op = add i32 %i.om, -1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.or = zext i32 %i.op to i64                   ; 2 uses
  %wide.trip.count771 = zext i32 %i.om to i64
  %.pre.pre = load i32, ptr %i.oq, align 4, !tbaa !107 ; 6 uses
  %.not522 = icmp eq i32 %.pre.pre, 0
  %i.os = icmp ugt i32 %.pre.pre, 159
  %i.ot = icmp samesign ugt i32 %.pre.pre, 1
  %.rhs.trunc = trunc nuw nsw i32 %.pre.pre to i16
  %.neg588 = add i32 %i.oi, 1
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph, %bb.df
  %indvars.iv768 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next769.pre-phi, %bb.df ] ; 5 uses
  %.0374666 = phi i32 [ 0, %.lr.ph ], [ %i.pq, %bb.df ]
  %i.ou = getelementptr inbounds nuw [12 x i8], ptr %i.oo, i64 %indvars.iv768 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !355 ; 4 uses
  %.not521 = icmp eq i64 %indvars.iv768, %i.or
  br i1 %.not521, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %.not522, label %.thread838, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ox = urem i32 %i.ow, %.pre.pre
  %.not523 = icmp eq i32 %i.ox, 0
  br i1 %.not523, label %bb.cx, label %bb.de

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  br i1 %i.os, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.oy = udiv i32 %i.ow, %.pre.pre
  br label %bb.db

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.ot, label %bb.da, label %.thread838

bb.da:                                            ; preds = %bb.cz
  %i.oz = urem i16 1024, %.rhs.trunc
  %narrow585 = sub nuw nsw i16 1024, %i.oz
  %i.pa = zext nneg i16 %narrow585 to i32         ; 2 uses
  %i.pb = add i32 %i.ow, -1
  %i.pc = add i32 %i.pb, %i.pa
  %i.pd = udiv i32 %i.pc, %i.pa
  br label %bb.db

.thread838:                                       ; preds = %bb.cv, %bb.cz
  %i.pe = add i32 %i.ow, 1023
  %i.pf = lshr i32 %i.pe, 10
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.thread838, %bb.cy
  %.0373 = phi i32 [ %i.oy, %bb.cy ], [ %i.pd, %bb.da ], [ %i.pf, %.thread838 ]
  %.not586 = icmp samesign ult i64 %indvars.iv768, %i.or
  br i1 %.not586, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.pg = add nuw nsw i64 %indvars.iv768, 1       ; 2 uses
  %i.ph = getelementptr inbounds nuw [12 x i8], ptr %i.oo, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !168
  %i.pj = load i32, ptr %i.ou, align 4, !tbaa !168
  %i.pk = sub nsw i32 %i.pi, %i.pj
  br label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.pl = load i32, ptr %i.ou, align 4, !tbaa !168
  %i.pm = sub i32 %.neg588, %i.pl
  %.pre = add nuw nsw i64 %indvars.iv768, 1
  br label %bb.df

bb.de:                                            ; preds = %bb.cw
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.po, i32 noundef 16, ptr noundef nonnull @.str.175) #16
  br label %.critedge535

bb.df:                                            ; preds = %bb.dc, %bb.dd
  %indvars.iv.next769.pre-phi = phi i64 [ %i.pg, %bb.dc ], [ %.pre, %bb.dd ] ; 2 uses
  %.0372 = phi i32 [ %i.pk, %bb.dc ], [ %i.pm, %bb.dd ]
  %i.pp = mul i32 %.0372, %.0373
  %i.pq = add i32 %i.pp, %.0374666                ; 2 uses
  %exitcond772.not = icmp eq i64 %indvars.iv.next769.pre-phi, %wide.trip.count771
  br i1 %exitcond772.not, label %._crit_edge, label %bb.cu, !llvm.loop !764

._crit_edge:                                      ; preds = %bb.df, %.preheader590
  %.0374.lcssa = phi i32 [ 0, %.preheader590 ], [ %i.pq, %bb.df ] ; 6 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ps, i32 noundef 56, ptr noundef nonnull @.str.176, i32 noundef %.0374.lcssa) #16
  %i.pt = zext i32 %.0374.lcssa to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 5 uses
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !208 ; 2 uses
  %i.pw = sext i32 %i.pv to i64
  %i.px = sub nsw i64 178956970, %i.pw
  %.not516 = icmp ugt i64 %i.px, %i.pt
  br i1 %.not516, label %bb.dg, label %.critedge535

bb.dg:                                            ; preds = %._crit_edge
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.pz = add i32 %i.pv, %.0374.lcssa
  %i.qa = zext i32 %i.pz to i64
  %i.qb = tail call i32 @av_reallocp_array(ptr noundef nonnull %i.py, i64 noundef %i.qa, i64 noundef 24) #16
  %i.qc = icmp slt i32 %i.qb, 0
  br i1 %i.qc, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.pu, align 8, !tbaa !208
  br label %.critedge535

bb.di:                                            ; preds = %bb.dg
  %i.qd = load i32, ptr %i.pu, align 8, !tbaa !208
  %i.qe = add i32 %i.qd, %.0374.lcssa
  %i.qf = mul i32 %i.qe, 24
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 332
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !268
  %i.qh = load i32, ptr %i.oh, align 4, !tbaa !162 ; 2 uses
  %.not723 = icmp eq i32 %i.qh, 0
  br i1 %.not723, label %._crit_edge680, label %.lr.ph679

.lr.ph679:                                        ; preds = %bb.di
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.qk = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph679, %._crit_edge673
  %i.qo = phi i32 [ %i.qh, %.lr.ph679 ], [ %i.so, %._crit_edge673 ]
  %indvars.iv773 = phi i64 [ 0, %.lr.ph679 ], [ %indvars.iv.next774, %._crit_edge673 ] ; 4 uses
  %.2441676 = phi i32 [ 0, %.lr.ph679 ], [ %.3442, %._crit_edge673 ] ; 4 uses
  %.6454675 = phi i64 [ %.1449, %.lr.ph679 ], [ %.7.lcssa, %._crit_edge673 ] ; 2 uses
  %i.qp = load ptr, ptr %i.qi, align 8, !tbaa !170
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %indvars.iv773
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !171
  %i.qs = load i32, ptr %i.ol, align 8, !tbaa !164
  %i.qt = add i32 %i.qs, -1
  %.not584 = icmp ult i32 %.2441676, %i.qt
  %.pre789 = load ptr, ptr %i.qj, align 8, !tbaa !166 ; 2 uses
  br i1 %.not584, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.qu = add nuw nsw i64 %indvars.iv773, 1
  %i.qv = add nuw i32 %.2441676, 1                ; 2 uses
  %i.qw = zext i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [12 x i8], ptr %.pre789, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !168
  %i.qz = zext i32 %i.qy to i64
  %i.ra = icmp eq i64 %i.qu, %i.qz
  %spec.select536 = select i1 %i.ra, i32 %i.qv, i32 %.2441676
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.3442 = phi i32 [ %.2441676, %bb.dj ], [ %spec.select536, %bb.dk ] ; 2 uses
  %i.rb = zext i32 %.3442 to i64
  %i.rc = getelementptr inbounds nuw [12 x i8], ptr %.pre789, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !355 ; 2 uses
  %.not518667 = icmp eq i32 %i.re, 0
  br i1 %.not518667, label %._crit_edge673, label %.lr.ph672.preheader

.lr.ph672.preheader:                              ; preds = %bb.dl
  %i.rf = trunc nuw i64 %indvars.iv773 to i32
  br label %.lr.ph672

.lr.ph672:                                        ; preds = %.lr.ph672.preheader, %bb.dw
  %.0375670 = phi i32 [ %i.sn, %bb.dw ], [ %i.re, %.lr.ph672.preheader ] ; 3 uses
  %.2404669 = phi i64 [ %i.sl, %bb.dw ], [ %i.qr, %.lr.ph672.preheader ] ; 3 uses
  %.7668 = phi i64 [ %i.sm, %bb.dw ], [ %.6454675, %.lr.ph672.preheader ] ; 4 uses
  %i.rg = load i32, ptr %i.qk, align 4, !tbaa !107 ; 6 uses
  %i.rh = icmp ugt i32 %i.rg, 1
  br i1 %i.rh, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %.lr.ph672
  %i.ri = load i32, ptr %i.qm, align 8, !tbaa !106 ; 3 uses
  %.not519 = icmp eq i32 %i.ri, 0
  br i1 %.not519, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.rj = load ptr, ptr %i.pr, align 8, !tbaa !36
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.rj, ptr noundef nonnull @.str.177, i32 noundef %i.rg) #16
  br label %.critedge535

bb.do:                                            ; preds = %bb.dm
  %i.rk = icmp ugt i32 %i.rg, 159
  br i1 %i.rk, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.rhs.trunc580 = trunc nuw nsw i32 %i.rg to i16
  %i.rl = urem i16 1024, %.rhs.trunc580
  %narrow = sub nuw nsw i16 1024, %i.rl
  %i.rm = zext nneg i16 %narrow to i32
  %.0375. = tail call i32 @llvm.umin.i32(i32 %.0375670, i32 %i.rm) ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %.0375. to i16
  %.lhs.trunc.a = trunc nuw i32 %i.rg to i16
  %i.rn = udiv i16 %.lhs.trunc, %.lhs.trunc.a
  %.zext583 = zext nneg i16 %i.rn to i32
  %i.ro = mul i32 %i.ri, %.zext583
  br label %bb.dr

bb.dq:                                            ; preds = %.lr.ph672
  %i.rp = tail call i32 @llvm.umin.i32(i32 %.0375670, i32 1024) ; 2 uses
  %i.rq = load i32, ptr %i.ql, align 4, !tbaa !121
  %i.rr = mul i32 %i.rq, %i.rp
  br label %bb.dr

bb.dr:                                            ; preds = %bb.do, %bb.dp, %bb.dq
  %.0371 = phi i32 [ %i.rr, %bb.dq ], [ %i.ro, %bb.dp ], [ %i.ri, %bb.do ] ; 5 uses
  %.0 = phi i32 [ %i.rp, %bb.dq ], [ %.0375., %bb.dp ], [ %i.rg, %bb.do ] ; 3 uses
  %i.rs = load i32, ptr %i.pu, align 8, !tbaa !208 ; 3 uses
  %.not520 = icmp ult i32 %i.rs, %.0374.lcssa
  br i1 %.not520, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rt = load ptr, ptr %i.pr, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.rt, i32 noundef 16, ptr noundef nonnull @.str.178, i32 noundef %.0374.lcssa) #16
  br label %.critedge535

bb.dt:                                            ; preds = %bb.dr
  %i.ru = icmp ugt i32 %.0371, 1073741823
  br i1 %i.ru, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.rv = load ptr, ptr %i.pr, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.rv, i32 noundef 16, ptr noundef nonnull @.str.173, i32 noundef %.0371) #16
  br label %.critedge535

bb.dv:                                            ; preds = %bb.dt
  %i.rw = load ptr, ptr %i.py, align 8, !tbaa !209
  %i.rx = add nuw nsw i32 %i.rs, 1
  store i32 %i.rx, ptr %i.pu, align 8, !tbaa !208
  %i.ry = sext i32 %i.rs to i64
  %i.rz = getelementptr inbounds [24 x i8], ptr %i.rw, i64 %i.ry ; 4 uses
  store i64 %.2404669, ptr %i.rz, align 8, !tbaa !211
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i64 %.7668, ptr %i.sa, align 8, !tbaa !213
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sc = shl nuw i32 %.0371, 2
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 20
  store i32 0, ptr %i.sd, align 4, !tbaa !411
  %i.se = or disjoint i32 %i.sc, 1
  store i32 %i.se, ptr %i.sb, align 8
  %i.sf = load ptr, ptr %i.pr, align 8, !tbaa !36
  %i.sg = load i32, ptr %i.qn, align 8, !tbaa !161
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sf, i32 noundef 56, ptr noundef nonnull @.str.179, i32 noundef %i.sg, i32 noundef %i.rf, i64 noundef %.2404669, i64 noundef %.7668, i32 noundef %.0371, i32 noundef %.0) #16
  %i.sh = zext i32 %.0 to i64                     ; 2 uses
  %i.si = xor i64 %i.sh, 9223372036854775807
  %i.sj = icmp sgt i64 %.7668, %i.si
  br i1 %i.sj, label %.critedge535, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sk = zext nneg i32 %.0371 to i64
  %i.sl = add nsw i64 %.2404669, %i.sk
  %i.sm = add nsw i64 %.7668, %i.sh               ; 2 uses
  %i.sn = sub i32 %.0375670, %.0                  ; 2 uses
  %.not518 = icmp eq i32 %i.sn, 0
  br i1 %.not518, label %._crit_edge673.loopexit, label %.lr.ph672, !llvm.loop !765

._crit_edge673.loopexit:                          ; preds = %bb.dw
  %.pre790 = load i32, ptr %i.oh, align 4, !tbaa !162
  br label %._crit_edge673

._crit_edge673:                                   ; preds = %._crit_edge673.loopexit, %bb.dl
  %i.so = phi i32 [ %i.qo, %bb.dl ], [ %.pre790, %._crit_edge673.loopexit ] ; 2 uses
  %.7.lcssa = phi i64 [ %.6454675, %bb.dl ], [ %i.sm, %._crit_edge673.loopexit ]
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1 ; 2 uses
  %i.sp = zext i32 %i.so to i64
  %i.sq = icmp samesign ult i64 %indvars.iv.next774, %i.sp
  br i1 %i.sq, label %bb.dj, label %._crit_edge680, !llvm.loop !766

._crit_edge680:                                   ; preds = %._crit_edge673, %bb.di
  %.val544 = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.sr = tail call fastcc i32 @mov_merge_tts_data(ptr %.val544, i32 noundef 1)
  %i.ss = icmp sgt i32 %i.sr, -1
  br i1 %i.ss, label %bb.dx, label %.critedge535

bb.dx:                                            ; preds = %bb.cr, %._crit_edge720, %._crit_edge680
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.su = load i32, ptr %i.st, align 8, !tbaa !334
  %.not525 = icmp eq i32 %i.su, 0
  br i1 %.not525, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !385
  %.not526 = icmp eq i32 %i.sw, 0
  br i1 %.not526, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call fastcc void @mov_fix_index(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !453
  %i.sz = icmp eq i64 %i.sy, -9223372036854775808
  br i1 %i.sz, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.ta = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !89
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.te = load i32, ptr %i.td, align 8, !tbaa !208
  %i.tf = icmp sgt i32 %i.te, 0
  br i1 %i.tf, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !209
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !213
  %i.tk = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !326
  %i.tm = sext i32 %i.tl to i64
  %i.tn = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.tj, i64 %i.tm) ; 2 uses
  %i.to = extractvalue { i64, i1 } %i.tn, 1
  %i.tp = extractvalue { i64, i1 } %i.tn, 0       ; 2 uses
  %i.tq = icmp slt i64 %i.tp, 0
  %i.tr = select i1 %i.tq, i64 9223372036854775807, i64 -9223372036854775808
  %i.ts = select i1 %i.to, i64 %i.tr, i64 %i.tp   ; 2 uses
  store i64 %i.ts, ptr %i.sx, align 8, !tbaa !453
  %i.tt = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !403 ; 2 uses
  %.not527 = icmp eq ptr %i.tu, null
  br i1 %.not527, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !413
  %i.tx = sext i32 %i.tw to i64
  %i.ty = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ts, i64 %i.tx) ; 2 uses
  %i.tz = extractvalue { i64, i1 } %i.ty, 1
  %i.ua = extractvalue { i64, i1 } %i.ty, 0       ; 2 uses
  %i.ub = icmp slt i64 %i.ua, 0
  %i.uc = select i1 %i.ub, i64 9223372036854775807, i64 -9223372036854775808
  %i.ud = select i1 %i.tz, i64 %i.uc, i64 %i.ua
  store i64 %i.ud, ptr %i.sx, align 8, !tbaa !453
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ee, %bb.ec, %bb.eb, %bb.ea
  tail call fastcc void @mov_estimate_video_delay(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %.critedge535

.critedge535:                                     ; preds = %bb.d, %bb.j, %.thread3.i, %._crit_edge36.i, %bb.dv, %.thread, %bb.dn, %bb.du, %bb.ds, %bb.bp, %bb.cg, %bb.cn, %.critedge.i, %.critedge115.i, %bb.de, %._crit_edge, %bb.cs, %bb.dh, %bb.ct, %bb.bd, %bb.ax, %bb.ay, %bb.bc, %bb.ba, %bb.az, %._crit_edge680, %bb.ef
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 1) i32 @mov_open_dref(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 7 uses
  %i.d = alloca [256 x i8], align 16              ; 7 uses
  %i.e = alloca [256 x i8], align 16              ; 7 uses
  %i.f = alloca [256 x i8], align 16              ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca [1025 x i8], align 16             ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.k = load i16, ptr %i.j, align 4, !tbaa !331  ; 2 uses
  %i.l = icmp sgt i16 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 118 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !330  ; 2 uses
  %i.o = icmp sgt i16 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.p = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #18 ; 2 uses
  %.not66 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.058 = select i1 %.not66, ptr %2, ptr %i.q     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !332  ; 3 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #18
  %i.u = trunc i64 %i.t to i32
  %i.v = zext nneg i16 %i.k to i32
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  %.05581 = add i32 %i.u, -1                      ; 3 uses
  %i.x = icmp sgt i32 %.05581, -1
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.y = zext nneg i32 %.05581 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
end_hunk_0
