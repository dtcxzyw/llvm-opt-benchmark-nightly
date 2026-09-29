Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cts128?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@CRYPTO_cts128_decrypt_block:bb.a
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !8
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %.046, i64 15
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = xor i8 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %.047, i64 15
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !8
  store i8 %i.dv, ptr %i.dy, align 1, !tbaa !8
  %min.iters.check = icmp samesign ult i64 %spec.store.select, 4
  %.04656 = ptrtoaddr ptr %.046 to i64
  %.04755 = ptrtoaddr ptr %.047 to i64
  %i.ec = sub i64 %.04656, %.04755
  %diff.check = icmp ugt i64 %i.ec, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %.not66, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ed = add nuw i64 %index, 16                  ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 %i.ed
  %wide.load = load <16 x i8>, ptr %i.ee, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %.046, i64 %i.ed
  %wide.load58 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !8
  %i.eg = xor <16 x i8> %wide.load58, %wide.load
  %i.eh = getelementptr inbounds nuw i8, ptr %.047, i64 %i.ed
  store <16 x i8> %i.eg, ptr %i.eh, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %spec.store.select
  br i1 %i.ei, label %._crit_edge, label %vector.body, !llvm.loop !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec59 = and i64 %spec.store.select, 28       ; 8 uses
  %i.ej = add nuw nsw i64 %n.vec59, 16
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load61 = load <4 x i8>, ptr %i.ek, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %wide.load62 = load <4 x i8>, ptr %i.el, align 1, !tbaa !8
  %i.em = xor <4 x i8> %wide.load62, %wide.load61
  %i.en = getelementptr inbounds nuw i8, ptr %.047, i64 16
  store <4 x i8> %i.em, ptr %i.en, align 1, !tbaa !8
  %i.eo = icmp eq i64 %n.vec59, 4
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 20
  %wide.load61.1 = load <4 x i8>, ptr %i.ep, align 4, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %.046, i64 20
  %wide.load62.1 = load <4 x i8>, ptr %i.eq, align 1, !tbaa !8
  %i.er = xor <4 x i8> %wide.load62.1, %wide.load61.1
  %i.es = getelementptr inbounds nuw i8, ptr %.047, i64 20
  store <4 x i8> %i.er, ptr %i.es, align 1, !tbaa !8
  %i.et = icmp eq i64 %n.vec59, 8
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 24
  %wide.load61.2 = load <4 x i8>, ptr %i.eu, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %.046, i64 24
  %wide.load62.2 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !8
  %i.ew = xor <4 x i8> %wide.load62.2, %wide.load61.2
  %i.ex = getelementptr inbounds nuw i8, ptr %.047, i64 24
  store <4 x i8> %i.ew, ptr %i.ex, align 1, !tbaa !8
  %i.ey = icmp eq i64 %n.vec59, 12
  br i1 %i.ey, label %vec.epilog.middle.block, label %vec.epilog.vector.body.3

vec.epilog.vector.body.3:                         ; preds = %vec.epilog.vector.body.2
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 28
  %wide.load61.3 = load <4 x i8>, ptr %i.ez, align 4, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %.046, i64 28
  %wide.load62.3 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !8
  %i.fb = xor <4 x i8> %wide.load62.3, %wide.load61.3
  %i.fc = getelementptr inbounds nuw i8, ptr %.047, i64 28
  store <4 x i8> %i.fb, ptr %i.fc, align 1, !tbaa !8
  %i.fd = icmp eq i64 %n.vec59, 16
  br i1 %i.fd, label %vec.epilog.middle.block, label %vec.epilog.vector.body.4

vec.epilog.vector.body.4:                         ; preds = %vec.epilog.vector.body.3
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %wide.load61.4 = load <4 x i8>, ptr %i.fe, align 8, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %.046, i64 32
  %wide.load62.4 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !8
  %i.fg = xor <4 x i8> %wide.load62.4, %wide.load61.4
  %i.fh = getelementptr inbounds nuw i8, ptr %.047, i64 32
  store <4 x i8> %i.fg, ptr %i.fh, align 1, !tbaa !8
  %i.fi = icmp eq i64 %n.vec59, 20
  br i1 %i.fi, label %vec.epilog.middle.block, label %vec.epilog.vector.body.5

