inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0_@eval_nodes_block:bb.a
  br i1 %.not866, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @bit_or(ptr noundef nonnull %i.nl, ptr noundef %i.nn) #8
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.no = call ptr @bit_copy(ptr noundef %i.nn) #8
  store ptr %i.no, ptr %i.nk, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct, %.lr.ph1205
  %i.np = load ptr, ptr %i.h, align 8
  %i.nq = load i32, ptr %i.j, align 4
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.nr
  store i32 %i.nh, ptr %i.ns, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %.07061203, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = load ptr, ptr %i.an, align 8
  %i.nw = call i32 @bit_overlap(ptr noundef %i.nu, ptr noundef %i.nv) #8 ; 2 uses
  br i1 %.0564.ph, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.nx = load ptr, ptr %i.s, align 8
  %i.ny = load i32, ptr %i.j, align 4
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4
  %i.oc = call i32 @hres_get_capacity(ptr noundef %i.au, i32 noundef %i.ob) #8
  %i.od = load i32, ptr %i.he, align 4
  %i.oe = udiv i32 %i.oc, %i.od
  %i.of = call i32 @llvm.umin.i32(i32 %i.oe, i32 %i.nw)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.0551 = phi i32 [ %i.of, %bb.cv ], [ %i.nw, %bb.cu ] ; 2 uses
  %i.og = sext i32 %i.nh to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.og ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = add i32 %i.oi, %.0551
  store i32 %i.oj, ptr %i.oh, align 4
  br i1 %.not867, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ok = load i32, ptr %i.j, align 4
  %i.ol = sdiv i32 %i.ok, %i.dm
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.om ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = add i32 %i.oo, %.0551
  store i32 %i.op, ptr %i.on, align 4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.oq = load i32, ptr %i.j, align 4
  %i.or = add nsw i32 %i.oq, 1                    ; 3 uses
  store i32 %i.or, ptr %i.j, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %.07061203, i64 40
  %i.ot = load i32, ptr %i.gz, align 8
  %i.ou = icmp slt i32 %i.or, %i.ot
  br i1 %i.ou, label %.lr.ph1205, label %._crit_edge1206, !llvm.loop !13

._crit_edge1206:                                  ; preds = %bb.cy, %bb.cq
  %i.ov = icmp ne ptr %i.mv, null
  %or.cond3 = or i1 %i.hf, %i.ov                  ; 3 uses
  br i1 %or.cond3, label %.loopexit1119, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge1206
  %i.ow = call ptr @slurm_xcalloc(i64 noundef %.1574, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 605, ptr noundef nonnull @__func__.eval_nodes_block) #8 ; 2 uses
  store ptr %i.ow, ptr %i.r, align 8
  store i32 0, ptr %i.j, align 4
  br i1 %i.hg, label %.lr.ph1209, label %._crit_edge1227

.lr.ph1209:                                       ; preds = %bb.cz, %.lr.ph1209
  %storemerge8021207 = phi i32 [ %i.pg, %.lr.ph1209 ], [ 0, %bb.cz ] ; 2 uses
  %i.ox = sdiv i32 %storemerge8021207, %.1567
  %i.oy = sext i32 %storemerge8021207 to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 4
  %i.pb = sext i32 %i.ox to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %i.pb ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = add i32 %i.pd, %i.pa
  store i32 %i.pe, ptr %i.pc, align 4
  %i.pf = load i32, ptr %i.j, align 4
  %i.pg = add nsw i32 %i.pf, 1                    ; 3 uses
  store i32 %i.pg, ptr %i.j, align 4
  %i.ph = icmp slt i32 %i.pg, %.0617
  br i1 %i.ph, label %.lr.ph1209, label %.loopexit1119.thread, !llvm.loop !14

.loopexit1119.thread:                             ; preds = %.lr.ph1209
  store i32 0, ptr %i.j, align 4
  br label %.lr.ph1226.preheader

