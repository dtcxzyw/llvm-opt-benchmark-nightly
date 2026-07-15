inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Fts5StorageIntegrity:bb.a
  br i1 %.not.i.i3.i144.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %columnMem.exit.i142.i
  %i.ps = load i64, ptr %.012.i.i143.i, align 8, !tbaa !227
  br label %sqlite3_value_int.exit.i145.i

bb.dm:                                            ; preds = %columnMem.exit.i142.i
  %i.pt = and i32 %i.pq, 8
  %.not8.i.i.i152.i = icmp eq i32 %i.pt, 0
  br i1 %.not8.i.i.i152.i, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pu = load double, ptr %.012.i.i143.i, align 8, !tbaa !227 ; 3 uses
  %i.pv = fcmp olt double %i.pu, f0xC3DFFFFFFFFFFFFF
  br i1 %i.pv, label %sqlite3_value_int.exit.i145.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pw = fcmp ogt double %i.pu, f0x43DFFFFFFFFFFFFF
  br i1 %i.pw, label %sqlite3_value_int.exit.i145.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.px = fptosi double %i.pu to i64
  br label %sqlite3_value_int.exit.i145.i

bb.dq:                                            ; preds = %bb.dm
  %i.py = and i32 %i.pq, 18
  %.not9.i.i.i153.i = icmp eq i32 %i.py, 0
  br i1 %.not9.i.i.i153.i, label %sqlite3_value_int.exit.i145.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pz = getelementptr inbounds nuw i8, ptr %.012.i.i143.i, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !289
  %.not10.i.i.i154.i = icmp eq ptr %i.qa, null
  br i1 %.not10.i.i.i154.i, label %sqlite3_value_int.exit.i145.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qb = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %.012.i.i143.i), !inline_history !7561
  br label %sqlite3_value_int.exit.i145.i

sqlite3_value_int.exit.i145.i:                    ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dl
  %.0.i.i.i146.i = phi i64 [ %i.ps, %bb.dl ], [ 0, %bb.dq ], [ %i.qb, %bb.ds ], [ 0, %bb.dr ], [ %i.px, %bb.dp ], [ -9223372036854775808, %bb.dn ], [ 9223372036854775807, %bb.do ] ; 2 uses
  br i1 %i.lo, label %columnMem.exit.i.i, label %bb.dt

bb.dt:                                            ; preds = %sqlite3_value_int.exit.i145.i
  %i.qc = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146 ; 3 uses
  %i.qd = load i32, ptr %i.lr, align 4, !tbaa !530 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 103
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !550
  %i.qg = icmp ne i8 %i.qf, 0
  %i.qh = icmp ne i32 %i.qd, 0
  %or.cond.i.i.i147.i = or i1 %i.qh, %i.qg
  br i1 %or.cond.i.i.i147.i, label %bb.du, label %sqlite3ApiExit.exit.i.i148.i

bb.du:                                            ; preds = %bb.dt
  %i.qi = call fastcc i32 @apiHandleError(ptr noundef nonnull %i.qc, i32 noundef %i.qd), !inline_history !7561
  %.pre.i.i151.i = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146
  br label %sqlite3ApiExit.exit.i.i148.i

sqlite3ApiExit.exit.i.i148.i:                     ; preds = %bb.du, %bb.dt
  %i.qj = phi ptr [ %.pre.i.i151.i, %bb.du ], [ %i.qc, %bb.dt ]
  %.0.i.i5.i149.i = phi i32 [ %i.qi, %bb.du ], [ 0, %bb.dt ]
  store i32 %.0.i.i5.i149.i, ptr %i.lr, align 4, !tbaa !530
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !23 ; 2 uses
  %.not.i.i6.i150.i = icmp eq ptr %i.ql, null
  br i1 %.not.i.i6.i150.i, label %sqlite3_mutex_enter.exit.i.i134.i, label %bb.dv

bb.dv:                                            ; preds = %sqlite3ApiExit.exit.i.i148.i
  %i.qm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.qm(ptr noundef nonnull %i.ql) #59, !inline_history !7575
  %.pre314.i = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146
  %.phi.trans.insert315.i = getelementptr inbounds nuw i8, ptr %.pre314.i, i64 24
  %.pre316.i = load ptr, ptr %.phi.trans.insert315.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i133.i = icmp eq ptr %.pre316.i, null
  br i1 %.not.i.i.i133.i, label %sqlite3_mutex_enter.exit.i.i134.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.qn(ptr noundef nonnull %.pre316.i) #59, !inline_history !7574
  br label %sqlite3_mutex_enter.exit.i.i134.i

