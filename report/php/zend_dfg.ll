Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_dfg?download=true
inline.NumInlined: 76
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zend_build_dfg:bb.a
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph185.epil.preheader

.lr.ph185.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph185.preheader
  %.1183.epil.init = phi i32 [ 0, %.lr.ph185.preheader ], [ %i.qj, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod255 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.pf = and i32 %.1183.epil.init, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = lshr i32 %.1183.epil.init, 6
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pj ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !17
  %i.pm = or i64 %i.pl, %i.ph
  store i64 %i.pm, ptr %i.pk, align 8, !tbaa !17
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph185.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.bt
  %i.pn = icmp eq i64 %i.oy, 0
  br i1 %i.pn, label %.thread169, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %.preheader
  %i.po = zext i32 %i.e to i64                    ; 11 uses
  %i.pp = shl nuw nsw i64 %i.po, 3                ; 6 uses
  %.not.i155 = icmp eq i32 %i.e, 0                ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.pp
  %scevgep234 = getelementptr i8, ptr %i.p, i64 %i.pp
  %min.iters.check237 = icmp ult i32 %i.e, 4
  %n.vec239 = and i64 %i.po, 4294967292           ; 3 uses
  %cmp.n248 = icmp eq i64 %n.vec239, %i.po
  %xtraiter256 = and i64 %i.po, 3                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  %min.iters.check = icmp ult i32 %i.e, 8
  %invariant.op = sub i64 %i.n, %i.h
  %invariant.op270 = sub i64 %i.s, %i.h
  %invariant.op272 = sub i64 %i.k, %i.h
  %n.vec = and i64 %i.po, 4294967292              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.po
  %xtraiter258 = and i64 %i.po, 1
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %i.pr = add nsw i64 %i.po, -1
  br label %.lr.ph.i

.lr.ph185:                                        ; preds = %.lr.ph185, %.lr.ph185.preheader.new
  %.1183 = phi i32 [ 0, %.lr.ph185.preheader.new ], [ %i.qj, %.lr.ph185 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph185.preheader.new ], [ %niter.next.1, %.lr.ph185 ]
  %i.ps = and i32 %.1183, 62
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = shl nuw nsw i64 1, %i.pt
  %i.pv = lshr i32 %.1183, 6
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pw ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !17
  %i.pz = or i64 %i.py, %i.pu
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !17
  %i.qa = and i32 %.1183, 62
  %i.qb = or disjoint i32 %i.qa, 1
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = shl nuw i64 1, %i.qc
  %i.qe = lshr i32 %.1183, 6
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.qf ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !17
  %i.qi = or i64 %i.qh, %i.qd
  store i64 %i.qi, ptr %i.qg, align 8, !tbaa !17
  %i.qj = add nuw nsw i32 %.1183, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph185, !llvm.loop !40

bb.bu:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.oy
  br i1 %exitcond.not.i, label %bb.bz, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.lr.ph191.epil.preheader, %.lr.ph.i.loopexit.unr-lcssa, %bb.bu, %zend_bitset_union_with_difference.exit, %bb.by, %zend_bitset_last.exit
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next.i, %bb.bu ], [ 0, %zend_bitset_last.exit ], [ 0, %zend_bitset_union_with_difference.exit ], [ 0, %bb.by ], [ 0, %.lr.ph.i.loopexit.unr-lcssa ], [ 0, %.lr.ph191.epil.preheader ]
  br label %.lr.ph.i, !llvm.loop !41

.lr.ph.i.loopexit.unr-lcssa:                      ; preds = %.lr.ph191
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph.i.backedge, label %.lr.ph191.epil.preheader

.lr.ph191.epil.preheader:                         ; preds = %.lr.ph.i.loopexit.unr-lcssa, %.lr.ph191.preheader
  %indvars.iv201.epil.init = phi i64 [ 0, %.lr.ph191.preheader ], [ %indvars.iv.next202.1, %.lr.ph.i.loopexit.unr-lcssa ]
  %lcmp.mod263 = trunc i32 %i.wb to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv201.epil.init
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !72 ; 2 uses
  %i.qm = and i32 %i.ql, 63
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = shl nuw i64 1, %i.qn
  %i.qp = lshr i32 %i.ql, 6
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.qq ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !17
  %i.qt = or i64 %i.qo, %i.qs
  store i64 %i.qt, ptr %i.qr, align 8, !tbaa !17
  br label %.lr.ph.i.backedge

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.preheader.lr.ph
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %indvars.iv.i.be, %.lr.ph.i.backedge ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv.i
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !17
  %.not.i152 = icmp eq i64 %i.qv, 0
  br i1 %.not.i152, label %bb.bu, label %zend_bitset_empty.exit.preheader

