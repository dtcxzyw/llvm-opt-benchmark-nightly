Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/aspack?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@unaspack:bb.a
  %i.dm = zext nneg i32 %i.di to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19
  %.pr.i.i.i = load i32, ptr %8, align 8, !tbaa !22 ; 3 uses
  %i.dq = icmp ugt i32 %.pr.i.i.i, 7
  br i1 %i.dq, label %.lr.ph.i.i.i, label %..loopexit121_crit_edge.i.i

..loopexit121_crit_edge.i.i:                      ; preds = %bb.z
  %.pre.i.i = load i32, ptr %i.ai, align 4, !tbaa !17
  br label %.loopexit121.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.dr = load ptr, ptr %i.bl, align 8, !tbaa !21
  %.promoted.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !20
  %.promoted = load i32, ptr %i.ai, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i
  %i.ds = phi i32 [ %.promoted, %.lr.ph.i.i.i ], [ %i.dy, %bb.ab ]
  %i.dt = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.dz, %bb.ab ] ; 3 uses
  %i.du = phi i32 [ %.pr.i.i.i, %.lr.ph.i.i.i ], [ %i.ea, %bb.ab ]
  %.not.i.i.i = icmp ult ptr %i.dt, %i.dr
  br i1 %.not.i.i.i, label %bb.ab, label %decomp_block.exit.thread214

bb.ab:                                            ; preds = %bb.aa
  %i.dv = shl i32 %i.ds, 8
  %i.dw = load i8, ptr %i.dt, align 1, !tbaa !19
  %i.dx = zext i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.dv, %i.dx            ; 3 uses
  store i32 %i.dy, ptr %i.ai, align 4, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  store ptr %i.dz, ptr %i.bk, align 8, !tbaa !20
  %i.ea = add i32 %i.du, -8                       ; 4 uses
  store i32 %i.ea, ptr %8, align 8, !tbaa !22
  %i.eb = icmp ugt i32 %i.ea, 7
  br i1 %i.eb, label %bb.aa, label %.loopexit121.i.i

.loopexit121.i.i:                                 ; preds = %bb.ab, %..loopexit121_crit_edge.i.i
  %i.ec = phi i32 [ %.pr.i.i.i, %..loopexit121_crit_edge.i.i ], [ %i.ea, %bb.ab ] ; 2 uses
  %i.ed = phi i32 [ %.pre.i.i, %..loopexit121_crit_edge.i.i ], [ %i.dy, %bb.ab ]
  %i.ee = load i8, ptr %i.dn, align 1, !tbaa !19
  %i.ef = zext i8 %i.ee to i32
  %i.eg = sub nuw nsw i32 8, %i.ec
  %i.eh = lshr i32 %i.ed, %i.eg
  %i.ei = and i32 %i.eh, 16777215
  %i.ej = zext i8 %i.dp to i32                    ; 2 uses
  %i.ek = sub nsw i32 24, %i.ej
  %i.el = lshr i32 %i.ei, %i.ek
  %i.em = add nuw nsw i32 %i.dg, %i.ef
  %i.en = add nuw nsw i32 %i.em, %i.el
  %i.eo = add nuw nsw i32 %i.ec, %i.ej            ; 2 uses
  store i32 %i.eo, ptr %8, align 8, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit121.i.i, %._crit_edge.i
  %.pr.i99.i.i = phi i32 [ %i.eo, %.loopexit121.i.i ], [ %.pr.i99.i.pre.i, %._crit_edge.i ] ; 5 uses
  %.178.i.i = phi i32 [ %i.en, %.loopexit121.i.i ], [ %i.dg, %._crit_edge.i ] ; 14 uses
  %i.ep = zext nneg i32 %i.de to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !18 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ep
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !19  ; 2 uses
  %i.ev = zext i8 %i.eu to i32                    ; 4 uses
  %i.ew = load i32, ptr %i.bq, align 8, !tbaa !23
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = icmp ult i8 %i.eu, 3
  %or.cond3.i.i = select i1 %i.ex, i1 true, i1 %i.ey
  %i.ez = icmp ugt i32 %.pr.i99.i.i, 7            ; 2 uses
  br i1 %or.cond3.i.i, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ez, label %.lr.ph.i101.i.i, label %..loopexit117_crit_edge.i.i

