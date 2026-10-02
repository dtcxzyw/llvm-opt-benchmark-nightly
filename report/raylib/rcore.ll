Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sdefl_compr:.preheader213
  store i32 %i.mv, ptr %.0.i.i, align 4
  %i.od = add nuw i32 %.077.i.i, 1
  %i.oe = add i32 %.082.lcssa.i.i, -2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.279.i.i = phi i32 [ %i.od, %bb.cf ], [ %i.ol, %bb.cg ] ; 2 uses
  %.2.i.i = phi ptr [ %i.oc, %bb.cf ], [ %i.oj, %bb.cg ] ; 2 uses
  %i.of = sub i32 %i.oe, %.279.i.i
  %i.og = call i32 @llvm.umin.i32(i32 %i.of, i32 3) ; 2 uses
  %i.oh = shl nuw nsw i32 %i.og, 5
  %i.oi = or disjoint i32 %i.oh, 16
  %i.oj = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4 ; 2 uses
  store i32 %i.oi, ptr %.2.i.i, align 4
  %i.ok = add i32 %.279.i.i, 3
  %i.ol = add i32 %i.ok, %i.og                    ; 3 uses
  %i.om = load i32, ptr %i.cj, align 16
  %i.on = add i32 %i.om, 1
  store i32 %i.on, ptr %i.cj, align 16
  %i.oo = sub i32 %.lcssa.i.i, %i.ol
  %i.op = icmp ugt i32 %i.oo, 2
  br i1 %i.op, label %bb.cg, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.cg, %bb.ce, %._crit_edge.i.i
  %.380.i.i = phi i32 [ %.178.lcssa.i.i, %._crit_edge.i.i ], [ %.077.i.i, %bb.ce ], [ %i.ol, %bb.cg ] ; 5 uses
  %.3.i.i = phi ptr [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ %.0.i.i, %bb.ce ], [ %i.oj, %bb.cg ] ; 3 uses
  %.not93104.i.i = icmp eq i32 %.380.i.i, %.lcssa.i.i
  br i1 %.not93104.i.i, label %._crit_edge109.i.i, label %.lr.ph108.i.i

.lr.ph108.i.i:                                    ; preds = %.loopexit.i.i
  %i.oq = zext i8 %i.mu to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.oq ; 10 uses
  %i.os = add i32 %.082.lcssa.i.i, 1
  %i.ot = sub i32 %i.os, %.380.i.i
  %i.ou = sub i32 %.082.lcssa.i.i, %.380.i.i
  %xtraiter = and i32 %i.ot, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph108.i.i, %.prol.preheader
  %.4106.i.i.prol = phi ptr [ %i.ox, %.prol.preheader ], [ %.3.i.i, %.lr.ph108.i.i ] ; 2 uses
  %.481105.i.i.prol = phi i32 [ %i.oy, %.prol.preheader ], [ %.380.i.i, %.lr.ph108.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph108.i.i ]
  %i.ov = load i32, ptr %i.or, align 4
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr %i.or, align 4
  %i.ox = getelementptr inbounds nuw i8, ptr %.4106.i.i.prol, i64 4 ; 3 uses
  store i32 %i.mv, ptr %.4106.i.i.prol, align 4
  %i.oy = add i32 %.481105.i.i.prol, 1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !230

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph108.i.i
  %.lcssa585.unr = phi ptr [ poison, %.lr.ph108.i.i ], [ %i.ox, %.prol.preheader ]
  %.4106.i.i.unr = phi ptr [ %.3.i.i, %.lr.ph108.i.i ], [ %i.ox, %.prol.preheader ]
  %.481105.i.i.unr = phi i32 [ %.380.i.i, %.lr.ph108.i.i ], [ %i.oy, %.prol.preheader ]
  %i.oz = icmp ult i32 %i.ou, 3
  br i1 %i.oz, label %._crit_edge109.loopexit.i.i, label %.lr.ph108.i.i.new

