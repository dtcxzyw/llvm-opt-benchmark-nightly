Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/deflate_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 50
begin_hunk_0_@deflate_compress_near_optimal:bb.a
  %.0.copyload.i164.i = load i64, ptr %i.pi, align 1, !alias.scope !131, !noalias !132 ; 2 uses
  %i.pj = xor i64 %.0.copyload.i164.i, %.0.copyload.i165.i
  %.not56.i.i = icmp eq i64 %.0.copyload.i165.i, %.0.copyload.i164.i
  br i1 %.not56.i.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.pk = add i32 %.0127.i, 33
  br label %.preheader465

.preheader465:                                    ; preds = %bb.as, %bb.an
  %.1.i.i.ph = phi i32 [ %i.oo, %bb.an ], [ %i.pk, %bb.as ]
  br label %bb.at

bb.at:                                            ; preds = %.preheader465, %bb.au
  %.1.i.i = phi i32 [ %i.pl, %bb.au ], [ %.1.i.i.ph, %.preheader465 ] ; 6 uses
  %i.pl = add i32 %.1.i.i, 8                      ; 2 uses
  %.not57.i.i = icmp ugt i32 %i.pl, %.4
  br i1 %.not57.i.i, label %.preheader, label %bb.au

.preheader:                                       ; preds = %bb.at
  %i.pm = icmp ult i32 %.1.i.i, %.4
  br i1 %i.pm, label %.lr.ph269.preheader, label %lz_extend.exit.i

.lr.ph269.preheader:                              ; preds = %.preheader
  %i.pn = zext nneg i32 %.1.i.i to i64
  br label %.lr.ph269

bb.au:                                            ; preds = %bb.at
  %i.po = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.po
  %.0.copyload.i173.i = load i64, ptr %i.pp, align 1, !alias.scope !131, !noalias !132 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.po
  %.0.copyload.i172.i = load i64, ptr %i.pq, align 1, !alias.scope !131, !noalias !132 ; 2 uses
  %.not58.i.i = icmp eq i64 %.0.copyload.i173.i, %.0.copyload.i172.i
  br i1 %.not58.i.i, label %bb.at, label %.loopexit

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %bb.av
  %indvars.iv297 = phi i64 [ %i.pn, %.lr.ph269.preheader ], [ %indvars.iv.next298, %bb.av ] ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv297
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !21, !alias.scope !131, !noalias !132
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ne, i64 %indvars.iv297
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !21, !alias.scope !131, !noalias !132
  %i.pv = icmp eq i8 %i.ps, %i.pu
  br i1 %i.pv, label %bb.av, label %lz_extend.exit.i.loopexit

bb.av:                                            ; preds = %.lr.ph269
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next298, %i.of
  br i1 %exitcond300.not, label %lz_extend.exit.i.thread, label %.lr.ph269

.loopexit:                                        ; preds = %bb.au
  %i.pw = xor i64 %.0.copyload.i172.i, %.0.copyload.i173.i
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.3.i.i = phi i32 [ %i.oo, %bb.ao ], [ %i.ov, %bb.ap ], [ %i.pa, %bb.aq ], [ %i.pf, %bb.ar ], [ %.1.i.i, %.loopexit ]
  %.0.i.i166 = phi i64 [ %i.ou, %bb.ao ], [ %i.oz, %bb.ap ], [ %i.pe, %bb.aq ], [ %i.pj, %bb.ar ], [ %i.pw, %.loopexit ]
  %i.px = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.i.i166, i1 true)
  %i.py = trunc nuw nsw i64 %i.px to i32
  %i.pz = lshr i32 %i.py, 3
  %i.qa = add i32 %i.pz, %.3.i.i
  br label %lz_extend.exit.i

lz_extend.exit.i.loopexit:                        ; preds = %.lr.ph269
  %i.qb = trunc nuw i64 %indvars.iv297 to i32
  br label %lz_extend.exit.i