..loopexit117_crit_edge.i.i:                      ; preds = %bb.ad
  %.pre134.i.i = load i32, ptr %i.ai, align 4, !tbaa !17
  br label %.loopexit117.i.i

.lr.ph.i101.i.i:                                  ; preds = %bb.ad
  %i.fa = load ptr, ptr %i.bl, align 8, !tbaa !21
  %.promoted.i102.i.i = load ptr, ptr %i.bk, align 8, !tbaa !20
  %.promoted251 = load i32, ptr %i.ai, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i101.i.i
  %i.fb = phi i32 [ %.promoted251, %.lr.ph.i101.i.i ], [ %i.fh, %bb.af ]
  %i.fc = phi ptr [ %.promoted.i102.i.i, %.lr.ph.i101.i.i ], [ %i.fi, %bb.af ] ; 3 uses
  %i.fd = phi i32 [ %.pr.i99.i.i, %.lr.ph.i101.i.i ], [ %i.fj, %bb.af ]
  %.not.i103.i.i = icmp ult ptr %i.fc, %i.fa
  br i1 %.not.i103.i.i, label %bb.af, label %decomp_block.exit.thread214

bb.af:                                            ; preds = %bb.ae
  %i.fe = shl i32 %i.fb, 8
  %i.ff = load i8, ptr %i.fc, align 1, !tbaa !19
  %i.fg = zext i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fe, %i.fg            ; 3 uses
  store i32 %i.fh, ptr %i.ai, align 4, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 1 ; 2 uses
  store ptr %i.fi, ptr %i.bk, align 8, !tbaa !20
  %i.fj = add i32 %i.fd, -8                       ; 4 uses
  store i32 %i.fj, ptr %8, align 8, !tbaa !22
  %i.fk = icmp ugt i32 %i.fj, 7
  br i1 %i.fk, label %bb.ae, label %.loopexit117.i.i

.loopexit117.i.i:                                 ; preds = %bb.af, %..loopexit117_crit_edge.i.i
  %i.fl = phi i32 [ %.pr.i99.i.i, %..loopexit117_crit_edge.i.i ], [ %i.fj, %bb.af ] ; 2 uses
  %i.fm = phi i32 [ %.pre134.i.i, %..loopexit117_crit_edge.i.i ], [ %i.fh, %bb.af ]
  %i.fn = sub nuw nsw i32 8, %i.fl
  %i.fo = lshr i32 %i.fm, %i.fn
  %i.fp = and i32 %i.fo, 16777215
  %i.fq = sub nsw i32 24, %i.ev
  %i.fr = lshr i32 %i.fp, %i.fq
  %i.fs = add i32 %i.fr, %i.er
  %i.ft = add nuw nsw i32 %i.fl, %i.ev
  store i32 %i.ft, ptr %8, align 8, !tbaa !22
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.ez, label %.lr.ph.i107.i.i, label %..loopexit119_crit_edge.i.i

..loopexit119_crit_edge.i.i:                      ; preds = %bb.ag
  %.pre133.i.i = load i32, ptr %i.ai, align 4, !tbaa !17
  br label %.loopexit119.i.i

.lr.ph.i107.i.i:                                  ; preds = %bb.ag
  %i.fu = load ptr, ptr %i.bl, align 8, !tbaa !21
  %.promoted.i108.i.i = load ptr, ptr %i.bk, align 8, !tbaa !20
  %.promoted250 = load i32, ptr %i.ai, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i107.i.i
  %i.fv = phi i32 [ %.promoted250, %.lr.ph.i107.i.i ], [ %i.gb, %bb.ai ]
  %i.fw = phi ptr [ %.promoted.i108.i.i, %.lr.ph.i107.i.i ], [ %i.gc, %bb.ai ] ; 3 uses
  %i.fx = phi i32 [ %.pr.i99.i.i, %.lr.ph.i107.i.i ], [ %i.gd, %bb.ai ]
  %.not.i109.i.i = icmp ult ptr %i.fw, %i.fu
  br i1 %.not.i109.i.i, label %bb.ai, label %decomp_block.exit.thread214

