Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/eval_nodes_block?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0_@eval_nodes_block:bb.a
bb.cp:                                            ; preds = %bb.cn
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.na, i8 0, i64 %i.hc, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.nc = phi ptr [ %i.na, %bb.cp ], [ %i.nb, %bb.co ] ; 3 uses
  store i32 0, ptr %i.j, align 4
  %i.nd = load i32, ptr %i.gz, align 8
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph1205.preheader, label %._crit_edge1206

.lr.ph1205.preheader:                             ; preds = %bb.cq
  %i.nf = load ptr, ptr %i.hd, align 8
  %.not867 = icmp eq ptr %i.ml, null
  br label %.lr.ph1205

.lr.ph1205:                                       ; preds = %.lr.ph1205.preheader, %bb.cy
  %i.ng = phi i32 [ %i.or, %bb.cy ], [ 0, %.lr.ph1205.preheader ]
  %.07061203 = phi ptr [ %i.os, %bb.cy ], [ %i.nf, %.lr.ph1205.preheader ] ; 3 uses
  %i.nh = sdiv i32 %i.ng, %.0614                  ; 3 uses
  br i1 %.not800, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph1205
  %i.ni = load ptr, ptr %i.a, align 8
  %i.nj = sext i32 %i.nh to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.nj ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8            ; 2 uses
  %.not866 = icmp eq ptr %i.nl, null
  %i.nm = getelementptr inbounds nuw i8, ptr %.07061203, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8            ; 2 uses
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
  br i1 %i.ou, label %.lr.ph1205, label %._crit_edge1206, !llvm.loop !11

._crit_edge1206:                                  ; preds = %bb.cy, %bb.cq
  %or.cond3 = or i1 %i.hf, %.not800               ; 3 uses
  br i1 %or.cond3, label %.loopexit1119, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge1206
  %i.ov = call ptr @slurm_xcalloc(i64 noundef %.1574, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 605, ptr noundef nonnull @__func__.eval_nodes_block) #8 ; 2 uses
  store ptr %i.ov, ptr %i.r, align 8
  store i32 0, ptr %i.j, align 4
  br i1 %i.hg, label %.lr.ph1209, label %._crit_edge1227

.lr.ph1209:                                       ; preds = %bb.cz, %.lr.ph1209
  %storemerge8021207 = phi i32 [ %i.pf, %.lr.ph1209 ], [ 0, %bb.cz ] ; 2 uses
  %i.ow = sdiv i32 %storemerge8021207, %.1567
  %i.ox = sext i32 %storemerge8021207 to i64
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4
  %i.pa = sext i32 %i.ow to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.ov, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = add i32 %i.pc, %i.oz
  store i32 %i.pd, ptr %i.pb, align 4
  %i.pe = load i32, ptr %i.j, align 4
  %i.pf = add nsw i32 %i.pe, 1                    ; 3 uses
  store i32 %i.pf, ptr %i.j, align 4
  %i.pg = icmp slt i32 %i.pf, %.0617
  br i1 %i.pg, label %.lr.ph1209, label %.loopexit1119.thread, !llvm.loop !12

.loopexit1119.thread:                             ; preds = %.lr.ph1209
  store i32 0, ptr %i.j, align 4
  br label %.lr.ph1226.preheader

.loopexit1119:                                    ; preds = %._crit_edge1206
  store i32 0, ptr %i.j, align 4
  br i1 %i.hg, label %.lr.ph1226.preheader, label %._crit_edge1227

.lr.ph1226.preheader:                             ; preds = %.loopexit1119.thread, %.loopexit1119
  br label %.lr.ph1226

.lr.ph1226:                                       ; preds = %.lr.ph1226.preheader, %bb.di
  %i.ph = phi ptr [ %i.sh, %bb.di ], [ %i.ml, %.lr.ph1226.preheader ] ; 4 uses
  %.15391224 = phi i32 [ %.3.ph, %bb.di ], [ %.0538, %.lr.ph1226.preheader ] ; 6 uses
  %.16211223 = phi i64 [ %.3623.ph, %bb.di ], [ %.0620, %.lr.ph1226.preheader ] ; 8 uses
  %.06261222 = phi i32 [ %.2628.ph, %bb.di ], [ -1, %.lr.ph1226.preheader ] ; 6 uses
  %storemerge8031221 = phi i32 [ %i.sj, %bb.di ], [ 0, %.lr.ph1226.preheader ] ; 2 uses
  br i1 %or.cond3, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph1226
  %i.pi = load ptr, ptr %i.r, align 8
  %i.pj = sdiv i32 %storemerge8031221, %.1567
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4
  %i.pn = icmp ult i32 %i.pm, %.0577
  br i1 %i.pn, label %bb.di, label %bb.db