sqlite3_mutex_enter.exit.i.i134.i:                ; preds = %bb.dw, %bb.dv, %sqlite3ApiExit.exit.i.i148.i
  %i.qo = load ptr, ptr %i.lp, align 8, !tbaa !588 ; 2 uses
  %.not.i.i135.i = icmp eq ptr %i.qo, null
  br i1 %.not.i.i135.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %sqlite3_mutex_enter.exit.i.i134.i
  %i.qp = load i16, ptr %i.lq, align 8, !tbaa !611
  %or.cond.i.i136.i = icmp ugt i16 %i.qp, 3
  br i1 %or.cond.i.i136.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 168
  br label %columnMem.exit.i.i

bb.dz:                                            ; preds = %bb.dx, %sqlite3_mutex_enter.exit.i.i134.i
  %i.qr = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 80
  store i32 25, ptr %i.qs, align 8, !tbaa !589
  call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.qr, i32 noundef 25), !inline_history !7561
  br label %columnMem.exit.i.i

columnMem.exit.i.i:                               ; preds = %bb.dz, %bb.dy, %sqlite3_value_int.exit.i145.i
  %.012.i.i.i = phi ptr [ @columnNullValue.nullMem, %bb.dz ], [ %i.qq, %bb.dy ], [ @columnNullValue.nullMem, %sqlite3_value_int.exit.i145.i ] ; 5 uses
  %i.qt = trunc i64 %.0.i.i.i146.i to i32         ; 8 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  %i.qv = load i16, ptr %i.qu, align 4, !tbaa !162
  %i.qw = zext i16 %i.qv to i32                   ; 3 uses
  %i.qx = and i32 %i.qw, 36
  %.not.i.i3.i.i = icmp eq i32 %i.qx, 0
  br i1 %.not.i.i3.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %columnMem.exit.i.i
  %i.qy = load i64, ptr %.012.i.i.i, align 8, !tbaa !227
  br label %sqlite3_value_int.exit.i.i

bb.eb:                                            ; preds = %columnMem.exit.i.i
  %i.qz = and i32 %i.qw, 8
  %.not8.i.i.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not8.i.i.i.i, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ra = load double, ptr %.012.i.i.i, align 8, !tbaa !227 ; 3 uses
  %i.rb = fcmp olt double %i.ra, f0xC3DFFFFFFFFFFFFF
  br i1 %i.rb, label %sqlite3_value_int.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rc = fcmp ogt double %i.ra, f0x43DFFFFFFFFFFFFF
  br i1 %i.rc, label %sqlite3_value_int.exit.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.rd = fptosi double %i.ra to i64
  br label %sqlite3_value_int.exit.i.i

bb.ef:                                            ; preds = %bb.eb
  %i.re = and i32 %i.qw, 18
  %.not9.i.i.i.i = icmp eq i32 %i.re, 0
  br i1 %.not9.i.i.i.i, label %sqlite3_value_int.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !289
  %.not10.i.i.i.i = icmp eq ptr %i.rg, null
  br i1 %.not10.i.i.i.i, label %sqlite3_value_int.exit.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rh = call fastcc i64 @memIntValue(ptr noundef nonnull readonly %.012.i.i.i), !inline_history !7561
  br label %sqlite3_value_int.exit.i.i

sqlite3_value_int.exit.i.i:                       ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.ea
  %.0.i.i.i137.i = phi i64 [ %i.qy, %bb.ea ], [ 0, %bb.ef ], [ %i.rh, %bb.eh ], [ 0, %bb.eg ], [ %i.rd, %bb.ee ], [ -9223372036854775808, %bb.ec ], [ 9223372036854775807, %bb.ed ]
  br i1 %i.lo, label %sqlite3_column_int.exit.i, label %bb.ei