.loopexit1119:                                    ; preds = %._crit_edge1206
  store i32 0, ptr %i.j, align 4
  br i1 %i.hg, label %.lr.ph1226.preheader, label %._crit_edge1227

.lr.ph1226.preheader:                             ; preds = %.loopexit1119.thread, %.loopexit1119
  br label %.lr.ph1226

.lr.ph1226:                                       ; preds = %.lr.ph1226.preheader, %bb.di
  %i.pi = phi ptr [ %i.si, %bb.di ], [ %i.ml, %.lr.ph1226.preheader ] ; 4 uses
  %.15391224 = phi i32 [ %.3.ph, %bb.di ], [ %.0538, %.lr.ph1226.preheader ] ; 6 uses
  %.16211223 = phi i64 [ %.3623.ph, %bb.di ], [ %.0620, %.lr.ph1226.preheader ] ; 8 uses
  %.06261222 = phi i32 [ %.2628.ph, %bb.di ], [ -1, %.lr.ph1226.preheader ] ; 6 uses
  %storemerge8031221 = phi i32 [ %i.sk, %bb.di ], [ 0, %.lr.ph1226.preheader ] ; 2 uses
  br i1 %or.cond3, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph1226
  %i.pj = load ptr, ptr %i.r, align 8
  %i.pk = sdiv i32 %storemerge8031221, %.1567
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4
  %i.po = icmp ult i32 %i.pn, %.0577
  br i1 %i.po, label %bb.di, label %bb.db

bb.db:                                            ; preds = %bb.da, %.lr.ph1226
  %i.pp = load ptr, ptr %i.a, align 8
  %i.pq = sext i32 %storemerge8031221 to i64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.pq
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = load ptr, ptr %i.an, align 8
  call void @bit_and(ptr noundef %i.ps, ptr noundef %i.pt) #8
  %i.pu = load i32, ptr %i.j, align 4             ; 2 uses
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4            ; 3 uses
  %.not804 = icmp eq ptr %i.pi, null
  br i1 %.not804, label %.loopexit1110, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.py = sdiv i32 %.0614, %i.dm                  ; 2 uses
  %i.pz = mul nsw i32 %i.py, %i.pu                ; 2 uses
  %i.qa = sub nsw i32 %.1592, %i.pz
  %i.qb = call i32 @llvm.smin.i32(i32 %i.py, i32 %i.qa) ; 2 uses
  %i.qc = sext i32 %i.pz to i64                   ; 3 uses
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.qc
  %i.qe = sext i32 %i.qb to i64
  call void @qsort(ptr noundef nonnull %i.qd, i64 noundef %i.qe, i64 noundef 4, ptr noundef nonnull @_cmp_bblock) #8
  %i.qf = call i32 @llvm.smin.i32(i32 %.1597, i32 %i.qb) ; 3 uses
  store i32 0, ptr %i.k, align 4
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.lr.ph1213, label %.loopexit1110