.lr.ph108.i.i.new:                                ; preds = %.prol.loopexit, %.lr.ph108.i.i.new
  %.4106.i.i = phi ptr [ %i.pm, %.lr.ph108.i.i.new ], [ %.4106.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.481105.i.i = phi i32 [ %i.pn, %.lr.ph108.i.i.new ], [ %.481105.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.pa = load i32, ptr %i.or, align 4
  %i.pb = add i32 %i.pa, 1
  store i32 %i.pb, ptr %i.or, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 4
  store i32 %i.mv, ptr %.4106.i.i, align 4
  %i.pd = load i32, ptr %i.or, align 4
  %i.pe = add i32 %i.pd, 1
  store i32 %i.pe, ptr %i.or, align 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 8
  store i32 %i.mv, ptr %i.pc, align 4
  %i.pg = load i32, ptr %i.or, align 4
  %i.ph = add i32 %i.pg, 1
  store i32 %i.ph, ptr %i.or, align 4
  %i.pi = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 12
  store i32 %i.mv, ptr %i.pf, align 4
  %i.pj = add i32 %.481105.i.i, 3
  %i.pk = load i32, ptr %i.or, align 4
  %i.pl = add i32 %i.pk, 1
  store i32 %i.pl, ptr %i.or, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.4106.i.i, i64 16 ; 2 uses
  store i32 %i.mv, ptr %i.pi, align 4
  %i.pn = add i32 %.481105.i.i, 4
  %.not93.i.i.3 = icmp eq i32 %i.pj, %.082.lcssa.i.i
  br i1 %.not93.i.i.3, label %._crit_edge109.loopexit.i.i, label %.lr.ph108.i.i.new

._crit_edge109.loopexit.i.i:                      ; preds = %.lr.ph108.i.i.new, %.prol.loopexit
  %.lcssa585 = phi ptr [ %.lcssa585.unr, %.prol.loopexit ], [ %i.pm, %.lr.ph108.i.i.new ]
  %i.po = add i32 %.082.lcssa.i.i, 1
  br label %._crit_edge109.i.i

._crit_edge109.i.i:                               ; preds = %._crit_edge109.loopexit.i.i, %.loopexit.i.i, %.loopexit.thread.i.i
  %.481.lcssa.i.i = phi i32 [ %.lcssa.i.i, %.loopexit.i.i ], [ %i.po, %._crit_edge109.loopexit.i.i ], [ %.lcssa.i.i, %.loopexit.thread.i.i ] ; 2 uses
  %.4.lcssa.i.i = phi ptr [ %.3.i.i, %.loopexit.i.i ], [ %.lcssa585, %._crit_edge109.loopexit.i.i ], [ %i.nw, %.loopexit.thread.i.i ] ; 2 uses
  %.not94.i.i = icmp eq i32 %.481.lcssa.i.i, %i.mn
  br i1 %.not94.i.i, label %sdefl_precode.exit.i, label %bb.cc

sdefl_precode.exit.i:                             ; preds = %._crit_edge109.i.i
  %i.pp = ptrtoint ptr %.4.lcssa.i.i to i64
  %i.pq = sub i64 %i.pp, %i.cm
  %i.pr = lshr i64 %i.pq, 2                       ; 2 uses
  %i.ps = trunc i64 %i.pr to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call fastcc void @sdefl_huff(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 19, i32 noundef 7)
  %i.pt = load i8, ptr %i.cn, align 1             ; 2 uses
  %.not.i157 = icmp eq i8 %i.pt, 0
  %i.pu = load i8, ptr %i.co, align 1             ; 3 uses
  br i1 %.not.i157, label %bb.ch, label %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge

sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge: ; preds = %sdefl_precode.exit.i
  %.pre346 = load i8, ptr %i.cp, align 2
  br label %vector.ph

bb.ch:                                            ; preds = %sdefl_precode.exit.i
  %.not.1.i = icmp eq i8 %i.pu, 0
  %.pre347 = load i8, ptr %i.cp, align 2          ; 3 uses
  br i1 %.not.1.i, label %bb.ci, label %vector.ph

bb.ci:                                            ; preds = %bb.ch
  %.not.2.i = icmp eq i8 %.pre347, 0
  br i1 %.not.2.i, label %bb.cj, label %vector.ph

bb.cj:                                            ; preds = %bb.ci
  %i.pv = load i8, ptr %i.cq, align 2
  %.not.3.i = icmp eq i8 %i.pv, 0
  br i1 %.not.3.i, label %bb.ck, label %vector.ph

bb.ck:                                            ; preds = %bb.cj
  %i.pw = load i8, ptr %i.cr, align 1
  %.not.4.i = icmp eq i8 %i.pw, 0
  br i1 %.not.4.i, label %bb.cl, label %vector.ph

bb.cl:                                            ; preds = %bb.ck
  %i.px = load i8, ptr %i.cs, align 1
  %.not.5.i = icmp eq i8 %i.px, 0
  br i1 %.not.5.i, label %bb.cm, label %vector.ph

bb.cm:                                            ; preds = %bb.cl
  %i.py = load i8, ptr %i.ct, align 4
  %.not.6.i = icmp eq i8 %i.py, 0
  br i1 %.not.6.i, label %bb.cn, label %vector.ph

bb.cn:                                            ; preds = %bb.cm
  %i.pz = load i8, ptr %i.cu, align 4
  %.not.7.i = icmp eq i8 %i.pz, 0
  br i1 %.not.7.i, label %bb.co, label %vector.ph

bb.co:                                            ; preds = %bb.cn
  %i.qa = load i8, ptr %i.cv, align 1
  %.not.8.i = icmp eq i8 %i.qa, 0
  br i1 %.not.8.i, label %bb.cp, label %vector.ph

bb.cp:                                            ; preds = %bb.co
  %i.qb = load i8, ptr %i.cw, align 1
  %.not.9.i = icmp eq i8 %i.qb, 0
  br i1 %.not.9.i, label %bb.cq, label %vector.ph

bb.cq:                                            ; preds = %bb.cp
  %i.qc = load i8, ptr %i.cx, align 2
  %.not.10.i = icmp eq i8 %i.qc, 0
  br i1 %.not.10.i, label %bb.cr, label %vector.ph

bb.cr:                                            ; preds = %bb.cq
  %i.qd = load i8, ptr %i.cy, align 2
  %.not.11.i = icmp eq i8 %i.qd, 0
  br i1 %.not.11.i, label %bb.cs, label %vector.ph

bb.cs:                                            ; preds = %bb.cr
  %i.qe = load i8, ptr %i.cz, align 1
  %.not.12.i = icmp eq i8 %i.qe, 0
  br i1 %.not.12.i, label %bb.ct, label %vector.ph

bb.ct:                                            ; preds = %bb.cs
  %i.qf = load i8, ptr %i.da, align 1
  %.not.13.i = icmp eq i8 %i.qf, 0
  br i1 %.not.13.i, label %bb.cu, label %vector.ph

bb.cu:                                            ; preds = %bb.ct
  %i.qg = load i8, ptr %i.db, align 8
  %.not.14.i = icmp eq i8 %i.qg, 0
  %spec.select.i = select i1 %.not.14.i, i32 4, i32 5
  br label %vector.ph

vector.ph:                                        ; preds = %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge
  %i.qh = phi i8 [ 0, %bb.cr ], [ %.pre346, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge ], [ %.pre347, %bb.ch ], [ 0, %bb.cu ], [ %.pre347, %bb.ci ], [ 0, %bb.co ], [ 0, %bb.cj ], [ 0, %bb.ct ], [ 0, %bb.ck ], [ 0, %bb.cq ], [ 0, %bb.cl ], [ 0, %bb.cs ], [ 0, %bb.cm ], [ 0, %bb.cp ], [ 0, %bb.cn ]
  %i.qi = phi i8 [ 0, %bb.cr ], [ %i.pu, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge ], [ %i.pu, %bb.ch ], [ 0, %bb.cu ], [ 0, %bb.ci ], [ 0, %bb.co ], [ 0, %bb.cj ], [ 0, %bb.ct ], [ 0, %bb.ck ], [ 0, %bb.cq ], [ 0, %bb.cl ], [ 0, %bb.cs ], [ 0, %bb.cm ], [ 0, %bb.cp ], [ 0, %bb.cn ]
  %.0116.lcssa.i = phi i32 [ 8, %bb.cr ], [ 19, %sdefl_precode.exit.i.sdefl_precode.exit._crit_edge.i_crit_edge ], [ 18, %bb.ch ], [ %spec.select.i, %bb.cu ], [ 17, %bb.ci ], [ 11, %bb.co ], [ 16, %bb.cj ], [ 6, %bb.ct ], [ 15, %bb.ck ], [ 9, %bb.cq ], [ 14, %bb.cl ], [ 7, %bb.cs ], [ 13, %bb.cm ], [ 10, %bb.cp ], [ 12, %bb.cn ] ; 3 uses
  %i.qj = mul nuw nsw i32 %.0116.lcssa.i, 3
  %i.qk = load i32, ptr %i.d, align 16
  %i.ql = load i8, ptr %i.c, align 16
  %i.qm = zext i8 %i.ql to i32
  %i.qn = mul i32 %i.qk, %i.qm
  %i.qo = load <4 x i8>, ptr %i.cq, align 2
  %i.qp = load <8 x i32>, ptr %i.dc, align 4
  %i.qq = load <4 x i8>, ptr %i.cy, align 2
  %i.qr = shufflevector <4 x i8> %i.qo, <4 x i8> %i.qq, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qi, i64 0
  %i.qt = zext <8 x i8> %i.qs to <8 x i32>
  %i.qu = mul <8 x i32> %i.qp, %i.qt              ; 2 uses
  %i.qv = load <4 x i32>, ptr %i.dd, align 4
  %i.qw = load <4 x i8>, ptr %i.cz, align 1
  %i.qx = zext <4 x i8> %i.qw to <4 x i32>
  %i.qy = mul <4 x i32> %i.qv, %i.qx
  %i.qz = load i32, ptr %i.de, align 4
  %i.ra = load i8, ptr %i.cr, align 1
  %i.rb = zext i8 %i.ra to i32
  %i.rc = mul i32 %i.qz, %i.rb
  %i.rd = load i32, ptr %i.df, align 8
  %i.re = zext i8 %i.qh to i32
  %i.rf = mul i32 %i.rd, %i.re
  %i.rg = load i32, ptr %i.dg, align 4
  %i.rh = zext i8 %i.pt to i32
  %i.ri = mul i32 %i.rg, %i.rh
  %i.rj = load i8, ptr %i.dh, align 16
  %i.rk = zext i8 %i.rj to i32
  %i.rl = add nuw nsw i32 %i.rk, 2
  %i.rm = load i32, ptr %i.cj, align 16
  %i.rn = mul i32 %i.rl, %i.rm
  %i.ro = load i8, ptr %i.di, align 1
  %i.rp = zext i8 %i.ro to i32
  %i.rq = add nuw nsw i32 %i.rp, 3
  %i.rr = load i32, ptr %i.cl, align 4
  %i.rs = mul i32 %i.rq, %i.rr
  %i.rt = load i8, ptr %i.dj, align 2
  %i.ru = zext i8 %i.rt to i32
  %i.rv = add nuw nsw i32 %i.ru, 7
  %i.rw = load i32, ptr %i.ck, align 8
  %i.rx = mul i32 %i.rv, %i.rw
  %5 = shufflevector <8 x i32> %i.qu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op564 = add <4 x i32> %5, %i.qy
  %6 = shufflevector <4 x i32> %rdx.op564, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <8 x i32> %6, <8 x i32> %i.qu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %8 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %7)
  %op.rdx565 = add i32 %8, %i.qj
  %op.rdx566 = add i32 %i.qn, %i.rc
  %op.rdx567 = add i32 %i.rf, %i.ri
  %op.rdx568 = add i32 %i.rn, %i.rs
  %op.rdx569 = add i32 %i.rx, 14
  %op.rdx570 = add i32 %op.rdx565, %op.rdx566
  %op.rdx571 = add i32 %op.rdx567, %op.rdx568
  %op.rdx572 = add i32 %op.rdx570, %op.rdx571
  %op.rdx573 = add i32 %op.rdx572, %op.rdx569
  %i.ry = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %op.rdx573, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ry, %vector.ph ], [ %i.sh, %vector.body ]
  %vec.phi556 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.si, %vector.body ]
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %wide.load = load <4 x i32>, ptr %i.rz, align 4
  %wide.load557 = load <4 x i32>, ptr %i.sa, align 4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %wide.load558 = load <4 x i8>, ptr %i.sb, align 1
  %wide.load559 = load <4 x i8>, ptr %i.sc, align 1
  %i.sd = zext <4 x i8> %wide.load558 to <4 x i32>
  %i.se = zext <4 x i8> %wide.load559 to <4 x i32>
  %i.sf = mul <4 x i32> %wide.load, %i.sd
  %i.sg = mul <4 x i32> %wide.load557, %i.se
  %i.sh = add <4 x i32> %i.sf, %vec.phi           ; 2 uses
  %i.si = add <4 x i32> %i.sg, %vec.phi556        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sj = icmp eq i64 %index.next, 256
  br i1 %i.sj, label %sdefl_blk_type.exit.i, label %vector.body, !llvm.loop !231