zend_bitset_empty.exit:                           ; preds = %zend_bitset_empty.exit.preheader
  %.not.i154 = icmp eq i64 %i.qw, 0
  br i1 %.not.i154, label %zend_bitset_last.exit, label %zend_bitset_empty.exit.preheader, !llvm.loop !42

zend_bitset_empty.exit.preheader:                 ; preds = %.lr.ph.i, %zend_bitset_empty.exit
  %indvars.iv.i153223 = phi i64 [ %i.qw, %zend_bitset_empty.exit ], [ %i.oy, %.lr.ph.i ]
  %i.qw = add nsw i64 %indvars.iv.i153223, -1     ; 4 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.qw
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !17 ; 2 uses
  %.not16.i = icmp eq i64 %i.qy, 0
  br i1 %.not16.i, label %zend_bitset_empty.exit, label %.loopexit.loopexit.i, !llvm.loop !42

.loopexit.loopexit.i:                             ; preds = %zend_bitset_empty.exit.preheader
  %i.qz = trunc nuw nsw i64 %i.qw to i32
  %i.ra = shl nuw i32 %i.qz, 6
  %i.rb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qy, i1 true)
  %i.rc = trunc nuw nsw i64 %i.rb to i32
  %i.rd = or disjoint i32 %i.ra, 63
  %i.re = sub nuw nsw i32 %i.rd, %i.rc
  br label %zend_bitset_last.exit

zend_bitset_last.exit:                            ; preds = %zend_bitset_empty.exit, %.loopexit.loopexit.i
  %.014.i = phi i32 [ %i.re, %.loopexit.loopexit.i ], [ -1, %zend_bitset_empty.exit ] ; 4 uses
  %i.rf = and i32 %.014.i, 63
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = shl nuw i64 1, %i.rg
  %i.ri = xor i64 %i.rh, -1
  %i.rj = lshr i32 %.014.i, 6
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.rk ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !17
  %i.rn = and i64 %i.rm, %i.ri
  store i64 %i.rn, ptr %i.rl, align 8, !tbaa !17
  %i.ro = sext i32 %.014.i to i64
  %i.rp = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ro ; 6 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !66
  %i.rs = icmp sgt i32 %i.rr, -1
  br i1 %i.rs, label %.lr.ph.i.backedge, label %bb.bv

bb.bv:                                            ; preds = %zend_bitset_last.exit
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 20 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !73
  %.not = icmp eq i32 %i.ru, 0
  %i.rv = mul i32 %.014.i, %i.e
  %i.rw = sext i32 %i.rv to i64                   ; 7 uses
  %i.rx = getelementptr [8 x i8], ptr %i.r, i64 %i.rw ; 9 uses
  br i1 %.not, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ry = load ptr, ptr %i.rp, align 8, !tbaa !74
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !72
  %i.sa = mul nsw i32 %i.rz, %i.e
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rx, ptr readonly align 8 %i.sc, i64 %i.pp, i1 false)
  %i.sd = load i32, ptr %i.rt, align 4, !tbaa !73 ; 2 uses
  %i.se = icmp sgt i32 %i.sd, 1
  br i1 %i.se, label %.lr.ph188, label %.loopexit174

.lr.ph188:                                        ; preds = %bb.bw
  %i.sf = load ptr, ptr %i.rp, align 8, !tbaa !74
  br i1 %.not.i155, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i157.preheader.preheader