.lr.ph1213:                                       ; preds = %bb.dc
  %wide.trip.count = zext nneg i32 %i.qf to i64   ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ml, i64 %i.qc ; 3 uses
  %min.iters.check = icmp ult i32 %i.qf, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1213
  %i.qh = add nsw i64 %i.qc, %wide.trip.count
  %i.qi = shl nsw i64 %i.qh, 2
  %scevgep1678 = getelementptr i8, ptr %i.ml, i64 %i.qi
  %bound0 = icmp ult ptr %i.k, %scevgep1678
  %bound1 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qj = phi i64 [ 3, %vector.ph ], [ %i.qm, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ql, %vector.body ]
  %i.qk = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %i.qk, align 4, !alias.scope !15
  %i.ql = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qm = add nuw nsw i64 %i.qj, 4
  %i.qn = icmp eq i64 %index.next, %n.vec
  br i1 %i.qn, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %i.qo = trunc i64 %i.qj to i32
  %i.qp = add i32 %i.qo, 1
  store i32 %i.qp, ptr %i.k, align 4, !alias.scope !21, !noalias !15
  %i.qq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ql) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit1110, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1213, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1213 ], [ %n.vec, %middle.block ]
  %.05351211.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph1213 ], [ %i.qq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.05351211 = phi i32 [ %i.qs, %scalar.ph ], [ %.05351211.ph, %scalar.ph.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.qr = load i32, ptr %gep, align 4
  %i.qs = add i32 %i.qr, %.05351211               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.qt = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.qt, ptr %i.k, align 4
  %2 = icmp samesign ult i64 %indvars.iv.next, %wide.trip.count
  br i1 %2, label %scalar.ph, label %.loopexit1110, !llvm.loop !23

.loopexit1110:                                    ; preds = %scalar.ph, %middle.block, %bb.dc, %bb.db
  %i.qu = phi ptr [ null, %bb.db ], [ %i.pi, %bb.dc ], [ %i.ml, %middle.block ], [ %i.ml, %scalar.ph ] ; 4 uses
  %.1536 = phi i32 [ %i.px, %bb.db ], [ 0, %bb.dc ], [ %i.qq, %middle.block ], [ %i.qs, %scalar.ph ]
  store i32 0, ptr %i.k, align 4
  %i.qv = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.qw = load i32, ptr %i.j, align 4
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = call ptr @next_node_bitmap(ptr noundef %i.qz, ptr noundef nonnull %i.k) #8
  %.not8071215 = icmp eq ptr %i.ra, null
  br i1 %.not8071215, label %._crit_edge1219, label %.lr.ph1218

.lr.ph1218:                                       ; preds = %.loopexit1110, %.lr.ph1218
  %.05371216 = phi i32 [ %i.rh, %.lr.ph1218 ], [ 0, %.loopexit1110 ]
  %i.rb = load i32, ptr %i.k, align 4             ; 2 uses
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.rc
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = load i16, ptr %i.re, align 8
  %i.rg = zext i16 %i.rf to i32
  %i.rh = add i32 %.05371216, %i.rg               ; 2 uses
  %i.ri = add nsw i32 %i.rb, 1
  store i32 %i.ri, ptr %i.k, align 4
  %i.rj = load i32, ptr %i.j, align 4
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.rk
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = call ptr @next_node_bitmap(ptr noundef %i.rm, ptr noundef nonnull %i.k) #8
  %.not807 = icmp eq ptr %i.rn, null
  br i1 %.not807, label %._crit_edge1219, label %.lr.ph1218, !llvm.loop !24

._crit_edge1219:                                  ; preds = %.lr.ph1218, %.loopexit1110
  %.0537.lcssa = phi i32 [ 0, %.loopexit1110 ], [ %i.rh, %.lr.ph1218 ]
  br i1 %.not808, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %._crit_edge1219
  %i.ro = load i32, ptr %i.j, align 4
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.rp
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = call i32 @bit_overlap_any(ptr noundef nonnull %.2542, ptr noundef %i.rr) #8
  %i.rt = icmp ne i32 %i.rs, 0
  %i.ru = icmp eq i32 %.06261222, -1
  %or.cond33 = select i1 %i.rt, i1 %i.ru, i1 false
  br i1 %or.cond33, label %.thread975, label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge1219
  %i.rv = call zeroext i1 @eval_nodes_enough_nodes(i32 noundef %.1536, i32 noundef %.3651.lcssa, i32 noundef %i.ae, i32 noundef %.0609) #8
  %.not889 = xor i1 %i.rv, true
  %i.rw = icmp ugt i32 %.2668.lcssa, %.0537.lcssa
  %or.cond890 = select i1 %.not889, i1 true, i1 %i.rw
  %brmerge = or i1 %.not808, %or.cond890
  br i1 %brmerge, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rx = load i32, ptr %i.j, align 4
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.ry
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = call ptr @list_find_first(ptr noundef %i.kf, ptr noundef nonnull @eval_nodes_topo_node_find, ptr noundef %i.sa) #8 ; 2 uses
  %.not809 = icmp eq ptr %i.sb, null
  br i1 %.not809, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sc = icmp eq i32 %.06261222, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %.pre1404 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.sd = icmp ult i64 %.pre1404, %.16211223
  %or.cond1609 = select i1 %i.sc, i1 true, i1 %i.sd
  br i1 %or.cond1609, label %._crit_edge1403, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.se = icmp ne i64 %.pre1404, %.16211223
  %.not810 = icmp ugt i32 %i.px, %.15391224
  %or.cond891 = select i1 %i.se, i1 true, i1 %.not810
  br i1 %or.cond891, label %bb.di, label %._crit_edge1403

._crit_edge1403:                                  ; preds = %bb.dg, %bb.dh
  %i.sf = phi i64 [ %.pre1404, %bb.dg ], [ %.16211223, %bb.dh ]
  %i.sg = load i32, ptr %i.j, align 4
  br label %bb.di

.thread975:                                       ; preds = %bb.dd
  %i.sh = load i32, ptr %i.j, align 4
  br label %bb.dj

bb.di:                                            ; preds = %bb.de, %bb.da, %bb.dh, %._crit_edge1403, %bb.df
  %i.si = phi ptr [ %i.qu, %bb.dh ], [ %i.qu, %bb.df ], [ %i.qu, %._crit_edge1403 ], [ %i.pi, %bb.da ], [ %i.qu, %bb.de ]
  %.2628.ph = phi i32 [ %.06261222, %bb.dh ], [ %.06261222, %bb.df ], [ %i.sg, %._crit_edge1403 ], [ %.06261222, %bb.da ], [ %.06261222, %bb.de ] ; 2 uses
  %.3623.ph = phi i64 [ %.16211223, %bb.dh ], [ %.16211223, %bb.df ], [ %i.sf, %._crit_edge1403 ], [ %.16211223, %bb.da ], [ %.16211223, %bb.de ] ; 2 uses
  %.3.ph = phi i32 [ %.15391224, %bb.dh ], [ %.15391224, %bb.df ], [ %i.px, %._crit_edge1403 ], [ %.15391224, %bb.da ], [ %.15391224, %bb.de ] ; 2 uses
  %i.sj = load i32, ptr %i.j, align 4
  %i.sk = add nsw i32 %i.sj, 1                    ; 3 uses
  store i32 %i.sk, ptr %i.j, align 4
  %i.sl = icmp slt i32 %i.sk, %.0617
  br i1 %i.sl, label %.lr.ph1226, label %._crit_edge1227, !llvm.loop !25

._crit_edge1227:                                  ; preds = %bb.di, %bb.cz, %.loopexit1119
  %.0626.lcssa = phi i32 [ -1, %.loopexit1119 ], [ -1, %bb.cz ], [ %.2628.ph, %bb.di ] ; 3 uses
  %.1621.lcssa = phi i64 [ %.0620, %.loopexit1119 ], [ %.0620, %bb.cz ], [ %.3623.ph, %bb.di ] ; 2 uses
  %.1539.lcssa = phi i32 [ %.0538, %.loopexit1119 ], [ %.0538, %bb.cz ], [ %.3.ph, %bb.di ] ; 2 uses
  br i1 %.not868, label %.thread, label %bb.dj

bb.dj:                                            ; preds = %.thread975, %._crit_edge1227
  %.16211129 = phi i64 [ %.16211223, %.thread975 ], [ %.1621.lcssa, %._crit_edge1227 ]
  %.15391127 = phi i32 [ %.15391224, %.thread975 ], [ %.1539.lcssa, %._crit_edge1227 ]
  %.3629979 = phi i32 [ %i.sh, %.thread975 ], [ %.0626.lcssa, %._crit_edge1227 ] ; 3 uses
  %i.sm = icmp eq i32 %.3629979, -1
  br i1 %i.sm, label %bb.dk, label %bb.do

.thread:                                          ; preds = %._crit_edge1227
  %i.sn = load ptr, ptr %i.an, align 8
  call void @bit_clear_all(ptr noundef %i.sn) #8
  %i.so = icmp eq i32 %.0626.lcssa, -1
  br i1 %i.so, label %bb.dk, label %.thread1519

bb.dk:                                            ; preds = %.thread, %bb.dj
  %i.sp = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.sq = and i64 %i.sp, 1
  %.not864 = icmp eq i64 %i.sq, 0
  br i1 %.not864, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sr = call i32 @get_log_level() #8
  %i.ss = icmp sgt i32 %i.sr, 3
  br i1 %i.ss, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_block, ptr noundef %i.y) #8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm, %bb.dk
  %i.st = icmp sgt i32 %.0586, 1
  %. = select i1 %i.st, i32 7204, i32 7203
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.su, align 4
  br label %.thread1018

bb.do:                                            ; preds = %bb.dj
  %i.sv = load ptr, ptr %i.a, align 8
  %i.sw = sext i32 %.3629979 to i64
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.sv, i64 %i.sw
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = call i32 @bit_super_set(ptr noundef nonnull %.2542, ptr noundef %i.sy) #8
  %.not811 = icmp eq i32 %i.sz, 0
  br i1 %.not811, label %bb.dp, label %.thread1519

bb.dp:                                            ; preds = %bb.do
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.ta, align 4
  %i.tb = call i32 @get_log_level() #8
  %i.tc = icmp sgt i32 %i.tb, 2
  br i1 %i.tc, label %bb.dq, label %.thread1018

bb.dq:                                            ; preds = %bb.dp
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_block, ptr noundef %i.y) #8
  br label %.thread1018