sdefl_blk_type.exit.i:                            ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.si, %i.sh
  %i.sk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.sl = load i8, ptr %i.dk, align 4
  %i.sm = zext i8 %i.sl to i32
  %i.sn = load i32, ptr %i.u, align 4
  %i.so = load i8, ptr %i.bd, align 1
  %i.sp = zext i8 %i.so to i32
  %i.sq = mul i32 %i.sn, %i.sp
  %i.sr = load <16 x i8>, ptr %i.bc, align 2
  %i.ss = load <8 x i8>, ptr %i.am, align 2
  %i.st = load <28 x i32>, ptr %i.dl, align 4
  %i.su = load <4 x i8>, ptr %i.ae, align 2
  %i.sv = load <4 x i32>, ptr %i.v, align 4
  %i.sw = load <4 x i8>, ptr %i.x, align 4
  %i.sx = shufflevector <4 x i8> %i.su, <4 x i8> %i.sw, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sy = shufflevector <16 x i8> %i.sr, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sz = shufflevector <32 x i8> %i.sy, <32 x i8> %i.sx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ta = shufflevector <8 x i8> %i.ss, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tb = shufflevector <32 x i8> %i.sz, <32 x i8> %i.ta, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tc = zext <32 x i8> %i.tb to <32 x i32>
  %i.td = add nuw nsw <32 x i32> %i.tc, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.te = shufflevector <28 x i32> %i.st, <28 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tf = shufflevector <4 x i32> %i.sv, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tg = shufflevector <32 x i32> %i.te, <32 x i32> %i.tf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35>
  %i.th = mul <32 x i32> %i.tg, %i.td             ; 2 uses
  %i.ti = load <24 x i32>, ptr %i.dm, align 4
  %i.tj = load <24 x i8>, ptr %i.cf, align 4
  %i.tk = zext <24 x i8> %i.tj to <24 x i32>
  %i.tl = add nuw nsw <24 x i32> %i.tk, <i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12>
  %i.tm = mul <24 x i32> %i.tl, %i.ti
  %i.tn = load i32, ptr %i.dn, align 4
  %i.to = load i8, ptr %i.bh, align 4
  %i.tp = zext i8 %i.to to i32
  %i.tq = add nuw nsw i32 %i.tp, 13
  %i.tr = mul i32 %i.tq, %i.tn
  %i.ts = load i32, ptr %i.do, align 4
  %i.tt = load i8, ptr %i.bg, align 1
  %i.tu = zext i8 %i.tt to i32
  %i.tv = add nuw nsw i32 %i.tu, 13
  %i.tw = mul i32 %i.tv, %i.ts
  %i.tx = shufflevector <24 x i32> %i.tm, <24 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ty = add <32 x i32> %i.th, %i.tx
  %i.tz = shufflevector <32 x i32> %i.ty, <32 x i32> %i.th, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ua = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.tz)
  %op.rdx = add i32 %i.ua, %i.sq
  %op.rdx560 = add i32 %i.tr, %i.tw
  %op.rdx561 = add i32 %i.sk, %i.sm
  %op.rdx562 = add i32 %op.rdx, %op.rdx560
  %op.rdx563 = add i32 %op.rdx562, %op.rdx561
  %i.ub = add nsw i32 %i.ka, 65534
  %i.uc = sdiv i32 %i.ub, 65535                   ; 3 uses
  %i.ud = mul nsw i32 %i.uc, 5
  %i.ue = add nsw i32 %i.ud, %i.ka
  %i.uf = shl i32 %i.ue, 3
  %i.ug = add i32 %i.uf, 24
  %.not212.i = icmp slt i32 %op.rdx563, %i.ug
  br i1 %.not212.i, label %bb.cw, label %.preheader218.i