bb.db:                                            ; preds = %bb.da, %.lr.ph1226
  %i.po = load ptr, ptr %i.a, align 8
  %i.pp = sext i32 %storemerge8031221 to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.pp
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = load ptr, ptr %i.an, align 8
  call void @bit_and(ptr noundef %i.pr, ptr noundef %i.ps) #8
  %i.pt = load i32, ptr %i.j, align 4             ; 2 uses
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4            ; 3 uses
  %.not804 = icmp eq ptr %i.ph, null
  br i1 %.not804, label %.loopexit1110, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.px = sdiv i32 %.0614, %i.dm                  ; 2 uses
  %i.py = mul nsw i32 %i.px, %i.pt                ; 2 uses
  %i.pz = sub nsw i32 %.1592, %i.py
  %i.qa = call i32 @llvm.smin.i32(i32 %i.px, i32 %i.pz) ; 2 uses
  %i.qb = sext i32 %i.py to i64                   ; 3 uses
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.qb
  %i.qd = sext i32 %i.qa to i64
  call void @qsort(ptr noundef nonnull %i.qc, i64 noundef %i.qd, i64 noundef 4, ptr noundef nonnull @_cmp_bblock) #8
  %i.qe = call i32 @llvm.smin.i32(i32 %.1597, i32 %i.qa) ; 3 uses
  store i32 0, ptr %i.k, align 4
  %i.qf = icmp sgt i32 %i.qe, 0
  br i1 %i.qf, label %.lr.ph1213, label %.loopexit1110