lz_extend.exit.i:                                 ; preds = %lz_extend.exit.i.loopexit, %.preheader, %bb.aw
  %.047.i.i = phi i32 [ %i.qa, %bb.aw ], [ %.1.i.i, %.preheader ], [ %i.qb, %lz_extend.exit.i.loopexit ] ; 3 uses
  %.not154.i = icmp ult i32 %.047.i.i, %.4
  br i1 %.not154.i, label %lz_extend.exit.i._crit_edge, label %lz_extend.exit.i.thread

lz_extend.exit.i._crit_edge:                      ; preds = %lz_extend.exit.i
  %.phi.trans.insert = zext nneg i32 %.047.i.i to i64 ; 2 uses
  %.phi.trans.insert301 = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert301, align 1, !tbaa !21, !alias.scope !131, !noalias !132
  %.phi.trans.insert303 = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.phi.trans.insert
  %.pre304 = load i8, ptr %.phi.trans.insert303, align 1, !tbaa !21, !alias.scope !131, !noalias !132
  br label %bb.ax

lz_extend.exit.i.thread:                          ; preds = %lz_extend.exit.i, %bb.av
  %i.qc = shl nsw i32 %.0138.i, 1
  %i.qd = and i32 %i.qc, 65534
  %i.qe = zext nneg i32 %i.qd to i64              ; 2 uses
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.qe
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !36, !noalias !133
  store i16 %i.qg, ptr %.0136.i, align 2, !tbaa !36, !noalias !133
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.qe
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 393218
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !36, !noalias !133
  store i16 %i.qj, ptr %.0134.i, align 2, !tbaa !36, !noalias !133
  br label %bt_matchfinder_advance_one_byte.exit

bb.ax:                                            ; preds = %lz_extend.exit.i._crit_edge, %.preheader244
  %i.qk = phi i8 [ %.pre304, %lz_extend.exit.i._crit_edge ], [ %i.om, %.preheader244 ]
  %i.ql = phi i8 [ %.pre, %lz_extend.exit.i._crit_edge ], [ %i.ok, %.preheader244 ]
  %.1128.i = phi i32 [ %.047.i.i, %lz_extend.exit.i._crit_edge ], [ %.0127.i, %.preheader244 ] ; 3 uses
  %i.qm = icmp ult i8 %i.ql, %i.qk
  %i.qn = trunc nsw i32 %.0138.i to i16           ; 2 uses
  %i.qo = shl nsw i32 %.0138.i, 1
  %i.qp = and i32 %i.qo, 65534
  %i.qq = zext nneg i32 %i.qp to i64              ; 2 uses
  br i1 %i.qm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i16 %i.qn, ptr %.0136.i, align 2, !tbaa !36, !noalias !133
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 393218 ; 2 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  store i16 %i.qn, ptr %.0134.i, align 2, !tbaa !36, !noalias !133
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.qq ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0132.i.sink = phi i32 [ %.0132.i, %bb.az ], [ %.0130.i, %bb.ay ]
  %.1139.in.i.in = phi ptr [ %i.qt, %bb.az ], [ %i.qs, %bb.ay ]
  %.1137.i = phi ptr [ %.0136.i, %bb.az ], [ %i.qs, %bb.ay ] ; 2 uses
  %.1135.i = phi ptr [ %i.qt, %bb.az ], [ %.0134.i, %bb.ay ] ; 2 uses
  %.1133.i = phi i32 [ %.0132.i, %bb.az ], [ %.1128.i, %bb.ay ]
  %.1131.i = phi i32 [ %.1128.i, %bb.az ], [ %.0130.i, %bb.ay ]
  %spec.select160.i = tail call i32 @llvm.umin.i32(i32 %.0132.i.sink, i32 %.1128.i)
  %.1139.in.i = load i16, ptr %.1139.in.i.in, align 2, !tbaa !36, !noalias !133
  %.1139.i = sext i16 %.1139.in.i to i32          ; 2 uses
  %.not155.i = icmp sge i32 %i.ng, %.1139.i
  %i.qu = add i32 %.0140.i, -1                    ; 2 uses
  %.not156.i = icmp eq i32 %i.qu, 0
  %or.cond161.i = select i1 %.not155.i, i1 true, i1 %.not156.i
  br i1 %or.cond161.i, label %bb.bb, label %.preheader244