.thread1519:                                      ; preds = %.thread, %bb.do
  %.1621112915161525 = phi i64 [ %.16211129, %bb.do ], [ %.1621.lcssa, %.thread ]
  %.1539112715171524 = phi i32 [ %.15391127, %bb.do ], [ %.1539.lcssa, %.thread ]
  %i.td = phi i1 [ true, %bb.do ], [ false, %.thread ] ; 4 uses
  %.362997915181523 = phi i32 [ %.3629979, %bb.do ], [ %.0626.lcssa, %.thread ] ; 6 uses
  br i1 %or.cond3, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %.thread1519
  %i.te = sdiv i32 %.362997915181523, %.1567      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #8
  %i.tf = load i32, ptr @node_record_count, align 4
  %i.tg = sext i32 %i.tf to i64
  %i.th = call ptr @bit_alloc(i64 noundef %i.tg) #8 ; 2 uses
  store ptr %i.th, ptr %i.t, align 8
  store i32 0, ptr %i.j, align 4
  br i1 %i.hg, label %.lr.ph1233, label %._crit_edge1234

.lr.ph1233:                                       ; preds = %bb.dr, %bb.dt
  %storemerge8121231 = phi i32 [ %i.tq, %bb.dt ], [ 0, %bb.dr ] ; 3 uses
  %i.ti = sdiv i32 %storemerge8121231, %.1567
  %i.tj = icmp eq i32 %i.ti, %i.te
  br i1 %i.tj, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph1233
  %i.tk = load ptr, ptr %i.t, align 8
  %i.tl = load ptr, ptr %i.a, align 8
  %i.tm = sext i32 %storemerge8121231 to i64
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.tl, i64 %i.tm
  %i.to = load ptr, ptr %i.tn, align 8
  call void @bit_or(ptr noundef %i.tk, ptr noundef %i.to) #8
  %.pre1405 = load i32, ptr %i.j, align 4
  br label %bb.dt

bb.dt:                                            ; preds = %.lr.ph1233, %bb.ds
  %i.tp = phi i32 [ %storemerge8121231, %.lr.ph1233 ], [ %.pre1405, %bb.ds ]
  %i.tq = add nsw i32 %i.tp, 1                    ; 3 uses
  store i32 %i.tq, ptr %i.j, align 4
  %i.tr = icmp slt i32 %i.tq, %.0617
  br i1 %i.tr, label %.lr.ph1233, label %._crit_edge1234.loopexit, !llvm.loop !26

end_hunk_0
