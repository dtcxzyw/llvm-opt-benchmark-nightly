inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@unaspack212:bb.a
  %.pre.i.i = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %.loopexit121.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !22
  %.promoted.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.promoted = load i32, ptr %i.ab, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %i.db = phi i32 [ %.promoted, %.lr.ph.i.i.i ], [ %i.dh, %bb.u ]
  %i.dc = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.di, %bb.u ] ; 3 uses
  %i.dd = phi i32 [ %.pr.i.i.i, %.lr.ph.i.i.i ], [ %i.dj, %bb.u ]
  %.not.i.i.i = icmp ult ptr %i.dc, %i.da
  br i1 %.not.i.i.i, label %bb.u, label %decomp_block.exit.thread177

bb.u:                                             ; preds = %bb.t
  %i.de = shl i32 %i.db, 8
  %i.df = load i8, ptr %i.dc, align 1, !tbaa !18
  %i.dg = zext i8 %i.df to i32
  %i.dh = or disjoint i32 %i.de, %i.dg            ; 3 uses
  store i32 %i.dh, ptr %i.ab, align 4, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  store ptr %i.di, ptr %i.ba, align 8, !tbaa !21
  %i.dj = add i32 %i.dd, -8                       ; 4 uses
  store i32 %i.dj, ptr %7, align 8, !tbaa !23
  %i.dk = icmp ugt i32 %i.dj, 7
  br i1 %i.dk, label %bb.t, label %.loopexit121.i.i, !llvm.loop !25

.loopexit121.i.i:                                 ; preds = %bb.u, %..loopexit121_crit_edge.i.i
  %i.dl = phi i32 [ %.pr.i.i.i, %..loopexit121_crit_edge.i.i ], [ %i.dj, %bb.u ] ; 2 uses
  %i.dm = phi i32 [ %.pre.i.i, %..loopexit121_crit_edge.i.i ], [ %i.dh, %bb.u ]
  %i.dn = load i8, ptr %i.cw, align 1, !tbaa !18
  %i.do = zext i8 %i.dn to i32
  %i.dp = sub nuw nsw i32 8, %i.dl
  %i.dq = lshr i32 %i.dm, %i.dp
  %i.dr = and i32 %i.dq, 16777215
  %i.ds = zext i8 %i.cy to i32                    ; 2 uses
  %i.dt = sub nsw i32 24, %i.ds
  %i.du = lshr i32 %i.dr, %i.dt
  %i.dv = add nuw nsw i32 %i.cp, %i.do
  %i.dw = add nuw nsw i32 %i.dv, %i.du
  %i.dx = add nuw nsw i32 %i.dl, %i.ds            ; 2 uses
  store i32 %i.dx, ptr %7, align 8, !tbaa !23
  br label %bb.v

bb.v:                                             ; preds = %.loopexit121.i.i, %._crit_edge.i
  %.pr.i99.i.i = phi i32 [ %i.dx, %.loopexit121.i.i ], [ %.pr.i99.i.pre.i, %._crit_edge.i ] ; 5 uses
  %.179.i.i = phi i32 [ %i.dw, %.loopexit121.i.i ], [ %i.cp, %._crit_edge.i ] ; 14 uses
  %i.dy = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !18  ; 2 uses
  %i.ee = zext i8 %i.ed to i32                    ; 4 uses
  %i.ef = load i32, ptr %i.bg, align 8, !tbaa !26
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = icmp ult i8 %i.ed, 3
  %or.cond3.i.i = select i1 %i.eg, i1 true, i1 %i.eh
  %i.ei = icmp ugt i32 %.pr.i99.i.i, 7            ; 2 uses
  br i1 %or.cond3.i.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %i.ei, label %.lr.ph.i101.i.i, label %..loopexit117_crit_edge.i.i

..loopexit117_crit_edge.i.i:                      ; preds = %bb.w
  %.pre134.i.i = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %.loopexit117.i.i