.lr.ph1213:                                       ; preds = %bb.dc
  %wide.trip.count = zext nneg i32 %i.qe to i64   ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ml, i64 %i.qb ; 3 uses
  %min.iters.check = icmp ult i32 %i.qe, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1213
  %i.qg = add nsw i64 %i.qb, %wide.trip.count
  %i.qh = shl nsw i64 %i.qg, 2
  %scevgep1683 = getelementptr i8, ptr %i.ml, i64 %i.qh
  %bound0 = icmp ult ptr %i.k, %scevgep1683
  %bound1 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qi = phi i64 [ 3, %vector.ph ], [ %i.ql, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.qk, %vector.body ]
  %i.qj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %i.qj, align 4, !alias.scope !46
  %i.qk = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ql = add nuw nsw i64 %i.qi, 4
  %i.qm = icmp eq i64 %index.next, %n.vec
  br i1 %i.qm, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %i.qn = trunc i64 %i.qi to i32
  %i.qo = add i32 %i.qn, 1
  store i32 %i.qo, ptr %i.k, align 4, !alias.scope !48, !noalias !46
  %i.qp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.qk) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit1110, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1213, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1213 ], [ %n.vec, %middle.block ]
  %.05351211.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph1213 ], [ %i.qp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.05351211 = phi i32 [ %i.qr, %scalar.ph ], [ %.05351211.ph, %scalar.ph.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.qq = load i32, ptr %gep, align 4
  %i.qr = add i32 %i.qq, %.05351211               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.qs = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.qs, ptr %i.k, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1110, label %scalar.ph, !llvm.loop !17

.loopexit1110:                                    ; preds = %scalar.ph, %middle.block, %bb.dc, %bb.db
  %i.qt = phi ptr [ null, %bb.db ], [ %i.ph, %bb.dc ], [ %i.ml, %middle.block ], [ %i.ml, %scalar.ph ] ; 4 uses
  %.1536 = phi i32 [ %i.pw, %bb.db ], [ 0, %bb.dc ], [ %i.qp, %middle.block ], [ %i.qr, %scalar.ph ]
  store i32 0, ptr %i.k, align 4
  %i.qu = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.qv = load i32, ptr %i.j, align 4
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.qw
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = call ptr @next_node_bitmap(ptr noundef %i.qy, ptr noundef nonnull %i.k) #8
  %.not8071215 = icmp eq ptr %i.qz, null
  br i1 %.not8071215, label %._crit_edge1219, label %.lr.ph1218

.lr.ph1218:                                       ; preds = %.loopexit1110, %.lr.ph1218
  %.05371216 = phi i32 [ %i.rg, %.lr.ph1218 ], [ 0, %.loopexit1110 ]
  %i.ra = load i32, ptr %i.k, align 4             ; 2 uses
  %i.rb = sext i32 %i.ra to i64
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.rb
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = load i16, ptr %i.rd, align 8
  %i.rf = zext i16 %i.re to i32
  %i.rg = add i32 %.05371216, %i.rf               ; 2 uses
  %i.rh = add nsw i32 %i.ra, 1
  store i32 %i.rh, ptr %i.k, align 4
  %i.ri = load i32, ptr %i.j, align 4
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = call ptr @next_node_bitmap(ptr noundef %i.rl, ptr noundef nonnull %i.k) #8
  %.not807 = icmp eq ptr %i.rm, null
  br i1 %.not807, label %._crit_edge1219, label %.lr.ph1218, !llvm.loop !18

._crit_edge1219:                                  ; preds = %.lr.ph1218, %.loopexit1110
  %.0537.lcssa = phi i32 [ 0, %.loopexit1110 ], [ %i.rg, %.lr.ph1218 ]
  br i1 %.not868, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %._crit_edge1219
  %i.rn = load i32, ptr %i.j, align 4
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = call i32 @bit_overlap_any(ptr noundef nonnull %.2542, ptr noundef %i.rq) #8
  %i.rs = icmp ne i32 %i.rr, 0
  %i.rt = icmp eq i32 %.06261222, -1
  %or.cond33 = select i1 %i.rs, i1 %i.rt, i1 false
  br i1 %or.cond33, label %.thread975, label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge1219
  %i.ru = call zeroext i1 @eval_nodes_enough_nodes(i32 noundef %.1536, i32 noundef %.3651.lcssa, i32 noundef %i.ae, i32 noundef %.0609) #8
  %.not889 = xor i1 %i.ru, true
  %i.rv = icmp ugt i32 %.2668.lcssa, %.0537.lcssa
  %or.cond890 = select i1 %.not889, i1 true, i1 %i.rv
  %brmerge = or i1 %.not868, %or.cond890
  br i1 %brmerge, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rw = load i32, ptr %i.j, align 4
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.rx
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = call ptr @list_find_first(ptr noundef %i.kf, ptr noundef nonnull @eval_nodes_topo_node_find, ptr noundef %i.rz) #8 ; 2 uses
  %.not809 = icmp eq ptr %i.sa, null
  br i1 %.not809, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sb = icmp eq i32 %.06261222, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %.pre1405 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.sc = icmp ult i64 %.pre1405, %.16211223
  %or.cond1613 = select i1 %i.sb, i1 true, i1 %i.sc
  br i1 %or.cond1613, label %._crit_edge1404, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sd = icmp ne i64 %.pre1405, %.16211223
  %.not810 = icmp ugt i32 %i.pw, %.15391224
  %or.cond891 = select i1 %i.sd, i1 true, i1 %.not810
  br i1 %or.cond891, label %bb.di, label %._crit_edge1404

._crit_edge1404:                                  ; preds = %bb.dg, %bb.dh
  %i.se = phi i64 [ %.pre1405, %bb.dg ], [ %.16211223, %bb.dh ]
  %i.sf = load i32, ptr %i.j, align 4
  br label %bb.di

.thread975:                                       ; preds = %bb.dd
  %i.sg = load i32, ptr %i.j, align 4
  br label %bb.dj

bb.di:                                            ; preds = %bb.de, %bb.da, %bb.dh, %._crit_edge1404, %bb.df
  %i.sh = phi ptr [ %i.qt, %bb.dh ], [ %i.qt, %bb.df ], [ %i.qt, %._crit_edge1404 ], [ %i.ph, %bb.da ], [ %i.qt, %bb.de ]
  %.2628.ph = phi i32 [ %.06261222, %bb.dh ], [ %.06261222, %bb.df ], [ %i.sf, %._crit_edge1404 ], [ %.06261222, %bb.da ], [ %.06261222, %bb.de ] ; 2 uses
  %.3623.ph = phi i64 [ %.16211223, %bb.dh ], [ %.16211223, %bb.df ], [ %i.se, %._crit_edge1404 ], [ %.16211223, %bb.da ], [ %.16211223, %bb.de ] ; 2 uses
  %.3.ph = phi i32 [ %.15391224, %bb.dh ], [ %.15391224, %bb.df ], [ %i.pw, %._crit_edge1404 ], [ %.15391224, %bb.da ], [ %.15391224, %bb.de ] ; 2 uses
  %i.si = load i32, ptr %i.j, align 4
  %i.sj = add nsw i32 %i.si, 1                    ; 3 uses
  store i32 %i.sj, ptr %i.j, align 4
  %i.sk = icmp slt i32 %i.sj, %.0617
  br i1 %i.sk, label %.lr.ph1226, label %._crit_edge1227, !llvm.loop !19

._crit_edge1227:                                  ; preds = %bb.di, %bb.cz, %.loopexit1119
  %.0626.lcssa = phi i32 [ -1, %.loopexit1119 ], [ -1, %bb.cz ], [ %.2628.ph, %bb.di ] ; 3 uses
  %.1621.lcssa = phi i64 [ %.0620, %.loopexit1119 ], [ %.0620, %bb.cz ], [ %.3623.ph, %bb.di ] ; 2 uses
  %.1539.lcssa = phi i32 [ %.0538, %.loopexit1119 ], [ %.0538, %bb.cz ], [ %.3.ph, %bb.di ] ; 2 uses
  br i1 %.not868, label %bb.dj, label %.thread

bb.dj:                                            ; preds = %.thread975, %._crit_edge1227
  %.16211129 = phi i64 [ %.16211223, %.thread975 ], [ %.1621.lcssa, %._crit_edge1227 ]
  %.15391127 = phi i32 [ %.15391224, %.thread975 ], [ %.1539.lcssa, %._crit_edge1227 ]
  %.3629979 = phi i32 [ %i.sg, %.thread975 ], [ %.0626.lcssa, %._crit_edge1227 ] ; 3 uses
  %i.sl = icmp eq i32 %.3629979, -1
  br i1 %i.sl, label %bb.dk, label %bb.do

.thread:                                          ; preds = %._crit_edge1227
  %i.sm = load ptr, ptr %i.an, align 8
  call void @bit_clear_all(ptr noundef %i.sm) #8
  %i.sn = icmp eq i32 %.0626.lcssa, -1
  br i1 %i.sn, label %bb.dk, label %.thread1522

bb.dk:                                            ; preds = %.thread, %bb.dj
  %i.so = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.sp = and i64 %i.so, 1
  %.not864 = icmp eq i64 %i.sp, 0
  br i1 %.not864, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sq = call i32 @get_log_level() #8
  %i.sr = icmp sgt i32 %i.sq, 3
  br i1 %i.sr, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_block, ptr noundef %i.y) #8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm, %bb.dk
  %i.ss = icmp sgt i32 %.0586, 1
  %. = select i1 %i.ss, i32 7204, i32 7203
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.st, align 4
  br label %.thread1018

bb.do:                                            ; preds = %bb.dj
  %i.su = load ptr, ptr %i.a, align 8
  %i.sv = sext i32 %.3629979 to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.su, i64 %i.sv
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = call i32 @bit_super_set(ptr noundef nonnull %.2542, ptr noundef %i.sx) #8
  %.not811 = icmp eq i32 %i.sy, 0
  br i1 %.not811, label %bb.dp, label %.thread1522

bb.dp:                                            ; preds = %bb.do
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.sz, align 4
  %i.ta = call i32 @get_log_level() #8
  %i.tb = icmp sgt i32 %i.ta, 2
  br i1 %i.tb, label %bb.dq, label %.thread1018

bb.dq:                                            ; preds = %bb.dp
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_block, ptr noundef %i.y) #8
  br label %.thread1018