.lr.ph.i157.preheader.preheader:                  ; preds = %.lr.ph188
  %wide.trip.count199 = zext nneg i32 %i.sd to i64
  %i.sg = shl nsw i64 %i.rw, 3
  %scevgep233 = getelementptr i8, ptr %scevgep, i64 %i.sg
  br label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %.lr.ph.i157.preheader.preheader, %zend_bitset_union.exit.loopexit
  %indvars.iv196 = phi i64 [ 1, %.lr.ph.i157.preheader.preheader ], [ %indvars.iv.next197, %zend_bitset_union.exit.loopexit ] ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %indvars.iv196
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !72
  %i.sj = mul nsw i32 %i.si, %i.e
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sk ; 7 uses
  br i1 %min.iters.check237, label %.lr.ph.i157.preheader250, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph.i157.preheader
  %i.sm = shl nsw i64 %i.sk, 3
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.sm
  %bound0 = icmp ult ptr %i.rx, %scevgep235
  %bound1 = icmp ult ptr %i.sl, %scevgep233
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i157.preheader250, label %vector.body240

vector.body240:                                   ; preds = %vector.memcheck232, %vector.body240
  %index241 = phi i64 [ %index.next246, %vector.body240 ], [ 0, %vector.memcheck232 ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %index241 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %wide.load242 = load <2 x i64>, ptr %i.sn, align 8, !tbaa !17, !alias.scope !75
  %wide.load243 = load <2 x i64>, ptr %i.so, align 8, !tbaa !17, !alias.scope !75
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %index241 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16 ; 2 uses
  %wide.load244 = load <2 x i64>, ptr %i.sp, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  %wide.load245 = load <2 x i64>, ptr %i.sq, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  %i.sr = or <2 x i64> %wide.load244, %wide.load242
  %i.ss = or <2 x i64> %wide.load245, %wide.load243
  store <2 x i64> %i.sr, ptr %i.sp, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  store <2 x i64> %i.ss, ptr %i.sq, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  %index.next246 = add nuw i64 %index241, 4       ; 2 uses
  %i.st = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.st, label %middle.block247, label %vector.body240, !llvm.loop !46

middle.block247:                                  ; preds = %vector.body240
  br i1 %cmp.n248, label %zend_bitset_union.exit.loopexit, label %.lr.ph.i157.preheader250

.lr.ph.i157.preheader250:                         ; preds = %vector.memcheck232, %.lr.ph.i157.preheader, %middle.block247
  %indvars.iv.i158.ph = phi i64 [ 0, %vector.memcheck232 ], [ 0, %.lr.ph.i157.preheader ], [ %n.vec239, %middle.block247 ] ; 3 uses
  br i1 %lcmp.mod257.not, label %.lr.ph.i157.prol.loopexit, label %.lr.ph.i157.prol

.lr.ph.i157.prol:                                 ; preds = %.lr.ph.i157.preheader250, %.lr.ph.i157.prol
  %indvars.iv.i158.prol = phi i64 [ %indvars.iv.next.i159.prol, %.lr.ph.i157.prol ], [ %indvars.iv.i158.ph, %.lr.ph.i157.preheader250 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i157.prol ], [ 0, %.lr.ph.i157.preheader250 ]
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.i158.prol
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !17
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv.i158.prol ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !17
  %i.sy = or i64 %i.sx, %i.sv
  store i64 %i.sy, ptr %i.sw, align 8, !tbaa !17
  %indvars.iv.next.i159.prol = add nuw nsw i64 %indvars.iv.i158.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %.lr.ph.i157.prol.loopexit, label %.lr.ph.i157.prol, !llvm.loop !47

.lr.ph.i157.prol.loopexit:                        ; preds = %.lr.ph.i157.prol, %.lr.ph.i157.preheader250
  %indvars.iv.i158.unr = phi i64 [ %indvars.iv.i158.ph, %.lr.ph.i157.preheader250 ], [ %indvars.iv.next.i159.prol, %.lr.ph.i157.prol ]
  %i.sz = sub nsw i64 %indvars.iv.i158.ph, %i.po
  %i.ta = icmp ugt i64 %i.sz, -4
  br i1 %i.ta, label %zend_bitset_union.exit.loopexit, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.prol.loopexit, %.lr.ph.i157
  %indvars.iv.i158 = phi i64 [ %indvars.iv.next.i159.3, %.lr.ph.i157 ], [ %indvars.iv.i158.unr, %.lr.ph.i157.prol.loopexit ] ; 6 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.i158
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !17
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv.i158 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !17
  %i.tf = or i64 %i.te, %i.tc
  store i64 %i.tf, ptr %i.td, align 8, !tbaa !17
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.next.i159
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !17
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv.next.i159 ; 2 uses
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !17
  %i.tk = or i64 %i.tj, %i.th
  store i64 %i.tk, ptr %i.ti, align 8, !tbaa !17
  %indvars.iv.next.i159.1 = add nuw nsw i64 %indvars.iv.i158, 2 ; 2 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.next.i159.1
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !17
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv.next.i159.1 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !17
  %i.tp = or i64 %i.to, %i.tm
  store i64 %i.tp, ptr %i.tn, align 8, !tbaa !17
  %indvars.iv.next.i159.2 = add nuw nsw i64 %indvars.iv.i158, 3 ; 2 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.next.i159.2
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !17
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv.next.i159.2 ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !17
  %i.tu = or i64 %i.tt, %i.tr
  store i64 %i.tu, ptr %i.ts, align 8, !tbaa !17
  %indvars.iv.next.i159.3 = add nuw nsw i64 %indvars.iv.i158, 4 ; 2 uses
  %exitcond.not.i160.3 = icmp eq i64 %indvars.iv.next.i159.3, %i.po
  br i1 %exitcond.not.i160.3, label %zend_bitset_union.exit.loopexit, label %.lr.ph.i157, !llvm.loop !48

zend_bitset_union.exit.loopexit:                  ; preds = %.lr.ph.i157.prol.loopexit, %.lr.ph.i157, %middle.block247
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit174, label %.lr.ph.i157.preheader, !llvm.loop !49

bb.bx:                                            ; preds = %bb.bv
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rx, i8 0, i64 %i.pp, i1 false)
  br label %.loopexit174