.lr.ph.i101.i.i:                                  ; preds = %bb.w
  %i.ej = load ptr, ptr %i.bb, align 8, !tbaa !22
  %.promoted.i102.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.promoted203 = load i32, ptr %i.ab, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i101.i.i
  %i.ek = phi i32 [ %.promoted203, %.lr.ph.i101.i.i ], [ %i.eq, %bb.y ]
  %i.el = phi ptr [ %.promoted.i102.i.i, %.lr.ph.i101.i.i ], [ %i.er, %bb.y ] ; 3 uses
  %i.em = phi i32 [ %.pr.i99.i.i, %.lr.ph.i101.i.i ], [ %i.es, %bb.y ]
  %.not.i103.i.i = icmp ult ptr %i.el, %i.ej
  br i1 %.not.i103.i.i, label %bb.y, label %decomp_block.exit.thread177

bb.y:                                             ; preds = %bb.x
  %i.en = shl i32 %i.ek, 8
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !18
  %i.ep = zext i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.en, %i.ep            ; 3 uses
  store i32 %i.eq, ptr %i.ab, align 4, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  store ptr %i.er, ptr %i.ba, align 8, !tbaa !21
  %i.es = add i32 %i.em, -8                       ; 4 uses
  store i32 %i.es, ptr %7, align 8, !tbaa !23
  %i.et = icmp ugt i32 %i.es, 7
  br i1 %i.et, label %bb.x, label %.loopexit117.i.i, !llvm.loop !25

.loopexit117.i.i:                                 ; preds = %bb.y, %..loopexit117_crit_edge.i.i
  %i.eu = phi i32 [ %.pr.i99.i.i, %..loopexit117_crit_edge.i.i ], [ %i.es, %bb.y ] ; 2 uses
  %i.ev = phi i32 [ %.pre134.i.i, %..loopexit117_crit_edge.i.i ], [ %i.eq, %bb.y ]
  %i.ew = sub nuw nsw i32 8, %i.eu
  %i.ex = lshr i32 %i.ev, %i.ew
  %i.ey = and i32 %i.ex, 16777215
  %i.ez = sub nsw i32 24, %i.ee
  %i.fa = lshr i32 %i.ey, %i.ez
  %i.fb = add i32 %i.fa, %i.ea
  %i.fc = add nuw nsw i32 %i.eu, %i.ee
  store i32 %i.fc, ptr %7, align 8, !tbaa !23
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  br i1 %i.ei, label %.lr.ph.i107.i.i, label %..loopexit119_crit_edge.i.i

..loopexit119_crit_edge.i.i:                      ; preds = %bb.z
  %.pre133.i.i = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %.loopexit119.i.i

.lr.ph.i107.i.i:                                  ; preds = %bb.z
  %i.fd = load ptr, ptr %i.bb, align 8, !tbaa !22
  %.promoted.i108.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.promoted202 = load i32, ptr %i.ab, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i107.i.i
  %i.fe = phi i32 [ %.promoted202, %.lr.ph.i107.i.i ], [ %i.fk, %bb.ab ]
  %i.ff = phi ptr [ %.promoted.i108.i.i, %.lr.ph.i107.i.i ], [ %i.fl, %bb.ab ] ; 3 uses
  %i.fg = phi i32 [ %.pr.i99.i.i, %.lr.ph.i107.i.i ], [ %i.fm, %bb.ab ]
  %.not.i109.i.i = icmp ult ptr %i.ff, %i.fd
  br i1 %.not.i109.i.i, label %bb.ab, label %decomp_block.exit.thread177