.preheader218.i:                                  ; preds = %sdefl_blk_type.exit.i
  %i.uh = icmp sgt i32 %i.ka, 0
  br i1 %i.uh, label %.lr.ph.i, label %sdefl_flush.exit

.lr.ph.i:                                         ; preds = %.preheader218.i
  %i.ui = sext i32 %.089 to i64
  %i.uj = getelementptr inbounds i8, ptr %2, i64 %i.ui
  %i.uk = zext nneg i32 %i.uc to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.uc, i32 1)
  %wide.trip.count.i158 = zext nneg i32 %smax.i to i64
  br label %bb.cv

bb.cv:                                            ; preds = %sdefl_put.exit138.i, %.lr.ph.i
  %.2 = phi ptr [ %.0198, %.lr.ph.i ], [ %i.wh, %sdefl_put.exit138.i ] ; 2 uses
  %indvars.iv.i159 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i160, %sdefl_put.exit138.i ] ; 2 uses
  %.0228.i = phi i32 [ %i.ka, %.lr.ph.i ], [ %i.wi, %sdefl_put.exit138.i ] ; 2 uses
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1 ; 3 uses
  %i.ul = icmp eq i64 %indvars.iv.next.i160, %i.uk
  %i.um = select i1 %i.jy, i1 %i.ul, i1 false
  %i.un = zext i1 %i.um to i32
  %i.uo = call i32 @llvm.smin.i32(i32 %.0228.i, i32 65535) ; 3 uses
  %i.up = load i32, ptr %i.dp, align 4            ; 3 uses
  %i.uq = shl nuw i32 %i.un, %i.up
  %i.ur = load i32, ptr %0, align 4
  %i.us = or i32 %i.uq, %i.ur                     ; 3 uses
  store i32 %i.us, ptr %0, align 4
  %i.ut = add nsw i32 %i.up, 1                    ; 2 uses
  store i32 %i.ut, ptr %i.dp, align 4
  %i.uu = icmp sgt i32 %i.up, 6
  br i1 %i.uu, label %.lr.ph.i126.i, label %sdefl_put.exit.i

