Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/inffast?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@inflate_fast:bb.a
  %i.dk = xor i32 %notmask314, -1
  %i.dl = and i32 %i.dj, %i.dk
  %i.dm = add nuw nsw i32 %i.dl, %i.cz
  %i.dn = zext nneg i32 %i.da to i64
  %i.do = lshr i64 %.3259, %i.dn
  %i.dp = sub i32 %.3252, %i.da
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.3279 = phi ptr [ %.2278, %bb.h ], [ %.1277, %bb.e ] ; 4 uses
  %.4260 = phi i64 [ %i.do, %bb.h ], [ %i.cu, %bb.e ] ; 2 uses
  %.4253 = phi i32 [ %i.dp, %bb.h ], [ %i.ct, %bb.e ] ; 5 uses
  %.0239 = phi i32 [ %i.dm, %bb.h ], [ %i.cz, %bb.e ] ; 10 uses
  %i.dq = icmp ult i32 %.4253, 15
  br i1 %i.dq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.3279, i64 1
  %i.ds = load i8, ptr %.3279, align 1, !tbaa !51
  %i.dt = zext i8 %i.ds to i64
  %i.du = zext nneg i32 %.4253 to i64
  %i.dv = shl nuw nsw i64 %i.dt, %i.du
  %i.dw = add i64 %i.dv, %.4260
  %i.dx = add nuw nsw i32 %.4253, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.3279, i64 2
  %i.dz = load i8, ptr %i.dr, align 1, !tbaa !51
  %i.ea = zext i8 %i.dz to i64
  %i.eb = zext nneg i32 %i.dx to i64
  %i.ec = shl nuw nsw i64 %i.ea, %i.eb
  %i.ed = add i64 %i.dw, %i.ec
  %i.ee = or disjoint i32 %.4253, 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4280 = phi ptr [ %i.dy, %bb.j ], [ %.3279, %bb.i ] ; 5 uses
  %.5261 = phi i64 [ %i.ed, %bb.j ], [ %.4260, %bb.i ] ; 2 uses
  %.5254 = phi i32 [ %i.ee, %bb.j ], [ %.4253, %bb.i ]
  %i.ef = and i64 %.5261, %i.as
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ef ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !54  ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  %i.ek = zext nneg i8 %i.ei to i64
  %i.el = lshr i64 %.5261, %i.ek                  ; 2 uses
  %i.em = sub i32 %.5254, %i.ej                   ; 2 uses
  %i.en = load i8, ptr %i.eg, align 2, !tbaa !55
  %i.eo = zext i8 %i.en to i32                    ; 3 uses
  %i.ep = and i32 %i.eo, 16
  %.not315363 = icmp eq i32 %i.ep, 0
  br i1 %.not315363, label %.lr.ph366, label %._crit_edge367