bb.ai:                                            ; preds = %bb.ah
  %i.fy = shl i32 %i.fv, 8
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !19
  %i.ga = zext i8 %i.fz to i32
  %i.gb = or disjoint i32 %i.fy, %i.ga            ; 3 uses
  store i32 %i.gb, ptr %i.ai, align 4, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 2 uses
  store ptr %i.gc, ptr %i.bk, align 8, !tbaa !20
  %i.gd = add i32 %i.fx, -8                       ; 4 uses
  store i32 %i.gd, ptr %8, align 8, !tbaa !22
  %i.ge = icmp ugt i32 %i.gd, 7
  br i1 %i.ge, label %bb.ah, label %.loopexit119.i.i

.loopexit119.i.i:                                 ; preds = %bb.ai, %..loopexit119_crit_edge.i.i
  %i.gf = phi i32 [ %.pr.i99.i.i, %..loopexit119_crit_edge.i.i ], [ %i.gd, %bb.ai ] ; 2 uses
  %i.gg = phi i32 [ %.pre133.i.i, %..loopexit119_crit_edge.i.i ], [ %i.gb, %bb.ai ]
  %i.gh = add nsw i32 %i.ev, -3
  %i.gi = sub nuw nsw i32 8, %i.gf
  %i.gj = lshr i32 %i.gg, %i.gi
  %i.gk = and i32 %i.gj, 16777215
  %i.gl = sub nsw i32 27, %i.ev
  %i.gm = lshr i32 %i.gk, %i.gl
  %i.gn = shl nuw nsw i32 %i.gm, 3
  %i.go = add nsw i32 %i.gh, %i.gf
  store i32 %i.go, ptr %8, align 8, !tbaa !22
  %i.gp = call fastcc i32 @getdec(ptr noundef nonnull %8, i8 noundef zeroext 2, ptr noundef %i.b)
  %i.gq = add i32 %i.gp, %i.er
  %i.gr = add i32 %i.gq, %i.gn
  %i.gs = load i32, ptr %i.b, align 4, !tbaa !18
  %.not90.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not90.i.i, label %bb.aj, label %decomp_block.exit.thread214

bb.aj:                                            ; preds = %.loopexit119.i.i, %.loopexit117.i.i
  %.075.i.i = phi i32 [ %i.fs, %.loopexit117.i.i ], [ %i.gr, %.loopexit119.i.i ] ; 4 uses
  %i.gt = icmp ult i32 %.075.i.i, 3
  br i1 %i.gt, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.gu = zext nneg i32 %.075.i.i to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !18 ; 2 uses
  %.not92.i.i = icmp eq i32 %.075.i.i, 0
  br i1 %.not92.i.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %i.cr, ptr %i.gv, align 4, !tbaa !18
  br label %.sink.split.i.i

bb.am:                                            ; preds = %bb.aj
  %i.gx = load i32, ptr %i.br, align 4, !tbaa !18
  store i32 %i.gx, ptr %i.bs, align 8, !tbaa !18
  store i32 %i.cr, ptr %i.br, align 4, !tbaa !18
  %i.gy = add i32 %.075.i.i, -3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.am, %bb.al
  %.sink.i.i = phi i32 [ %i.gw, %bb.al ], [ %i.gy, %bb.am ] ; 3 uses
  store i32 %.sink.i.i, ptr %i.a, align 16, !tbaa !18
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i.i, %bb.ak
  %i.gz = phi i32 [ %i.cr, %bb.ak ], [ %.sink.i.i, %.sink.split.i.i ] ; 4 uses
  %.076.i.i = phi i32 [ %i.gw, %bb.ak ], [ %.sink.i.i, %.sink.split.i.i ] ; 5 uses
  %.neg.i.i = xor i32 %.076.i.i, -1               ; 6 uses
  %or.cond96.i.i = icmp uge i32 %.076.i.i, %.074.ph.i21.i
  %i.ha = sub nuw i32 %i.cd, %.074.ph.i21.i
  %i.hb = icmp ugt i32 %.178.i.i, %i.ha
  %or.cond98.i.i = select i1 %or.cond96.i.i, i1 true, i1 %i.hb
  br i1 %or.cond98.i.i, label %decomp_block.exit.thread214, label %iter.check