.lr.ph.i126.i:                                    ; preds = %bb.cv, %.lr.ph.i126.i
  %i.uv = phi i32 [ %i.uy, %.lr.ph.i126.i ], [ %i.us, %bb.cv ]
  %.7 = phi ptr [ %i.vb, %.lr.ph.i126.i ], [ %.2, %bb.cv ] ; 2 uses
  %i.uw = trunc i32 %i.uv to i8
  store i8 %i.uw, ptr %.7, align 1
  %i.ux = load i32, ptr %0, align 4
  %i.uy = ashr i32 %i.ux, 8                       ; 3 uses
  store i32 %i.uy, ptr %0, align 4
  %i.uz = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.va = add nsw i32 %i.uz, -8                   ; 2 uses
  store i32 %i.va, ptr %i.dp, align 4
  %i.vb = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.vc = icmp sgt i32 %i.uz, 15
  br i1 %i.vc, label %.lr.ph.i126.i, label %sdefl_put.exit.i

sdefl_put.exit.i:                                 ; preds = %.lr.ph.i126.i, %bb.cv
  %i.vd = phi i32 [ %i.us, %bb.cv ], [ %i.uy, %.lr.ph.i126.i ] ; 2 uses
  %.3200 = phi ptr [ %.2, %bb.cv ], [ %i.vb, %.lr.ph.i126.i ] ; 2 uses
  %i.ve = phi i32 [ %i.ut, %bb.cv ], [ %i.va, %.lr.ph.i126.i ] ; 2 uses
  %i.vf = add nsw i32 %i.ve, 2                    ; 2 uses
  store i32 %i.vf, ptr %i.dp, align 4
  %i.vg = icmp sgt i32 %i.ve, 5
  br i1 %i.vg, label %.lr.ph.i130.i, label %sdefl_put.exit132.i