.thread1522:                                      ; preds = %.thread, %bb.do
  %.1621112915191528 = phi i64 [ %.16211129, %bb.do ], [ %.1621.lcssa, %.thread ]
  %.1539112715201527 = phi i32 [ %.15391127, %bb.do ], [ %.1539.lcssa, %.thread ]
  %i.tc = phi i1 [ true, %bb.do ], [ false, %.thread ] ; 4 uses
  %.362997915211526 = phi i32 [ %.3629979, %bb.do ], [ %.0626.lcssa, %.thread ] ; 6 uses
  br i1 %or.cond3, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %.thread1522
  %i.td = sdiv i32 %.362997915211526, %.1567      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #8
  %i.te = load i32, ptr @node_record_count, align 4
  %i.tf = sext i32 %i.te to i64
  %i.tg = call ptr @bit_alloc(i64 noundef %i.tf) #8 ; 2 uses
  store ptr %i.tg, ptr %i.t, align 8
  store i32 0, ptr %i.j, align 4
  br i1 %i.hg, label %.lr.ph1233, label %._crit_edge1234

.lr.ph1233:                                       ; preds = %bb.dr, %bb.dt
  %storemerge8121231 = phi i32 [ %i.tp, %bb.dt ], [ 0, %bb.dr ] ; 3 uses
  %i.th = sdiv i32 %storemerge8121231, %.1567