bb.ei:                                            ; preds = %sqlite3_value_int.exit.i.i
  %i.ri = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146 ; 3 uses
  %i.rj = load i32, ptr %i.lr, align 4, !tbaa !530 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 103
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !550
  %i.rm = icmp ne i8 %i.rl, 0
  %i.rn = icmp ne i32 %i.rj, 0
  %or.cond.i.i.i.i = or i1 %i.rn, %i.rm
  br i1 %or.cond.i.i.i.i, label %bb.ej, label %sqlite3ApiExit.exit.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.ro = call fastcc i32 @apiHandleError(ptr noundef nonnull %i.ri, i32 noundef %i.rj), !inline_history !7561
  %.pre.i.i.i = load ptr, ptr %.pre216.i.i, align 8, !tbaa !146
  br label %sqlite3ApiExit.exit.i.i.i

sqlite3ApiExit.exit.i.i.i:                        ; preds = %bb.ej, %bb.ei
  %i.rp = phi ptr [ %.pre.i.i.i, %bb.ej ], [ %i.ri, %bb.ei ]
  %.0.i.i5.i.i = phi i32 [ %i.ro, %bb.ej ], [ 0, %bb.ei ]
  store i32 %.0.i.i5.i.i, ptr %i.lr, align 4, !tbaa !530
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !23 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %i.rr, null
  br i1 %.not.i.i6.i.i, label %sqlite3_column_int.exit.i, label %bb.ek

bb.ek:                                            ; preds = %sqlite3ApiExit.exit.i.i.i
  %i.rs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.rs(ptr noundef nonnull %i.rr) #59, !inline_history !7575
  br label %sqlite3_column_int.exit.i

sqlite3_column_int.exit.i:                        ; preds = %bb.ek, %sqlite3ApiExit.exit.i.i.i, %sqlite3_value_int.exit.i.i
  %i.rt = load i32, ptr %i.kg, align 4, !tbaa !6703
  %i.ru = icmp sgt i32 %i.rt, %i.qt
  br i1 %i.ru, label %fts5DlidxIterFree.exitthread-pre-split.i, label %bb.el, !llvm.loop !7576

bb.el:                                            ; preds = %sqlite3_column_int.exit.i
  %i.rv = load i32, ptr %i.kb, align 8, !tbaa !6701
  %i.rw = zext i32 %i.rv to i64
  %i.rx = shl i64 %i.rw, 37
  %sext.i = shl i64 %.0.i.i.i146.i, 32
  %i.ry = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.rz = add nsw i64 %i.rx, %i.ry                ; 8 uses
  %i.sa = call fastcc ptr @fts5DataRead(ptr noundef nonnull %i.jf, i64 noundef range(i64 -2147483648, -135291469824) %i.rz), !inline_history !7577 ; 11 uses
  %.not.i126.i = icmp eq ptr %i.sa, null
  br i1 %.not.i126.i, label %.critedge.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8 ; 3 uses
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !6922 ; 4 uses
  %i.sd = icmp slt i32 %i.sc, 4
  br i1 %i.sd, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 12 ; 3 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !6939 ; 6 uses
  %i.sg = icmp sgt i32 %i.sf, %i.sc
  br i1 %i.sg, label %bb.eo, label %fts5LeafRead.exit.i

bb.eo:                                            ; preds = %bb.en, %bb.em
  store i32 267, ptr %i.jr, align 4, !tbaa !6362
  %i.sh = load ptr, ptr %i.jf, align 8, !tbaa !6431 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !6337
  call void (ptr, ptr, ...) @sqlite3Fts5ConfigErrmsg(ptr noundef %i.sh, ptr noundef nonnull @.str.1708, i64 noundef range(i64 -2147483648, -135291469824) %i.rz, ptr noundef %i.sj), !inline_history !7578
  %i.sk = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i.i129.i = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i.i129.i, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.sl = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i130.i = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i130.i, label %sqlite3_mutex_enter.exit.i.i.i131.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.sm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.sm(ptr noundef nonnull %i.sl) #59, !inline_history !7579
  br label %sqlite3_mutex_enter.exit.i.i.i131.i

sqlite3_mutex_enter.exit.i.i.i131.i:              ; preds = %bb.eq, %bb.ep
  %i.sn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.so = call i32 %i.sn(ptr noundef nonnull %i.sa) #59, !inline_history !7580
  %i.sp = sext i32 %i.so to i64
  %i.sq = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.sr = sub nsw i64 %i.sq, %i.sp
  store i64 %i.sr, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ss = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.st = add nsw i64 %i.ss, -1
  store i64 %i.st, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.su = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.su(ptr noundef nonnull %i.sa) #59, !inline_history !7581
  %i.sv = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i.i132.i = icmp eq ptr %i.sv, null
  br i1 %.not.i4.i.i.i132.i, label %.critedge.i.i, label %bb.er