._crit_edge367:                                   ; preds = %bb.ad, %bb.k
  %.1248.lcssa = phi ptr [ %i.eg, %bb.k ], [ %i.ql, %bb.ad ]
  %.lcssa341 = phi i64 [ %i.el, %bb.k ], [ %i.qq, %bb.ad ] ; 2 uses
  %.lcssa339 = phi i32 [ %i.em, %bb.k ], [ %i.qr, %bb.ad ] ; 5 uses
  %.lcssa = phi i32 [ %i.eo, %bb.k ], [ %i.qt, %bb.ad ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.1248.lcssa, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !56
  %i.es = zext i16 %i.er to i32                   ; 4 uses
  %i.et = and i32 %.lcssa, 15                     ; 5 uses
  %i.eu = icmp ult i32 %.lcssa339, %i.et
  br i1 %i.eu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge367
  %i.ev = getelementptr inbounds nuw i8, ptr %.4280, i64 1 ; 2 uses
  %i.ew = load i8, ptr %.4280, align 1, !tbaa !51
  %i.ex = zext i8 %i.ew to i64
  %i.ey = zext nneg i32 %.lcssa339 to i64
  %i.ez = shl nuw nsw i64 %i.ex, %i.ey
  %i.fa = add i64 %i.ez, %.lcssa341               ; 2 uses
  %i.fb = add nuw nsw i32 %.lcssa339, 8           ; 3 uses
  %i.fc = icmp samesign ult i32 %i.fb, %i.et
  br i1 %i.fc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fd = getelementptr inbounds nuw i8, ptr %.4280, i64 2
  %i.fe = load i8, ptr %i.ev, align 1, !tbaa !51
  %i.ff = zext i8 %i.fe to i64
  %i.fg = zext nneg i32 %i.fb to i64
  %i.fh = shl nuw nsw i64 %i.ff, %i.fg
  %i.fi = add i64 %i.fh, %i.fa
  %i.fj = add nuw nsw i32 %.lcssa339, 16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %._crit_edge367
  %.5281 = phi ptr [ %i.fd, %bb.m ], [ %i.ev, %bb.l ], [ %.4280, %._crit_edge367 ] ; 7 uses
  %.7263 = phi i64 [ %i.fi, %bb.m ], [ %i.fa, %bb.l ], [ %.lcssa341, %._crit_edge367 ] ; 2 uses
  %.7 = phi i32 [ %i.fj, %bb.m ], [ %i.fb, %bb.l ], [ %.lcssa339, %._crit_edge367 ]
  %i.fk = trunc i64 %.7263 to i32
  %notmask317 = shl nsw i32 -1, %i.et
  %i.fl = xor i32 %notmask317, -1
  %i.fm = and i32 %i.fk, %i.fl                    ; 4 uses
  %i.fn = add nuw nsw i32 %i.fm, %i.es            ; 6 uses
  %i.fo = zext nneg i32 %i.et to i64
  %i.fp = lshr i64 %.7263, %i.fo                  ; 7 uses
  %i.fq = sub i32 %.7, %i.et                      ; 7 uses
  %i.fr = ptrtoint ptr %.0266 to i64              ; 7 uses
  %i.fs = sub i64 %i.fr, %i.at
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  %i.fu = icmp ugt i32 %i.fn, %i.ft
  br i1 %i.fu, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.fv = sub nuw nsw i32 %i.fn, %i.ft            ; 18 uses
  %i.fw = icmp ugt i32 %i.fv, %i.x
  br i1 %i.fw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fx = load i32, ptr %i.au, align 8, !tbaa !57
  %.not319 = icmp eq i32 %i.fx, 0
  br i1 %.not319, label %bb.q, label %.loopexit.sink.split.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fy = sub i32 %i.v, %i.fv
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.fz ; 7 uses
  %i.gb = icmp ult i32 %i.fv, %.0239
  br i1 %i.gb, label %iter.check, label %bb.v

iter.check:                                       ; preds = %bb.r
  %i.gc = add i32 %i.ba, %i.fm
  %i.gd = add i32 %i.gc, %i.es
  %i.ge = trunc i64 %i.fr to i32
  %i.gf = sub i32 %i.gd, %i.ge                    ; 3 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.gf, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gi = add i64 %i.ac, %i.fz
  %i.gj = sub i64 %i.gi, %i.fr
  %diff.check = icmp ugt i64 %i.gj, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check532 = icmp ult i32 %i.gf, 31
  br i1 %min.iters.check532, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gk = and i64 %i.gh, 28
  %n.vec = and i64 %i.gh, 8589934560              ; 6 uses
  %i.gl = getelementptr i8, ptr %.0266, i64 %n.vec ; 2 uses
  %i.gm = trunc i64 %n.vec to i32
  %i.gn = sub i32 %i.fv, %i.gm
  %i.go = getelementptr i8, ptr %i.ga, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0266, i64 %index ; 2 uses
  %next.gep533 = getelementptr i8, ptr %i.ga, i64 %index ; 2 uses
  %i.gp = getelementptr i8, ptr %next.gep533, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep533, align 1, !tbaa !51
  %wide.load534 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !51
  %i.gq = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !51
  store <16 x i8> %wide.load534, ptr %i.gq, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gh, %n.vec
  br i1 %cmp.n, label %.loopexit655, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec537 = and i64 %i.gh, 8589934588           ; 5 uses
  %i.gs = getelementptr i8, ptr %.0266, i64 %n.vec537 ; 2 uses
  %i.gt = trunc i64 %n.vec537 to i32
  %i.gu = sub i32 %i.fv, %i.gt
  %i.gv = getelementptr i8, ptr %i.ga, i64 %n.vec537
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index538 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next542, %vec.epilog.vector.body ] ; 3 uses
  %next.gep539 = getelementptr i8, ptr %.0266, i64 %index538
  %next.gep540 = getelementptr i8, ptr %i.ga, i64 %index538
  %wide.load541 = load <4 x i8>, ptr %next.gep540, align 1, !tbaa !51
  store <4 x i8> %wide.load541, ptr %next.gep539, align 1, !tbaa !51
  %index.next542 = add nuw i64 %index538, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next542, %n.vec537
  br i1 %i.gw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n543 = icmp eq i64 %i.gh, %n.vec537
  br i1 %cmp.n543, label %.loopexit655, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1267.ph = phi ptr [ %.0266, %iter.check ], [ %.0266, %vector.memcheck ], [ %i.gl, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ] ; 2 uses
  %.0243.ph = phi i32 [ %i.fv, %iter.check ], [ %i.fv, %vector.memcheck ], [ %i.gn, %vec.epilog.iter.check ], [ %i.gu, %vec.epilog.middle.block ] ; 4 uses
  %.0.ph = phi ptr [ %i.ga, %iter.check ], [ %i.ga, %vector.memcheck ], [ %i.go, %vec.epilog.iter.check ], [ %i.gv, %vec.epilog.middle.block ] ; 2 uses
  %i.gx = add i32 %.0243.ph, -1
  %xtraiter710 = and i32 %.0243.ph, 7             ; 2 uses
  %lcmp.mod711.not = icmp eq i32 %xtraiter710, 0
  br i1 %lcmp.mod711.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1267.prol = phi ptr [ %i.ha, %vec.epilog.scalar.ph.prol ], [ %.1267.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0243.prol = phi i32 [ %i.hb, %vec.epilog.scalar.ph.prol ], [ %.0243.ph, %vec.epilog.scalar.ph.preheader ]
  %.0.prol = phi ptr [ %i.gy, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter712 = phi i32 [ %prol.iter712.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 2 uses
  %i.gz = load i8, ptr %.0.prol, align 1, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %.1267.prol, i64 1 ; 3 uses
  store i8 %i.gz, ptr %.1267.prol, align 1, !tbaa !51
  %i.hb = add i32 %.0243.prol, -1                 ; 2 uses
  %prol.iter712.next = add i32 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i32 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa689.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ha, %vec.epilog.scalar.ph.prol ]
  %.1267.unr = phi ptr [ %.1267.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ha, %vec.epilog.scalar.ph.prol ]
  %.0243.unr = phi i32 [ %.0243.ph, %vec.epilog.scalar.ph.preheader ], [ %i.hb, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi ptr [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gy, %vec.epilog.scalar.ph.prol ]
  %i.hc = icmp ult i32 %i.gx, 7
  br i1 %i.hc, label %.loopexit655, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1267 = phi ptr [ %i.ia, %vec.epilog.scalar.ph ], [ %.1267.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0243 = phi i32 [ %i.ib, %vec.epilog.scalar.ph ], [ %.0243.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0 = phi ptr [ %i.hy, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.he = load i8, ptr %.0, align 1, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %.1267, i64 1
  store i8 %i.he, ptr %.1267, align 1, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.hh = load i8, ptr %i.hd, align 1, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %.1267, i64 2
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.hk = load i8, ptr %i.hg, align 1, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %.1267, i64 3
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !51
  %i.hm = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.hn = load i8, ptr %i.hj, align 1, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.1267, i64 4
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !51
  %i.hp = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.hq = load i8, ptr %i.hm, align 1, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %.1267, i64 5
  store i8 %i.hq, ptr %i.ho, align 1, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.ht = load i8, ptr %i.hp, align 1, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %.1267, i64 6
  store i8 %i.ht, ptr %i.hr, align 1, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %.1267, i64 7
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %.1267, i64 8 ; 2 uses
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !51
  %i.ib = add i32 %.0243, -8                      ; 2 uses
  %.not323.7 = icmp eq i32 %i.ib, 0
  br i1 %.not323.7, label %.loopexit655, label %vec.epilog.scalar.ph, !llvm.loop !12

.loopexit655:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa517 = phi ptr [ %i.gs, %vec.epilog.middle.block ], [ %i.gl, %middle.block ], [ %.lcssa689.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ia, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ic = sub nuw nsw i32 %.0239, %i.fv
  %i.id = zext nneg i32 %i.fn to i64
  %i.ie = sub nsw i64 0, %i.id
  %i.if = getelementptr inbounds i8, ptr %.lcssa517, i64 %i.ie
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ig = icmp ult i32 %i.z, %i.fv
  br i1 %i.ig, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ih = sub i32 %i.aw, %i.fv
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ii ; 7 uses
  %i.ik = sub nuw nsw i32 %i.fv, %i.z             ; 6 uses
  %i.il = icmp ult i32 %i.ik, %.0239
  br i1 %i.il, label %iter.check602, label %bb.v

iter.check602:                                    ; preds = %bb.t
  %i.im = add i32 %i.bf, %i.fm
  %i.in = add i32 %i.im, %i.es
  %i.io = trunc i64 %i.fr to i32
  %i.ip = sub i32 %i.in, %i.io                    ; 3 uses
  %i.iq = zext i32 %i.ip to i64
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 5 uses
  %min.iters.check585 = icmp ult i32 %i.ip, 3
  br i1 %min.iters.check585, label %vec.epilog.scalar.ph603.preheader, label %vector.memcheck583

vector.memcheck583:                               ; preds = %iter.check602
  %i.is = add i64 %i.ac, %i.ii
  %i.it = sub i64 %i.is, %i.fr
  %diff.check584 = icmp ugt i64 %i.it, -32
  br i1 %diff.check584, label %vec.epilog.scalar.ph603.preheader, label %vector.main.loop.iter.check586

vector.main.loop.iter.check586:                   ; preds = %vector.memcheck583
  %min.iters.check587 = icmp ult i32 %i.ip, 31
  br i1 %min.iters.check587, label %vec.epilog.ph606, label %vector.ph588

vector.ph588:                                     ; preds = %vector.main.loop.iter.check586
  %i.iu = and i64 %i.ir, 28
  %n.vec589 = and i64 %i.ir, 8589934560           ; 6 uses
  %i.iv = getelementptr i8, ptr %.0266, i64 %n.vec589 ; 2 uses
  %i.iw = trunc i64 %n.vec589 to i32
  %i.ix = sub i32 %i.ik, %i.iw
  %i.iy = getelementptr i8, ptr %i.ij, i64 %n.vec589
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph588
  %index591 = phi i64 [ 0, %vector.ph588 ], [ %index.next596, %vector.body590 ] ; 3 uses
  %next.gep592 = getelementptr i8, ptr %.0266, i64 %index591 ; 2 uses
  %next.gep593 = getelementptr i8, ptr %i.ij, i64 %index591 ; 2 uses
  %i.iz = getelementptr i8, ptr %next.gep593, i64 16
  %wide.load594 = load <16 x i8>, ptr %next.gep593, align 1, !tbaa !51
  %wide.load595 = load <16 x i8>, ptr %i.iz, align 1, !tbaa !51
  %i.ja = getelementptr i8, ptr %next.gep592, i64 16
  store <16 x i8> %wide.load594, ptr %next.gep592, align 1, !tbaa !51
  store <16 x i8> %wide.load595, ptr %i.ja, align 1, !tbaa !51
  %index.next596 = add nuw i64 %index591, 32      ; 2 uses
  %i.jb = icmp eq i64 %index.next596, %n.vec589
  br i1 %i.jb, label %middle.block597, label %vector.body590, !llvm.loop !13

middle.block597:                                  ; preds = %vector.body590
  %cmp.n598 = icmp eq i64 %i.ir, %n.vec589
  br i1 %cmp.n598, label %.loopexit657, label %vec.epilog.iter.check604

vec.epilog.iter.check604:                         ; preds = %middle.block597
  %min.epilog.iters.check605 = icmp eq i64 %i.iu, 0
  br i1 %min.epilog.iters.check605, label %vec.epilog.scalar.ph603.preheader, label %vec.epilog.ph606, !prof !61

vec.epilog.ph606:                                 ; preds = %vector.main.loop.iter.check586, %vec.epilog.iter.check604
  %vec.epilog.resume.val599 = phi i64 [ %n.vec589, %vec.epilog.iter.check604 ], [ 0, %vector.main.loop.iter.check586 ]
  %n.vec607 = and i64 %i.ir, 8589934588           ; 5 uses
  %i.jc = getelementptr i8, ptr %.0266, i64 %n.vec607 ; 2 uses
  %i.jd = trunc i64 %n.vec607 to i32
  %i.je = sub i32 %i.ik, %i.jd
  %i.jf = getelementptr i8, ptr %i.ij, i64 %n.vec607
  br label %vec.epilog.vector.body608

vec.epilog.vector.body608:                        ; preds = %vec.epilog.vector.body608, %vec.epilog.ph606
  %index609 = phi i64 [ %vec.epilog.resume.val599, %vec.epilog.ph606 ], [ %index.next613, %vec.epilog.vector.body608 ] ; 3 uses
  %next.gep610 = getelementptr i8, ptr %.0266, i64 %index609
  %next.gep611 = getelementptr i8, ptr %i.ij, i64 %index609
  %wide.load612 = load <4 x i8>, ptr %next.gep611, align 1, !tbaa !51
  store <4 x i8> %wide.load612, ptr %next.gep610, align 1, !tbaa !51
  %index.next613 = add nuw i64 %index609, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next613, %n.vec607
  br i1 %i.jg, label %vec.epilog.middle.block614, label %vec.epilog.vector.body608, !llvm.loop !14

vec.epilog.middle.block614:                       ; preds = %vec.epilog.vector.body608
  %cmp.n615 = icmp eq i64 %i.ir, %n.vec607
  br i1 %cmp.n615, label %.loopexit657, label %vec.epilog.scalar.ph603.preheader

vec.epilog.scalar.ph603.preheader:                ; preds = %vector.memcheck583, %iter.check602, %vec.epilog.iter.check604, %vec.epilog.middle.block614
  %.2268.ph = phi ptr [ %.0266, %iter.check602 ], [ %.0266, %vector.memcheck583 ], [ %i.iv, %vec.epilog.iter.check604 ], [ %i.jc, %vec.epilog.middle.block614 ] ; 2 uses
  %.1244.ph = phi i32 [ %i.ik, %iter.check602 ], [ %i.ik, %vector.memcheck583 ], [ %i.ix, %vec.epilog.iter.check604 ], [ %i.je, %vec.epilog.middle.block614 ] ; 4 uses
  %.1.ph = phi ptr [ %i.ij, %iter.check602 ], [ %i.ij, %vector.memcheck583 ], [ %i.iy, %vec.epilog.iter.check604 ], [ %i.jf, %vec.epilog.middle.block614 ] ; 2 uses
  %i.jh = add i32 %.1244.ph, -1
  %xtraiter704 = and i32 %.1244.ph, 7             ; 2 uses
  %lcmp.mod705.not = icmp eq i32 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol

vec.epilog.scalar.ph603.prol:                     ; preds = %vec.epilog.scalar.ph603.preheader, %vec.epilog.scalar.ph603.prol
  %.2268.prol = phi ptr [ %i.jk, %vec.epilog.scalar.ph603.prol ], [ %.2268.ph, %vec.epilog.scalar.ph603.preheader ] ; 2 uses
  %.1244.prol = phi i32 [ %i.jl, %vec.epilog.scalar.ph603.prol ], [ %.1244.ph, %vec.epilog.scalar.ph603.preheader ]
  %.1.prol = phi ptr [ %i.ji, %vec.epilog.scalar.ph603.prol ], [ %.1.ph, %vec.epilog.scalar.ph603.preheader ] ; 2 uses
  %prol.iter706 = phi i32 [ %prol.iter706.next, %vec.epilog.scalar.ph603.prol ], [ 0, %vec.epilog.scalar.ph603.preheader ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.1.prol, i64 1 ; 2 uses
  %i.jj = load i8, ptr %.1.prol, align 1, !tbaa !51
  %i.jk = getelementptr inbounds nuw i8, ptr %.2268.prol, i64 1 ; 3 uses
  store i8 %i.jj, ptr %.2268.prol, align 1, !tbaa !51
  %i.jl = add i32 %.1244.prol, -1                 ; 2 uses
  %prol.iter706.next = add i32 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i32 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol, !llvm.loop !15

vec.epilog.scalar.ph603.prol.loopexit:            ; preds = %vec.epilog.scalar.ph603.prol, %vec.epilog.scalar.ph603.preheader
  %.lcssa687.unr = phi ptr [ poison, %vec.epilog.scalar.ph603.preheader ], [ %i.jk, %vec.epilog.scalar.ph603.prol ]
  %.2268.unr = phi ptr [ %.2268.ph, %vec.epilog.scalar.ph603.preheader ], [ %i.jk, %vec.epilog.scalar.ph603.prol ]
  %.1244.unr = phi i32 [ %.1244.ph, %vec.epilog.scalar.ph603.preheader ], [ %i.jl, %vec.epilog.scalar.ph603.prol ]
  %.1.unr = phi ptr [ %.1.ph, %vec.epilog.scalar.ph603.preheader ], [ %i.ji, %vec.epilog.scalar.ph603.prol ]
  %i.jm = icmp ult i32 %i.jh, 7
  br i1 %i.jm, label %.loopexit657, label %vec.epilog.scalar.ph603

vec.epilog.scalar.ph603:                          ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603
  %.2268 = phi ptr [ %i.kk, %vec.epilog.scalar.ph603 ], [ %.2268.unr, %vec.epilog.scalar.ph603.prol.loopexit ] ; 9 uses
  %.1244 = phi i32 [ %i.kl, %vec.epilog.scalar.ph603 ], [ %.1244.unr, %vec.epilog.scalar.ph603.prol.loopexit ]
  %.1 = phi ptr [ %i.ki, %vec.epilog.scalar.ph603 ], [ %.1.unr, %vec.epilog.scalar.ph603.prol.loopexit ] ; 9 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.jo = load i8, ptr %.1, align 1, !tbaa !51
  %i.jp = getelementptr inbounds nuw i8, ptr %.2268, i64 1
  store i8 %i.jo, ptr %.2268, align 1, !tbaa !51
  %i.jq = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !51
  %i.js = getelementptr inbounds nuw i8, ptr %.2268, i64 2
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !51
  %i.jt = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.ju = load i8, ptr %i.jq, align 1, !tbaa !51
  %i.jv = getelementptr inbounds nuw i8, ptr %.2268, i64 3
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !51
  %i.jw = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.jx = load i8, ptr %i.jt, align 1, !tbaa !51
  %i.jy = getelementptr inbounds nuw i8, ptr %.2268, i64 4
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !51
  %i.jz = getelementptr inbounds nuw i8, ptr %.1, i64 5
  %i.ka = load i8, ptr %i.jw, align 1, !tbaa !51
  %i.kb = getelementptr inbounds nuw i8, ptr %.2268, i64 5
  store i8 %i.ka, ptr %i.jy, align 1, !tbaa !51
  %i.kc = getelementptr inbounds nuw i8, ptr %.1, i64 6
  %i.kd = load i8, ptr %i.jz, align 1, !tbaa !51
  %i.ke = getelementptr inbounds nuw i8, ptr %.2268, i64 6
  store i8 %i.kd, ptr %i.kb, align 1, !tbaa !51
  %i.kf = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.kg = load i8, ptr %i.kc, align 1, !tbaa !51
  %i.kh = getelementptr inbounds nuw i8, ptr %.2268, i64 7
  store i8 %i.kg, ptr %i.ke, align 1, !tbaa !51
  %i.ki = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.kj = load i8, ptr %i.kf, align 1, !tbaa !51
  %i.kk = getelementptr inbounds nuw i8, ptr %.2268, i64 8 ; 2 uses
  store i8 %i.kj, ptr %i.kh, align 1, !tbaa !51
  %i.kl = add i32 %.1244, -8                      ; 2 uses
  %.not321.7 = icmp eq i32 %i.kl, 0
  br i1 %.not321.7, label %.loopexit657, label %vec.epilog.scalar.ph603, !llvm.loop !16

.loopexit657:                                     ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603, %vec.epilog.middle.block614, %middle.block597
  %.lcssa515 = phi ptr [ %i.jc, %vec.epilog.middle.block614 ], [ %i.iv, %middle.block597 ], [ %.lcssa687.unr, %vec.epilog.scalar.ph603.prol.loopexit ], [ %i.kk, %vec.epilog.scalar.ph603 ] ; 7 uses
  %i.km = sub nuw nsw i32 %.0239, %i.ik           ; 3 uses
  %i.kn = icmp ult i32 %i.z, %i.km
  br i1 %i.kn, label %iter.check566, label %bb.v

iter.check566:                                    ; preds = %.loopexit657
  %i.ko = ptrtoaddr ptr %.lcssa515 to i64
  %i.kp = sub i64 %i.ac, %i.ko
  %diff.check548 = icmp ugt i64 %i.kp, -32
  %or.cond = select i1 %min.iters.check549, i1 true, i1 %diff.check548
  br i1 %or.cond, label %vec.epilog.scalar.ph567.preheader, label %vector.main.loop.iter.check550

vector.main.loop.iter.check550:                   ; preds = %iter.check566
  br i1 %min.iters.check551, label %vec.epilog.ph570, label %vector.ph552

vector.ph552:                                     ; preds = %vector.main.loop.iter.check550
  %i.kq = getelementptr i8, ptr %.lcssa515, i64 %n.vec553 ; 2 uses
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph552
  %index555 = phi i64 [ 0, %vector.ph552 ], [ %index.next560, %vector.body554 ] ; 3 uses
  %next.gep556 = getelementptr i8, ptr %.lcssa515, i64 %index555 ; 2 uses
  %next.gep557 = getelementptr i8, ptr %i.ab, i64 %index555 ; 2 uses
  %i.kr = getelementptr i8, ptr %next.gep557, i64 16
  %wide.load558 = load <16 x i8>, ptr %next.gep557, align 1, !tbaa !51
  %wide.load559 = load <16 x i8>, ptr %i.kr, align 1, !tbaa !51
  %i.ks = getelementptr i8, ptr %next.gep556, i64 16
  store <16 x i8> %wide.load558, ptr %next.gep556, align 1, !tbaa !51
  store <16 x i8> %wide.load559, ptr %i.ks, align 1, !tbaa !51
  %index.next560 = add nuw i64 %index555, 32      ; 2 uses
  %i.kt = icmp eq i64 %index.next560, %n.vec553
  br i1 %i.kt, label %middle.block561, label %vector.body554, !llvm.loop !17

middle.block561:                                  ; preds = %vector.body554
  br i1 %cmp.n562, label %.loopexit656, label %vec.epilog.iter.check568

vec.epilog.iter.check568:                         ; preds = %middle.block561
  br i1 %min.epilog.iters.check569, label %vec.epilog.scalar.ph567.preheader, label %vec.epilog.ph570, !prof !61

vec.epilog.ph570:                                 ; preds = %vector.main.loop.iter.check550, %vec.epilog.iter.check568
  %vec.epilog.resume.val563 = phi i64 [ %n.vec553, %vec.epilog.iter.check568 ], [ 0, %vector.main.loop.iter.check550 ]
  %i.ku = getelementptr i8, ptr %.lcssa515, i64 %n.vec571 ; 2 uses
  br label %vec.epilog.vector.body572

vec.epilog.vector.body572:                        ; preds = %vec.epilog.vector.body572, %vec.epilog.ph570
  %index573 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph570 ], [ %index.next577, %vec.epilog.vector.body572 ] ; 3 uses
  %next.gep574 = getelementptr i8, ptr %.lcssa515, i64 %index573
  %next.gep575 = getelementptr i8, ptr %i.ab, i64 %index573
  %wide.load576 = load <4 x i8>, ptr %next.gep575, align 1, !tbaa !51
  store <4 x i8> %wide.load576, ptr %next.gep574, align 1, !tbaa !51
  %index.next577 = add nuw i64 %index573, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next577, %n.vec571
  br i1 %i.kv, label %vec.epilog.middle.block578, label %vec.epilog.vector.body572, !llvm.loop !18

vec.epilog.middle.block578:                       ; preds = %vec.epilog.vector.body572
  br i1 %cmp.n579, label %.loopexit656, label %vec.epilog.scalar.ph567.preheader

vec.epilog.scalar.ph567.preheader:                ; preds = %iter.check566, %vec.epilog.iter.check568, %vec.epilog.middle.block578
  %.3269.ph = phi ptr [ %.lcssa515, %iter.check566 ], [ %i.kq, %vec.epilog.iter.check568 ], [ %i.ku, %vec.epilog.middle.block578 ] ; 2 uses
  %.2245.ph = phi i32 [ %i.z, %iter.check566 ], [ %i.bl, %vec.epilog.iter.check568 ], [ %i.bo, %vec.epilog.middle.block578 ] ; 4 uses
  %.2.ph = phi ptr [ %i.ab, %iter.check566 ], [ %i.bm, %vec.epilog.iter.check568 ], [ %i.bp, %vec.epilog.middle.block578 ] ; 2 uses
  %i.kw = add i32 %.2245.ph, -1
  %xtraiter707 = and i32 %.2245.ph, 7             ; 2 uses
  %lcmp.mod708.not = icmp eq i32 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %vec.epilog.scalar.ph567.prol.loopexit, label %vec.epilog.scalar.ph567.prol

vec.epilog.scalar.ph567.prol:                     ; preds = %vec.epilog.scalar.ph567.preheader, %vec.epilog.scalar.ph567.prol
  %.3269.prol = phi ptr [ %i.kz, %vec.epilog.scalar.ph567.prol ], [ %.3269.ph, %vec.epilog.scalar.ph567.preheader ] ; 2 uses
  %.2245.prol = phi i32 [ %i.la, %vec.epilog.scalar.ph567.prol ], [ %.2245.ph, %vec.epilog.scalar.ph567.preheader ]
  %.2.prol = phi ptr [ %i.kx, %vec.epilog.scalar.ph567.prol ], [ %.2.ph, %vec.epilog.scalar.ph567.preheader ] ; 2 uses
  %prol.iter709 = phi i32 [ %prol.iter709.next, %vec.epilog.scalar.ph567.prol ], [ 0, %vec.epilog.scalar.ph567.preheader ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.2.prol, i64 1 ; 2 uses
  %i.ky = load i8, ptr %.2.prol, align 1, !tbaa !51
  %i.kz = getelementptr inbounds nuw i8, ptr %.3269.prol, i64 1 ; 3 uses
  store i8 %i.ky, ptr %.3269.prol, align 1, !tbaa !51
  %i.la = add i32 %.2245.prol, -1                 ; 2 uses
  %prol.iter709.next = add i32 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i32 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %vec.epilog.scalar.ph567.prol.loopexit, label %vec.epilog.scalar.ph567.prol, !llvm.loop !19

vec.epilog.scalar.ph567.prol.loopexit:            ; preds = %vec.epilog.scalar.ph567.prol, %vec.epilog.scalar.ph567.preheader
  %.lcssa688.unr = phi ptr [ poison, %vec.epilog.scalar.ph567.preheader ], [ %i.kz, %vec.epilog.scalar.ph567.prol ]
  %.3269.unr = phi ptr [ %.3269.ph, %vec.epilog.scalar.ph567.preheader ], [ %i.kz, %vec.epilog.scalar.ph567.prol ]
  %.2245.unr = phi i32 [ %.2245.ph, %vec.epilog.scalar.ph567.preheader ], [ %i.la, %vec.epilog.scalar.ph567.prol ]
  %.2.unr = phi ptr [ %.2.ph, %vec.epilog.scalar.ph567.preheader ], [ %i.kx, %vec.epilog.scalar.ph567.prol ]
  %i.lb = icmp ult i32 %i.kw, 7
  br i1 %i.lb, label %.loopexit656, label %vec.epilog.scalar.ph567

vec.epilog.scalar.ph567:                          ; preds = %vec.epilog.scalar.ph567.prol.loopexit, %vec.epilog.scalar.ph567
  %.3269 = phi ptr [ %i.lz, %vec.epilog.scalar.ph567 ], [ %.3269.unr, %vec.epilog.scalar.ph567.prol.loopexit ] ; 9 uses
  %.2245 = phi i32 [ %i.ma, %vec.epilog.scalar.ph567 ], [ %.2245.unr, %vec.epilog.scalar.ph567.prol.loopexit ]
  %.2 = phi ptr [ %i.lx, %vec.epilog.scalar.ph567 ], [ %.2.unr, %vec.epilog.scalar.ph567.prol.loopexit ] ; 9 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.ld = load i8, ptr %.2, align 1, !tbaa !51
  %i.le = getelementptr inbounds nuw i8, ptr %.3269, i64 1
  store i8 %i.ld, ptr %.3269, align 1, !tbaa !51
  %i.lf = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.lg = load i8, ptr %i.lc, align 1, !tbaa !51
  %i.lh = getelementptr inbounds nuw i8, ptr %.3269, i64 2
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !51
  %i.li = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.lj = load i8, ptr %i.lf, align 1, !tbaa !51
  %i.lk = getelementptr inbounds nuw i8, ptr %.3269, i64 3
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !51
  %i.ll = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.lm = load i8, ptr %i.li, align 1, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %.3269, i64 4
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !51
  %i.lo = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.lp = load i8, ptr %i.ll, align 1, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %.3269, i64 5
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !51
  %i.lr = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %i.ls = load i8, ptr %i.lo, align 1, !tbaa !51
  %i.lt = getelementptr inbounds nuw i8, ptr %.3269, i64 6
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %.2, i64 7
  %i.lv = load i8, ptr %i.lr, align 1, !tbaa !51
  %i.lw = getelementptr inbounds nuw i8, ptr %.3269, i64 7
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !51
  %i.lx = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !51
  %i.lz = getelementptr inbounds nuw i8, ptr %.3269, i64 8 ; 2 uses
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !51
  %i.ma = add i32 %.2245, -8                      ; 2 uses
  %.not322.7 = icmp eq i32 %i.ma, 0
  br i1 %.not322.7, label %.loopexit656, label %vec.epilog.scalar.ph567, !llvm.loop !20

.loopexit656:                                     ; preds = %vec.epilog.scalar.ph567.prol.loopexit, %vec.epilog.scalar.ph567, %vec.epilog.middle.block578, %middle.block561
  %.lcssa516 = phi ptr [ %i.ku, %vec.epilog.middle.block578 ], [ %i.kq, %middle.block561 ], [ %.lcssa688.unr, %vec.epilog.scalar.ph567.prol.loopexit ], [ %i.lz, %vec.epilog.scalar.ph567 ] ; 2 uses
  %i.mb = sub nuw nsw i32 %i.km, %i.z
  %i.mc = zext nneg i32 %i.fn to i64
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr inbounds i8, ptr %.lcssa516, i64 %i.md
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.mf = sub nuw i32 %i.z, %i.fv
  %i.mg = zext i32 %i.mf to i64                   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.mg ; 7 uses
  %i.mi = icmp ult i32 %i.fv, %.0239
  br i1 %i.mi, label %iter.check638, label %bb.v

iter.check638:                                    ; preds = %bb.u
  %i.mj = add i32 %i.bi, %i.fm
  %i.mk = add i32 %i.mj, %i.es
  %i.ml = trunc i64 %i.fr to i32
  %i.mm = sub i32 %i.mk, %i.ml                    ; 3 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = add nuw nsw i64 %i.mn, 1                ; 5 uses
  %min.iters.check621 = icmp ult i32 %i.mm, 3
  br i1 %min.iters.check621, label %vec.epilog.scalar.ph639.preheader, label %vector.memcheck619

vector.memcheck619:                               ; preds = %iter.check638
  %i.mp = add i64 %i.ac, %i.mg
  %i.mq = sub i64 %i.mp, %i.fr
  %diff.check620 = icmp ugt i64 %i.mq, -32
  br i1 %diff.check620, label %vec.epilog.scalar.ph639.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck619
  %min.iters.check623 = icmp ult i32 %i.mm, 31
  br i1 %min.iters.check623, label %vec.epilog.ph642, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check622
  %i.mr = and i64 %i.mo, 28
  %n.vec625 = and i64 %i.mo, 8589934560           ; 6 uses
  %i.ms = getelementptr i8, ptr %.0266, i64 %n.vec625 ; 2 uses
  %i.mt = trunc i64 %n.vec625 to i32
  %i.mu = sub i32 %i.fv, %i.mt
  %i.mv = getelementptr i8, ptr %i.mh, i64 %n.vec625
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next632, %vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.0266, i64 %index627 ; 2 uses
  %next.gep629 = getelementptr i8, ptr %i.mh, i64 %index627 ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep629, i64 16
  %wide.load630 = load <16 x i8>, ptr %next.gep629, align 1, !tbaa !51
  %wide.load631 = load <16 x i8>, ptr %i.mw, align 1, !tbaa !51
  %i.mx = getelementptr i8, ptr %next.gep628, i64 16
  store <16 x i8> %wide.load630, ptr %next.gep628, align 1, !tbaa !51
  store <16 x i8> %wide.load631, ptr %i.mx, align 1, !tbaa !51
  %index.next632 = add nuw i64 %index627, 32      ; 2 uses
  %i.my = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.my, label %middle.block633, label %vector.body626, !llvm.loop !21

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %i.mo, %n.vec625
  br i1 %cmp.n634, label %.loopexit658, label %vec.epilog.iter.check640

vec.epilog.iter.check640:                         ; preds = %middle.block633
  %min.epilog.iters.check641 = icmp eq i64 %i.mr, 0
  br i1 %min.epilog.iters.check641, label %vec.epilog.scalar.ph639.preheader, label %vec.epilog.ph642, !prof !61

vec.epilog.ph642:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check640
  %vec.epilog.resume.val635 = phi i64 [ %n.vec625, %vec.epilog.iter.check640 ], [ 0, %vector.main.loop.iter.check622 ]
  %n.vec643 = and i64 %i.mo, 8589934588           ; 5 uses
  %i.mz = getelementptr i8, ptr %.0266, i64 %n.vec643 ; 2 uses
  %i.na = trunc i64 %n.vec643 to i32
  %i.nb = sub i32 %i.fv, %i.na
  %i.nc = getelementptr i8, ptr %i.mh, i64 %n.vec643
  br label %vec.epilog.vector.body644

vec.epilog.vector.body644:                        ; preds = %vec.epilog.vector.body644, %vec.epilog.ph642
  %index645 = phi i64 [ %vec.epilog.resume.val635, %vec.epilog.ph642 ], [ %index.next649, %vec.epilog.vector.body644 ] ; 3 uses
  %next.gep646 = getelementptr i8, ptr %.0266, i64 %index645
  %next.gep647 = getelementptr i8, ptr %i.mh, i64 %index645
  %wide.load648 = load <4 x i8>, ptr %next.gep647, align 1, !tbaa !51
  store <4 x i8> %wide.load648, ptr %next.gep646, align 1, !tbaa !51
  %index.next649 = add nuw i64 %index645, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next649, %n.vec643
  br i1 %i.nd, label %vec.epilog.middle.block650, label %vec.epilog.vector.body644, !llvm.loop !22

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body644
  %cmp.n651 = icmp eq i64 %i.mo, %n.vec643
  br i1 %cmp.n651, label %.loopexit658, label %vec.epilog.scalar.ph639.preheader

vec.epilog.scalar.ph639.preheader:                ; preds = %vector.memcheck619, %iter.check638, %vec.epilog.iter.check640, %vec.epilog.middle.block650
  %.4270.ph = phi ptr [ %.0266, %iter.check638 ], [ %.0266, %vector.memcheck619 ], [ %i.ms, %vec.epilog.iter.check640 ], [ %i.mz, %vec.epilog.middle.block650 ] ; 2 uses
  %.3246.ph = phi i32 [ %i.fv, %iter.check638 ], [ %i.fv, %vector.memcheck619 ], [ %i.mu, %vec.epilog.iter.check640 ], [ %i.nb, %vec.epilog.middle.block650 ] ; 4 uses
  %.3.ph = phi ptr [ %i.mh, %iter.check638 ], [ %i.mh, %vector.memcheck619 ], [ %i.mv, %vec.epilog.iter.check640 ], [ %i.nc, %vec.epilog.middle.block650 ] ; 2 uses
  %i.ne = add i32 %.3246.ph, -1
  %xtraiter = and i32 %.3246.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph639.prol.loopexit, label %vec.epilog.scalar.ph639.prol

vec.epilog.scalar.ph639.prol:                     ; preds = %vec.epilog.scalar.ph639.preheader, %vec.epilog.scalar.ph639.prol
  %.4270.prol = phi ptr [ %i.nh, %vec.epilog.scalar.ph639.prol ], [ %.4270.ph, %vec.epilog.scalar.ph639.preheader ] ; 2 uses
  %.3246.prol = phi i32 [ %i.ni, %vec.epilog.scalar.ph639.prol ], [ %.3246.ph, %vec.epilog.scalar.ph639.preheader ]
  %.3.prol = phi ptr [ %i.nf, %vec.epilog.scalar.ph639.prol ], [ %.3.ph, %vec.epilog.scalar.ph639.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph639.prol ], [ 0, %vec.epilog.scalar.ph639.preheader ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.3.prol, i64 1 ; 2 uses
  %i.ng = load i8, ptr %.3.prol, align 1, !tbaa !51
  %i.nh = getelementptr inbounds nuw i8, ptr %.4270.prol, i64 1 ; 3 uses
  store i8 %i.ng, ptr %.4270.prol, align 1, !tbaa !51
  %i.ni = add i32 %.3246.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph639.prol.loopexit, label %vec.epilog.scalar.ph639.prol, !llvm.loop !23

vec.epilog.scalar.ph639.prol.loopexit:            ; preds = %vec.epilog.scalar.ph639.prol, %vec.epilog.scalar.ph639.preheader
  %.lcssa686.unr = phi ptr [ poison, %vec.epilog.scalar.ph639.preheader ], [ %i.nh, %vec.epilog.scalar.ph639.prol ]
  %.4270.unr = phi ptr [ %.4270.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.nh, %vec.epilog.scalar.ph639.prol ]
  %.3246.unr = phi i32 [ %.3246.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.ni, %vec.epilog.scalar.ph639.prol ]
  %.3.unr = phi ptr [ %.3.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.nf, %vec.epilog.scalar.ph639.prol ]
  %i.nj = icmp ult i32 %i.ne, 7
  br i1 %i.nj, label %.loopexit658, label %vec.epilog.scalar.ph639

vec.epilog.scalar.ph639:                          ; preds = %vec.epilog.scalar.ph639.prol.loopexit, %vec.epilog.scalar.ph639
  %.4270 = phi ptr [ %i.oh, %vec.epilog.scalar.ph639 ], [ %.4270.unr, %vec.epilog.scalar.ph639.prol.loopexit ] ; 9 uses
  %.3246 = phi i32 [ %i.oi, %vec.epilog.scalar.ph639 ], [ %.3246.unr, %vec.epilog.scalar.ph639.prol.loopexit ]
  %.3 = phi ptr [ %i.of, %vec.epilog.scalar.ph639 ], [ %.3.unr, %vec.epilog.scalar.ph639.prol.loopexit ] ; 9 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.nl = load i8, ptr %.3, align 1, !tbaa !51
  %i.nm = getelementptr inbounds nuw i8, ptr %.4270, i64 1
  store i8 %i.nl, ptr %.4270, align 1, !tbaa !51
  %i.nn = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.no = load i8, ptr %i.nk, align 1, !tbaa !51
  %i.np = getelementptr inbounds nuw i8, ptr %.4270, i64 2
  store i8 %i.no, ptr %i.nm, align 1, !tbaa !51
  %i.nq = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.nr = load i8, ptr %i.nn, align 1, !tbaa !51
  %i.ns = getelementptr inbounds nuw i8, ptr %.4270, i64 3
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !51
  %i.nt = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.nu = load i8, ptr %i.nq, align 1, !tbaa !51
  %i.nv = getelementptr inbounds nuw i8, ptr %.4270, i64 4
  store i8 %i.nu, ptr %i.ns, align 1, !tbaa !51
  %i.nw = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.nx = load i8, ptr %i.nt, align 1, !tbaa !51
  %i.ny = getelementptr inbounds nuw i8, ptr %.4270, i64 5
  store i8 %i.nx, ptr %i.nv, align 1, !tbaa !51
  %i.nz = getelementptr inbounds nuw i8, ptr %.3, i64 6
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !51
  %i.ob = getelementptr inbounds nuw i8, ptr %.4270, i64 6
  store i8 %i.oa, ptr %i.ny, align 1, !tbaa !51
  %i.oc = getelementptr inbounds nuw i8, ptr %.3, i64 7
  %i.od = load i8, ptr %i.nz, align 1, !tbaa !51
  %i.oe = getelementptr inbounds nuw i8, ptr %.4270, i64 7
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !51
  %i.of = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.og = load i8, ptr %i.oc, align 1, !tbaa !51
  %i.oh = getelementptr inbounds nuw i8, ptr %.4270, i64 8 ; 2 uses
  store i8 %i.og, ptr %i.oe, align 1, !tbaa !51
  %i.oi = add i32 %.3246, -8                      ; 2 uses
  %.not320.7 = icmp eq i32 %i.oi, 0
  br i1 %.not320.7, label %.loopexit658, label %vec.epilog.scalar.ph639, !llvm.loop !24

.loopexit658:                                     ; preds = %vec.epilog.scalar.ph639.prol.loopexit, %vec.epilog.scalar.ph639, %vec.epilog.middle.block650, %middle.block633
  %.lcssa514 = phi ptr [ %i.mz, %vec.epilog.middle.block650 ], [ %i.ms, %middle.block633 ], [ %.lcssa686.unr, %vec.epilog.scalar.ph639.prol.loopexit ], [ %i.oh, %vec.epilog.scalar.ph639 ] ; 2 uses
  %i.oj = sub nuw nsw i32 %.0239, %i.fv
  %i.ok = zext nneg i32 %i.fn to i64
  %i.ol = sub nsw i64 0, %i.ok
  %i.om = getelementptr inbounds i8, ptr %.lcssa514, i64 %i.ol
  br label %bb.v

bb.v:                                             ; preds = %.loopexit657, %.loopexit656, %bb.t, %.loopexit658, %bb.u, %bb.r, %.loopexit655
  %.5271 = phi ptr [ %.lcssa517, %.loopexit655 ], [ %.0266, %bb.r ], [ %.lcssa516, %.loopexit656 ], [ %.lcssa515, %.loopexit657 ], [ %.0266, %bb.t ], [ %.lcssa514, %.loopexit658 ], [ %.0266, %bb.u ] ; 2 uses
  %.1240 = phi i32 [ %i.ic, %.loopexit655 ], [ %.0239, %bb.r ], [ %i.mb, %.loopexit656 ], [ %i.km, %.loopexit657 ], [ %.0239, %bb.t ], [ %i.oj, %.loopexit658 ], [ %.0239, %bb.u ] ; 3 uses
  %.4 = phi ptr [ %i.if, %.loopexit655 ], [ %i.ga, %bb.r ], [ %i.me, %.loopexit656 ], [ %i.ab, %.loopexit657 ], [ %i.ij, %bb.t ], [ %i.om, %.loopexit658 ], [ %i.mh, %bb.u ] ; 2 uses
  %i.on = icmp ugt i32 %.1240, 2
  br i1 %i.on, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %bb.v, %.lr.ph376
  %.5374 = phi ptr [ %i.ou, %.lr.ph376 ], [ %.4, %bb.v ] ; 4 uses
  %.2241373 = phi i32 [ %i.ox, %.lr.ph376 ], [ %.1240, %bb.v ]
  %.6272372 = phi ptr [ %i.ow, %.lr.ph376 ], [ %.5271, %bb.v ] ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.5374, i64 1
  %i.op = load i8, ptr %.5374, align 1, !tbaa !51
  %i.oq = getelementptr inbounds nuw i8, ptr %.6272372, i64 1
  store i8 %i.op, ptr %.6272372, align 1, !tbaa !51
  %i.or = getelementptr inbounds nuw i8, ptr %.5374, i64 2
  %i.os = load i8, ptr %i.oo, align 1, !tbaa !51
  %i.ot = getelementptr inbounds nuw i8, ptr %.6272372, i64 2
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !51
  %i.ou = getelementptr inbounds nuw i8, ptr %.5374, i64 3 ; 2 uses
  %i.ov = load i8, ptr %i.or, align 1, !tbaa !51
  %i.ow = getelementptr inbounds nuw i8, ptr %.6272372, i64 3 ; 2 uses
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !51
  %i.ox = add i32 %.2241373, -3                   ; 3 uses
  %i.oy = icmp ugt i32 %i.ox, 2
  br i1 %i.oy, label %.lr.ph376, label %._crit_edge377, !llvm.loop !25

._crit_edge377:                                   ; preds = %.lr.ph376, %bb.v
  %.6272.lcssa = phi ptr [ %.5271, %bb.v ], [ %i.ow, %.lr.ph376 ] ; 4 uses
  %.2241.lcssa = phi i32 [ %.1240, %bb.v ], [ %i.ox, %.lr.ph376 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4, %bb.v ], [ %i.ou, %.lr.ph376 ] ; 2 uses
  %.not324 = icmp eq i32 %.2241.lcssa, 0
  br i1 %.not324, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %._crit_edge377
  %i.oz = load i8, ptr %.5.lcssa, align 1, !tbaa !51
  %i.pa = getelementptr inbounds nuw i8, ptr %.6272.lcssa, i64 1 ; 2 uses
  store i8 %i.oz, ptr %.6272.lcssa, align 1, !tbaa !51
  %i.pb = icmp eq i32 %.2241.lcssa, 2
  br i1 %i.pb, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %bb.w
  %i.pc = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !51
  %i.pe = getelementptr inbounds nuw i8, ptr %.6272.lcssa, i64 2
  store i8 %i.pd, ptr %i.pa, align 1, !tbaa !51
  br label %bb.ah

bb.y:                                             ; preds = %bb.n
  %i.pf = zext nneg i32 %i.fn to i64
  %i.pg = sub nsw i64 0, %i.pf
  %i.ph = getelementptr inbounds i8, ptr %.0266, i64 %i.pg
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.7273 = phi ptr [ %.0266, %bb.y ], [ %i.pq, %bb.z ] ; 6 uses
  %.3242 = phi i32 [ %.0239, %bb.y ], [ %i.pr, %bb.z ]
  %.6 = phi ptr [ %i.ph, %bb.y ], [ %i.po, %bb.z ] ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %i.pj = load i8, ptr %.6, align 1, !tbaa !51
  %i.pk = getelementptr inbounds nuw i8, ptr %.7273, i64 1
  store i8 %i.pj, ptr %.7273, align 1, !tbaa !51
  %i.pl = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.pm = load i8, ptr %i.pi, align 1, !tbaa !51
  %i.pn = getelementptr inbounds nuw i8, ptr %.7273, i64 2
  store i8 %i.pm, ptr %i.pk, align 1, !tbaa !51
  %i.po = getelementptr inbounds nuw i8, ptr %.6, i64 3 ; 2 uses
  %i.pp = load i8, ptr %i.pl, align 1, !tbaa !51
  %i.pq = getelementptr inbounds nuw i8, ptr %.7273, i64 3 ; 3 uses
  store i8 %i.pp, ptr %i.pn, align 1, !tbaa !51
  %i.pr = add i32 %.3242, -3                      ; 4 uses
  %i.ps = icmp ugt i32 %i.pr, 2
  br i1 %i.ps, label %bb.z, label %bb.aa, !llvm.loop !26

bb.aa:                                            ; preds = %bb.z
  %.not318 = icmp eq i32 %i.pr, 0
  br i1 %.not318, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pt = load i8, ptr %i.po, align 1, !tbaa !51
  %i.pu = getelementptr inbounds nuw i8, ptr %.7273, i64 4 ; 2 uses
  store i8 %i.pt, ptr %i.pq, align 1, !tbaa !51
  %i.pv = icmp eq i32 %i.pr, 2
  br i1 %i.pv, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.pw = getelementptr inbounds nuw i8, ptr %.6, i64 4
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !51
  %i.py = getelementptr inbounds nuw i8, ptr %.7273, i64 5
  store i8 %i.px, ptr %i.pu, align 1, !tbaa !51
  br label %bb.ah

.lr.ph366:                                        ; preds = %bb.k, %bb.ad
  %i.pz = phi i32 [ %i.qt, %bb.ad ], [ %i.eo, %bb.k ] ; 2 uses
  %i.qa = phi i32 [ %i.qr, %bb.ad ], [ %i.em, %bb.k ] ; 2 uses
  %i.qb = phi i64 [ %i.qq, %bb.ad ], [ %i.el, %bb.k ] ; 3 uses
  %.1248364 = phi ptr [ %i.ql, %bb.ad ], [ %i.eg, %bb.k ]
  %i.qc = and i32 %i.pz, 64
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.ad, label %.loopexit.sink.split.sink.split

bb.ad:                                            ; preds = %.lr.ph366
  %i.qe = getelementptr inbounds nuw i8, ptr %.1248364, i64 2
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !56
  %i.qg = zext i16 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.qg
  %notmask316 = shl nsw i32 -1, %i.pz
  %i.qi = xor i32 %notmask316, -1
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = and i64 %i.qb, %i.qj
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qk ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !54  ; 2 uses
  %i.qo = zext i8 %i.qn to i32
  %i.qp = zext nneg i8 %i.qn to i64
  %i.qq = lshr i64 %i.qb, %i.qp                   ; 2 uses
  %i.qr = sub i32 %i.qa, %i.qo                    ; 2 uses
  %i.qs = load i8, ptr %i.ql, align 2, !tbaa !55
  %i.qt = zext i8 %i.qs to i32                    ; 3 uses
  %i.qu = and i32 %i.qt, 16
  %.not315 = icmp eq i32 %i.qu, 0
  br i1 %.not315, label %.lr.ph366, label %._crit_edge367

bb.ae:                                            ; preds = %.lr.ph
  %i.qv = and i32 %i.cv, 64
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qx = getelementptr inbounds nuw i8, ptr %.0247360, i64 2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !56
  %i.qz = zext i16 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.qz
  %notmask312 = shl nsw i32 -1, %i.cv
  %i.rb = xor i32 %notmask312, -1
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = and i64 %i.cu, %i.rc
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rd ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !54  ; 2 uses
  %i.rh = zext i8 %i.rg to i32
  %i.ri = zext nneg i8 %i.rg to i64
  %i.rj = lshr i64 %i.cu, %i.ri                   ; 2 uses
  %i.rk = sub i32 %i.ct, %i.rh                    ; 2 uses
  %i.rl = load i8, ptr %i.re, align 2, !tbaa !55  ; 2 uses
  %i.rm = icmp eq i8 %i.rl, 0
  br i1 %i.rm, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %bb.ae
  %i.rn = and i32 %i.cv, 32
  %.not311 = icmp eq i32 %i.rn, 0
  br i1 %.not311, label %.loopexit.sink.split.sink.split, label %.loopexit.sink.split

bb.ah:                                            ; preds = %._crit_edge, %bb.aa, %bb.ac, %bb.ab, %._crit_edge377, %bb.x, %bb.w
  %.6282 = phi ptr [ %.1277, %._crit_edge ], [ %.5281, %bb.x ], [ %.5281, %bb.w ], [ %.5281, %._crit_edge377 ], [ %.5281, %bb.ac ], [ %.5281, %bb.ab ], [ %.5281, %bb.aa ] ; 3 uses
  %.8274 = phi ptr [ %i.cs, %._crit_edge ], [ %i.pe, %bb.x ], [ %i.pa, %bb.w ], [ %.6272.lcssa, %._crit_edge377 ], [ %i.py, %bb.ac ], [ %i.pu, %bb.ab ], [ %i.pq, %bb.aa ] ; 3 uses
  %.8264 = phi i64 [ %.lcssa333, %._crit_edge ], [ %i.fp, %bb.x ], [ %i.fp, %bb.w ], [ %i.fp, %._crit_edge377 ], [ %i.fp, %bb.ac ], [ %i.fp, %bb.ab ], [ %i.fp, %bb.aa ] ; 2 uses
  %.8 = phi i32 [ %.lcssa330, %._crit_edge ], [ %i.fq, %bb.x ], [ %i.fq, %bb.w ], [ %i.fq, %._crit_edge377 ], [ %i.fq, %bb.ac ], [ %i.fq, %bb.ab ], [ %i.fq, %bb.aa ] ; 2 uses
  %i.ro = icmp ult ptr %.6282, %i.h
  %i.rp = icmp ult ptr %.8274, %i.t
  %i.rq = select i1 %i.ro, i1 %i.rp, i1 false
  br i1 %i.rq, label %bb.b, label %.loopexit, !llvm.loop !27

.loopexit.sink.split.sink.split:                  ; preds = %bb.p, %.lr.ph366, %bb.ag
  %.str.sink = phi ptr [ @.str.2, %bb.ag ], [ @.str.1, %.lr.ph366 ], [ @.str, %bb.p ]
  %.7283.ph.ph = phi ptr [ %.1277, %bb.ag ], [ %.4280, %.lr.ph366 ], [ %.5281, %bb.p ]
  %.9265.ph.ph = phi i64 [ %i.cu, %bb.ag ], [ %i.qb, %.lr.ph366 ], [ %i.fp, %bb.p ]
  %.9.ph.ph = phi i32 [ %i.ct, %bb.ag ], [ %i.qa, %.lr.ph366 ], [ %i.fq, %bb.p ]
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.str.sink, ptr %i.rr, align 8, !tbaa !63
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %bb.ag
  %.sink = phi i32 [ 16191, %bb.ag ], [ 16209, %.loopexit.sink.split.sink.split ]
  %.7283.ph = phi ptr [ %.1277, %bb.ag ], [ %.7283.ph.ph, %.loopexit.sink.split.sink.split ]
  %.9265.ph = phi i64 [ %i.cu, %bb.ag ], [ %.9265.ph.ph, %.loopexit.sink.split.sink.split ]
  %.9.ph = phi i32 [ %i.ct, %bb.ag ], [ %.9.ph.ph, %.loopexit.sink.split.sink.split ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.rs, align 8, !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %.loopexit.sink.split
  %.7283 = phi ptr [ %.7283.ph, %.loopexit.sink.split ], [ %.6282, %bb.ah ]
  %.9275 = phi ptr [ %.0266, %.loopexit.sink.split ], [ %.8274, %bb.ah ] ; 2 uses
  %.9265 = phi i64 [ %.9265.ph, %.loopexit.sink.split ], [ %.8264, %bb.ah ]
  %.9 = phi i32 [ %.9.ph, %.loopexit.sink.split ], [ %.8, %bb.ah ] ; 2 uses
  %i.rt = lshr i32 %.9, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = sub nsw i64 0, %i.ru
end_hunk_0
