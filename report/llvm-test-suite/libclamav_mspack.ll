Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_mspack?download=true
inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 49
begin_hunk_0_@lzx_decompress:bb.a
  %.sroa.12.9.insert.shift = shl nuw nsw i32 %.sroa.12.9.insert.ext, 8
  %.sroa.12.9.insert.insert = or disjoint i32 %.sroa.12.9.insert.shift, %.sroa.12.8.insert.ext
  %i.pk = icmp eq ptr %i.pi, %.25.9
  br i1 %i.pk, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.pl = tail call fastcc i32 @lzx_read_input(ptr noundef %0)
  %.not1188.10 = icmp eq i32 %i.pl, 0
  br i1 %.not1188.10, label %bb.ev, label %bb.dq

bb.ev:                                            ; preds = %bb.eu
  %i.pm = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.pn = load ptr, ptr %i.ab, align 8, !tbaa !61
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.et
  %.26967.10 = phi ptr [ %i.pm, %bb.ev ], [ %i.pi, %bb.et ] ; 2 uses
  %.25.10 = phi ptr [ %i.pn, %bb.ev ], [ %.25.9, %bb.et ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.26967.10, i64 1 ; 2 uses
  %i.pp = load i8, ptr %.26967.10, align 1, !tbaa !29
  %.sroa.12.10.insert.ext = zext i8 %i.pp to i32
  %.sroa.12.10.insert.shift = shl nuw nsw i32 %.sroa.12.10.insert.ext, 16
  %.sroa.12.10.insert.insert = or disjoint i32 %.sroa.12.9.insert.insert, %.sroa.12.10.insert.shift
  %i.pq = icmp eq ptr %i.po, %.25.10
  br i1 %i.pq, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.pr = tail call fastcc i32 @lzx_read_input(ptr noundef %0)
  %.not1188.11 = icmp eq i32 %i.pr, 0
  br i1 %.not1188.11, label %bb.ey, label %bb.dq

bb.ey:                                            ; preds = %bb.ex
  %i.ps = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.pt = load ptr, ptr %i.ab, align 8, !tbaa !61
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ew
  %.26967.11 = phi ptr [ %i.ps, %bb.ey ], [ %i.po, %bb.ew ] ; 2 uses
  %.25.11 = phi ptr [ %i.pt, %bb.ey ], [ %.25.10, %bb.ew ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.26967.11, i64 1
  %i.pv = load i8, ptr %.26967.11, align 1, !tbaa !29
  %.sroa.12.11.insert.ext = zext i8 %i.pv to i32
  %.sroa.12.11.insert.shift = shl nuw i32 %.sroa.12.11.insert.ext, 24
  %.sroa.12.11.insert.insert = or disjoint i32 %.sroa.12.10.insert.insert, %.sroa.12.11.insert.shift
  br label %bb.fb

bb.fa:                                            ; preds = %._crit_edge2884
  %i.pw = zext i8 %i.ke to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef %i.pw) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.fb:                                            ; preds = %bb.ez, %bb.dc, %.lr.ph3113
  %.141081 = phi i32 [ %i.mc, %bb.dc ], [ 0, %bb.ez ], [ %.610733104, %.lr.ph3113 ] ; 6 uses
  %.141044 = phi i32 [ %i.md, %bb.dc ], [ 0, %bb.ez ], [ %.610363105, %.lr.ph3113 ] ; 6 uses
  %.27968 = phi ptr [ %i.ma, %bb.dc ], [ %i.pu, %bb.ez ], [ %.99503106, %.lr.ph3113 ] ; 6 uses
  %.26 = phi ptr [ %i.mb, %bb.dc ], [ %.25.11, %bb.ez ], [ %.99393107, %.lr.ph3113 ] ; 6 uses
  %.2879 = phi i32 [ %.18783110, %bb.dc ], [ %.sroa.0.3.insert.insert, %bb.ez ], [ %.18783110, %.lr.ph3113 ] ; 6 uses
  %.2869 = phi i32 [ %.18683111, %bb.dc ], [ %.sroa.7.7.insert.insert, %bb.ez ], [ %.18683111, %.lr.ph3113 ] ; 6 uses
  %.2 = phi i32 [ %.13112, %bb.dc ], [ %.sroa.12.11.insert.insert, %bb.ez ], [ %.13112, %.lr.ph3113 ] ; 6 uses
  %i.px = load i32, ptr %i.bc, align 4, !tbaa !71 ; 5 uses
  %spec.select1237 = tail call i32 @llvm.smin.i32(i32 %i.px, i32 %.09273108) ; 9 uses
  %i.py = sub nsw i32 %.09273108, %spec.select1237 ; 2 uses
  %i.pz = sub i32 %i.px, %spec.select1237
  store i32 %i.pz, ptr %i.bc, align 4, !tbaa !71
  %i.qa = load i8, ptr %i.be, align 1, !tbaa !72
  switch i8 %i.qa, label %bb.mo [
    i8 1, label %.preheader1355
    i8 2, label %.preheader1357
    i8 3, label %bb.mc
  ]

.preheader1357:                                   ; preds = %bb.fb
  %i.qb = icmp sgt i32 %i.px, 0
  br i1 %i.qb, label %.preheader1351, label %.loopexit1356

.preheader1355:                                   ; preds = %bb.fb
  %i.qc = icmp sgt i32 %i.px, 0
  br i1 %i.qc, label %.preheader1334, label %.loopexit1356

.preheader1334:                                   ; preds = %.preheader1355, %bb.ie
  %.33093 = phi i32 [ %.5, %bb.ie ], [ %.2, %.preheader1355 ] ; 4 uses
  %.38703092 = phi i32 [ %.5872, %bb.ie ], [ %.2869, %.preheader1355 ] ; 6 uses
  %.38803091 = phi i32 [ %.5882, %bb.ie ], [ %.2879, %.preheader1355 ] ; 6 uses
  %.28893090 = phi i32 [ %.3890, %bb.ie ], [ %.18883109, %.preheader1355 ] ; 6 uses
  %.19203089 = phi i32 [ %.2921, %bb.ie ], [ %spec.select1237, %.preheader1355 ] ; 2 uses
  %.273088 = phi ptr [ %.36, %bb.ie ], [ %.26, %.preheader1355 ] ; 2 uses
  %.289693087 = phi ptr [ %.37978, %bb.ie ], [ %.27968, %.preheader1355 ] ; 2 uses
  %.1510453086 = phi i32 [ %.211051, %bb.ie ], [ %.141044, %.preheader1355 ] ; 3 uses
  %.1510823085 = phi i32 [ %.211088, %bb.ie ], [ %.141081, %.preheader1355 ] ; 2 uses
  %i.qd = icmp slt i32 %.1510453086, 16
  br i1 %i.qd, label %.lr.ph3042, label %._crit_edge3043

.lr.ph3042:                                       ; preds = %.preheader1334, %bb.fl
  %.283041 = phi ptr [ %.29, %bb.fl ], [ %.273088, %.preheader1334 ] ; 2 uses
  %.299703040 = phi ptr [ %i.rc, %bb.fl ], [ %.289693087, %.preheader1334 ] ; 2 uses
  %.1610463039 = phi i32 [ %i.rb, %bb.fl ], [ %.1510453086, %.preheader1334 ] ; 3 uses
  %.1610833038 = phi i32 [ %i.ra, %bb.fl ], [ %.1510823085, %.preheader1334 ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.299703040, i64 1
  %.not1225 = icmp ult ptr %i.qe, %.283041
  br i1 %.not1225, label %bb.fl, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph3042
  %i.qf = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1275 = icmp eq ptr %i.qf, null
  %i.qg = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.qh = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1275, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.qi = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.qj = tail call i32 %i.qf(ptr noundef %i.qi, ptr noundef %i.qg, i32 noundef %i.qh) #11, !inline_history !73
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.qk = load i32, ptr %0, align 8, !tbaa !42
  %i.ql = tail call i32 @cli_readn(i32 noundef %i.qk, ptr noundef %i.qg, i32 noundef %i.qh) #11
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.qm = phi i32 [ %i.qj, %bb.fd ], [ %i.ql, %bb.fe ] ; 3 uses
  %i.qn = icmp slt i32 %i.qm, 0
  br i1 %i.qn, label %.loopexit1335, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.qo = icmp eq i32 %i.qm, 0
  br i1 %i.qo, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.qp = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1278 = icmp eq i8 %i.qp, 0
  br i1 %.not24.i1278, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1335

bb.fj:                                            ; preds = %bb.fh
  %i.qq = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  store i8 0, ptr %i.qr, align 1, !tbaa !29
  %i.qs = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.qs, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.fk

.loopexit1335:                                    ; preds = %bb.ff, %bb.fi
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.fk:                                            ; preds = %bb.fj, %bb.fg
  %.0.i1276 = phi i32 [ 2, %bb.fj ], [ %i.qm, %bb.fg ]
  %i.qt = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.qt, ptr %i.aa, align 8, !tbaa !62
  %i.qu = zext nneg i32 %.0.i1276 to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qu ; 2 uses
  store ptr %i.qv, ptr %i.ab, align 8, !tbaa !61
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph3042
  %.30971 = phi ptr [ %i.qt, %bb.fk ], [ %.299703040, %.lr.ph3042 ] ; 2 uses
  %.29 = phi ptr [ %i.qv, %bb.fk ], [ %.283041, %.lr.ph3042 ] ; 2 uses
  %i.qw = load i16, ptr %.30971, align 1
  %i.qx = zext i16 %i.qw to i32
  %i.qy = sub i32 16, %.1610463039
  %i.qz = shl i32 %i.qx, %i.qy
  %i.ra = or i32 %i.qz, %.1610833038              ; 2 uses
  %i.rb = add nsw i32 %.1610463039, 16            ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.30971, i64 2 ; 2 uses
  %i.rd = icmp slt i32 %.1610463039, 0
  br i1 %i.rd, label %.lr.ph3042, label %._crit_edge3043, !llvm.loop !146

._crit_edge3043:                                  ; preds = %bb.fl, %.preheader1334
  %.161083.lcssa = phi i32 [ %.1510823085, %.preheader1334 ], [ %i.ra, %bb.fl ] ; 22 uses
  %.161046.lcssa = phi i32 [ %.1510453086, %.preheader1334 ], [ %i.rb, %bb.fl ]
  %.29970.lcssa = phi ptr [ %.289693087, %.preheader1334 ], [ %i.rc, %bb.fl ] ; 4 uses
  %.28.lcssa = phi ptr [ %.273088, %.preheader1334 ], [ %.29, %bb.fl ] ; 4 uses
  %i.re = lshr i32 %.161083.lcssa, 20
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.rf
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !34 ; 3 uses
  %i.ri = icmp ugt i16 %i.rh, 655
  br i1 %i.ri, label %.preheader1332.preheader, label %.loopexit1333

.preheader1332.preheader:                         ; preds = %._crit_edge3043
  %i.rj = shl i16 %i.rh, 1                        ; 2 uses
  %i.rk = icmp ugt i16 %i.rj, 5407
  br i1 %i.rk, label %split3330, label %bb.fn

bb.fm:                                            ; preds = %bb.gg
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

split3330:                                        ; preds = %.preheader1332.19, %.preheader1332.18, %.preheader1332.17, %.preheader1332.16, %.preheader1332.15, %.preheader1332.14, %.preheader1332.13, %.preheader1332.12, %.preheader1332.11, %.preheader1332.10, %.preheader1332.9, %.preheader1332.8, %.preheader1332.7, %.preheader1332.6, %.preheader1332.5, %.preheader1332.4, %.preheader1332.3, %.preheader1332.2, %.preheader1332.1, %.preheader1332.preheader
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.fn:                                            ; preds = %.preheader1332.preheader
  %2 = and i32 %.161083.lcssa, 524288
  %.not1219 = icmp ne i32 %2, 0
  %3 = zext i1 %.not1219 to i16
  %i.rl = or disjoint i16 %i.rj, %3
  %i.rm = zext nneg i16 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.rm
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !34 ; 3 uses
  %i.rp = icmp ugt i16 %i.ro, 655
  br i1 %i.rp, label %.preheader1332.1, label %.loopexit1333

.preheader1332.1:                                 ; preds = %bb.fn
  %i.rq = shl i16 %i.ro, 1                        ; 2 uses
  %i.rr = icmp ugt i16 %i.rq, 5407
  br i1 %i.rr, label %split3330, label %bb.fo

bb.fo:                                            ; preds = %.preheader1332.1
  %i.rs = lshr i32 %.161083.lcssa, 18
  %i.rt = trunc nuw nsw i32 %i.rs to i16
  %i.ru = and i16 %i.rt, 1
  %i.rv = or disjoint i16 %i.rq, %i.ru
  %i.rw = zext nneg i16 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.rw
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !34 ; 3 uses
  %i.rz = icmp ugt i16 %i.ry, 655
  br i1 %i.rz, label %.preheader1332.2, label %.loopexit1333

.preheader1332.2:                                 ; preds = %bb.fo
  %i.sa = shl i16 %i.ry, 1                        ; 2 uses
  %i.sb = icmp ugt i16 %i.sa, 5407
  br i1 %i.sb, label %split3330, label %bb.fp

bb.fp:                                            ; preds = %.preheader1332.2
  %i.sc = lshr i32 %.161083.lcssa, 17
  %i.sd = trunc nuw nsw i32 %i.sc to i16
  %i.se = and i16 %i.sd, 1
  %i.sf = or disjoint i16 %i.sa, %i.se
  %i.sg = zext nneg i16 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.sg
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !34 ; 3 uses
  %i.sj = icmp ugt i16 %i.si, 655
  br i1 %i.sj, label %.preheader1332.3, label %.loopexit1333

.preheader1332.3:                                 ; preds = %bb.fp
  %i.sk = shl i16 %i.si, 1                        ; 2 uses
  %i.sl = icmp ugt i16 %i.sk, 5407
  br i1 %i.sl, label %split3330, label %bb.fq

bb.fq:                                            ; preds = %.preheader1332.3
  %i.sm = lshr i32 %.161083.lcssa, 16
  %i.sn = trunc nuw i32 %i.sm to i16
  %i.so = and i16 %i.sn, 1
  %i.sp = or disjoint i16 %i.sk, %i.so
  %i.sq = zext nneg i16 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.sq
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !34 ; 3 uses
  %i.st = icmp ugt i16 %i.ss, 655
  br i1 %i.st, label %.preheader1332.4, label %.loopexit1333

.preheader1332.4:                                 ; preds = %bb.fq
  %i.su = shl i16 %i.ss, 1                        ; 2 uses
  %i.sv = icmp ugt i16 %i.su, 5407
  br i1 %i.sv, label %split3330, label %bb.fr

bb.fr:                                            ; preds = %.preheader1332.4
  %i.sw = and i32 %.161083.lcssa, 32768
  %.not1219.4 = icmp ne i32 %i.sw, 0
  %i.sx = zext i1 %.not1219.4 to i16
  %i.sy = or disjoint i16 %i.su, %i.sx
  %i.sz = zext nneg i16 %i.sy to i64
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.sz
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !34 ; 3 uses
  %i.tc = icmp ugt i16 %i.tb, 655
  br i1 %i.tc, label %.preheader1332.5, label %.loopexit1333

.preheader1332.5:                                 ; preds = %bb.fr
  %i.td = shl i16 %i.tb, 1                        ; 2 uses
  %i.te = icmp ugt i16 %i.td, 5407
  br i1 %i.te, label %split3330, label %bb.fs

bb.fs:                                            ; preds = %.preheader1332.5
  %i.tf = trunc i32 %.161083.lcssa to i16
  %i.tg = lshr i16 %i.tf, 14
  %i.th = and i16 %i.tg, 1
  %i.ti = or disjoint i16 %i.td, %i.th
  %i.tj = zext nneg i16 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.tj
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !34 ; 3 uses
  %i.tm = icmp ugt i16 %i.tl, 655
  br i1 %i.tm, label %.preheader1332.6, label %.loopexit1333

.preheader1332.6:                                 ; preds = %bb.fs
  %i.tn = shl i16 %i.tl, 1                        ; 2 uses
  %i.to = icmp ugt i16 %i.tn, 5407
  br i1 %i.to, label %split3330, label %bb.ft

bb.ft:                                            ; preds = %.preheader1332.6
  %i.tp = trunc i32 %.161083.lcssa to i16
  %i.tq = lshr i16 %i.tp, 13
  %i.tr = and i16 %i.tq, 1
  %i.ts = or disjoint i16 %i.tn, %i.tr
  %i.tt = zext nneg i16 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.tt
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !34 ; 3 uses
  %i.tw = icmp ugt i16 %i.tv, 655
  br i1 %i.tw, label %.preheader1332.7, label %.loopexit1333

.preheader1332.7:                                 ; preds = %bb.ft
  %i.tx = shl i16 %i.tv, 1                        ; 2 uses
  %i.ty = icmp ugt i16 %i.tx, 5407
  br i1 %i.ty, label %split3330, label %bb.fu

bb.fu:                                            ; preds = %.preheader1332.7
  %i.tz = trunc i32 %.161083.lcssa to i16
  %i.ua = lshr i16 %i.tz, 12
  %i.ub = and i16 %i.ua, 1
  %i.uc = or disjoint i16 %i.tx, %i.ub
  %i.ud = zext nneg i16 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ud
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !34 ; 3 uses
  %i.ug = icmp ugt i16 %i.uf, 655
  br i1 %i.ug, label %.preheader1332.8, label %.loopexit1333

.preheader1332.8:                                 ; preds = %bb.fu
  %i.uh = shl i16 %i.uf, 1                        ; 2 uses
  %i.ui = icmp ugt i16 %i.uh, 5407
  br i1 %i.ui, label %split3330, label %bb.fv

bb.fv:                                            ; preds = %.preheader1332.8
  %i.uj = trunc i32 %.161083.lcssa to i16
  %i.uk = lshr i16 %i.uj, 11
  %i.ul = and i16 %i.uk, 1
  %i.um = or disjoint i16 %i.uh, %i.ul
  %i.un = zext nneg i16 %i.um to i64
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.un
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !34 ; 3 uses
  %i.uq = icmp ugt i16 %i.up, 655
  br i1 %i.uq, label %.preheader1332.9, label %.loopexit1333

.preheader1332.9:                                 ; preds = %bb.fv
  %i.ur = shl i16 %i.up, 1                        ; 2 uses
  %i.us = icmp ugt i16 %i.ur, 5407
  br i1 %i.us, label %split3330, label %bb.fw

bb.fw:                                            ; preds = %.preheader1332.9
  %i.ut = trunc i32 %.161083.lcssa to i16
  %i.uu = lshr i16 %i.ut, 10
  %i.uv = and i16 %i.uu, 1
  %i.uw = or disjoint i16 %i.ur, %i.uv
  %i.ux = zext nneg i16 %i.uw to i64
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ux
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !34 ; 3 uses
  %i.va = icmp ugt i16 %i.uz, 655
  br i1 %i.va, label %.preheader1332.10, label %.loopexit1333

.preheader1332.10:                                ; preds = %bb.fw
  %i.vb = shl i16 %i.uz, 1                        ; 2 uses
  %i.vc = icmp ugt i16 %i.vb, 5407
  br i1 %i.vc, label %split3330, label %bb.fx

bb.fx:                                            ; preds = %.preheader1332.10
  %i.vd = trunc i32 %.161083.lcssa to i16
  %i.ve = lshr i16 %i.vd, 9
  %i.vf = and i16 %i.ve, 1
  %i.vg = or disjoint i16 %i.vb, %i.vf
  %i.vh = zext nneg i16 %i.vg to i64
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.vh
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !34 ; 3 uses
  %i.vk = icmp ugt i16 %i.vj, 655
  br i1 %i.vk, label %.preheader1332.11, label %.loopexit1333

.preheader1332.11:                                ; preds = %bb.fx
  %i.vl = shl i16 %i.vj, 1                        ; 2 uses
  %i.vm = icmp ugt i16 %i.vl, 5407
  br i1 %i.vm, label %split3330, label %bb.fy

bb.fy:                                            ; preds = %.preheader1332.11
  %i.vn = trunc i32 %.161083.lcssa to i16
  %i.vo = lshr i16 %i.vn, 8
  %i.vp = and i16 %i.vo, 1
  %i.vq = or disjoint i16 %i.vl, %i.vp
  %i.vr = zext nneg i16 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.vr
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !34 ; 3 uses
  %i.vu = icmp ugt i16 %i.vt, 655
  br i1 %i.vu, label %.preheader1332.12, label %.loopexit1333

.preheader1332.12:                                ; preds = %bb.fy
  %i.vv = shl i16 %i.vt, 1                        ; 2 uses
  %i.vw = icmp ugt i16 %i.vv, 5407
  br i1 %i.vw, label %split3330, label %bb.fz

bb.fz:                                            ; preds = %.preheader1332.12
  %i.vx = trunc i32 %.161083.lcssa to i16
  %i.vy = lshr i16 %i.vx, 7
  %i.vz = and i16 %i.vy, 1
  %i.wa = or disjoint i16 %i.vv, %i.vz
  %i.wb = zext nneg i16 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.wb
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !34 ; 3 uses
  %i.we = icmp ugt i16 %i.wd, 655
  br i1 %i.we, label %.preheader1332.13, label %.loopexit1333

.preheader1332.13:                                ; preds = %bb.fz
  %i.wf = shl i16 %i.wd, 1                        ; 2 uses
end_hunk_0
begin_hunk_1_@lzx_decompress:bb.a
  %i.xj = shl i16 %i.xh, 1                        ; 2 uses
  %i.xk = icmp ugt i16 %i.xj, 5407
  br i1 %i.xk, label %split3330, label %bb.gd

bb.gd:                                            ; preds = %.preheader1332.16
  %i.xl = trunc i32 %.161083.lcssa to i16
  %i.xm = lshr i16 %i.xl, 3
  %i.xn = and i16 %i.xm, 1
  %i.xo = or disjoint i16 %i.xj, %i.xn
  %i.xp = zext nneg i16 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.xp
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !34 ; 3 uses
  %i.xs = icmp ugt i16 %i.xr, 655
  br i1 %i.xs, label %.preheader1332.17, label %.loopexit1333

.preheader1332.17:                                ; preds = %bb.gd
  %i.xt = shl i16 %i.xr, 1                        ; 2 uses
  %i.xu = icmp ugt i16 %i.xt, 5407
  br i1 %i.xu, label %split3330, label %bb.ge

bb.ge:                                            ; preds = %.preheader1332.17
  %i.xv = trunc i32 %.161083.lcssa to i16
  %i.xw = lshr i16 %i.xv, 2
  %i.xx = and i16 %i.xw, 1
  %i.xy = or disjoint i16 %i.xt, %i.xx
  %i.xz = zext nneg i16 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.xz
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !34 ; 3 uses
  %i.yc = icmp ugt i16 %i.yb, 655
  br i1 %i.yc, label %.preheader1332.18, label %.loopexit1333

.preheader1332.18:                                ; preds = %bb.ge
  %i.yd = shl i16 %i.yb, 1                        ; 2 uses
  %i.ye = icmp ugt i16 %i.yd, 5407
  br i1 %i.ye, label %split3330, label %bb.gf

bb.gf:                                            ; preds = %.preheader1332.18
  %i.yf = trunc i32 %.161083.lcssa to i16
  %i.yg = lshr i16 %i.yf, 1
  %i.yh = and i16 %i.yg, 1
  %i.yi = or disjoint i16 %i.yd, %i.yh
  %i.yj = zext nneg i16 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.yj
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !34 ; 3 uses
  %i.ym = icmp ugt i16 %i.yl, 655
  br i1 %i.ym, label %.preheader1332.19, label %.loopexit1333

.preheader1332.19:                                ; preds = %bb.gf
  %i.yn = shl i16 %i.yl, 1                        ; 2 uses
  %i.yo = icmp ugt i16 %i.yn, 5407
  br i1 %i.yo, label %split3330, label %bb.gg

bb.gg:                                            ; preds = %.preheader1332.19
  %.not1219.19 = trunc i32 %.161083.lcssa to i16
  %i.yp = and i16 %.not1219.19, 1
  %i.yq = or disjoint i16 %i.yn, %i.yp
  %i.yr = zext nneg i16 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.yr
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !34 ; 2 uses
  %i.yu = icmp ugt i16 %i.yt, 655
  br i1 %i.yu, label %bb.fm, label %.loopexit1333

.loopexit1333:                                    ; preds = %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %._crit_edge3043
  %.11002 = phi i16 [ %i.rh, %._crit_edge3043 ], [ %i.ro, %bb.fn ], [ %i.ry, %bb.fo ], [ %i.si, %bb.fp ], [ %i.ss, %bb.fq ], [ %i.tb, %bb.fr ], [ %i.tl, %bb.fs ], [ %i.tv, %bb.ft ], [ %i.uf, %bb.fu ], [ %i.up, %bb.fv ], [ %i.uz, %bb.fw ], [ %i.vj, %bb.fx ], [ %i.vt, %bb.fy ], [ %i.wd, %bb.fz ], [ %i.wn, %bb.ga ], [ %i.wx, %bb.gb ], [ %i.xh, %bb.gc ], [ %i.xr, %bb.gd ], [ %i.yb, %bb.ge ], [ %i.yl, %bb.gf ], [ %i.yt, %bb.gg ] ; 4 uses
  %i.yv = zext nneg i16 %.11002 to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.yv
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !29
  %i.yy = zext i8 %i.yx to i32                    ; 2 uses
  %i.yz = shl i32 %.161083.lcssa, %i.yy           ; 4 uses
  %i.za = sub nsw i32 %.161046.lcssa, %i.yy       ; 5 uses
  %i.zb = icmp samesign ult i16 %.11002, 256
  br i1 %i.zb, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.loopexit1333
  %i.zc = trunc nuw i16 %.11002 to i8
  %i.zd = add i32 %.28893090, 1
  %i.ze = zext i32 %.28893090 to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ze
  store i8 %i.zc, ptr %i.zf, align 1, !tbaa !29
  %i.zg = add nsw i32 %.19203089, -1
  br label %bb.ie

bb.gi:                                            ; preds = %.loopexit1333
  %i.zh = zext nneg i16 %.11002 to i32            ; 2 uses
  %i.zi = add nsw i32 %i.zh, -256
  %i.zj = and i32 %i.zh, 7                        ; 2 uses
  %i.zk = icmp eq i32 %i.zj, 7
  br i1 %i.zk, label %.preheader1330, label %bb.ho

.preheader1330:                                   ; preds = %bb.gi
  %i.zl = icmp slt i32 %i.za, 16
  br i1 %i.zl, label %.lr.ph3052, label %._crit_edge3053

.lr.ph3052:                                       ; preds = %.preheader1330, %bb.gs
  %.303051 = phi ptr [ %.31, %bb.gs ], [ %.28.lcssa, %.preheader1330 ] ; 2 uses
  %.319723050 = phi ptr [ %i.aak, %bb.gs ], [ %.29970.lcssa, %.preheader1330 ] ; 2 uses
  %.1710473049 = phi i32 [ %i.aaj, %bb.gs ], [ %i.za, %.preheader1330 ] ; 3 uses
  %.1710843048 = phi i32 [ %i.aai, %bb.gs ], [ %i.yz, %.preheader1330 ]
  %i.zm = getelementptr inbounds nuw i8, ptr %.319723050, i64 1
  %.not1223 = icmp ult ptr %i.zm, %.303051
  br i1 %.not1223, label %bb.gs, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph3052
  %i.zn = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1280 = icmp eq ptr %i.zn, null
  %i.zo = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.zp = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1280, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.zq = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.zr = tail call i32 %i.zn(ptr noundef %i.zq, ptr noundef %i.zo, i32 noundef %i.zp) #11, !inline_history !73
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.zs = load i32, ptr %0, align 8, !tbaa !42
  %i.zt = tail call i32 @cli_readn(i32 noundef %i.zs, ptr noundef %i.zo, i32 noundef %i.zp) #11
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.zu = phi i32 [ %i.zr, %bb.gk ], [ %i.zt, %bb.gl ] ; 3 uses
  %i.zv = icmp slt i32 %i.zu, 0
  br i1 %i.zv, label %.loopexit1331, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.zw = icmp eq i32 %i.zu, 0
  br i1 %i.zw, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.zx = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1283 = icmp eq i8 %i.zx, 0
  br i1 %.not24.i1283, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1331

bb.gq:                                            ; preds = %bb.go
  %i.zy = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 1
  store i8 0, ptr %i.zz, align 1, !tbaa !29
  %i.aaa = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.aaa, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.gr

.loopexit1331:                                    ; preds = %bb.gm, %bb.gp
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.gr:                                            ; preds = %bb.gq, %bb.gn
  %.0.i1281 = phi i32 [ 2, %bb.gq ], [ %i.zu, %bb.gn ]
  %i.aab = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.aab, ptr %i.aa, align 8, !tbaa !62
  %i.aac = zext nneg i32 %.0.i1281 to i64
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aac ; 2 uses
  store ptr %i.aad, ptr %i.ab, align 8, !tbaa !61
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %.lr.ph3052
  %.32973 = phi ptr [ %i.aab, %bb.gr ], [ %.319723050, %.lr.ph3052 ] ; 2 uses
  %.31 = phi ptr [ %i.aad, %bb.gr ], [ %.303051, %.lr.ph3052 ] ; 2 uses
  %i.aae = load i16, ptr %.32973, align 1
  %i.aaf = zext i16 %i.aae to i32
  %i.aag = sub i32 16, %.1710473049
  %i.aah = shl i32 %i.aaf, %i.aag
  %i.aai = or i32 %i.aah, %.1710843048            ; 2 uses
  %i.aaj = add nsw i32 %.1710473049, 16           ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.32973, i64 2 ; 2 uses
  %i.aal = icmp slt i32 %.1710473049, 0
  br i1 %i.aal, label %.lr.ph3052, label %._crit_edge3053, !llvm.loop !147

._crit_edge3053:                                  ; preds = %bb.gs, %.preheader1330
  %.171084.lcssa = phi i32 [ %i.yz, %.preheader1330 ], [ %i.aai, %bb.gs ] ; 22 uses
  %.171047.lcssa = phi i32 [ %i.za, %.preheader1330 ], [ %i.aaj, %bb.gs ]
  %.31972.lcssa = phi ptr [ %.29970.lcssa, %.preheader1330 ], [ %i.aak, %bb.gs ]
  %.30.lcssa = phi ptr [ %.28.lcssa, %.preheader1330 ], [ %.31, %bb.gs ]
  %i.aam = lshr i32 %.171084.lcssa, 20
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aan
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !34 ; 3 uses
  %i.aaq = icmp ugt i16 %i.aap, 249
  br i1 %i.aaq, label %.preheader.preheader, label %.loopexit1329

.preheader.preheader:                             ; preds = %._crit_edge3053
  %i.aar = shl i16 %i.aap, 1                      ; 2 uses
  %i.aas = icmp ugt i16 %i.aar, 4595
  br i1 %i.aas, label %split3332, label %bb.gu

bb.gt:                                            ; preds = %bb.hn
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

split3332:                                        ; preds = %.preheader.19, %.preheader.18, %.preheader.17, %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.gu:                                            ; preds = %.preheader.preheader
  %4 = and i32 %.171084.lcssa, 524288
  %.not1220 = icmp ne i32 %4, 0
  %5 = zext i1 %.not1220 to i16
  %i.aat = or disjoint i16 %i.aar, %5
  %i.aau = zext nneg i16 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aau
  %i.aaw = load i16, ptr %i.aav, align 2, !tbaa !34 ; 3 uses
  %i.aax = icmp ugt i16 %i.aaw, 249
  br i1 %i.aax, label %.preheader.1, label %.loopexit1329

.preheader.1:                                     ; preds = %bb.gu
  %i.aay = shl i16 %i.aaw, 1                      ; 2 uses
  %i.aaz = icmp ugt i16 %i.aay, 4595
  br i1 %i.aaz, label %split3332, label %bb.gv

bb.gv:                                            ; preds = %.preheader.1
  %i.aba = lshr i32 %.171084.lcssa, 18
  %i.abb = trunc nuw nsw i32 %i.aba to i16
  %i.abc = and i16 %i.abb, 1
  %i.abd = or disjoint i16 %i.aay, %i.abc
  %i.abe = zext nneg i16 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.abe
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !34 ; 3 uses
  %i.abh = icmp ugt i16 %i.abg, 249
  br i1 %i.abh, label %.preheader.2, label %.loopexit1329

.preheader.2:                                     ; preds = %bb.gv
  %i.abi = shl i16 %i.abg, 1                      ; 2 uses
  %i.abj = icmp ugt i16 %i.abi, 4595
  br i1 %i.abj, label %split3332, label %bb.gw

bb.gw:                                            ; preds = %.preheader.2
  %i.abk = lshr i32 %.171084.lcssa, 17
  %i.abl = trunc nuw nsw i32 %i.abk to i16
  %i.abm = and i16 %i.abl, 1
  %i.abn = or disjoint i16 %i.abi, %i.abm
  %i.abo = zext nneg i16 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.abo
  %i.abq = load i16, ptr %i.abp, align 2, !tbaa !34 ; 3 uses
  %i.abr = icmp ugt i16 %i.abq, 249
  br i1 %i.abr, label %.preheader.3, label %.loopexit1329

.preheader.3:                                     ; preds = %bb.gw
  %i.abs = shl i16 %i.abq, 1                      ; 2 uses
  %i.abt = icmp ugt i16 %i.abs, 4595
  br i1 %i.abt, label %split3332, label %bb.gx

bb.gx:                                            ; preds = %.preheader.3
  %i.abu = lshr i32 %.171084.lcssa, 16
  %i.abv = trunc nuw i32 %i.abu to i16
  %i.abw = and i16 %i.abv, 1
  %i.abx = or disjoint i16 %i.abs, %i.abw
  %i.aby = zext nneg i16 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aby
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !34 ; 3 uses
  %i.acb = icmp ugt i16 %i.aca, 249
  br i1 %i.acb, label %.preheader.4, label %.loopexit1329

.preheader.4:                                     ; preds = %bb.gx
  %i.acc = shl i16 %i.aca, 1                      ; 2 uses
  %i.acd = icmp ugt i16 %i.acc, 4595
  br i1 %i.acd, label %split3332, label %bb.gy

bb.gy:                                            ; preds = %.preheader.4
  %i.ace = and i32 %.171084.lcssa, 32768
  %.not1220.4 = icmp ne i32 %i.ace, 0
  %i.acf = zext i1 %.not1220.4 to i16
  %i.acg = or disjoint i16 %i.acc, %i.acf
  %i.ach = zext nneg i16 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.ach
  %i.acj = load i16, ptr %i.aci, align 2, !tbaa !34 ; 3 uses
  %i.ack = icmp ugt i16 %i.acj, 249
  br i1 %i.ack, label %.preheader.5, label %.loopexit1329

.preheader.5:                                     ; preds = %bb.gy
  %i.acl = shl i16 %i.acj, 1                      ; 2 uses
  %i.acm = icmp ugt i16 %i.acl, 4595
  br i1 %i.acm, label %split3332, label %bb.gz

bb.gz:                                            ; preds = %.preheader.5
  %i.acn = trunc i32 %.171084.lcssa to i16
  %i.aco = lshr i16 %i.acn, 14
  %i.acp = and i16 %i.aco, 1
  %i.acq = or disjoint i16 %i.acl, %i.acp
  %i.acr = zext nneg i16 %i.acq to i64
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.acr
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !34 ; 3 uses
  %i.acu = icmp ugt i16 %i.act, 249
  br i1 %i.acu, label %.preheader.6, label %.loopexit1329

.preheader.6:                                     ; preds = %bb.gz
  %i.acv = shl i16 %i.act, 1                      ; 2 uses
  %i.acw = icmp ugt i16 %i.acv, 4595
  br i1 %i.acw, label %split3332, label %bb.ha

bb.ha:                                            ; preds = %.preheader.6
  %i.acx = trunc i32 %.171084.lcssa to i16
  %i.acy = lshr i16 %i.acx, 13
  %i.acz = and i16 %i.acy, 1
  %i.ada = or disjoint i16 %i.acv, %i.acz
  %i.adb = zext nneg i16 %i.ada to i64
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.adb
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !34 ; 3 uses
  %i.ade = icmp ugt i16 %i.add, 249
  br i1 %i.ade, label %.preheader.7, label %.loopexit1329

.preheader.7:                                     ; preds = %bb.ha
  %i.adf = shl i16 %i.add, 1                      ; 2 uses
  %i.adg = icmp ugt i16 %i.adf, 4595
  br i1 %i.adg, label %split3332, label %bb.hb

bb.hb:                                            ; preds = %.preheader.7
  %i.adh = trunc i32 %.171084.lcssa to i16
  %i.adi = lshr i16 %i.adh, 12
  %i.adj = and i16 %i.adi, 1
  %i.adk = or disjoint i16 %i.adf, %i.adj
  %i.adl = zext nneg i16 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.adl
  %i.adn = load i16, ptr %i.adm, align 2, !tbaa !34 ; 3 uses
  %i.ado = icmp ugt i16 %i.adn, 249
  br i1 %i.ado, label %.preheader.8, label %.loopexit1329

.preheader.8:                                     ; preds = %bb.hb
  %i.adp = shl i16 %i.adn, 1                      ; 2 uses
  %i.adq = icmp ugt i16 %i.adp, 4595
  br i1 %i.adq, label %split3332, label %bb.hc

bb.hc:                                            ; preds = %.preheader.8
  %i.adr = trunc i32 %.171084.lcssa to i16
  %i.ads = lshr i16 %i.adr, 11
  %i.adt = and i16 %i.ads, 1
  %i.adu = or disjoint i16 %i.adp, %i.adt
  %i.adv = zext nneg i16 %i.adu to i64
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.adv
  %i.adx = load i16, ptr %i.adw, align 2, !tbaa !34 ; 3 uses
  %i.ady = icmp ugt i16 %i.adx, 249
  br i1 %i.ady, label %.preheader.9, label %.loopexit1329

.preheader.9:                                     ; preds = %bb.hc
  %i.adz = shl i16 %i.adx, 1                      ; 2 uses
  %i.aea = icmp ugt i16 %i.adz, 4595
  br i1 %i.aea, label %split3332, label %bb.hd

bb.hd:                                            ; preds = %.preheader.9
  %i.aeb = trunc i32 %.171084.lcssa to i16
  %i.aec = lshr i16 %i.aeb, 10
  %i.aed = and i16 %i.aec, 1
  %i.aee = or disjoint i16 %i.adz, %i.aed
  %i.aef = zext nneg i16 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aef
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !34 ; 3 uses
  %i.aei = icmp ugt i16 %i.aeh, 249
  br i1 %i.aei, label %.preheader.10, label %.loopexit1329

.preheader.10:                                    ; preds = %bb.hd
  %i.aej = shl i16 %i.aeh, 1                      ; 2 uses
  %i.aek = icmp ugt i16 %i.aej, 4595
  br i1 %i.aek, label %split3332, label %bb.he

bb.he:                                            ; preds = %.preheader.10
  %i.ael = trunc i32 %.171084.lcssa to i16
  %i.aem = lshr i16 %i.ael, 9
  %i.aen = and i16 %i.aem, 1
  %i.aeo = or disjoint i16 %i.aej, %i.aen
  %i.aep = zext nneg i16 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aep
  %i.aer = load i16, ptr %i.aeq, align 2, !tbaa !34 ; 3 uses
  %i.aes = icmp ugt i16 %i.aer, 249
  br i1 %i.aes, label %.preheader.11, label %.loopexit1329

.preheader.11:                                    ; preds = %bb.he
  %i.aet = shl i16 %i.aer, 1                      ; 2 uses
  %i.aeu = icmp ugt i16 %i.aet, 4595
  br i1 %i.aeu, label %split3332, label %bb.hf

bb.hf:                                            ; preds = %.preheader.11
  %i.aev = trunc i32 %.171084.lcssa to i16
  %i.aew = lshr i16 %i.aev, 8
  %i.aex = and i16 %i.aew, 1
  %i.aey = or disjoint i16 %i.aet, %i.aex
  %i.aez = zext nneg i16 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aez
  %i.afb = load i16, ptr %i.afa, align 2, !tbaa !34 ; 3 uses
  %i.afc = icmp ugt i16 %i.afb, 249
  br i1 %i.afc, label %.preheader.12, label %.loopexit1329

.preheader.12:                                    ; preds = %bb.hf
  %i.afd = shl i16 %i.afb, 1                      ; 2 uses
  %i.afe = icmp ugt i16 %i.afd, 4595
  br i1 %i.afe, label %split3332, label %bb.hg

bb.hg:                                            ; preds = %.preheader.12
  %i.aff = trunc i32 %.171084.lcssa to i16
  %i.afg = lshr i16 %i.aff, 7
  %i.afh = and i16 %i.afg, 1
  %i.afi = or disjoint i16 %i.afd, %i.afh
  %i.afj = zext nneg i16 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.afj
  %i.afl = load i16, ptr %i.afk, align 2, !tbaa !34 ; 3 uses
  %i.afm = icmp ugt i16 %i.afl, 249
  br i1 %i.afm, label %.preheader.13, label %.loopexit1329

.preheader.13:                                    ; preds = %bb.hg
  %i.afn = shl i16 %i.afl, 1                      ; 2 uses
end_hunk_1
begin_hunk_2_@lzx_decompress:bb.a
  %i.ann = icmp eq i64 %n.vec4102, 224
  br i1 %i.ann, label %middle.block4110, label %vector.body4103.7

vector.body4103.7:                                ; preds = %vector.body4103.6
  %next.gep4105.7 = getelementptr i8, ptr %i.ajq, i64 224
  %next.gep4106.7 = getelementptr i8, ptr %i.aml, i64 224
  %i.ano = getelementptr i8, ptr %i.aml, i64 240
  %wide.load4107.7 = load <16 x i8>, ptr %next.gep4106.7, align 1, !tbaa !29
  %wide.load4108.7 = load <16 x i8>, ptr %i.ano, align 1, !tbaa !29
  %i.anp = getelementptr i8, ptr %i.ajq, i64 240
  store <16 x i8> %wide.load4107.7, ptr %next.gep4105.7, align 1, !tbaa !29
  store <16 x i8> %wide.load4108.7, ptr %i.anp, align 1, !tbaa !29
  br label %middle.block4110

middle.block4110:                                 ; preds = %vector.body4103.7, %vector.body4103.6, %vector.body4103.5, %vector.body4103.4, %vector.body4103.3, %vector.body4103.2, %vector.body4103.1, %vector.ph4101
  %cmp.n4111 = icmp eq i64 %n.vec4102, %i.amm
  br i1 %cmp.n4111, label %.loopexit, label %vec.epilog.iter.check4117

vec.epilog.iter.check4117:                        ; preds = %middle.block4110
  %min.epilog.iters.check4118 = icmp eq i64 %i.amo, 0
  br i1 %min.epilog.iters.check4118, label %.lr.ph3073.preheader, label %vec.epilog.ph4119, !prof !37

vec.epilog.ph4119:                                ; preds = %vector.main.loop.iter.check4099, %vec.epilog.iter.check4117
  %vec.epilog.resume.val4112 = phi i64 [ %n.vec4102, %vec.epilog.iter.check4117 ], [ 0, %vector.main.loop.iter.check4099 ]
  %n.vec4120 = and i64 %i.amm, 65532              ; 5 uses
  %i.anq = getelementptr i8, ptr %i.ajq, i64 %n.vec4120
  %i.anr = getelementptr i8, ptr %i.aml, i64 %n.vec4120
  %i.ans = trunc nuw nsw i64 %n.vec4120 to i32
  %i.ant = sub nsw i32 %i.aik, %i.ans
  br label %vec.epilog.vector.body4121

vec.epilog.vector.body4121:                       ; preds = %vec.epilog.vector.body4121, %vec.epilog.ph4119
  %index4122 = phi i64 [ %vec.epilog.resume.val4112, %vec.epilog.ph4119 ], [ %index.next4126, %vec.epilog.vector.body4121 ] ; 3 uses
  %next.gep4123 = getelementptr i8, ptr %i.ajq, i64 %index4122
  %next.gep4124 = getelementptr i8, ptr %i.aml, i64 %index4122
  %wide.load4125 = load <4 x i8>, ptr %next.gep4124, align 1, !tbaa !29
  store <4 x i8> %wide.load4125, ptr %next.gep4123, align 1, !tbaa !29
  %index.next4126 = add nuw i64 %index4122, 4     ; 2 uses
  %i.anu = icmp eq i64 %index.next4126, %n.vec4120
  br i1 %i.anu, label %vec.epilog.middle.block4127, label %vec.epilog.vector.body4121, !llvm.loop !154

vec.epilog.middle.block4127:                      ; preds = %vec.epilog.vector.body4121
  %cmp.n4128 = icmp eq i64 %n.vec4120, %i.amm
  br i1 %cmp.n4128, label %.loopexit, label %.lr.ph3073.preheader

.lr.ph3073.preheader:                             ; preds = %iter.check4115, %vec.epilog.iter.check4117, %vec.epilog.middle.block4127
  %.49023071.ph = phi ptr [ %i.ajq, %iter.check4115 ], [ %i.amp, %vec.epilog.iter.check4117 ], [ %i.anq, %vec.epilog.middle.block4127 ]
  %.39113070.ph = phi ptr [ %i.aml, %iter.check4115 ], [ %i.amq, %vec.epilog.iter.check4117 ], [ %i.anr, %vec.epilog.middle.block4127 ]
  %.810213069.ph = phi i32 [ %i.aik, %iter.check4115 ], [ %i.ams, %vec.epilog.iter.check4117 ], [ %i.ant, %vec.epilog.middle.block4127 ]
  br label %.lr.ph3073

.lr.ph3073:                                       ; preds = %.lr.ph3073.preheader, %.lr.ph3073
  %.49023071 = phi ptr [ %i.any, %.lr.ph3073 ], [ %.49023071.ph, %.lr.ph3073.preheader ] ; 2 uses
  %.39113070 = phi ptr [ %i.anw, %.lr.ph3073 ], [ %.39113070.ph, %.lr.ph3073.preheader ] ; 2 uses
  %.810213069 = phi i32 [ %i.anv, %.lr.ph3073 ], [ %.810213069.ph, %.lr.ph3073.preheader ] ; 2 uses
  %i.anv = add nsw i32 %.810213069, -1
  %i.anw = getelementptr inbounds nuw i8, ptr %.39113070, i64 1
  %i.anx = load i8, ptr %.39113070, align 1, !tbaa !29
  %i.any = getelementptr inbounds nuw i8, ptr %.49023071, i64 1
  store i8 %i.anx, ptr %.49023071, align 1, !tbaa !29
  %i.anz = icmp sgt i32 %.810213069, 1
  br i1 %i.anz, label %.lr.ph3073, label %.loopexit, !llvm.loop !155

.loopexit:                                        ; preds = %.lr.ph3073, %.lr.ph3084, %middle.block4110, %vec.epilog.middle.block4127, %middle.block, %vec.epilog.middle.block, %.loopexit1327
  %i.aoa = sub nsw i32 %.19203089, %i.aik
  br label %bb.ie

bb.ie:                                            ; preds = %.loopexit, %bb.gh
  %.211088 = phi i32 [ %i.yz, %bb.gh ], [ %.201087, %.loopexit ] ; 2 uses
  %.211051 = phi i32 [ %i.za, %bb.gh ], [ %.201050, %.loopexit ] ; 2 uses
  %.37978 = phi ptr [ %.29970.lcssa, %bb.gh ], [ %.36977, %.loopexit ] ; 2 uses
  %.36 = phi ptr [ %.28.lcssa, %bb.gh ], [ %.35, %.loopexit ] ; 2 uses
  %.2921 = phi i32 [ %i.zg, %bb.gh ], [ %i.aoa, %.loopexit ] ; 3 uses
  %.3890 = phi i32 [ %i.zd, %bb.gh ], [ %i.ajm, %.loopexit ] ; 2 uses
  %.5882 = phi i32 [ %.38803091, %bb.gh ], [ %.4881, %.loopexit ] ; 2 uses
  %.5872 = phi i32 [ %.38703092, %bb.gh ], [ %.4871, %.loopexit ] ; 2 uses
  %.5 = phi i32 [ %.33093, %bb.gh ], [ %.4, %.loopexit ] ; 2 uses
  %i.aob = icmp sgt i32 %.2921, 0
  br i1 %i.aob, label %.preheader1334, label %.loopexit1356, !llvm.loop !156

.preheader1351:                                   ; preds = %.preheader1357, %bb.mb
  %.63028 = phi i32 [ %.8, %bb.mb ], [ %.2, %.preheader1357 ] ; 4 uses
  %.68733027 = phi i32 [ %.8875, %bb.mb ], [ %.2869, %.preheader1357 ] ; 8 uses
  %.68833026 = phi i32 [ %.8885, %bb.mb ], [ %.2879, %.preheader1357 ] ; 8 uses
  %.48913025 = phi i32 [ %.5892, %bb.mb ], [ %.18883109, %.preheader1357 ] ; 6 uses
  %.39223024 = phi i32 [ %.4923, %bb.mb ], [ %spec.select1237, %.preheader1357 ] ; 2 uses
  %.373023 = phi ptr [ %.53, %bb.mb ], [ %.26, %.preheader1357 ] ; 2 uses
  %.389793022 = phi ptr [ %.54995, %bb.mb ], [ %.27968, %.preheader1357 ] ; 2 uses
  %.2210523021 = phi i32 [ %.321062, %bb.mb ], [ %.141044, %.preheader1357 ] ; 3 uses
  %.2210893020 = phi i32 [ %.321099, %bb.mb ], [ %.141081, %.preheader1357 ] ; 2 uses
  %i.aoc = icmp slt i32 %.2210523021, 16
  br i1 %i.aoc, label %.lr.ph2930, label %._crit_edge2931

.lr.ph2930:                                       ; preds = %.preheader1351, %bb.io
  %.382929 = phi ptr [ %.39, %bb.io ], [ %.373023, %.preheader1351 ] ; 2 uses
  %.399802928 = phi ptr [ %i.apb, %bb.io ], [ %.389793022, %.preheader1351 ] ; 2 uses
  %.2310532927 = phi i32 [ %i.apa, %bb.io ], [ %.2210523021, %.preheader1351 ] ; 3 uses
  %.2310902926 = phi i32 [ %i.aoz, %bb.io ], [ %.2210893020, %.preheader1351 ]
  %i.aod = getelementptr inbounds nuw i8, ptr %.399802928, i64 1
  %.not1217 = icmp ult ptr %i.aod, %.382929
  br i1 %.not1217, label %bb.io, label %bb.if

bb.if:                                            ; preds = %.lr.ph2930
  %i.aoe = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1285 = icmp eq ptr %i.aoe, null
  %i.aof = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.aog = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1285, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.aoh = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.aoi = tail call i32 %i.aoe(ptr noundef %i.aoh, ptr noundef %i.aof, i32 noundef %i.aog) #11, !inline_history !73
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %i.aoj = load i32, ptr %0, align 8, !tbaa !42
  %i.aok = tail call i32 @cli_readn(i32 noundef %i.aoj, ptr noundef %i.aof, i32 noundef %i.aog) #11
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.aol = phi i32 [ %i.aoi, %bb.ig ], [ %i.aok, %bb.ih ] ; 3 uses
  %i.aom = icmp slt i32 %i.aol, 0
  br i1 %i.aom, label %.loopexit1352, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.aon = icmp eq i32 %i.aol, 0
  br i1 %i.aon, label %bb.ik, label %bb.in

bb.ik:                                            ; preds = %bb.ij
  %i.aoo = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1288 = icmp eq i8 %i.aoo, 0
  br i1 %.not24.i1288, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1352

bb.im:                                            ; preds = %bb.ik
  %i.aop = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 1
  store i8 0, ptr %i.aoq, align 1, !tbaa !29
  %i.aor = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.aor, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.in

.loopexit1352:                                    ; preds = %bb.ii, %bb.il
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.in:                                            ; preds = %bb.im, %bb.ij
  %.0.i1286 = phi i32 [ 2, %bb.im ], [ %i.aol, %bb.ij ]
  %i.aos = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.aos, ptr %i.aa, align 8, !tbaa !62
  %i.aot = zext nneg i32 %.0.i1286 to i64
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aot ; 2 uses
  store ptr %i.aou, ptr %i.ab, align 8, !tbaa !61
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %.lr.ph2930
  %.40981 = phi ptr [ %i.aos, %bb.in ], [ %.399802928, %.lr.ph2930 ] ; 2 uses
  %.39 = phi ptr [ %i.aou, %bb.in ], [ %.382929, %.lr.ph2930 ] ; 2 uses
  %i.aov = load i16, ptr %.40981, align 1
  %i.aow = zext i16 %i.aov to i32
  %i.aox = sub i32 16, %.2310532927
  %i.aoy = shl i32 %i.aow, %i.aox
  %i.aoz = or i32 %i.aoy, %.2310902926            ; 2 uses
  %i.apa = add nsw i32 %.2310532927, 16           ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %.40981, i64 2 ; 2 uses
  %i.apc = icmp slt i32 %.2310532927, 0
  br i1 %i.apc, label %.lr.ph2930, label %._crit_edge2931, !llvm.loop !157

._crit_edge2931:                                  ; preds = %bb.io, %.preheader1351
  %.231090.lcssa = phi i32 [ %.2210893020, %.preheader1351 ], [ %i.aoz, %bb.io ] ; 22 uses
  %.231053.lcssa = phi i32 [ %.2210523021, %.preheader1351 ], [ %i.apa, %bb.io ]
  %.39980.lcssa = phi ptr [ %.389793022, %.preheader1351 ], [ %i.apb, %bb.io ] ; 4 uses
  %.38.lcssa = phi ptr [ %.373023, %.preheader1351 ], [ %.39, %bb.io ] ; 4 uses
  %i.apd = lshr i32 %.231090.lcssa, 20
  %i.ape = zext nneg i32 %i.apd to i64
  %i.apf = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ape
  %i.apg = load i16, ptr %i.apf, align 2, !tbaa !34 ; 3 uses
  %i.aph = icmp ugt i16 %i.apg, 655
  br i1 %i.aph, label %.preheader1349.preheader, label %.loopexit1350

.preheader1349.preheader:                         ; preds = %._crit_edge2931
  %i.api = shl i16 %i.apg, 1                      ; 2 uses
  %i.apj = icmp ugt i16 %i.api, 5407
  br i1 %i.apj, label %split, label %bb.iq

bb.ip:                                            ; preds = %bb.jj
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

split:                                            ; preds = %.preheader1349.19, %.preheader1349.18, %.preheader1349.17, %.preheader1349.16, %.preheader1349.15, %.preheader1349.14, %.preheader1349.13, %.preheader1349.12, %.preheader1349.11, %.preheader1349.10, %.preheader1349.9, %.preheader1349.8, %.preheader1349.7, %.preheader1349.6, %.preheader1349.5, %.preheader1349.4, %.preheader1349.3, %.preheader1349.2, %.preheader1349.1, %.preheader1349.preheader
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.iq:                                            ; preds = %.preheader1349.preheader
  %6 = and i32 %.231090.lcssa, 524288
  %.not1200 = icmp ne i32 %6, 0
  %7 = zext i1 %.not1200 to i16
  %i.apk = or disjoint i16 %i.api, %7
  %i.apl = zext nneg i16 %i.apk to i64
  %i.apm = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.apl
  %i.apn = load i16, ptr %i.apm, align 2, !tbaa !34 ; 3 uses
  %i.apo = icmp ugt i16 %i.apn, 655
  br i1 %i.apo, label %.preheader1349.1, label %.loopexit1350

.preheader1349.1:                                 ; preds = %bb.iq
  %i.app = shl i16 %i.apn, 1                      ; 2 uses
  %i.apq = icmp ugt i16 %i.app, 5407
  br i1 %i.apq, label %split, label %bb.ir

bb.ir:                                            ; preds = %.preheader1349.1
  %i.apr = lshr i32 %.231090.lcssa, 18
  %i.aps = trunc nuw nsw i32 %i.apr to i16
  %i.apt = and i16 %i.aps, 1
  %i.apu = or disjoint i16 %i.app, %i.apt
  %i.apv = zext nneg i16 %i.apu to i64
  %i.apw = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.apv
  %i.apx = load i16, ptr %i.apw, align 2, !tbaa !34 ; 3 uses
  %i.apy = icmp ugt i16 %i.apx, 655
  br i1 %i.apy, label %.preheader1349.2, label %.loopexit1350

.preheader1349.2:                                 ; preds = %bb.ir
  %i.apz = shl i16 %i.apx, 1                      ; 2 uses
  %i.aqa = icmp ugt i16 %i.apz, 5407
  br i1 %i.aqa, label %split, label %bb.is

bb.is:                                            ; preds = %.preheader1349.2
  %i.aqb = lshr i32 %.231090.lcssa, 17
  %i.aqc = trunc nuw nsw i32 %i.aqb to i16
  %i.aqd = and i16 %i.aqc, 1
  %i.aqe = or disjoint i16 %i.apz, %i.aqd
  %i.aqf = zext nneg i16 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.aqf
  %i.aqh = load i16, ptr %i.aqg, align 2, !tbaa !34 ; 3 uses
  %i.aqi = icmp ugt i16 %i.aqh, 655
  br i1 %i.aqi, label %.preheader1349.3, label %.loopexit1350

.preheader1349.3:                                 ; preds = %bb.is
  %i.aqj = shl i16 %i.aqh, 1                      ; 2 uses
  %i.aqk = icmp ugt i16 %i.aqj, 5407
  br i1 %i.aqk, label %split, label %bb.it

bb.it:                                            ; preds = %.preheader1349.3
  %i.aql = lshr i32 %.231090.lcssa, 16
  %i.aqm = trunc nuw i32 %i.aql to i16
  %i.aqn = and i16 %i.aqm, 1
  %i.aqo = or disjoint i16 %i.aqj, %i.aqn
  %i.aqp = zext nneg i16 %i.aqo to i64
  %i.aqq = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.aqp
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !34 ; 3 uses
  %i.aqs = icmp ugt i16 %i.aqr, 655
  br i1 %i.aqs, label %.preheader1349.4, label %.loopexit1350

.preheader1349.4:                                 ; preds = %bb.it
  %i.aqt = shl i16 %i.aqr, 1                      ; 2 uses
  %i.aqu = icmp ugt i16 %i.aqt, 5407
  br i1 %i.aqu, label %split, label %bb.iu

bb.iu:                                            ; preds = %.preheader1349.4
  %i.aqv = and i32 %.231090.lcssa, 32768
  %.not1200.4 = icmp ne i32 %i.aqv, 0
  %i.aqw = zext i1 %.not1200.4 to i16
  %i.aqx = or disjoint i16 %i.aqt, %i.aqw
  %i.aqy = zext nneg i16 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.aqy
  %i.ara = load i16, ptr %i.aqz, align 2, !tbaa !34 ; 3 uses
  %i.arb = icmp ugt i16 %i.ara, 655
  br i1 %i.arb, label %.preheader1349.5, label %.loopexit1350

.preheader1349.5:                                 ; preds = %bb.iu
  %i.arc = shl i16 %i.ara, 1                      ; 2 uses
  %i.ard = icmp ugt i16 %i.arc, 5407
  br i1 %i.ard, label %split, label %bb.iv

bb.iv:                                            ; preds = %.preheader1349.5
  %i.are = trunc i32 %.231090.lcssa to i16
  %i.arf = lshr i16 %i.are, 14
  %i.arg = and i16 %i.arf, 1
  %i.arh = or disjoint i16 %i.arc, %i.arg
  %i.ari = zext nneg i16 %i.arh to i64
  %i.arj = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ari
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !34 ; 3 uses
  %i.arl = icmp ugt i16 %i.ark, 655
  br i1 %i.arl, label %.preheader1349.6, label %.loopexit1350

.preheader1349.6:                                 ; preds = %bb.iv
  %i.arm = shl i16 %i.ark, 1                      ; 2 uses
  %i.arn = icmp ugt i16 %i.arm, 5407
  br i1 %i.arn, label %split, label %bb.iw

bb.iw:                                            ; preds = %.preheader1349.6
  %i.aro = trunc i32 %.231090.lcssa to i16
  %i.arp = lshr i16 %i.aro, 13
  %i.arq = and i16 %i.arp, 1
  %i.arr = or disjoint i16 %i.arm, %i.arq
  %i.ars = zext nneg i16 %i.arr to i64
  %i.art = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ars
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !34 ; 3 uses
  %i.arv = icmp ugt i16 %i.aru, 655
  br i1 %i.arv, label %.preheader1349.7, label %.loopexit1350

.preheader1349.7:                                 ; preds = %bb.iw
  %i.arw = shl i16 %i.aru, 1                      ; 2 uses
  %i.arx = icmp ugt i16 %i.arw, 5407
  br i1 %i.arx, label %split, label %bb.ix

bb.ix:                                            ; preds = %.preheader1349.7
  %i.ary = trunc i32 %.231090.lcssa to i16
  %i.arz = lshr i16 %i.ary, 12
  %i.asa = and i16 %i.arz, 1
  %i.asb = or disjoint i16 %i.arw, %i.asa
  %i.asc = zext nneg i16 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.asc
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !34 ; 3 uses
  %i.asf = icmp ugt i16 %i.ase, 655
  br i1 %i.asf, label %.preheader1349.8, label %.loopexit1350

.preheader1349.8:                                 ; preds = %bb.ix
  %i.asg = shl i16 %i.ase, 1                      ; 2 uses
  %i.ash = icmp ugt i16 %i.asg, 5407
  br i1 %i.ash, label %split, label %bb.iy

bb.iy:                                            ; preds = %.preheader1349.8
  %i.asi = trunc i32 %.231090.lcssa to i16
  %i.asj = lshr i16 %i.asi, 11
  %i.ask = and i16 %i.asj, 1
  %i.asl = or disjoint i16 %i.asg, %i.ask
  %i.asm = zext nneg i16 %i.asl to i64
  %i.asn = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.asm
  %i.aso = load i16, ptr %i.asn, align 2, !tbaa !34 ; 3 uses
  %i.asp = icmp ugt i16 %i.aso, 655
  br i1 %i.asp, label %.preheader1349.9, label %.loopexit1350

.preheader1349.9:                                 ; preds = %bb.iy
  %i.asq = shl i16 %i.aso, 1                      ; 2 uses
  %i.asr = icmp ugt i16 %i.asq, 5407
  br i1 %i.asr, label %split, label %bb.iz

bb.iz:                                            ; preds = %.preheader1349.9
  %i.ass = trunc i32 %.231090.lcssa to i16
  %i.ast = lshr i16 %i.ass, 10
  %i.asu = and i16 %i.ast, 1
  %i.asv = or disjoint i16 %i.asq, %i.asu
  %i.asw = zext nneg i16 %i.asv to i64
  %i.asx = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.asw
  %i.asy = load i16, ptr %i.asx, align 2, !tbaa !34 ; 3 uses
  %i.asz = icmp ugt i16 %i.asy, 655
  br i1 %i.asz, label %.preheader1349.10, label %.loopexit1350

.preheader1349.10:                                ; preds = %bb.iz
  %i.ata = shl i16 %i.asy, 1                      ; 2 uses
  %i.atb = icmp ugt i16 %i.ata, 5407
  br i1 %i.atb, label %split, label %bb.ja

bb.ja:                                            ; preds = %.preheader1349.10
  %i.atc = trunc i32 %.231090.lcssa to i16
  %i.atd = lshr i16 %i.atc, 9
  %i.ate = and i16 %i.atd, 1
  %i.atf = or disjoint i16 %i.ata, %i.ate
  %i.atg = zext nneg i16 %i.atf to i64
  %i.ath = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.atg
  %i.ati = load i16, ptr %i.ath, align 2, !tbaa !34 ; 3 uses
  %i.atj = icmp ugt i16 %i.ati, 655
  br i1 %i.atj, label %.preheader1349.11, label %.loopexit1350

.preheader1349.11:                                ; preds = %bb.ja
  %i.atk = shl i16 %i.ati, 1                      ; 2 uses
  %i.atl = icmp ugt i16 %i.atk, 5407
  br i1 %i.atl, label %split, label %bb.jb

bb.jb:                                            ; preds = %.preheader1349.11
  %i.atm = trunc i32 %.231090.lcssa to i16
  %i.atn = lshr i16 %i.atm, 8
  %i.ato = and i16 %i.atn, 1
  %i.atp = or disjoint i16 %i.atk, %i.ato
  %i.atq = zext nneg i16 %i.atp to i64
  %i.atr = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.atq
  %i.ats = load i16, ptr %i.atr, align 2, !tbaa !34 ; 3 uses
  %i.att = icmp ugt i16 %i.ats, 655
  br i1 %i.att, label %.preheader1349.12, label %.loopexit1350

.preheader1349.12:                                ; preds = %bb.jb
  %i.atu = shl i16 %i.ats, 1                      ; 2 uses
  %i.atv = icmp ugt i16 %i.atu, 5407
  br i1 %i.atv, label %split, label %bb.jc

bb.jc:                                            ; preds = %.preheader1349.12
  %i.atw = trunc i32 %.231090.lcssa to i16
  %i.atx = lshr i16 %i.atw, 7
  %i.aty = and i16 %i.atx, 1
  %i.atz = or disjoint i16 %i.atu, %i.aty
  %i.aua = zext nneg i16 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.aua
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !34 ; 3 uses
  %i.aud = icmp ugt i16 %i.auc, 655
  br i1 %i.aud, label %.preheader1349.13, label %.loopexit1350

.preheader1349.13:                                ; preds = %bb.jc
  %i.aue = shl i16 %i.auc, 1                      ; 2 uses
end_hunk_2
begin_hunk_3_@lzx_decompress:bb.a
  %i.avi = shl i16 %i.avg, 1                      ; 2 uses
  %i.avj = icmp ugt i16 %i.avi, 5407
  br i1 %i.avj, label %split, label %bb.jg

bb.jg:                                            ; preds = %.preheader1349.16
  %i.avk = trunc i32 %.231090.lcssa to i16
  %i.avl = lshr i16 %i.avk, 3
  %i.avm = and i16 %i.avl, 1
  %i.avn = or disjoint i16 %i.avi, %i.avm
  %i.avo = zext nneg i16 %i.avn to i64
  %i.avp = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.avo
  %i.avq = load i16, ptr %i.avp, align 2, !tbaa !34 ; 3 uses
  %i.avr = icmp ugt i16 %i.avq, 655
  br i1 %i.avr, label %.preheader1349.17, label %.loopexit1350

.preheader1349.17:                                ; preds = %bb.jg
  %i.avs = shl i16 %i.avq, 1                      ; 2 uses
  %i.avt = icmp ugt i16 %i.avs, 5407
  br i1 %i.avt, label %split, label %bb.jh

bb.jh:                                            ; preds = %.preheader1349.17
  %i.avu = trunc i32 %.231090.lcssa to i16
  %i.avv = lshr i16 %i.avu, 2
  %i.avw = and i16 %i.avv, 1
  %i.avx = or disjoint i16 %i.avs, %i.avw
  %i.avy = zext nneg i16 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.avy
  %i.awa = load i16, ptr %i.avz, align 2, !tbaa !34 ; 3 uses
  %i.awb = icmp ugt i16 %i.awa, 655
  br i1 %i.awb, label %.preheader1349.18, label %.loopexit1350

.preheader1349.18:                                ; preds = %bb.jh
  %i.awc = shl i16 %i.awa, 1                      ; 2 uses
  %i.awd = icmp ugt i16 %i.awc, 5407
  br i1 %i.awd, label %split, label %bb.ji

bb.ji:                                            ; preds = %.preheader1349.18
  %i.awe = trunc i32 %.231090.lcssa to i16
  %i.awf = lshr i16 %i.awe, 1
  %i.awg = and i16 %i.awf, 1
  %i.awh = or disjoint i16 %i.awc, %i.awg
  %i.awi = zext nneg i16 %i.awh to i64
  %i.awj = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.awi
  %i.awk = load i16, ptr %i.awj, align 2, !tbaa !34 ; 3 uses
  %i.awl = icmp ugt i16 %i.awk, 655
  br i1 %i.awl, label %.preheader1349.19, label %.loopexit1350

.preheader1349.19:                                ; preds = %bb.ji
  %i.awm = shl i16 %i.awk, 1                      ; 2 uses
  %i.awn = icmp ugt i16 %i.awm, 5407
  br i1 %i.awn, label %split, label %bb.jj

bb.jj:                                            ; preds = %.preheader1349.19
  %.not1200.19 = trunc i32 %.231090.lcssa to i16
  %i.awo = and i16 %.not1200.19, 1
  %i.awp = or disjoint i16 %i.awm, %i.awo
  %i.awq = zext nneg i16 %i.awp to i64
  %i.awr = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.awq
  %i.aws = load i16, ptr %i.awr, align 2, !tbaa !34 ; 2 uses
  %i.awt = icmp ugt i16 %i.aws, 655
  br i1 %i.awt, label %bb.ip, label %.loopexit1350

.loopexit1350:                                    ; preds = %bb.iq, %bb.ir, %bb.is, %bb.it, %bb.iu, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.iz, %bb.ja, %bb.jb, %bb.jc, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %._crit_edge2931
  %.51006 = phi i16 [ %i.apg, %._crit_edge2931 ], [ %i.apn, %bb.iq ], [ %i.apx, %bb.ir ], [ %i.aqh, %bb.is ], [ %i.aqr, %bb.it ], [ %i.ara, %bb.iu ], [ %i.ark, %bb.iv ], [ %i.aru, %bb.iw ], [ %i.ase, %bb.ix ], [ %i.aso, %bb.iy ], [ %i.asy, %bb.iz ], [ %i.ati, %bb.ja ], [ %i.ats, %bb.jb ], [ %i.auc, %bb.jc ], [ %i.aum, %bb.jd ], [ %i.auw, %bb.je ], [ %i.avg, %bb.jf ], [ %i.avq, %bb.jg ], [ %i.awa, %bb.jh ], [ %i.awk, %bb.ji ], [ %i.aws, %bb.jj ] ; 4 uses
  %i.awu = zext nneg i16 %.51006 to i64
  %i.awv = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.awu
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !29
  %i.awx = zext i8 %i.aww to i32                  ; 2 uses
  %i.awy = shl i32 %.231090.lcssa, %i.awx         ; 4 uses
  %i.awz = sub nsw i32 %.231053.lcssa, %i.awx     ; 5 uses
  %i.axa = icmp samesign ult i16 %.51006, 256
  br i1 %i.axa, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.loopexit1350
  %i.axb = trunc nuw i16 %.51006 to i8
  %i.axc = add i32 %.48913025, 1
  %i.axd = zext i32 %.48913025 to i64
  %i.axe = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.axd
  store i8 %i.axb, ptr %i.axe, align 1, !tbaa !29
  %i.axf = add nsw i32 %.39223024, -1
  br label %bb.mb

bb.jl:                                            ; preds = %.loopexit1350
  %i.axg = zext nneg i16 %.51006 to i32           ; 2 uses
  %i.axh = add nsw i32 %i.axg, -256
  %i.axi = and i32 %i.axg, 7                      ; 2 uses
  %i.axj = icmp eq i32 %i.axi, 7
  br i1 %i.axj, label %.preheader1347, label %bb.kr

.preheader1347:                                   ; preds = %bb.jl
  %i.axk = icmp slt i32 %i.awz, 16
  br i1 %i.axk, label %.lr.ph2940, label %._crit_edge2941

.lr.ph2940:                                       ; preds = %.preheader1347, %bb.jv
  %.402939 = phi ptr [ %.41, %bb.jv ], [ %.38.lcssa, %.preheader1347 ] ; 2 uses
  %.419822938 = phi ptr [ %i.ayj, %bb.jv ], [ %.39980.lcssa, %.preheader1347 ] ; 2 uses
  %.2410542937 = phi i32 [ %i.ayi, %bb.jv ], [ %i.awz, %.preheader1347 ] ; 3 uses
  %.2410912936 = phi i32 [ %i.ayh, %bb.jv ], [ %i.awy, %.preheader1347 ]
  %i.axl = getelementptr inbounds nuw i8, ptr %.419822938, i64 1
  %.not1215 = icmp ult ptr %i.axl, %.402939
  br i1 %.not1215, label %bb.jv, label %bb.jm

bb.jm:                                            ; preds = %.lr.ph2940
  %i.axm = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1290 = icmp eq ptr %i.axm, null
  %i.axn = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.axo = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1290, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.axp = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.axq = tail call i32 %i.axm(ptr noundef %i.axp, ptr noundef %i.axn, i32 noundef %i.axo) #11, !inline_history !73
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  %i.axr = load i32, ptr %0, align 8, !tbaa !42
  %i.axs = tail call i32 @cli_readn(i32 noundef %i.axr, ptr noundef %i.axn, i32 noundef %i.axo) #11
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.axt = phi i32 [ %i.axq, %bb.jn ], [ %i.axs, %bb.jo ] ; 3 uses
  %i.axu = icmp slt i32 %i.axt, 0
  br i1 %i.axu, label %.loopexit1348, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.axv = icmp eq i32 %i.axt, 0
  br i1 %i.axv, label %bb.jr, label %bb.ju

bb.jr:                                            ; preds = %bb.jq
  %i.axw = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1293 = icmp eq i8 %i.axw, 0
  br i1 %.not24.i1293, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1348

bb.jt:                                            ; preds = %bb.jr
  %i.axx = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 1
  store i8 0, ptr %i.axy, align 1, !tbaa !29
  %i.axz = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.axz, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.ju

.loopexit1348:                                    ; preds = %bb.jp, %bb.js
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.ju:                                            ; preds = %bb.jt, %bb.jq
  %.0.i1291 = phi i32 [ 2, %bb.jt ], [ %i.axt, %bb.jq ]
  %i.aya = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.aya, ptr %i.aa, align 8, !tbaa !62
  %i.ayb = zext nneg i32 %.0.i1291 to i64
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.ayb ; 2 uses
  store ptr %i.ayc, ptr %i.ab, align 8, !tbaa !61
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %.lr.ph2940
  %.42983 = phi ptr [ %i.aya, %bb.ju ], [ %.419822938, %.lr.ph2940 ] ; 2 uses
  %.41 = phi ptr [ %i.ayc, %bb.ju ], [ %.402939, %.lr.ph2940 ] ; 2 uses
  %i.ayd = load i16, ptr %.42983, align 1
  %i.aye = zext i16 %i.ayd to i32
  %i.ayf = sub i32 16, %.2410542937
  %i.ayg = shl i32 %i.aye, %i.ayf
  %i.ayh = or i32 %i.ayg, %.2410912936            ; 2 uses
  %i.ayi = add nsw i32 %.2410542937, 16           ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.42983, i64 2 ; 2 uses
  %i.ayk = icmp slt i32 %.2410542937, 0
  br i1 %i.ayk, label %.lr.ph2940, label %._crit_edge2941, !llvm.loop !158

._crit_edge2941:                                  ; preds = %bb.jv, %.preheader1347
  %.241091.lcssa = phi i32 [ %i.awy, %.preheader1347 ], [ %i.ayh, %bb.jv ] ; 22 uses
  %.241054.lcssa = phi i32 [ %i.awz, %.preheader1347 ], [ %i.ayi, %bb.jv ]
  %.41982.lcssa = phi ptr [ %.39980.lcssa, %.preheader1347 ], [ %i.ayj, %bb.jv ]
  %.40.lcssa = phi ptr [ %.38.lcssa, %.preheader1347 ], [ %.41, %bb.jv ]
  %i.ayl = lshr i32 %.241091.lcssa, 20
  %i.aym = zext nneg i32 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aym
  %i.ayo = load i16, ptr %i.ayn, align 2, !tbaa !34 ; 3 uses
  %i.ayp = icmp ugt i16 %i.ayo, 249
  br i1 %i.ayp, label %.preheader1345.preheader, label %.loopexit1346

.preheader1345.preheader:                         ; preds = %._crit_edge2941
  %i.ayq = shl i16 %i.ayo, 1                      ; 2 uses
  %i.ayr = icmp ugt i16 %i.ayq, 4595
  br i1 %i.ayr, label %split3328, label %bb.jx

bb.jw:                                            ; preds = %bb.kq
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

split3328:                                        ; preds = %.preheader1345.19, %.preheader1345.18, %.preheader1345.17, %.preheader1345.16, %.preheader1345.15, %.preheader1345.14, %.preheader1345.13, %.preheader1345.12, %.preheader1345.11, %.preheader1345.10, %.preheader1345.9, %.preheader1345.8, %.preheader1345.7, %.preheader1345.6, %.preheader1345.5, %.preheader1345.4, %.preheader1345.3, %.preheader1345.2, %.preheader1345.1, %.preheader1345.preheader
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.jx:                                            ; preds = %.preheader1345.preheader
  %8 = and i32 %.241091.lcssa, 524288
  %.not1201 = icmp ne i32 %8, 0
  %9 = zext i1 %.not1201 to i16
  %i.ays = or disjoint i16 %i.ayq, %9
  %i.ayt = zext nneg i16 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.ayt
  %i.ayv = load i16, ptr %i.ayu, align 2, !tbaa !34 ; 3 uses
  %i.ayw = icmp ugt i16 %i.ayv, 249
  br i1 %i.ayw, label %.preheader1345.1, label %.loopexit1346

.preheader1345.1:                                 ; preds = %bb.jx
  %i.ayx = shl i16 %i.ayv, 1                      ; 2 uses
  %i.ayy = icmp ugt i16 %i.ayx, 4595
  br i1 %i.ayy, label %split3328, label %bb.jy

bb.jy:                                            ; preds = %.preheader1345.1
  %i.ayz = lshr i32 %.241091.lcssa, 18
  %i.aza = trunc nuw nsw i32 %i.ayz to i16
  %i.azb = and i16 %i.aza, 1
  %i.azc = or disjoint i16 %i.ayx, %i.azb
  %i.azd = zext nneg i16 %i.azc to i64
  %i.aze = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.azd
  %i.azf = load i16, ptr %i.aze, align 2, !tbaa !34 ; 3 uses
  %i.azg = icmp ugt i16 %i.azf, 249
  br i1 %i.azg, label %.preheader1345.2, label %.loopexit1346

.preheader1345.2:                                 ; preds = %bb.jy
  %i.azh = shl i16 %i.azf, 1                      ; 2 uses
  %i.azi = icmp ugt i16 %i.azh, 4595
  br i1 %i.azi, label %split3328, label %bb.jz

bb.jz:                                            ; preds = %.preheader1345.2
  %i.azj = lshr i32 %.241091.lcssa, 17
  %i.azk = trunc nuw nsw i32 %i.azj to i16
  %i.azl = and i16 %i.azk, 1
  %i.azm = or disjoint i16 %i.azh, %i.azl
  %i.azn = zext nneg i16 %i.azm to i64
  %i.azo = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.azn
  %i.azp = load i16, ptr %i.azo, align 2, !tbaa !34 ; 3 uses
  %i.azq = icmp ugt i16 %i.azp, 249
  br i1 %i.azq, label %.preheader1345.3, label %.loopexit1346

.preheader1345.3:                                 ; preds = %bb.jz
  %i.azr = shl i16 %i.azp, 1                      ; 2 uses
  %i.azs = icmp ugt i16 %i.azr, 4595
  br i1 %i.azs, label %split3328, label %bb.ka

bb.ka:                                            ; preds = %.preheader1345.3
  %i.azt = lshr i32 %.241091.lcssa, 16
  %i.azu = trunc nuw i32 %i.azt to i16
  %i.azv = and i16 %i.azu, 1
  %i.azw = or disjoint i16 %i.azr, %i.azv
  %i.azx = zext nneg i16 %i.azw to i64
  %i.azy = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.azx
  %i.azz = load i16, ptr %i.azy, align 2, !tbaa !34 ; 3 uses
  %i.baa = icmp ugt i16 %i.azz, 249
  br i1 %i.baa, label %.preheader1345.4, label %.loopexit1346

.preheader1345.4:                                 ; preds = %bb.ka
  %i.bab = shl i16 %i.azz, 1                      ; 2 uses
  %i.bac = icmp ugt i16 %i.bab, 4595
  br i1 %i.bac, label %split3328, label %bb.kb

bb.kb:                                            ; preds = %.preheader1345.4
  %i.bad = and i32 %.241091.lcssa, 32768
  %.not1201.4 = icmp ne i32 %i.bad, 0
  %i.bae = zext i1 %.not1201.4 to i16
  %i.baf = or disjoint i16 %i.bab, %i.bae
  %i.bag = zext nneg i16 %i.baf to i64
  %i.bah = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bag
  %i.bai = load i16, ptr %i.bah, align 2, !tbaa !34 ; 3 uses
  %i.baj = icmp ugt i16 %i.bai, 249
  br i1 %i.baj, label %.preheader1345.5, label %.loopexit1346

.preheader1345.5:                                 ; preds = %bb.kb
  %i.bak = shl i16 %i.bai, 1                      ; 2 uses
  %i.bal = icmp ugt i16 %i.bak, 4595
  br i1 %i.bal, label %split3328, label %bb.kc

bb.kc:                                            ; preds = %.preheader1345.5
  %i.bam = trunc i32 %.241091.lcssa to i16
  %i.ban = lshr i16 %i.bam, 14
  %i.bao = and i16 %i.ban, 1
  %i.bap = or disjoint i16 %i.bak, %i.bao
  %i.baq = zext nneg i16 %i.bap to i64
  %i.bar = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.baq
  %i.bas = load i16, ptr %i.bar, align 2, !tbaa !34 ; 3 uses
  %i.bat = icmp ugt i16 %i.bas, 249
  br i1 %i.bat, label %.preheader1345.6, label %.loopexit1346

.preheader1345.6:                                 ; preds = %bb.kc
  %i.bau = shl i16 %i.bas, 1                      ; 2 uses
  %i.bav = icmp ugt i16 %i.bau, 4595
  br i1 %i.bav, label %split3328, label %bb.kd

bb.kd:                                            ; preds = %.preheader1345.6
  %i.baw = trunc i32 %.241091.lcssa to i16
  %i.bax = lshr i16 %i.baw, 13
  %i.bay = and i16 %i.bax, 1
  %i.baz = or disjoint i16 %i.bau, %i.bay
  %i.bba = zext nneg i16 %i.baz to i64
  %i.bbb = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bba
  %i.bbc = load i16, ptr %i.bbb, align 2, !tbaa !34 ; 3 uses
  %i.bbd = icmp ugt i16 %i.bbc, 249
  br i1 %i.bbd, label %.preheader1345.7, label %.loopexit1346

.preheader1345.7:                                 ; preds = %bb.kd
  %i.bbe = shl i16 %i.bbc, 1                      ; 2 uses
  %i.bbf = icmp ugt i16 %i.bbe, 4595
  br i1 %i.bbf, label %split3328, label %bb.ke

bb.ke:                                            ; preds = %.preheader1345.7
  %i.bbg = trunc i32 %.241091.lcssa to i16
  %i.bbh = lshr i16 %i.bbg, 12
  %i.bbi = and i16 %i.bbh, 1
  %i.bbj = or disjoint i16 %i.bbe, %i.bbi
  %i.bbk = zext nneg i16 %i.bbj to i64
  %i.bbl = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bbk
  %i.bbm = load i16, ptr %i.bbl, align 2, !tbaa !34 ; 3 uses
  %i.bbn = icmp ugt i16 %i.bbm, 249
  br i1 %i.bbn, label %.preheader1345.8, label %.loopexit1346

.preheader1345.8:                                 ; preds = %bb.ke
  %i.bbo = shl i16 %i.bbm, 1                      ; 2 uses
  %i.bbp = icmp ugt i16 %i.bbo, 4595
  br i1 %i.bbp, label %split3328, label %bb.kf

bb.kf:                                            ; preds = %.preheader1345.8
  %i.bbq = trunc i32 %.241091.lcssa to i16
  %i.bbr = lshr i16 %i.bbq, 11
  %i.bbs = and i16 %i.bbr, 1
  %i.bbt = or disjoint i16 %i.bbo, %i.bbs
  %i.bbu = zext nneg i16 %i.bbt to i64
  %i.bbv = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bbu
  %i.bbw = load i16, ptr %i.bbv, align 2, !tbaa !34 ; 3 uses
  %i.bbx = icmp ugt i16 %i.bbw, 249
  br i1 %i.bbx, label %.preheader1345.9, label %.loopexit1346

.preheader1345.9:                                 ; preds = %bb.kf
  %i.bby = shl i16 %i.bbw, 1                      ; 2 uses
  %i.bbz = icmp ugt i16 %i.bby, 4595
  br i1 %i.bbz, label %split3328, label %bb.kg

bb.kg:                                            ; preds = %.preheader1345.9
  %i.bca = trunc i32 %.241091.lcssa to i16
  %i.bcb = lshr i16 %i.bca, 10
  %i.bcc = and i16 %i.bcb, 1
  %i.bcd = or disjoint i16 %i.bby, %i.bcc
  %i.bce = zext nneg i16 %i.bcd to i64
  %i.bcf = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bce
  %i.bcg = load i16, ptr %i.bcf, align 2, !tbaa !34 ; 3 uses
  %i.bch = icmp ugt i16 %i.bcg, 249
  br i1 %i.bch, label %.preheader1345.10, label %.loopexit1346

.preheader1345.10:                                ; preds = %bb.kg
  %i.bci = shl i16 %i.bcg, 1                      ; 2 uses
  %i.bcj = icmp ugt i16 %i.bci, 4595
  br i1 %i.bcj, label %split3328, label %bb.kh

bb.kh:                                            ; preds = %.preheader1345.10
  %i.bck = trunc i32 %.241091.lcssa to i16
  %i.bcl = lshr i16 %i.bck, 9
  %i.bcm = and i16 %i.bcl, 1
  %i.bcn = or disjoint i16 %i.bci, %i.bcm
  %i.bco = zext nneg i16 %i.bcn to i64
  %i.bcp = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bco
  %i.bcq = load i16, ptr %i.bcp, align 2, !tbaa !34 ; 3 uses
  %i.bcr = icmp ugt i16 %i.bcq, 249
  br i1 %i.bcr, label %.preheader1345.11, label %.loopexit1346

.preheader1345.11:                                ; preds = %bb.kh
  %i.bcs = shl i16 %i.bcq, 1                      ; 2 uses
  %i.bct = icmp ugt i16 %i.bcs, 4595
  br i1 %i.bct, label %split3328, label %bb.ki

bb.ki:                                            ; preds = %.preheader1345.11
  %i.bcu = trunc i32 %.241091.lcssa to i16
  %i.bcv = lshr i16 %i.bcu, 8
  %i.bcw = and i16 %i.bcv, 1
  %i.bcx = or disjoint i16 %i.bcs, %i.bcw
  %i.bcy = zext nneg i16 %i.bcx to i64
  %i.bcz = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bcy
  %i.bda = load i16, ptr %i.bcz, align 2, !tbaa !34 ; 3 uses
  %i.bdb = icmp ugt i16 %i.bda, 249
  br i1 %i.bdb, label %.preheader1345.12, label %.loopexit1346

.preheader1345.12:                                ; preds = %bb.ki
  %i.bdc = shl i16 %i.bda, 1                      ; 2 uses
  %i.bdd = icmp ugt i16 %i.bdc, 4595
  br i1 %i.bdd, label %split3328, label %bb.kj

bb.kj:                                            ; preds = %.preheader1345.12
  %i.bde = trunc i32 %.241091.lcssa to i16
  %i.bdf = lshr i16 %i.bde, 7
  %i.bdg = and i16 %i.bdf, 1
  %i.bdh = or disjoint i16 %i.bdc, %i.bdg
  %i.bdi = zext nneg i16 %i.bdh to i64
  %i.bdj = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bdi
  %i.bdk = load i16, ptr %i.bdj, align 2, !tbaa !34 ; 3 uses
  %i.bdl = icmp ugt i16 %i.bdk, 249
  br i1 %i.bdl, label %.preheader1345.13, label %.loopexit1346

.preheader1345.13:                                ; preds = %bb.kj
  %i.bdm = shl i16 %i.bdk, 1                      ; 2 uses
end_hunk_3