bb.er:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i131.i
  %i.sw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.sw(ptr noundef nonnull %i.sv) #59, !inline_history !7582
  br label %.critedge.i.i

bb.es:                                            ; preds = %bb.eo
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.sx(ptr noundef nonnull %i.sa) #59, !inline_history !7581
  br label %.critedge.i.i

fts5LeafRead.exit.i:                              ; preds = %bb.en
  %.not.i.i144 = icmp sgt i32 %i.sc, %i.sf
  br i1 %.not.i.i144, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %fts5LeafRead.exit.i
  %i.sy = icmp eq i32 %.0.i.i.i164.i, 0
  br i1 %i.sy, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.sz = load i32, ptr %i.kd, align 4, !tbaa !6636
  %i.ta = icmp eq i32 %i.sz, 5
  %i.tb = icmp eq i32 %i.sf, 4
  %or.cond143.i.i = and i1 %i.tb, %i.ta
  br i1 %or.cond143.i.i, label %fts5IntegrityCheckPgidx.exit.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  store i32 267, ptr %i.jr, align 4, !tbaa !6362
  %i.tc = load ptr, ptr %i.jf, align 8, !tbaa !6431 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !6337
  call void (ptr, ptr, ...) @sqlite3Fts5ConfigErrmsg(ptr noundef %i.tc, ptr noundef nonnull @.str.1708, i64 noundef %i.rz, ptr noundef %i.te), !inline_history !7583
  br label %fts5IntegrityCheckPgidx.exit.i.i

bb.ew:                                            ; preds = %fts5LeafRead.exit.i
  %.val155.i.i = load ptr, ptr %i.sa, align 8, !tbaa !6920 ; 5 uses
  %i.tf = sext i32 %i.sf to i64
  %i.tg = getelementptr inbounds i8, ptr %.val155.i.i, i64 %i.tf ; 4 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !227 ; 2 uses
  %i.ti = zext i8 %i.th to i32                    ; 3 uses
  %.not.i.i157.i.i = icmp sgt i8 %i.th, -1
  br i1 %.not.i.i157.i.i, label %fts5LeafFirstTermOff.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !227 ; 2 uses
  %i.tl = zext i8 %i.tk to i32                    ; 2 uses
  %.not27.i.i.i.i = icmp sgt i8 %i.tk, -1
  br i1 %.not27.i.i.i.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.tm = shl nuw nsw i32 %i.ti, 7
  %i.tn = and i32 %i.tm, 16256
  %i.to = or disjoint i32 %i.tn, %i.tl
  br label %fts5LeafFirstTermOff.exit.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tg, i64 2
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !227 ; 2 uses
  %.not28.i.i.i.i = icmp sgt i8 %i.tq, -1
  br i1 %.not28.i.i.i.i, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.tr = zext nneg i8 %i.tq to i32
  %i.ts = shl nuw nsw i32 %i.ti, 14
  %.masked.i.i.i.i = and i32 %i.ts, 2080768
  %i.tt = shl nuw nsw i32 %i.tl, 7
  %i.tu = and i32 %i.tt, 16256
  %i.tv = or disjoint i32 %i.tu, %.masked.i.i.i.i
  %i.tw = or disjoint i32 %i.tv, %i.tr
  br label %fts5LeafFirstTermOff.exit.i.i

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %i.tx = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.tg, ptr noundef nonnull %i.g), !inline_history !7562 ; 0 uses
  %i.ty = load i64, ptr %i.g, align 8, !tbaa !18
  %i.tz = trunc i64 %i.ty to i32
  %i.ua = and i32 %i.tz, 2147483647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  br label %fts5LeafFirstTermOff.exit.i.i