.loopexit174:                                     ; preds = %zend_bitset_union.exit.loopexit, %bb.bw, %bb.bx
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.rw ; 4 uses
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.rw ; 4 uses
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.rw ; 4 uses
  br i1 %.not.i155, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.loopexit174
  br i1 %min.iters.check, label %.lr.ph.i164.preheader251, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i164.preheader
  %i.ty = shl nsw i64 %i.rw, 3                    ; 3 uses
  %.reass = add i64 %i.ty, %invariant.op
  %diff.check = icmp ugt i64 %.reass, -32
  %.reass271 = add i64 %i.ty, %invariant.op270
  %diff.check224 = icmp ugt i64 %.reass271, -32
  %conflict.rdx = or i1 %diff.check, %diff.check224
  %.reass273 = add i64 %i.ty, %invariant.op272
  %diff.check225 = icmp ugt i64 %.reass273, -32
  %conflict.rdx226 = or i1 %conflict.rdx, %diff.check225
  br i1 %conflict.rdx226, label %.lr.ph.i164.preheader251, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %wide.load = load <2 x i64>, ptr %i.tz, align 8, !tbaa !17
  %wide.load227 = load <2 x i64>, ptr %i.ua, align 8, !tbaa !17
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %index ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %wide.load228 = load <2 x i64>, ptr %i.ub, align 8, !tbaa !17
  %wide.load229 = load <2 x i64>, ptr %i.uc, align 8, !tbaa !17
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %index ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %wide.load230 = load <2 x i64>, ptr %i.ud, align 8, !tbaa !17
  %wide.load231 = load <2 x i64>, ptr %i.ue, align 8, !tbaa !17
  %i.uf = xor <2 x i64> %wide.load230, splat (i64 -1)
  %i.ug = xor <2 x i64> %wide.load231, splat (i64 -1)
  %i.uh = and <2 x i64> %wide.load228, %i.uf
  %i.ui = and <2 x i64> %wide.load229, %i.ug
  %i.uj = or <2 x i64> %i.uh, %wide.load
  %i.uk = or <2 x i64> %i.ui, %wide.load227
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  store <2 x i64> %i.uj, ptr %i.ul, align 8, !tbaa !17
  store <2 x i64> %i.uk, ptr %i.um, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.un = icmp eq i64 %index.next, %n.vec
  br i1 %i.un, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164.preheader251