end_hunk_0
begin_hunk_1_@eval_nodes_block:bb.a
  %i.aoy = load i32, ptr %i.aop, align 8
  %i.aoz = icmp slt i32 %i.aox, %i.aoy
  br i1 %i.aoz, label %.lr.ph1341, label %._crit_edge1342, !llvm.loop !35

._crit_edge1342:                                  ; preds = %bb.kp, %.preheader
  call void @slurm_xfree(ptr noundef nonnull %i.b) #8
  br label %bb.kq

bb.kq:                                            ; preds = %._crit_edge1342, %bb.kn
  call void @slurm_xfree(ptr noundef nonnull %i.d) #8
  call void @slurm_xfree(ptr noundef nonnull %i.c) #8
  call void @slurm_xfree(ptr noundef nonnull %i.n) #8
  call void @slurm_xfree(ptr noundef nonnull %i.r) #8
  call void @slurm_xfree(ptr noundef nonnull %i.s) #8
  %i.apa = load ptr, ptr %i.i, align 8
  %.not885 = icmp eq ptr %i.apa, null
  br i1 %.not885, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @slurm_bit_free(ptr noundef nonnull %i.i) #8
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.141057
}

declare ptr @bit_copy(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @gres_sched_init(ptr noundef) local_unnamed_addr #4

declare i32 @get_log_level() local_unnamed_addr #4

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @bit_super_set(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @bit_set_count(ptr noundef) local_unnamed_addr #4

declare void @bit_and(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @eval_nodes_get_rem_max_cpus(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @eval_nodes_set_max_tasks(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @bit_ffs(ptr noundef) local_unnamed_addr #4

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @list_create(ptr noundef) local_unnamed_addr #4

declare void @eval_nodes_topo_weight_free(ptr noundef) #4

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @eval_nodes_select_cores(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @eval_nodes_cpus_to_use(ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @eval_nodes_topo_weight_find(ptr noundef, ptr noundef) #4

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #4

declare void @list_append(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @list_sort(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @eval_nodes_topo_weight_sort(ptr noundef, ptr noundef) #4

declare i32 @list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @eval_nodes_topo_weight_log(ptr noundef, ptr noundef) #4

declare void @bit_clear_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @bit_overlap(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @hres_get_capacity(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_cmp_bblock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.a)
  ret i32 %.0
}

declare i32 @bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @eval_nodes_enough_nodes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @eval_nodes_topo_node_find(ptr noundef, ptr noundef) #4

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @gres_sched_test(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @list_iterator_create(ptr noundef) local_unnamed_addr #4

declare ptr @list_next(ptr noundef) local_unnamed_addr #4

declare void @bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gres_sched_consec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @gres_sched_sufficient(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @list_iterator_destroy(ptr noundef) local_unnamed_addr #4

declare ptr @bitmap2node_name(ptr noundef) local_unnamed_addr #4

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #4

declare ptr @gres_sched_str(ptr noundef) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #4

declare void @bit_copybits(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @bit_and_not(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @list_destroy(ptr noundef) local_unnamed_addr #4

declare void @eval_nodes_clip_socket_cores(ptr noundef) local_unnamed_addr #4

declare ptr @xstrstr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @xfree_ptr(ptr noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !36, !37}
!9 = distinct !{!9, !36, !37}
!10 = distinct !{!10, !36, !37}
!11 = distinct !{!11, !36, !37}
!12 = distinct !{!12, !36, !37}
!15 = distinct !{!15, !36, !37, !39, !40}
!17 = distinct !{!17, !36, !37, !39}
!18 = distinct !{!18, !36, !37}
!19 = distinct !{!19, !36, !37}
!20 = distinct !{!20, !36, !37}
!21 = distinct !{!21, !36, !37}
!22 = distinct !{!22, !36, !37}
!23 = distinct !{!23, !36, !37}
!24 = distinct !{!24, !36, !37}
!25 = distinct !{!25, !36, !37}
!26 = distinct !{!26, !36, !37}
!27 = distinct !{!27, !36, !37}
!28 = distinct !{!28, !36, !37}
!29 = distinct !{!29, !36, !37}
!30 = distinct !{!30, !36, !37}
!31 = distinct !{!31, !36, !37}
!32 = distinct !{!32, !36, !37}
!33 = distinct !{!33, !36, !37}
!34 = distinct !{!34, !36, !37}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = !{!45}
!47 = distinct !{!47, !44}
!48 = !{!47}
end_hunk_1