fts5LeafFirstTermOff.exit.i.i:                    ; preds = %bb.fb, %bb.fa, %bb.ey, %bb.ew
  %.0.i.i.i147 = phi i32 [ %i.ua, %bb.fb ], [ %i.to, %bb.ey ], [ %i.tw, %bb.fa ], [ %i.ti, %bb.ew ] ; 4 uses
  %.val153.i.i = load i8, ptr %.val155.i.i, align 1, !tbaa !227
  %i.ub = getelementptr i8, ptr %.val155.i.i, i64 1
  %.val154.i.i = load i8, ptr %i.ub, align 1, !tbaa !227
  %i.uc = zext i8 %.val153.i.i to i32
  %i.ud = shl nuw nsw i32 %i.uc, 8
  %i.ue = zext i8 %.val154.i.i to i32
  %i.uf = or disjoint i32 %i.ud, %i.ue
  %.not132.i.i = icmp samesign ugt i32 %.0.i.i.i147, %i.uf
  %.not133.i.i = icmp slt i32 %.0.i.i.i147, %i.sf
  %or.cond194.i.i = and i1 %.not133.i.i, %.not132.i.i
  br i1 %or.cond194.i.i, label %bb.fc, label %.sink.split.i.i

bb.fc:                                            ; preds = %fts5LeafFirstTermOff.exit.i.i
  %i.ug = zext nneg i32 %.0.i.i.i147 to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 %i.ug ; 4 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !227 ; 2 uses
  %i.uj = zext i8 %i.ui to i32                    ; 3 uses
  %.not.i158.i.i = icmp sgt i8 %i.ui, -1
  br i1 %.not.i158.i.i, label %sqlite3Fts5GetVarint32.exit.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 1
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !227 ; 2 uses
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %.not27.i.i.i = icmp sgt i8 %i.ul, -1
  br i1 %.not27.i.i.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.un = shl nuw nsw i32 %i.uj, 7
  %i.uo = and i32 %i.un, 16256
  %i.up = or disjoint i32 %i.uo, %i.um
  br label %sqlite3Fts5GetVarint32.exit.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uh, i64 2
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !227 ; 2 uses
  %.not28.i.i.i = icmp sgt i8 %i.ur, -1
  br i1 %.not28.i.i.i, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.us = zext nneg i8 %i.ur to i32
  %i.ut = shl nuw nsw i32 %i.uj, 14
  %.masked.i.i.i = and i32 %i.ut, 2080768
  %i.uu = shl nuw nsw i32 %i.um, 7
  %i.uv = and i32 %i.uu, 16256
  %i.uw = or disjoint i32 %i.uv, %.masked.i.i.i
  %i.ux = or disjoint i32 %i.uw, %i.us
  br label %sqlite3Fts5GetVarint32.exit.i.i

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.uy = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.uh, ptr noundef nonnull %i.f), !inline_history !7562
  %i.uz = load i64, ptr %i.f, align 8, !tbaa !18
  %i.va = trunc i64 %i.uz to i32
  %i.vb = and i32 %i.va, 2147483647
  %i.vc = zext nneg i8 %i.uy to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %sqlite3Fts5GetVarint32.exit.i.i

sqlite3Fts5GetVarint32.exit.i.i:                  ; preds = %bb.fh, %bb.fg, %bb.fe, %bb.fc
  %.0188.i.i = phi i32 [ %i.vb, %bb.fh ], [ %i.up, %bb.fe ], [ %i.ux, %bb.fg ], [ %i.uj, %bb.fc ] ; 3 uses
  %.0.i159.i.i = phi i32 [ %i.vc, %bb.fh ], [ 2, %bb.fe ], [ 3, %bb.fg ], [ 1, %bb.fc ]
  %i.vd = call i32 @llvm.smin.i32(i32 %.0188.i.i, i32 %.0.i.i.i164.i) ; 2 uses
  %i.ve = icmp slt i32 %i.vd, 1
  br i1 %i.ve, label %.thread.i.i149, label %bb.fi

.thread.i.i149:                                   ; preds = %sqlite3Fts5GetVarint32.exit.i.i
  %i.vf = sub nsw i32 %.0188.i.i, %.0.i.i.i164.i
  br label %bb.fj