.lr.ph.i164.preheader251:                         ; preds = %vector.memcheck, %.lr.ph.i164.preheader, %middle.block
  %indvars.iv.i165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i164.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod259.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader251
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i165.ph
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !17
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.i165.ph
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !17
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.i165.ph
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !17
  %i.uu = xor i64 %i.ut, -1
  %i.uv = and i64 %i.ur, %i.uu
  %i.uw = or i64 %i.uv, %i.up
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i165.ph
  store i64 %i.uw, ptr %i.ux, align 8, !tbaa !17
  %indvars.iv.next.i166.prol = or disjoint i64 %indvars.iv.i165.ph, 1
  br label %.lr.ph.i164.prol.loopexit

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader251
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader251 ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.uy = icmp eq i64 %indvars.iv.i165.ph, %i.pr
  br i1 %i.uy, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.1, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i165
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !17
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.i165
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !17
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.i165
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !17
  %i.vf = xor i64 %i.ve, -1
  %i.vg = and i64 %i.vc, %i.vf
  %i.vh = or i64 %i.vg, %i.va
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i165
  store i64 %i.vh, ptr %i.vi, align 8, !tbaa !17
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i165, 1 ; 4 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next.i166
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !17
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.next.i166
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !17
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next.i166
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !17
  %i.vp = xor i64 %i.vo, -1
  %i.vq = and i64 %i.vm, %i.vp
  %i.vr = or i64 %i.vq, %i.vk
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i166
  store i64 %i.vr, ptr %i.vs, align 8, !tbaa !17
  %indvars.iv.next.i166.1 = add nuw nsw i64 %indvars.iv.i165, 2 ; 2 uses
  %exitcond.not.i167.1 = icmp eq i64 %indvars.iv.next.i166.1, %i.po
  br i1 %exitcond.not.i167.1, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164, !llvm.loop !51

zend_bitset_union_with_difference.exit:           ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block, %.lr.ph188, %.loopexit174
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rw ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.vt, ptr readonly %i.g, i64 %i.pp)
  %i.vu = icmp eq i32 %bcmp.i, 0
  br i1 %i.vu, label %.lr.ph.i.backedge, label %bb.by

bb.by:                                            ; preds = %zend_bitset_union_with_difference.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vt, ptr readonly align 8 %i.g, i64 %i.pp, i1 false)
  %i.vv = load ptr, ptr %i.pq, align 8, !tbaa !80
  %i.vw = getelementptr inbounds nuw i8, ptr %i.rp, i64 28
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !81
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.vy ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !82 ; 4 uses
  %i.wc = icmp sgt i32 %i.wb, 0
  br i1 %i.wc, label %.lr.ph191.preheader, label %.lr.ph.i.backedge

.lr.ph191.preheader:                              ; preds = %bb.by
  %wide.trip.count204 = zext nneg i32 %i.wb to i64 ; 2 uses
  %xtraiter261 = and i64 %wide.trip.count204, 1
  %i.wd = icmp eq i32 %i.wb, 1
  br i1 %i.wd, label %.lr.ph191.epil.preheader, label %.lr.ph191.preheader.new

.lr.ph191.preheader.new:                          ; preds = %.lr.ph191.preheader
  %unroll_iter264 = and i64 %wide.trip.count204, 2147483646
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191, %.lr.ph191.preheader.new
  %indvars.iv201 = phi i64 [ 0, %.lr.ph191.preheader.new ], [ %indvars.iv.next202.1, %.lr.ph191 ] ; 3 uses
  %niter265 = phi i64 [ 0, %.lr.ph191.preheader.new ], [ %niter265.next.1, %.lr.ph191 ]
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv201
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !72 ; 2 uses
  %i.wg = and i32 %i.wf, 63
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = shl nuw i64 1, %i.wh
  %i.wj = lshr i32 %i.wf, 6
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.wk ; 2 uses
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !17
  %i.wn = or i64 %i.wi, %i.wm
  store i64 %i.wn, ptr %i.wl, align 8, !tbaa !17
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv201
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !72 ; 2 uses
  %i.wr = and i32 %i.wq, 63
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = shl nuw i64 1, %i.ws
  %i.wu = lshr i32 %i.wq, 6
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.wv ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !17
  %i.wy = or i64 %i.wt, %i.wx
  store i64 %i.wy, ptr %i.ww, align 8, !tbaa !17
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %niter265.next.1 = add i64 %niter265, 2         ; 2 uses
  %niter265.ncmp.1 = icmp eq i64 %niter265.next.1, %unroll_iter264
  br i1 %niter265.ncmp.1, label %.lr.ph.i.loopexit.unr-lcssa, label %.lr.ph191, !llvm.loop !52