bb.ab:                                            ; preds = %bb.aa
  %i.fh = shl i32 %i.fe, 8
  %i.fi = load i8, ptr %i.ff, align 1, !tbaa !18
  %i.fj = zext i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.fh, %i.fj            ; 3 uses
  store i32 %i.fk, ptr %i.ab, align 4, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 1 ; 2 uses
  store ptr %i.fl, ptr %i.ba, align 8, !tbaa !21
  %i.fm = add i32 %i.fg, -8                       ; 4 uses
  store i32 %i.fm, ptr %7, align 8, !tbaa !23
  %i.fn = icmp ugt i32 %i.fm, 7
  br i1 %i.fn, label %bb.aa, label %.loopexit119.i.i, !llvm.loop !25

.loopexit119.i.i:                                 ; preds = %bb.ab, %..loopexit119_crit_edge.i.i
  %i.fo = phi i32 [ %.pr.i99.i.i, %..loopexit119_crit_edge.i.i ], [ %i.fm, %bb.ab ] ; 2 uses
  %i.fp = phi i32 [ %.pre133.i.i, %..loopexit119_crit_edge.i.i ], [ %i.fk, %bb.ab ]
  %i.fq = add nsw i32 %i.ee, -3
  %i.fr = sub nuw nsw i32 8, %i.fo
  %i.fs = lshr i32 %i.fp, %i.fr
  %i.ft = and i32 %i.fs, 16777215
  %i.fu = sub nsw i32 27, %i.ee
  %i.fv = lshr i32 %i.ft, %i.fu
  %i.fw = shl nuw nsw i32 %i.fv, 3
  %i.fx = add nsw i32 %i.fq, %i.fo
  store i32 %i.fx, ptr %7, align 8, !tbaa !23
  %i.fy = call fastcc i32 @getdec(ptr noundef nonnull %7, i8 noundef zeroext 2, ptr noundef %i.b)
  %i.fz = add i32 %i.fy, %i.ea
  %i.ga = add i32 %i.fz, %i.fw
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !4
  %.not90.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not90.i.i, label %bb.ac, label %decomp_block.exit.thread177

bb.ac:                                            ; preds = %.loopexit119.i.i, %.loopexit117.i.i
  %.076.i.i = phi i32 [ %i.fb, %.loopexit117.i.i ], [ %i.ga, %.loopexit119.i.i ] ; 4 uses
  %i.gc = icmp ult i32 %.076.i.i, 3
  br i1 %i.gc, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gd = zext nneg i32 %.076.i.i to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 2 uses
  %.not92.i.i = icmp eq i32 %.076.i.i, 0
  br i1 %.not92.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ca, ptr %i.ge, align 4, !tbaa !4
  br label %.sink.split.i.i

bb.af:                                            ; preds = %bb.ac
  %i.gg = load i32, ptr %i.bh, align 4, !tbaa !4
  store i32 %i.gg, ptr %i.bi, align 8, !tbaa !4
  store i32 %i.ca, ptr %i.bh, align 4, !tbaa !4
  %i.gh = add i32 %.076.i.i, -3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.af, %bb.ae
  %.sink.i.i = phi i32 [ %i.gf, %bb.ae ], [ %i.gh, %bb.af ] ; 3 uses
  store i32 %.sink.i.i, ptr %i.a, align 16, !tbaa !4
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i.i, %bb.ad
  %i.gi = phi i32 [ %i.ca, %bb.ad ], [ %.sink.i.i, %.sink.split.i.i ] ; 4 uses
  %.077.i.i = phi i32 [ %i.gf, %bb.ad ], [ %.sink.i.i, %.sink.split.i.i ] ; 5 uses
  %.neg.i.i = xor i32 %.077.i.i, -1               ; 6 uses
  %or.cond96.i.i = icmp uge i32 %.077.i.i, %.074.ph.i21.i
  %i.gj = sub i32 %.val174, %.074.ph.i21.i
  %i.gk = icmp ugt i32 %.179.i.i, %i.gj
  %or.cond98.i.i = select i1 %or.cond96.i.i, i1 true, i1 %i.gk
  br i1 %or.cond98.i.i, label %decomp_block.exit.thread177, label %iter.check