bb.bb:                                            ; preds = %bb.ba
  store i16 -32768, ptr %.1137.i, align 2, !tbaa !36, !noalias !133
  store i16 -32768, ptr %.1135.i, align 2, !tbaa !36, !noalias !133
  br label %bt_matchfinder_advance_one_byte.exit

bt_matchfinder_advance_one_byte.exit:             ; preds = %bb.bb, %lz_extend.exit.i.thread, %bb.am, %bb.ak
  %.sroa.7.4 = phi i32 [ %.sroa.7.3, %bb.ak ], [ %i.nm, %bb.am ], [ %i.nm, %lz_extend.exit.i.thread ], [ %i.nm, %bb.bb ] ; 2 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.ak ], [ %i.nk, %bb.am ], [ %i.nk, %lz_extend.exit.i.thread ], [ %i.nk, %bb.bb ] ; 2 uses
  store i16 0, ptr %.2.ptr, align 2, !tbaa !127
  %i.qv = load i8, ptr %.2145, align 1, !tbaa !21
  %i.qw = zext i8 %i.qv to i16
  %i.qx = getelementptr inbounds nuw i8, ptr %.2.ptr, i64 2
  store i16 %i.qw, ptr %i.qx, align 2, !tbaa !129
  %i.qy = getelementptr inbounds nuw i8, ptr %.2145, i64 1 ; 2 uses
  %.2.add = add nuw nsw i64 %.2.idx, 4            ; 2 uses
  %i.qz = add i32 %.1235, -1                      ; 2 uses
  %.not154 = icmp eq i32 %i.qz, 0
  br i1 %.not154, label %.loopexit248, label %bb.ah