bb.bz:                                            ; preds = %bb.bu
  br i1 %i.pa, label %bb.ca, label %.thread169, !prof !83

bb.ca:                                            ; preds = %bb.bz
  call void @_efree(ptr noundef nonnull %i.pd) #10
  br label %.thread169

.thread169:                                       ; preds = %.preheader, %bb.ca, %bb.bz
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_efree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"_zend_op", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31}
!14 = !{!13, !8, i64 29}
!15 = !{!8, !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!13, !8, i64 30}
!19 = !{!13, !8, i64 28}
!20 = !{!13, !8, i64 31}
!21 = !{!13, !9, i64 20}
!22 = !{!"p1 _ZTS12_zend_string", !12, i64 0}
!23 = !{!"p1 _ZTS17_zend_class_entry", !12, i64 0}
!24 = !{!"p1 _ZTS14_zend_function", !12, i64 0}
!25 = !{!"p1 _ZTS14_zend_arg_info", !12, i64 0}
!26 = !{!"p1 _ZTS11_zend_array", !12, i64 0}
!27 = !{!"any p2 pointer", !12, i64 0}
!28 = !{!"p1 _ZTS19_zend_property_info", !12, i64 0}
!29 = !{!"p1 _ZTS8_zend_op", !12, i64 0}
!30 = !{!"p2 _ZTS12_zend_string", !27, i64 0}
!31 = !{!"p1 int", !12, i64 0}
!32 = !{!"p1 _ZTS16_zend_live_range", !12, i64 0}
!33 = !{!"p1 _ZTS23_zend_try_catch_element", !12, i64 0}
!34 = !{!"p1 _ZTS12_zval_struct", !12, i64 0}
!35 = !{!"p2 _ZTS14_zend_op_array", !27, i64 0}
!36 = !{!"_zend_op_array", !8, i64 0, !8, i64 1, !9, i64 4, !22, i64 8, !23, i64 16, !24, i64 24, !9, i64 32, !9, i64 36, !25, i64 40, !26, i64 48, !27, i64 56, !22, i64 64, !9, i64 72, !28, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !29, i64 104, !26, i64 112, !26, i64 120, !30, i64 128, !31, i64 136, !9, i64 144, !9, i64 148, !32, i64 152, !33, i64 160, !22, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !34, i64 192, !35, i64 200, !8, i64 208}
!37 = !{!36, !9, i64 4}
!38 = distinct !{!38, !70}
!39 = distinct !{!39, !70}
!40 = distinct !{!40, !70}
!41 = distinct !{!41, !70}
!42 = distinct !{!42, !70}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !70, !77, !78}
!47 = distinct !{!47, !79}
!48 = distinct !{!48, !70, !77}
!49 = distinct !{!49, !70}
!50 = distinct !{!50, !70, !77, !78}
!51 = distinct !{!51, !70, !77}
!52 = distinct !{!52, !70}
!53 = !{!"p1 _ZTS17_zend_basic_block", !12, i64 0}
!54 = !{!"_zend_cfg", !9, i64 0, !9, i64 4, !53, i64 8, !31, i64 16, !31, i64 24, !9, i64 32}
!55 = !{!54, !53, i64 8}
!56 = !{!54, !9, i64 0}
!57 = !{!"p1 long", !12, i64 0}
!58 = !{!"_zend_dfg", !9, i64 0, !9, i64 4, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40}
!59 = !{!58, !9, i64 4}
!60 = !{!58, !57, i64 8}
!61 = !{!58, !57, i64 16}
!62 = !{!58, !57, i64 24}
!63 = !{!58, !57, i64 32}
!64 = !{!58, !57, i64 40}
!65 = !{!"_zend_basic_block", !31, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !8, i64 52}
!66 = !{!65, !9, i64 8}
!67 = !{!36, !29, i64 104}
!68 = !{!65, !9, i64 12}
!69 = !{!65, !9, i64 16}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!9, !9, i64 0}
!73 = !{!65, !9, i64 20}
!74 = !{!65, !31, i64 0}
!75 = !{!44}
!76 = !{!45}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!54, !31, i64 16}
!81 = !{!65, !9, i64 28}
!82 = !{!65, !9, i64 24}
!83 = !{!"branch_weights", !"expected", i32 1143561, i32 2146340087}
end_hunk_0