vec.epilog.vector.body.5:                         ; preds = %vec.epilog.vector.body.4
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 36
  %wide.load61.5 = load <4 x i8>, ptr %i.fj, align 4, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %.046, i64 36
  %wide.load62.5 = load <4 x i8>, ptr %i.fk, align 1, !tbaa !8
  %i.fl = xor <4 x i8> %wide.load62.5, %wide.load61.5
  %i.fm = getelementptr inbounds nuw i8, ptr %.047, i64 36
  store <4 x i8> %i.fl, ptr %i.fm, align 1, !tbaa !8
  %i.fn = icmp eq i64 %n.vec59, 24
  br i1 %i.fn, label %vec.epilog.middle.block, label %vec.epilog.vector.body.6

vec.epilog.vector.body.6:                         ; preds = %vec.epilog.vector.body.5
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 40
  %wide.load61.6 = load <4 x i8>, ptr %i.fo, align 8, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %.046, i64 40
  %wide.load62.6 = load <4 x i8>, ptr %i.fp, align 1, !tbaa !8
  %i.fq = xor <4 x i8> %wide.load62.6, %wide.load61.6
  %i.fr = getelementptr inbounds nuw i8, ptr %.047, i64 40
  store <4 x i8> %i.fq, ptr %i.fr, align 1, !tbaa !8
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.6, %vec.epilog.vector.body.5, %vec.epilog.vector.body.4, %vec.epilog.vector.body.3, %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n64 = icmp eq i64 %spec.store.select, %n.vec59
  br i1 %cmp.n64, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.middle.block
  %.152.ph = phi i64 [ 16, %iter.check ], [ %i.ej, %vec.epilog.middle.block ] ; 4 uses
  %i.fs = sub nsw i64 %spec.store.select, %.152.ph
  %i.ft = add nuw nsw i64 %spec.store.select, 15
  %i.fu = sub nsw i64 %i.ft, %.152.ph
  %xtraiter = and i64 %i.fs, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.152.prol = phi i64 [ %i.gb, %.lr.ph.prol ], [ %.152.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 %.152.prol
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %.046, i64 %.152.prol
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !8
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %.047, i64 %.152.prol
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !8
  %i.gb = add nuw nsw i64 %.152.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !24

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.152.unr = phi i64 [ %.152.ph, %.lr.ph.preheader ], [ %i.gb, %.lr.ph.prol ]
  %i.gc = icmp ult i64 %i.fu, 3
  br i1 %i.gc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.152 = phi i64 [ %i.he, %.lr.ph ], [ %.152.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 %.152
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %.046, i64 %.152
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !8
  %i.gh = xor i8 %i.gg, %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %.047, i64 %.152
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !8
  %i.gj = add nuw nsw i64 %.152, 1                ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %.046, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !8
  %i.go = xor i8 %i.gn, %i.gl
  %i.gp = getelementptr inbounds nuw i8, ptr %.047, i64 %i.gj
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !8
  %i.gq = add nuw nsw i64 %.152, 2                ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.046, i64 %i.gq
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !8
  %i.gv = xor i8 %i.gu, %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %.047, i64 %i.gq
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !8
  %i.gx = add nuw nsw i64 %.152, 3                ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %.046, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !8
  %i.hc = xor i8 %i.hb, %i.gz
  %i.hd = getelementptr inbounds nuw i8, ptr %.047, i64 %i.gx
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !8
  %i.he = add nuw nsw i64 %.152, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.he, %i.c
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %vector.body, %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block
  %i.hf = add i64 %2, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ %i.hf, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i64 %.0
}

declare void @CRYPTO_cbc128_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i64 @CRYPTO_nistcts128_decrypt_block(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.2, align 8              ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 15                           ; 20 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #5
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %i.b, 16                 ; 2 uses
  %.not = icmp eq i64 %2, %i.d
  br i1 %.not, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = sub i64 %2, %i.d                         ; 3 uses
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %3, ptr noundef %4, ptr noundef %5) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.e
  %.059 = phi ptr [ %i.g, %bb.e ], [ %1, %bb.d ]  ; 21 uses
  %.058 = phi ptr [ %i.f, %bb.e ], [ %0, %bb.d ]  ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.058, i64 %i.b ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void %5(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr align 1 %.058, i64 %i.b, i1 false)
  call void %5(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %3) #5
  %i.j = load i8, ptr %.058, align 1, !tbaa !8
  %i.k = load i8, ptr %6, align 8, !tbaa !8
  %i.l = load i8, ptr %4, align 1, !tbaa !8
  %i.m = xor i8 %i.l, %i.k
  store i8 %i.m, ptr %.059, align 1, !tbaa !8
  %i.n = load i8, ptr %i.h, align 1, !tbaa !8
  store i8 %i.n, ptr %4, align 1, !tbaa !8
  store i8 %i.j, ptr %6, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %.058, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = xor i8 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %.059, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.b
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  store i8 %i.x, ptr %i.s, align 1, !tbaa !8
  store i8 %i.p, ptr %i.q, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.058, i64 2 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = xor i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.059, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !8
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.058, i64 3 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = xor i8 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %.059, i64 3
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.b
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !8
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %.058, i64 4 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = xor i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %.059, i64 4
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.b
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  store i8 %i.bb, ptr %i.aw, align 1, !tbaa !8
  store i8 %i.at, ptr %i.au, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %.058, i64 5 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %.059, i64 5
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !8
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.058, i64 6 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %.059, i64 6
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.b
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !8
  store i8 %i.bn, ptr %i.bo, align 2, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.058, i64 7 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 7 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = xor i8 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %.059, i64 7
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.b
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !8
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %.058, i64 8 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = xor i8 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.059, i64 8
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.b
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  store i8 %i.cp, ptr %i.ck, align 1, !tbaa !8
  store i8 %i.ch, ptr %i.ci, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.058, i64 9 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 9 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = xor i8 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %.059, i64 9
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.b
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  store i8 %i.cz, ptr %i.cu, align 1, !tbaa !8
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.058, i64 10 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = xor i8 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %.059, i64 10
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.b
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !8
  store i8 %i.db, ptr %i.dc, align 2, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %.058, i64 11 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 11 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = xor i8 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %.059, i64 11
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.b
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !8
  store i8 %i.dt, ptr %i.do, align 1, !tbaa !8
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %.058, i64 12 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = xor i8 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %.059, i64 12
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.b
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !8
  store i8 %i.ed, ptr %i.dy, align 1, !tbaa !8
  store i8 %i.dv, ptr %i.dw, align 4, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %.058, i64 13 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8
  %i.ek = xor i8 %i.ej, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %.059, i64 13
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.b
  %i.en = load i8, ptr %i.em, align 1, !tbaa !8
  store i8 %i.en, ptr %i.ei, align 1, !tbaa !8
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !8
  %i.eo = getelementptr inbounds nuw i8, ptr %.058, i64 14 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !8
  %i.eu = xor i8 %i.et, %i.er
  %i.ev = getelementptr inbounds nuw i8, ptr %.059, i64 14
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.b
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !8
  store i8 %i.ex, ptr %i.es, align 1, !tbaa !8
  store i8 %i.ep, ptr %i.eq, align 2, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %.058, i64 15 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 15 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !8
  %i.fe = xor i8 %i.fd, %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %.059, i64 15
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.b
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8
  store i8 %i.fh, ptr %i.fc, align 1, !tbaa !8
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !8
  %7 = add nsw i64 %i.b, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %min.iters.check = icmp ult i64 %7, 3
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, 12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %.165 = phi i64 [ 16, %vector.ph ], [ %32, %vector.body ] ; 6 uses
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 %.165 ; 2 uses
  %9 = load i8, ptr %8, align 4, !tbaa !8
  %10 = getelementptr i8, ptr %8, i64 -16
  %11 = load i8, ptr %10, align 4, !tbaa !8
  %12 = xor i8 %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %.059, i64 %.165
  store i8 %12, ptr %13, align 1, !tbaa !8
  %14 = or disjoint i64 %.165, 1                  ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 %14 ; 2 uses
  %16 = load i8, ptr %15, align 1, !tbaa !8
  %17 = getelementptr i8, ptr %15, i64 -16
  %18 = load i8, ptr %17, align 1, !tbaa !8
  %19 = xor i8 %18, %16
  %20 = getelementptr inbounds nuw i8, ptr %.059, i64 %14
  store i8 %19, ptr %20, align 1, !tbaa !8
  %21 = or disjoint i64 %.165, 2                  ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 %21 ; 2 uses
  %23 = load i8, ptr %22, align 2, !tbaa !8
  %24 = getelementptr i8, ptr %22, i64 -16
  %25 = load i8, ptr %24, align 2, !tbaa !8
  %26 = xor i8 %25, %23
  %27 = getelementptr inbounds nuw i8, ptr %.059, i64 %21
  store i8 %26, ptr %27, align 1, !tbaa !8
  %28 = or disjoint i64 %.165, 3                  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 %28 ; 2 uses
  %29 = load i8, ptr %i.fi, align 1, !tbaa !8
  %i.fj = getelementptr i8, ptr %i.fi, i64 -16
  %30 = load i8, ptr %i.fj, align 1, !tbaa !8
  %31 = xor i8 %30, %29
  %i.fk = getelementptr inbounds nuw i8, ptr %.059, i64 %28
  store i8 %31, ptr %i.fk, align 1, !tbaa !8
  %32 = add nuw nsw i64 %.165, 4                  ; 2 uses
  %index.next = add i64 %index, 4                 ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %xtraiter, 0
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader70

.lr.ph.preheader70:                               ; preds = %middle.block, %.lr.ph.preheader
  %.165.ph = phi i64 [ 16, %.lr.ph.preheader ], [ %32, %middle.block ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader70
  %.165.epil = phi i64 [ %33, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader70 ] ; 3 uses
  %.165.a = phi i64 [ %i.fs, %.lr.ph ], [ 0, %.lr.ph.preheader70 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 %.165.epil ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  %i.fo = getelementptr i8, ptr %i.fm, i64 -16
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !8
  %i.fq = xor i8 %i.fp, %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %.059, i64 %.165.epil
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !8
  %33 = add nuw nsw i64 %.165.epil, 1
  %i.fs = add i64 %.165.a, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %xtraiter
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.ft = add i64 %2, 16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  %.0 = phi i64 [ %i.ft, %._crit_edge ], [ %2, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 17, 1) i64 @CRYPTO_cts128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.3, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.a = icmp ult i64 %2, 17
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 15                           ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %spec.store.select = select i1 %i.c, i64 16, i64 %i.b ; 2 uses
  %i.d = add nuw nsw i64 %spec.store.select, 16   ; 3 uses
  %.not = icmp eq i64 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %2, %i.d                         ; 3 uses
  tail call void %5(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %3, ptr noundef %4, i32 noundef 0) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.028 = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]
  %.027 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ]  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void %5(ptr noundef %.027, ptr noundef nonnull %6, i64 noundef 16, ptr noundef %3, ptr noundef nonnull %i.h, i32 noundef 0) #5
  %i.i = getelementptr inbounds nuw i8, ptr %.027, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.i, i64 %spec.store.select, i1 false)
  call void %5(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 32, ptr noundef %3, ptr noundef %4, i32 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.028, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %2, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 16, 1) i64 @CRYPTO_nistcts128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.4, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 15                           ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void %5(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0) #5
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %i.b, 16                 ; 3 uses
  %.not = icmp eq i64 %2, %i.d
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = sub i64 %2, %i.d                         ; 3 uses
  tail call void %5(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %3, ptr noundef %4, i32 noundef 0) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.037 = phi ptr [ %i.g, %bb.e ], [ %1, %bb.d ]
  %.036 = phi ptr [ %i.f, %bb.e ], [ %0, %bb.d ]  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.036, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void %5(ptr noundef nonnull %i.h, ptr noundef nonnull %6, i64 noundef 16, ptr noundef %3, ptr noundef nonnull %i.i, i32 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr align 1 %.036, i64 %i.b, i1 false)
  call void %5(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 32, ptr noundef %3, ptr noundef %4, i32 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.037, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.0 = phi i64 [ %2, %bb.f ], [ %2, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !9, !10, !11}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !9, !10}
!19 = !{!14}
!20 = !{!15}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !9, !10, !11}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !12}
end_hunk_0