bb.fi:                                            ; preds = %sqlite3Fts5GetVarint32.exit.i.i
  %i.vg = add nuw nsw i32 %.0.i159.i.i, %.0.i.i.i147
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %.val155.i.i, i64 %i.vh
  %i.vj = zext nneg i32 %i.vd to i64
  %i.vk = call i32 @memcmp(ptr noundef nonnull %i.vi, ptr noundef %i.of, i64 noundef %i.vj) #60, !inline_history !7562
  %.fr.i.i = freeze i32 %i.vk                     ; 2 uses
  %i.vl = icmp eq i32 %.fr.i.i, 0
  %i.vm = sub nsw i32 %.0188.i.i, %.0.i.i.i164.i
  %spec.select.i.i = select i1 %i.vl, i32 %i.vm, i32 %.fr.i.i
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %.thread.i.i149
  %i.vn = phi i32 [ %spec.select.i.i, %bb.fi ], [ %i.vf, %.thread.i.i149 ]
  %i.vo = icmp slt i32 %i.vn, 0
  br i1 %i.vo, label %.sink.split.i.i, label %bb.fk

.sink.split.i.i:                                  ; preds = %bb.fj, %fts5LeafFirstTermOff.exit.i.i
  store i32 267, ptr %i.jr, align 4, !tbaa !6362
  %i.vp = load ptr, ptr %i.jf, align 8, !tbaa !6431 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !6337
  call void (ptr, ptr, ...) @sqlite3Fts5ConfigErrmsg(ptr noundef %i.vp, ptr noundef nonnull @.str.1708, i64 noundef %i.rz, ptr noundef %i.vr), !inline_history !7562
  %.pre317.i = load i32, ptr %i.se, align 4, !tbaa !6939
  %.pre318.i = load i32, ptr %i.sb, align 8, !tbaa !6922
  br label %bb.fk

bb.fk:                                            ; preds = %.sink.split.i.i, %bb.fj
  %i.vs = phi i32 [ %.pre318.i, %.sink.split.i.i ], [ %i.sc, %bb.fj ]
  %i.vt = phi i32 [ %.pre317.i, %.sink.split.i.i ], [ %i.sf, %bb.fj ] ; 2 uses
  %i.vu = icmp slt i32 %i.vt, %i.vs
  br i1 %i.vu, label %.lr.ph.i.i.i, label %fts5IntegrityCheckPgidx.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fk, %sqlite3Fts5BufferSet.exit81.i.i.i
  %.0153.i.i.i = phi i64 [ %i.yu, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 2 uses
  %.041152.i.i.i = phi i32 [ %i.ys, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ %i.vt, %bb.fk ] ; 2 uses
  %.sroa.14.0150.i.i.i = phi i32 [ %.sroa.14.2.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 8 uses
  %.sroa.9.0149.i.i.i = phi i32 [ %.sroa.9.1.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 2 uses
  %.sroa.0.0147.i.i.i = phi ptr [ %.sroa.0.2.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ null, %bb.fk ] ; 8 uses
  %.sroa.25.0146.i.i.i = phi i32 [ %.sroa.25.3133.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 15 uses
  %.sroa.13.0145.i.i.i = phi i32 [ %.sroa.13.3132.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ 0, %bb.fk ] ; 4 uses
  %.sroa.098.0144.i.i.i = phi ptr [ %.sroa.098.3131.i.i.i, %sqlite3Fts5BufferSet.exit81.i.i.i ], [ null, %bb.fk ] ; 12 uses
  %i.vv = load i32, ptr %i.jr, align 4, !tbaa !6362
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.fl, label %.critedge.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i.i
  %i.vx = load ptr, ptr %i.sa, align 8, !tbaa !6920 ; 5 uses
  %i.vy = sext i32 %.041152.i.i.i to i64
  %i.vz = getelementptr inbounds i8, ptr %i.vx, i64 %i.vy ; 9 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !227 ; 2 uses
  %i.wb = zext i8 %i.wa to i32                    ; 4 uses
  %.not.i.i160.i.i = icmp sgt i8 %i.wa, -1
  br i1 %.not.i.i160.i.i, label %sqlite3Fts5GetVarint32.exit.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !227 ; 2 uses
  %i.we = zext i8 %i.wd to i32                    ; 3 uses
  %.not27.i.i161.i.i = icmp sgt i8 %i.wd, -1
  br i1 %.not27.i.i161.i.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.wf = shl nuw nsw i32 %i.wb, 7
  %i.wg = and i32 %i.wf, 16256
  %i.wh = or disjoint i32 %i.wg, %i.we
  br label %sqlite3Fts5GetVarint32.exit.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !227 ; 3 uses
end_hunk_0