iter.check:                                       ; preds = %bb.ag
  %min.iters.check = icmp ult i32 %.179.i.i, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.gl = add nsw i32 %.179.i.i, -1               ; 2 uses
  %i.gm = xor i32 %.074.ph.i21.i, -1
  %i.gn = icmp ugt i32 %i.gl, %i.gm
  %i.go = sub i32 %.077.i.i, %.074.ph.i21.i
  %i.gp = icmp ult i32 %i.go, %i.gl
  %i.gq = or i1 %i.gn, %i.gp
  br i1 %i.gq, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gr = zext i32 %.074.ph.i21.i to i64
  %i.gs = xor i32 %.077.i.i, -1
  %i.gt = add i32 %.074.ph.i21.i, %i.gs
  %i.gu = zext i32 %i.gt to i64
  %i.gv = sub nsw i64 %i.gr, %i.gu
  %diff.check = icmp ult i64 %i.gv, 32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check303 = icmp ult i32 %.179.i.i, 32
  br i1 %min.iters.check303, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %.179.i.i, 24
  %n.vec = and i32 %.179.i.i, -32                 ; 4 uses
  %i.gw = add i32 %.074.ph.i21.i, %n.vec          ; 2 uses
  %i.gx = and i32 %.179.i.i, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = add i32 %.074.ph.i21.i, %index          ; 2 uses
  %i.gz = add i32 %i.gy, %.neg.i.i
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load = load <16 x i8>, ptr %i.hb, align 1, !tbaa !18
  %wide.load304 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !18
  %i.hd = zext i32 %i.gy to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <16 x i8> %wide.load, ptr %i.he, align 1, !tbaa !18
  store <16 x i8> %wide.load304, ptr %i.hf, align 1, !tbaa !18
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.hg = icmp eq i32 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.179.i.i, %n.vec
  br i1 %cmp.n, label %.outer.backedge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec307 = and i32 %.179.i.i, -8               ; 3 uses
  %i.hh = add i32 %.074.ph.i21.i, %n.vec307       ; 2 uses
  %i.hi = and i32 %.179.i.i, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index308 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next310, %vec.epilog.vector.body ] ; 2 uses
  %i.hj = add i32 %.074.ph.i21.i, %index308       ; 2 uses
  %i.hk = add i32 %i.hj, %.neg.i.i
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.hl
  %wide.load309 = load <8 x i8>, ptr %i.hm, align 1, !tbaa !18
  %i.hn = zext i32 %i.hj to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.hn
  store <8 x i8> %wide.load309, ptr %i.ho, align 1, !tbaa !18
  %index.next310 = add nuw i32 %index308, 8       ; 2 uses
  %i.hp = icmp eq i32 %index.next310, %n.vec307
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n311 = icmp eq i32 %.179.i.i, %n.vec307
  br i1 %cmp.n311, label %.outer.backedge.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.175126.i.i.ph = phi i32 [ %.074.ph.i21.i, %iter.check ], [ %.074.ph.i21.i, %vector.scevcheck ], [ %.074.ph.i21.i, %vector.memcheck ], [ %i.gw, %vec.epilog.iter.check ], [ %i.hh, %vec.epilog.middle.block ] ; 2 uses
  %.280125.i.i.ph = phi i32 [ %.179.i.i, %iter.check ], [ %.179.i.i, %vector.scevcheck ], [ %.179.i.i, %vector.memcheck ], [ %i.gx, %vec.epilog.iter.check ], [ %i.hi, %vec.epilog.middle.block ] ; 4 uses
  %i.hq = add nsw i32 %.280125.i.i.ph, -1
  %xtraiter = and i32 %.280125.i.i.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.175126.i.i.prol = phi i32 [ %i.hy, %.preheader.i.i.prol ], [ %.175126.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %.280125.i.i.prol = phi i32 [ %i.hr, %.preheader.i.i.prol ], [ %.280125.i.i.ph, %.preheader.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.hr = add nsw i32 %.280125.i.i.prol, -1       ; 2 uses
  %i.hs = add i32 %.175126.i.i.prol, %.neg.i.i
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !18
  %i.hw = zext i32 %.175126.i.i.prol to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.hw
  store i8 %i.hv, ptr %i.hx, align 1, !tbaa !18
  %i.hy = add i32 %.175126.i.i.prol, 1            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !32

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa325.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.hy, %.preheader.i.i.prol ]
  %.175126.i.i.unr = phi i32 [ %.175126.i.i.ph, %.preheader.i.i.preheader ], [ %i.hy, %.preheader.i.i.prol ]
  %.280125.i.i.unr = phi i32 [ %.280125.i.i.ph, %.preheader.i.i.preheader ], [ %i.hr, %.preheader.i.i.prol ]
  %i.hz = icmp ult i32 %i.hq, 3
  br i1 %i.hz, label %.outer.backedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.175126.i.i = phi i32 [ %i.jc, %.preheader.i.i ], [ %.175126.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 7 uses
  %.280125.i.i = phi i32 [ %i.iv, %.preheader.i.i ], [ %.280125.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.ia = add i32 %.175126.i.i, %.neg.i.i
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !18
  %i.ie = zext i32 %.175126.i.i to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ie
  store i8 %i.id, ptr %i.if, align 1, !tbaa !18
  %i.ig = add i32 %.175126.i.i, 1
  %i.ih = sub i32 %.175126.i.i, %.077.i.i
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !18
  %i.il = zext i32 %i.ig to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.il
  store i8 %i.ik, ptr %i.im, align 1, !tbaa !18
  %i.in = add i32 %.175126.i.i, 2                 ; 2 uses
  %i.io = add i32 %i.in, %.neg.i.i
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !18
  %i.is = zext i32 %i.in to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.is
  store i8 %i.ir, ptr %i.it, align 1, !tbaa !18
  %i.iu = add i32 %.175126.i.i, 3                 ; 2 uses
  %i.iv = add nsw i32 %.280125.i.i, -4            ; 2 uses
  %i.iw = add i32 %i.iu, %.neg.i.i
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !18
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ja
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !18
  %i.jc = add i32 %.175126.i.i, 4                 ; 2 uses
  %.not94.i.i.3 = icmp eq i32 %i.iv, 0
  br i1 %.not94.i.i.3, label %.outer.backedge.i.i, label %.preheader.i.i, !llvm.loop !34

decomp_block.exit.thread177:                      ; preds = %bb.r, %.loopexit119.i.i, %bb.ag, %.outer.split.i.i, %bb.p, %bb.t, %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %decomp_block.exit.thread

decomp_block.exit.thread:                         ; preds = %bb.k, %decomp_block.exit.thread177
  call void @free(ptr noundef %i.bw) #10
  br label %.critedge172

bb.ah:                                            ; preds = %.outer.backedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @free(ptr noundef %i.bw) #10
  %i.jd = icmp eq i32 %.1208, 0
  %i.je = icmp ugt i32 %.val174, 7
  %or.cond5 = and i1 %i.jd, %i.je
  br i1 %or.cond5, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ah
  %i.jf = add i32 %.val174, -6
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %.2204 = phi i32 [ %i.ju, %bb.ak ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.jg = add i32 %.2204, %.0142.val              ; 2 uses
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = and i8 %i.jj, -2
  %or.cond8 = icmp eq i8 %i.jk, -24
  br i1 %or.cond8, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph
  %i.jl = add i32 %i.jg, 1
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 %i.jm ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !18
  %i.jp = load i8, ptr %i.bl, align 1, !tbaa !18
  %i.jq = icmp eq i8 %i.jo, %i.jp
  br i1 %i.jq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.val173 = load i32, ptr %i.jn, align 1
  %i.jr = lshr i32 %.val173, 8
  %i.js = sub i32 %i.jr, %.2204
  store i32 %i.js, ptr %i.jn, align 1
  %i.jt = add i32 %.2204, 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %.lr.ph
  %.3 = phi i32 [ %i.jt, %bb.aj ], [ %.2204, %bb.ai ], [ %.2204, %.lr.ph ]
  %i.ju = add i32 %.3, 1                          ; 3 uses
  %i.jv = icmp ult i32 %i.ju, %i.jf
  br i1 %i.jv, label %.lr.ph, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.ak, %bb.ah
  %.4 = phi i32 [ %.1208, %bb.ah ], [ %i.ju, %bb.ak ]
  br i1 %.not157, label %.critedge172, label %bb.f, !llvm.loop !36

.critedge:                                        ; preds = %bb.g
  %i.jw = load ptr, ptr %i.g, align 8, !tbaa !8
  call void @free(ptr noundef %i.jw) #10
  %i.jx = icmp ugt i16 %3, 2
  br i1 %i.jx, label %bb.al, label %bb.an

.critedge172:                                     ; preds = %bb.j, %bb.f, %bb.i, %bb.h, %.loopexit, %bb.e, %decomp_block.exit.thread
  %i.jy = load ptr, ptr %i.g, align 8, !tbaa !8
  call void @free(ptr noundef %i.jy) #10
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #10
  br label %bb.at

bb.al:                                            ; preds = %.critedge
  %i.jz = zext i16 %3 to i32
  %i.ka = add nsw i32 %i.jz, -2                   ; 2 uses
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !37
  %i.ke = icmp eq i32 %4, %i.kd
  br i1 %i.ke, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kf = zext i16 %3 to i64
  %i.kg = getelementptr [36 x i8], ptr %2, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 -24
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !39
  %.not167 = icmp eq i32 %i.ki, 0
  %i.kj = trunc nuw i32 %i.ka to i16
  %spec.select = select i1 %.not167, i16 %i.kj, i16 %3
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.critedge
  %.0137 = phi i16 [ %spec.select, %bb.am ], [ %3, %.critedge ], [ %3, %bb.al ] ; 5 uses
  %i.kk = zext i16 %.0137 to i64
  %i.kl = mul nuw nsw i64 %i.kk, 36               ; 2 uses
  %i.km = call ptr @cli_malloc(i64 noundef %i.kl) #10 ; 9 uses
  %.not168 = icmp eq ptr %i.km, null
  br i1 %.not168, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #10
  %i.kn = call i32 @cli_writen(i32 noundef %6, ptr noundef nonnull %0, i32 noundef %1) #10 ; 0 uses
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.km, ptr align 4 %2, i64 %i.kl, i1 false)
  %i.ko = zext i16 %.0137 to i32
  %.not218 = icmp eq i16 %.0137, 0
  br i1 %.not218, label %._crit_edge, label %.lr.ph215.preheader

.lr.ph215.preheader:                              ; preds = %bb.ap
  %wide.trip.count = zext i16 %.0137 to i64       ; 2 uses
  %xtraiter333 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.kp = icmp ult i16 %.0137, 4
  br i1 %i.kp, label %.lr.ph215.epil.preheader, label %.lr.ph215.preheader.new

.lr.ph215.preheader.new:                          ; preds = %.lr.ph215.preheader
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph215, %.lr.ph215.preheader.new
  %indvars.iv239 = phi i64 [ 0, %.lr.ph215.preheader.new ], [ %indvars.iv.next240.3, %.lr.ph215 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph215.preheader.new ], [ %niter.next.3, %.lr.ph215 ]
end_hunk_0
begin_hunk_1_@build_decrypt_array:bb.a
  %.3 = phi i8 [ 0, %bb.i ], [ 1, %bb.m ], [ 0, %bb.f ], [ 1, %.preheader ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i8 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @getdec(ptr noundef nonnull captures(none) %0, i8 noundef zeroext range(i8 0, 4) %1, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = zext nneg i8 %1 to i64                   ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.b ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.b
  store i32 1, ptr %2, align 4, !tbaa !4
  %.pr.i = load i32, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.g = icmp ugt i32 %.pr.i, 7
  br i1 %i.g, label %.lr.ph.i, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.l = phi i32 [ %.pr.i, %.lr.ph.i ], [ %i.s, %bb.c ]
  %.not.i = icmp ult ptr %i.k, %i.i
  br i1 %.not.i, label %bb.c, label %readstream.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 4, !tbaa !17
  %i.n = shl i32 %i.m, 8
  %i.o = load i8, ptr %i.k, align 1, !tbaa !18
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p               ; 2 uses
  store i32 %i.q, ptr %i.j, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !21
  %i.s = add i32 %i.l, -8                         ; 4 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !23
  %i.t = icmp ugt i32 %i.s, 7
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge
  %i.u = phi i32 [ %.pr.i, %..loopexit_crit_edge ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.q, %bb.c ]
  %i.w = sub nuw nsw i32 8, %i.u
  %i.x = lshr i32 %i.v, %i.w
  %i.y = and i32 %i.x, 16776704                   ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ac = lshr i32 %i.y, 16
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1032
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ag = zext nneg i32 %i.ac to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18  ; 2 uses
  %i.aj = add i8 %i.ai, -24
  %or.cond = icmp ult i8 %i.aj, -23
  br i1 %or.cond, label %readstream.exit, label %bb.k

bb.e:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = icmp ult i32 %i.y, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = icmp ult i32 %i.y, %i.ao
  %. = select i1 %i.ap, i8 9, i8 10
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = icmp ult i32 %i.y, %i.ar
  br i1 %i.as, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp ult i32 %i.y, %i.au
  br i1 %i.av, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp ult i32 %i.y, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = icmp ult i32 %i.y, %i.ba
  %.51 = select i1 %i.bb, i8 14, i8 15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.045 = phi i8 [ %i.ai, %bb.d ], [ %., %bb.f ], [ 13, %bb.i ], [ %.51, %bb.j ], [ 11, %bb.g ], [ 12, %bb.h ] ; 2 uses
  %i.bc = zext nneg i8 %.045 to i32               ; 2 uses
  %i.bd = add nuw nsw i32 %i.u, %i.bc
  store i32 %i.bd, ptr %0, align 8, !tbaa !23
  %i.be = zext nneg i8 %.045 to i64               ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.c, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = sub i32 %i.y, %i.bh
  %i.bj = sub nuw nsw i32 24, %i.bc
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.be
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = add i32 %i.bk, %i.bm                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.b ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !14
  %.not50 = icmp ult i32 %i.bn, %i.br
  br i1 %.not50, label %bb.l, label %readstream.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = zext i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %readstream.exit

readstream.exit:                                  ; preds = %bb.b, %bb.k, %bb.d, %bb.l
  %.0 = phi i32 [ %i.bv, %bb.l ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"DICT_HELPER", !10, i64 0, !12, i64 8, !5, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!9, !12, i64 8}
!14 = !{!9, !5, i64 16}
!15 = !{!16, !12, i64 1136}
!16 = !{!"ASPK", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 27, !6, i64 788, !6, i64 1024, !12, i64 1120, !12, i64 1128, !12, i64 1136, !6, i64 1144, !6, i64 1528, !5, i64 1912}
!17 = !{!16, !5, i64 4}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!16, !12, i64 1120}
!22 = !{!16, !12, i64 1128}
!23 = !{!16, !5, i64 0}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = !{!16, !5, i64 1912}
!27 = distinct !{!27, !20, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 8, i32 24}
!31 = distinct !{!31, !20, !28, !29}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !20, !28}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = !{!38, !5, i64 0}
!38 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!39 = !{!38, !5, i64 12}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
end_hunk_1