iter.check:                                       ; preds = %bb.an
  %min.iters.check = icmp ult i32 %.178.i.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.hc = add nsw i32 %.178.i.i, -1               ; 2 uses
  %i.hd = xor i32 %.074.ph.i21.i, -1
  %i.he = icmp ugt i32 %i.hc, %i.hd
  %i.hf = sub i32 %.076.i.i, %.074.ph.i21.i
  %i.hg = icmp ult i32 %i.hf, %i.hc
  %i.hh = or i1 %i.he, %i.hg
  br i1 %i.hh, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hi = zext i32 %.074.ph.i21.i to i64
  %9 = xor i32 %.076.i.i, -1
  %i.hj = add i32 %.074.ph.i21.i, %9
  %i.hk = zext i32 %i.hj to i64
  %i.hl = sub nsw i64 %i.hk, %i.hi
  %diff.check = icmp ugt i64 %i.hl, -32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check365 = icmp ult i32 %.178.i.i, 32
  br i1 %min.iters.check365, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hm = and i32 %.178.i.i, 28
  %n.vec = and i32 %.178.i.i, -32                 ; 4 uses
  %i.hn = add i32 %.074.ph.i21.i, %n.vec          ; 2 uses
  %i.ho = and i32 %.178.i.i, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hp = add i32 %.074.ph.i21.i, %index          ; 2 uses
  %i.hq = add i32 %i.hp, %.neg.i.i
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load = load <16 x i8>, ptr %i.hs, align 1, !tbaa !19
  %wide.load366 = load <16 x i8>, ptr %i.ht, align 1, !tbaa !19
  %i.hu = zext i32 %i.hp to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <16 x i8> %wide.load, ptr %i.hv, align 1, !tbaa !19
  store <16 x i8> %wide.load366, ptr %i.hw, align 1, !tbaa !19
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.hx = icmp eq i32 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.178.i.i, %n.vec
  br i1 %cmp.n, label %.outer.backedge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.hm, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec368 = and i32 %.178.i.i, -4               ; 3 uses
  %i.hy = add i32 %.074.ph.i21.i, %n.vec368       ; 2 uses
  %i.hz = and i32 %.178.i.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index369 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next371, %vec.epilog.vector.body ] ; 2 uses
  %i.ia = add i32 %.074.ph.i21.i, %index369       ; 2 uses
  %i.ib = add i32 %i.ia, %.neg.i.i
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ic
  %wide.load370 = load <4 x i8>, ptr %i.id, align 1, !tbaa !19
  %i.ie = zext i32 %i.ia to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ie
  store <4 x i8> %wide.load370, ptr %i.if, align 1, !tbaa !19
  %index.next371 = add nuw i32 %index369, 4       ; 2 uses
  %i.ig = icmp eq i32 %index.next371, %n.vec368
  br i1 %i.ig, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n372 = icmp eq i32 %.178.i.i, %n.vec368
  br i1 %cmp.n372, label %.outer.backedge.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1126.i.i.ph = phi i32 [ %.074.ph.i21.i, %iter.check ], [ %.074.ph.i21.i, %vector.scevcheck ], [ %.074.ph.i21.i, %vector.memcheck ], [ %i.hn, %vec.epilog.iter.check ], [ %i.hy, %vec.epilog.middle.block ] ; 2 uses
  %.2125.i.i.ph = phi i32 [ %.178.i.i, %iter.check ], [ %.178.i.i, %vector.scevcheck ], [ %.178.i.i, %vector.memcheck ], [ %i.ho, %vec.epilog.iter.check ], [ %i.hz, %vec.epilog.middle.block ] ; 4 uses
  %i.ih = add nsw i32 %.2125.i.i.ph, -1
  %xtraiter = and i32 %.2125.i.i.ph, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.1126.i.i.prol = phi i32 [ %i.ip, %.preheader.i.i.prol ], [ %.1126.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %.2125.i.i.prol = phi i32 [ %i.ii, %.preheader.i.i.prol ], [ %.2125.i.i.ph, %.preheader.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.ii = add nsw i32 %.2125.i.i.prol, -1         ; 2 uses
  %i.ij = add i32 %.1126.i.i.prol, %.neg.i.i
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !19
  %i.in = zext i32 %.1126.i.i.prol to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.in
  store i8 %i.im, ptr %i.io, align 1, !tbaa !19
  %i.ip = add i32 %.1126.i.i.prol, 1              ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !26

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa400.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.ip, %.preheader.i.i.prol ]
  %.1126.i.i.unr = phi i32 [ %.1126.i.i.ph, %.preheader.i.i.preheader ], [ %i.ip, %.preheader.i.i.prol ]
  %.2125.i.i.unr = phi i32 [ %.2125.i.i.ph, %.preheader.i.i.preheader ], [ %i.ii, %.preheader.i.i.prol ]
  %i.iq = icmp ult i32 %i.ih, 3
  br i1 %i.iq, label %.outer.backedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.1126.i.i = phi i32 [ %i.jt, %.preheader.i.i ], [ %.1126.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 7 uses
  %.2125.i.i = phi i32 [ %i.jm, %.preheader.i.i ], [ %.2125.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.ir = add i32 %.1126.i.i, %.neg.i.i
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !19
  %i.iv = zext i32 %.1126.i.i to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.iv
  store i8 %i.iu, ptr %i.iw, align 1, !tbaa !19
  %i.ix = add i32 %.1126.i.i, 1
  %i.iy = sub i32 %.1126.i.i, %.076.i.i
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !19
  %i.jc = zext i32 %i.ix to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jc
  store i8 %i.jb, ptr %i.jd, align 1, !tbaa !19
  %i.je = add i32 %.1126.i.i, 2                   ; 2 uses
  %i.jf = add i32 %i.je, %.neg.i.i
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !19
  %i.jj = zext i32 %i.je to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jj
  store i8 %i.ji, ptr %i.jk, align 1, !tbaa !19
  %i.jl = add i32 %.1126.i.i, 3                   ; 2 uses
  %i.jm = add nsw i32 %.2125.i.i, -4              ; 2 uses
  %i.jn = add i32 %i.jl, %.neg.i.i
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !19
  %i.jr = zext i32 %i.jl to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.jr
  store i8 %i.jq, ptr %i.js, align 1, !tbaa !19
  %i.jt = add i32 %.1126.i.i, 4                   ; 2 uses
  %.not94.i.i.3 = icmp eq i32 %i.jm, 0
  br i1 %.not94.i.i.3, label %.outer.backedge.i.i, label %.preheader.i.i, !llvm.loop !27

decomp_block.exit.thread214:                      ; preds = %bb.y, %.loopexit119.i.i, %bb.an, %.outer.split.i.i, %bb.w, %bb.aa, %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %decomp_block.exit.thread

decomp_block.exit.thread:                         ; preds = %bb.r, %decomp_block.exit.thread214
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #11
  call void @free(ptr noundef %i.cn) #11
  br label %.critedge211

bb.ao:                                            ; preds = %.outer.backedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #11
  call void @free(ptr noundef %i.cn) #11
  %i.ju = icmp eq i32 %.1174253359, 0
  %i.jv = icmp ugt i32 %i.cd, 7
  %or.cond7 = and i1 %i.ju, %i.jv
  br i1 %or.cond7, label %.lr.ph.preheader, label %.loopexit220

.lr.ph.preheader:                                 ; preds = %bb.ao
  %i.jw = add i32 %i.cd, -6
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ar
  %.2175252 = phi i32 [ %i.km, %bb.ar ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.jx = add i32 %.2175252, %i.cb                ; 2 uses
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !19
  %i.kb = and i8 %i.ka, -2
  %or.cond10 = icmp eq i8 %i.kb, -24
  br i1 %or.cond10, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph
  %i.kc = add i32 %i.jx, 1
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 %i.kd ; 3 uses
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !19
  %i.kg = load i8, ptr %i.bv, align 1, !tbaa !19
  %i.kh = icmp eq i8 %i.kf, %i.kg
  br i1 %i.kh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ki = load i32, ptr %i.ke, align 1, !tbaa !19
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = sub i32 %i.kj, %.2175252
  store i32 %i.kk, ptr %i.ke, align 1, !tbaa !19
  %i.kl = add i32 %.2175252, 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %.lr.ph
  %.3 = phi i32 [ %i.kl, %bb.aq ], [ %.2175252, %bb.ap ], [ %.2175252, %.lr.ph ]
  %i.km = add i32 %.3, 1                          ; 3 uses
  %i.kn = icmp ult i32 %i.km, %i.jw
  br i1 %i.kn, label %.lr.ph, label %.loopexit220

.loopexit220:                                     ; preds = %bb.ar, %bb.ao
  %.4 = phi i32 [ %.1174253359, %bb.ao ], [ %i.km, %bb.ar ]
  br i1 %i.bw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit220
end_hunk_0