.lr.ph.i130.i:                                    ; preds = %sdefl_put.exit.i, %.lr.ph.i130.i
  %i.vh = phi i32 [ %i.vk, %.lr.ph.i130.i ], [ %i.vd, %sdefl_put.exit.i ]
  %.6 = phi ptr [ %i.vn, %.lr.ph.i130.i ], [ %.3200, %sdefl_put.exit.i ] ; 2 uses
  %i.vi = trunc i32 %i.vh to i8
  store i8 %i.vi, ptr %.6, align 1
  %i.vj = load i32, ptr %0, align 4
  %i.vk = ashr i32 %i.vj, 8                       ; 3 uses
  store i32 %i.vk, ptr %0, align 4
  %i.vl = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.vm = add nsw i32 %i.vl, -8                   ; 2 uses
  store i32 %i.vm, ptr %i.dp, align 4
  %i.vn = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.vo = icmp sgt i32 %i.vl, 15
  br i1 %i.vo, label %.lr.ph.i130.i, label %sdefl_put.exit132.i

sdefl_put.exit132.i:                              ; preds = %.lr.ph.i130.i, %sdefl_put.exit.i
  %i.vp = phi i32 [ %i.vd, %sdefl_put.exit.i ], [ %i.vk, %.lr.ph.i130.i ]
  %.4 = phi ptr [ %.3200, %sdefl_put.exit.i ], [ %i.vn, %.lr.ph.i130.i ] ; 2 uses
  %i.vq = phi i32 [ %i.vf, %sdefl_put.exit.i ], [ %i.vm, %.lr.ph.i130.i ]
  %.not123.i = icmp eq i32 %i.vq, 0
  br i1 %.not123.i, label %sdefl_put.exit138.i, label %.lr.ph.preheader.i134.i