.loopexit248:                                     ; preds = %bt_matchfinder_advance_one_byte.exit, %bb.af
  %.sroa.7.5 = phi i32 [ %.sroa.7.2, %bb.af ], [ %.sroa.7.4, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.sroa.0.5 = phi i32 [ %.sroa.0.2, %bb.af ], [ %.sroa.0.4, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.3146 = phi ptr [ %i.lp, %bb.af ], [ %i.qy, %bt_matchfinder_advance_one_byte.exit ] ; 6 uses
  %.5142 = phi ptr [ %.2139, %bb.af ], [ %.4141, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.5136 = phi ptr [ %.2133, %bb.af ], [ %.4135, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.5130 = phi i32 [ %.2127, %bb.af ], [ %.4129, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.5 = phi i32 [ %.2123, %bb.af ], [ %.4, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.3.idx = phi i64 [ %.1120.add, %bb.af ], [ %.2.add, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %i.ra = icmp ult ptr %.3146, %i.em
  %i.rb = icmp slt i64 %.3.idx, 6563136
  %or.cond157 = select i1 %i.ra, i1 %i.rb, i1 false
  br i1 %or.cond157, label %bb.bc, label %.loopexit248..critedge_crit_edge

.loopexit248..critedge_crit_edge:                 ; preds = %.loopexit248
  %.pre310 = ptrtoint ptr %.3146 to i64
  %.pre312 = sub i64 %.pre310, %i.ej              ; 2 uses
  %.pre314 = trunc i64 %.pre312 to i32
  br label %.critedge

bb.bc:                                            ; preds = %.loopexit248
  %i.rc = load i32, ptr %i.ai, align 4, !tbaa !43
  %i.rd = icmp ult i32 %i.rc, 512
  br i1 %i.rd, label %.backedge.backedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.re = ptrtoint ptr %.3146 to i64              ; 2 uses
  %i.rf = sub i64 %i.re, %i.ej                    ; 3 uses
  %i.rg = icmp slt i64 %i.rf, 10000
  %i.rh = sub i64 %i.ab, %i.re
  %i.ri = icmp slt i64 %i.rh, 10000
  %or.cond.i = or i1 %i.rg, %i.ri
  br i1 %or.cond.i, label %.backedge.backedge, label %.split

.backedge.backedge:                               ; preds = %bb.bd, %bb.bc, %.split
  br label %.backedge

.split:                                           ; preds = %bb.bd
  %i.rj = trunc i64 %i.rf to i32                  ; 2 uses
  %i.rk = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.ae, i32 noundef %i.rj)
  br i1 %i.rk, label %.critedge, label %.backedge.backedge

.critedge:                                        ; preds = %.split, %.loopexit248..critedge_crit_edge
  %.pre-phi315 = phi i32 [ %.pre314, %.loopexit248..critedge_crit_edge ], [ %i.rj, %.split ] ; 3 uses
  %.pre-phi313 = phi i64 [ %.pre312, %.loopexit248..critedge_crit_edge ], [ %i.rf, %.split ] ; 3 uses
  %.3.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.3.idx
  %i.rl = icmp eq ptr %.0143, %1
  %i.rm = load i32, ptr %i.aj, align 32, !tbaa !21
  %i.rn = add i32 %.pre-phi315, 257               ; 2 uses
  %i.ro = icmp ult i32 %i.rn, 300258
  %narrow.i = select i1 %i.ro, i32 %i.rn, i32 300257 ; 3 uses
  %.not35.i = icmp ult i32 %narrow.i, %.pre-phi315
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.rp = and i64 %.pre-phi313, 4294967295        ; 2 uses
  %i.rq = add nuw nsw i32 %narrow.i, 1            ; 2 uses
  %i.rr = trunc i64 %.pre-phi313 to i32           ; 2 uses
  %i.rs = sub i32 %i.rq, %i.rr
  %i.rt = sub i32 %narrow.i, %i.rr
  %xtraiter = and i32 %i.rs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.rp, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.prol
  store i32 -2147483648, ptr %i.ru, align 4, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !109

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.rp, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.rv = icmp ult i32 %i.rt, 7
  br i1 %i.rv, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 9 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  store i32 -2147483648, ptr %i.rw, align 4, !tbaa !21
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i32 -2147483648, ptr %i.ry, align 4, !tbaa !21
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store i32 -2147483648, ptr %i.sa, align 4, !tbaa !21
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  store i32 -2147483648, ptr %i.sc, align 4, !tbaa !21
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  store i32 -2147483648, ptr %i.se, align 4, !tbaa !21
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 40
  store i32 -2147483648, ptr %i.sg, align 4, !tbaa !21
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 48
  store i32 -2147483648, ptr %i.si, align 4, !tbaa !21
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  store i32 -2147483648, ptr %i.sk, align 4, !tbaa !21
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %lftr.wideiv.i.7 = trunc i64 %indvars.iv.next.i.7 to i32
  %exitcond.not.i.7 = icmp eq i32 %i.rq, %lftr.wideiv.i.7
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %.critedge
  br i1 %i.rl, label %vector.body443, label %vector.body459

vector.body459:                                   ; preds = %._crit_edge.i, %vector.body459
  %index460 = phi i64 [ %index.next463.1, %vector.body459 ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index460 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16 ; 2 uses
  %wide.load461 = load <4 x i32>, ptr %i.sl, align 4, !tbaa !22 ; 2 uses
  %wide.load462 = load <4 x i32>, ptr %i.sm, align 4, !tbaa !22 ; 2 uses
  %i.sn = sub nsw <4 x i32> splat (i32 66), %wide.load461
  %i.so = sub nsw <4 x i32> splat (i32 66), %wide.load462
  %i.sp = ashr <4 x i32> %i.sn, splat (i32 1)
  %i.sq = ashr <4 x i32> %i.so, splat (i32 1)
  %i.sr = add <4 x i32> %i.sp, %wide.load461
  %i.ss = add <4 x i32> %i.sq, %wide.load462
  store <4 x i32> %i.sr, ptr %i.sl, align 4, !tbaa !22
  store <4 x i32> %i.ss, ptr %i.sm, align 4, !tbaa !22
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index460 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 32 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 48 ; 2 uses
  %wide.load461.1 = load <4 x i32>, ptr %i.su, align 4, !tbaa !22 ; 2 uses
  %wide.load462.1 = load <4 x i32>, ptr %i.sv, align 4, !tbaa !22 ; 2 uses
  %i.sw = sub nsw <4 x i32> splat (i32 66), %wide.load461.1
  %i.sx = sub nsw <4 x i32> splat (i32 66), %wide.load462.1
  %i.sy = ashr <4 x i32> %i.sw, splat (i32 1)
  %i.sz = ashr <4 x i32> %i.sx, splat (i32 1)
  %i.ta = add <4 x i32> %i.sy, %wide.load461.1
  %i.tb = add <4 x i32> %i.sz, %wide.load462.1
  store <4 x i32> %i.ta, ptr %i.su, align 4, !tbaa !22
  store <4 x i32> %i.tb, ptr %i.sv, align 4, !tbaa !22
  %index.next463.1 = add nuw nsw i64 %index460, 16 ; 2 uses
  %i.tc = icmp eq i64 %index.next463.1, 256
  br i1 %i.tc, label %.preheader16.i.i, label %vector.body459, !llvm.loop !110

vector.body443:                                   ; preds = %._crit_edge.i
  store <4 x i32> splat (i32 66), ptr %i.ak, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bo, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bp, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bq, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.br, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bs, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bt, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bu, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bv, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bw, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bx, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.by, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.bz, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.ca, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cb, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cc, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cd, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.ce, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cf, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cg, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.ch, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.ci, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cj, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.ck, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cl, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cm, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cn, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.co, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cp, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cq, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cr, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cs, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.ct, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cu, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cv, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cw, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cx, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cy, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.cz, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.da, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.db, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dc, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dd, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.de, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.df, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dg, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dh, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.di, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dj, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dk, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dl, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dm, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dn, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.do, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dp, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dq, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dr, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.ds, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dt, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.du, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dv, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dw, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dx, align 4, !tbaa !21
  store <4 x i32> splat (i32 66), ptr %i.dy, align 4, !tbaa !21
  br label %.preheader15.i.i

.preheader15.i.i:                                 ; preds = %.preheader15.i.i, %vector.body443
  %indvars.iv20.i.i = phi i64 [ 3, %vector.body443 ], [ %indvars.iv.next21.i.i.1, %.preheader15.i.i ] ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv20.i.i
  %i.te = load i8, ptr %i.td, align 1, !tbaa !21
  %i.tf = zext i8 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !21
  %i.ti = zext i8 %i.th to i32
  %i.tj = shl nuw nsw i32 %i.ti, 3
  %i.tk = add nuw nsw i32 %i.tj, 60
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv20.i.i
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !21
  %indvars.iv.next21.i.i = add nuw nsw i64 %indvars.iv20.i.i, 1 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next21.i.i
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !21
  %i.to = zext i8 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !21
  %i.tr = zext i8 %i.tq to i32
  %i.ts = shl nuw nsw i32 %i.tr, 3
  %i.tt = add nuw nsw i32 %i.ts, 60
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next21.i.i
  store i32 %i.tt, ptr %i.tu, align 4, !tbaa !21
  %indvars.iv.next21.i.i.1 = add nuw nsw i64 %indvars.iv20.i.i, 2 ; 2 uses
  %exitcond23.not.i.i.1 = icmp eq i64 %indvars.iv.next21.i.i.1, 259
  br i1 %exitcond23.not.i.i.1, label %deflate_set_default_costs.exit.i, label %.preheader15.i.i

deflate_set_default_costs.exit.i:                 ; preds = %.preheader15.i.i
  store <4 x i32> splat (i32 39), ptr %i.am, align 32, !tbaa !21
  store <4 x i32> <i32 47, i32 47, i32 55, i32 55>, ptr %i.av, align 16, !tbaa !21
  store <4 x i32> <i32 63, i32 63, i32 71, i32 71>, ptr %i.aw, align 32, !tbaa !21
  store <4 x i32> <i32 79, i32 79, i32 87, i32 87>, ptr %i.ax, align 16, !tbaa !21
  store <4 x i32> <i32 95, i32 95, i32 103, i32 103>, ptr %i.ay, align 32, !tbaa !21
  store <4 x i32> <i32 111, i32 111, i32 119, i32 119>, ptr %i.az, align 16, !tbaa !21
  store <4 x i32> <i32 127, i32 127, i32 135, i32 135>, ptr %i.ba, align 32, !tbaa !21
  store i32 143, ptr %i.bb, align 16, !tbaa !21
  store i32 143, ptr %i.bc, align 4, !tbaa !21
  br label %deflate_adjust_costs.exit.i

.preheader16.i.i:                                 ; preds = %vector.body459, %.preheader16.i.i
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i.1, %.preheader16.i.i ], [ 3, %vector.body459 ] ; 4 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv22.i.i ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv22.i.i
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !21
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !21
  %i.ub = zext i8 %i.ua to i32
  %i.uc = shl nuw nsw i32 %i.ub, 3
  %i.ud = load i32, ptr %i.tv, align 4, !tbaa !22 ; 2 uses
  %reass.sub = sub i32 %i.uc, %i.ud
  %i.ue = add i32 %reass.sub, 60
  %i.uf = ashr i32 %i.ue, 1
  %i.ug = add i32 %i.uf, %i.ud
  store i32 %i.ug, ptr %i.tv, align 4, !tbaa !22
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next23.i.i ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next23.i.i
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !21
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !21
  %i.un = zext i8 %i.um to i32
  %i.uo = shl nuw nsw i32 %i.un, 3
  %i.up = load i32, ptr %i.uh, align 4, !tbaa !22 ; 2 uses
  %reass.sub.1 = sub i32 %i.uo, %i.up
  %i.uq = add i32 %reass.sub.1, 60
  %i.ur = ashr i32 %i.uq, 1
  %i.us = add i32 %i.ur, %i.up
  store i32 %i.us, ptr %i.uh, align 4, !tbaa !22
  %indvars.iv.next23.i.i.1 = add nuw nsw i64 %indvars.iv22.i.i, 2 ; 2 uses
  %exitcond25.not.i.i.1 = icmp eq i64 %indvars.iv.next23.i.i.1, 259
  br i1 %exitcond25.not.i.i.1, label %vector.body449, label %.preheader16.i.i

vector.body449:                                   ; preds = %.preheader16.i.i
  %wide.load453 = load <4 x i32>, ptr %i.am, align 32, !tbaa !22 ; 2 uses
  %wide.load454 = load <4 x i32>, ptr %i.bd, align 16, !tbaa !22 ; 2 uses
  %i.ut = sub <4 x i32> splat (i32 39), %wide.load453
  %i.uu = sub <4 x i32> <i32 47, i32 47, i32 55, i32 55>, %wide.load454
  %i.uv = ashr <4 x i32> %i.ut, splat (i32 1)
  %i.uw = ashr <4 x i32> %i.uu, splat (i32 1)
  %i.ux = add <4 x i32> %i.uv, %wide.load453
  %i.uy = add <4 x i32> %i.uw, %wide.load454
  store <4 x i32> %i.ux, ptr %i.am, align 32, !tbaa !22
  store <4 x i32> %i.uy, ptr %i.bd, align 16, !tbaa !22
  %wide.load453.1 = load <4 x i32>, ptr %i.be, align 32, !tbaa !22 ; 2 uses
  %wide.load454.1 = load <4 x i32>, ptr %i.bf, align 16, !tbaa !22 ; 2 uses
  %i.uz = sub <4 x i32> <i32 63, i32 63, i32 71, i32 71>, %wide.load453.1
  %i.va = sub <4 x i32> <i32 79, i32 79, i32 87, i32 87>, %wide.load454.1
  %i.vb = ashr <4 x i32> %i.uz, splat (i32 1)
  %i.vc = ashr <4 x i32> %i.va, splat (i32 1)
  %i.vd = add <4 x i32> %i.vb, %wide.load453.1
  %i.ve = add <4 x i32> %i.vc, %wide.load454.1
  store <4 x i32> %i.vd, ptr %i.be, align 32, !tbaa !22
  store <4 x i32> %i.ve, ptr %i.bf, align 16, !tbaa !22
  %wide.load453.2 = load <4 x i32>, ptr %i.bg, align 32, !tbaa !22 ; 2 uses
  %wide.load454.2 = load <4 x i32>, ptr %i.bh, align 16, !tbaa !22 ; 2 uses
end_hunk_0