.lr.ph.preheader.i134.i:                          ; preds = %sdefl_put.exit132.i
  store i32 8, ptr %i.dp, align 4
  br label %.lr.ph.i136.i

.lr.ph.i136.i:                                    ; preds = %.lr.ph.i136.i, %.lr.ph.preheader.i134.i
  %i.vr = phi i32 [ %i.vp, %.lr.ph.preheader.i134.i ], [ %i.vu, %.lr.ph.i136.i ]
  %.5 = phi ptr [ %.4, %.lr.ph.preheader.i134.i ], [ %i.vx, %.lr.ph.i136.i ] ; 2 uses
  %i.vs = trunc i32 %i.vr to i8
  store i8 %i.vs, ptr %.5, align 1
  %i.vt = load i32, ptr %0, align 4
  %i.vu = ashr i32 %i.vt, 8                       ; 2 uses
  store i32 %i.vu, ptr %0, align 4
  %i.vv = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.vw = add nsw i32 %i.vv, -8
  store i32 %i.vw, ptr %i.dp, align 4
  %i.vx = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.vy = icmp sgt i32 %i.vv, 15
  br i1 %i.vy, label %.lr.ph.i136.i, label %sdefl_put.exit138.i

sdefl_put.exit138.i:                              ; preds = %.lr.ph.i136.i, %sdefl_put.exit132.i
  %i.vz = phi ptr [ %.4, %sdefl_put.exit132.i ], [ %i.vx, %.lr.ph.i136.i ] ; 3 uses
  %i.wa = trunc nuw i32 %i.uo to i16              ; 2 uses
  store i16 %i.wa, ptr %i.vz, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %i.wc = xor i16 %i.wa, -1
  store i16 %i.wc, ptr %i.wb, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 4 ; 2 uses
  %i.we = mul nuw nsw i64 %indvars.iv.i159, 65535
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.we
  %i.wg = zext nneg i32 %i.uo to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wd, ptr readonly align 1 %i.wf, i64 %i.wg, i1 false)
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wg ; 2 uses
  %i.wi = sub nsw i32 %.0228.i, %i.uo
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i158
  br i1 %exitcond.not.i161, label %sdefl_flush.exit, label %bb.cv

bb.cw:                                            ; preds = %sdefl_blk_type.exit.i
  %i.wj = load i32, ptr %i.dp, align 4            ; 3 uses
  %i.wk = shl nuw i32 %i.jz, %i.wj
end_hunk_0
