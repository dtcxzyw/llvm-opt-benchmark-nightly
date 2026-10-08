Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ctr128?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@CRYPTO_ctr128_encrypt:bb.a
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %i.t, align 1, !tbaa !11
  %i.de = lshr i32 %i.dc, 8
  %i.df = load i8, ptr %4, align 1, !tbaa !11
  %i.dg = trunc nuw nsw i32 %i.de to i8
  %i.dh = add i8 %i.df, %i.dg
  store i8 %i.dh, ptr %4, align 1, !tbaa !11
  %i.di = load i64, ptr %.159, align 1, !tbaa !17
  %i.dj = load i64, ptr %5, align 1, !tbaa !17
  %i.dk = xor i64 %i.dj, %i.di
  store i64 %i.dk, ptr %.14458, align 1, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %.159, i64 8
  %i.dm = load i64, ptr %i.dl, align 1, !tbaa !17
  %i.dn = load i64, ptr %i.u, align 1, !tbaa !17
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %.14458, i64 8
  store i64 %i.do, ptr %i.dp, align 1, !tbaa !17
  %i.dq = add i64 %.14657, -16                    ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.14458, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.159, i64 16 ; 2 uses
  %i.dt = icmp ugt i64 %i.dq, 15
  br i1 %i.dt, label %bb.b, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.146.lcssa = phi i64 [ %.045.lcssa, %.preheader ], [ %i.dq, %bb.b ] ; 5 uses
  %.144.lcssa = phi ptr [ %.043.lcssa, %.preheader ], [ %i.dr, %bb.b ] ; 3 uses
  %.142.lcssa = phi i32 [ %.041.lcssa, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader ], [ %i.ds, %bb.b ] ; 3 uses
  %.not = icmp eq i64 %.146.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void %7(ptr noundef %4, ptr noundef %5, ptr noundef %3) #3
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dw, 1                ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !11
  %i.dz = lshr i32 %i.dx, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.dz, %i.ec            ; 2 uses
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !11
  %i.ef = lshr i32 %i.ed, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !11
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.ef, %i.ei            ; 2 uses
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.eg, align 1, !tbaa !11
  %i.el = lshr i32 %i.ej, 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.el, %i.eo            ; 2 uses
  %i.eq = trunc i32 %i.ep to i8
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !11
  %i.er = lshr i32 %i.ep, 8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !11
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nuw nsw i32 %i.er, %i.eu            ; 2 uses
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.es, align 1, !tbaa !11
  %i.ex = lshr i32 %i.ev, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa            ; 2 uses
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.ey, align 1, !tbaa !11
  %i.fd = lshr i32 %i.fb, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !11
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !11
  %i.fj = lshr i32 %i.fh, 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fj, %i.fm            ; 2 uses
  %i.fo = trunc i32 %i.fn to i8
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !11
  %i.fp = lshr i32 %i.fn, 8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !11
  %i.fs = zext i8 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fp, %i.fs            ; 2 uses
  %i.fu = trunc i32 %i.ft to i8
  store i8 %i.fu, ptr %i.fq, align 1, !tbaa !11
  %i.fv = lshr i32 %i.ft, 8
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !11
  %i.fy = zext i8 %i.fx to i32
  %i.fz = add nuw nsw i32 %i.fv, %i.fy            ; 2 uses
  %i.ga = trunc i32 %i.fz to i8
  store i8 %i.ga, ptr %i.fw, align 1, !tbaa !11
  %i.gb = lshr i32 %i.fz, 8
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !11
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nuw nsw i32 %i.gb, %i.ge            ; 2 uses
  %i.gg = trunc i32 %i.gf to i8
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !11
  %i.gh = lshr i32 %i.gf, 8
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !11
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nuw nsw i32 %i.gh, %i.gk            ; 2 uses
  %i.gm = trunc i32 %i.gl to i8
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !11
  %i.gn = lshr i32 %i.gl, 8
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nuw nsw i32 %i.gn, %i.gq            ; 2 uses
  %i.gs = trunc i32 %i.gr to i8
  store i8 %i.gs, ptr %i.go, align 1, !tbaa !11
  %i.gt = lshr i32 %i.gr, 8
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !11
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add nuw nsw i32 %i.gt, %i.gw            ; 2 uses
  %i.gy = trunc i32 %i.gx to i8
  store i8 %i.gy, ptr %i.gu, align 1, !tbaa !11
  %i.gz = lshr i32 %i.gx, 8
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !11
  %i.hc = zext i8 %i.hb to i32
  %i.hd = add nuw nsw i32 %i.gz, %i.hc            ; 2 uses
  %i.he = trunc i32 %i.hd to i8
  store i8 %i.he, ptr %i.ha, align 1, !tbaa !11
  %i.hf = lshr i32 %i.hd, 8
  %i.hg = load i8, ptr %4, align 1, !tbaa !11
  %i.hh = trunc nuw nsw i32 %i.hf to i8
  %i.hi = add i8 %i.hg, %i.hh
  store i8 %i.hi, ptr %4, align 1, !tbaa !11
  %xtraiter = and i64 %.146.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.hj = add nsw i64 %.146.lcssa, -1
  %i.hk = zext i32 %.142.lcssa to i64             ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !11
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 %i.hk
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !11
  %i.hp = xor i8 %i.ho, %i.hm
  %i.hq = getelementptr inbounds nuw i8, ptr %.144.lcssa, i64 %i.hk
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !11
  %i.hr = add i32 %.142.lcssa, 1                  ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.hr, %.prol.loopexit.unr-lcssa ]
  %.366.unr = phi i32 [ %.142.lcssa, %bb.c ], [ %i.hr, %.prol.loopexit.unr-lcssa ]
  %.24765.unr = phi i64 [ %.146.lcssa, %bb.c ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %i.hs = icmp eq i64 %.146.lcssa, 1
  br i1 %i.hs, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.366 = phi i32 [ %i.ij, %.new ], [ %.366.unr, %.prol.loopexit ] ; 3 uses
  %.24765 = phi i64 [ %i.ib, %.new ], [ %.24765.unr, %.prol.loopexit ]
  %i.ht = zext i32 %.366 to i64                   ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !11
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 %i.ht
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !11
  %i.hy = xor i8 %i.hx, %i.hv
  %i.hz = getelementptr inbounds nuw i8, ptr %.144.lcssa, i64 %i.ht
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !11
  %i.ia = add i32 %.366, 1
  %i.ib = add nsw i64 %.24765, -2                 ; 2 uses
  %i.ic = zext i32 %i.ia to i64                   ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !11
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 %i.ic
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !11
  %i.ih = xor i8 %i.ig, %i.ie
  %i.ii = getelementptr inbounds nuw i8, ptr %.144.lcssa, i64 %i.ic
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !11
  %i.ij = add i32 %.366, 2                        ; 2 uses
  %.not48.1 = icmp eq i64 %i.ib, 0
  br i1 %.not48.1, label %.loopexit, label %.new, !llvm.loop !15

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %.4 = phi i32 [ %.142.lcssa, %._crit_edge ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ij, %.new ]
  store i32 %.4, ptr %6, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = ptrtoaddr ptr %5 to i64
  %i.a = load i32, ptr %6, align 4, !tbaa !10     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.082 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.06681 = phi ptr [ %i.k, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.06880 = phi i64 [ %i.l, %.lr.ph ], [ %2, %bb.a ]
  %.07079 = phi i32 [ %i.n, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.082, i64 1 ; 2 uses
  %i.f = load i8, ptr %.082, align 1, !tbaa !11
  %i.g = zext i32 %.07079 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = xor i8 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %.06681, i64 1 ; 2 uses
  store i8 %i.j, ptr %.06681, align 1, !tbaa !11
  %i.l = add i64 %.06880, -1                      ; 3 uses
  %i.m = add i32 %.07079, 1
  %i.n = and i32 %i.m, 15                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp ne i64 %i.l, 0
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.070.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.n, %.lr.ph ] ; 7 uses
  %.068.lcssa = phi i64 [ %2, %bb.a ], [ %i.l, %.lr.ph ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #4, !srcloc !22 ; 2 uses
  %i.u = icmp ugt i64 %.068.lcssa, 15
  br i1 %i.u, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph91, %bb.d
  %.189 = phi ptr [ %.0.lcssa, %.lr.ph91 ], [ %i.cx, %bb.d ] ; 2 uses
  %.16788 = phi ptr [ %.066.lcssa, %.lr.ph91 ], [ %i.cw, %bb.d ] ; 2 uses
  %.16987 = phi i64 [ %.068.lcssa, %.lr.ph91 ], [ %i.cv, %bb.d ] ; 2 uses
  %.07486 = phi i32 [ %i.t, %.lr.ph91 ], [ %spec.select, %bb.d ]
  %i.ag = lshr i64 %.16987, 4
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 268435456) ; 3 uses
  %i.ah = trunc nuw nsw i64 %spec.store.select to i32
  %i.ai = add i32 %.07486, %i.ah                  ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = icmp samesign ugt i64 %spec.store.select, %i.aj ; 2 uses
  %spec.select = select i1 %i.ak, i32 0, i32 %i.ai ; 4 uses
  %i.al = select i1 %i.ak, i64 %i.aj, i64 0
  %spec.select78 = sub nuw nsw i64 %spec.store.select, %i.al ; 2 uses
  tail call void %7(ptr noundef %.189, ptr noundef %.16788, i64 noundef %spec.select78, ptr noundef %3, ptr noundef nonnull %4) #3
  %i.am = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %spec.select) #4, !srcloc !23
  store i32 %i.am, ptr %i.r, align 4, !tbaa !10
  %i.an = icmp eq i32 %spec.select, 0
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 2 uses
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.v, align 1, !tbaa !11
  %i.as = lshr i32 %i.aq, 8
  %i.at = load i8, ptr %i.w, align 2, !tbaa !11
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.as, %i.au            ; 2 uses
  %i.aw = trunc i32 %i.av to i8
  store i8 %i.aw, ptr %i.w, align 2, !tbaa !11
  %i.ax = lshr i32 %i.av, 8
  %i.ay = load i8, ptr %i.x, align 1, !tbaa !11
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.ax, %i.az            ; 2 uses
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.x, align 1, !tbaa !11
  %i.bc = lshr i32 %i.ba, 8
  %i.bd = load i8, ptr %i.y, align 4, !tbaa !11
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.bc, %i.be            ; 2 uses
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %i.y, align 4, !tbaa !11
  %i.bh = lshr i32 %i.bf, 8
  %i.bi = load i8, ptr %i.z, align 1, !tbaa !11
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bh, %i.bj            ; 2 uses
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %i.z, align 1, !tbaa !11
  %i.bm = lshr i32 %i.bk, 8
  %i.bn = load i8, ptr %i.aa, align 2, !tbaa !11
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bm, %i.bo            ; 2 uses
  %i.bq = trunc i32 %i.bp to i8
  store i8 %i.bq, ptr %i.aa, align 2, !tbaa !11
  %i.br = lshr i32 %i.bp, 8
  %i.bs = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.ab, align 1, !tbaa !11
  %i.bw = lshr i32 %i.bu, 8
  %i.bx = load i8, ptr %i.ac, align 4, !tbaa !11
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bw, %i.by            ; 2 uses
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %i.ac, align 4, !tbaa !11
  %i.cb = lshr i32 %i.bz, 8
  %i.cc = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cb, %i.cd            ; 2 uses
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.ad, align 1, !tbaa !11
  %i.cg = lshr i32 %i.ce, 8
  %i.ch = load i8, ptr %i.ae, align 2, !tbaa !11
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.cg, %i.ci            ; 2 uses
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %i.ae, align 2, !tbaa !11
  %i.cl = lshr i32 %i.cj, 8
  %i.cm = load i8, ptr %i.af, align 1, !tbaa !11
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cl, %i.cn            ; 2 uses
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.af, align 1, !tbaa !11
  %i.cq = lshr i32 %i.co, 8
  %i.cr = load i8, ptr %4, align 4, !tbaa !11
  %i.cs = trunc nuw nsw i32 %i.cq to i8
  %i.ct = add i8 %i.cr, %i.cs
  store i8 %i.ct, ptr %4, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cu = shl nuw nsw i64 %spec.select78, 4       ; 3 uses
  %i.cv = sub i64 %.16987, %i.cu                  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.16788, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.189, i64 %i.cu ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, 15
  br i1 %i.cy, label %bb.b, label %._crit_edge92, !llvm.loop !19

._crit_edge92:                                    ; preds = %bb.d, %._crit_edge
  %.074.lcssa = phi i32 [ %i.t, %._crit_edge ], [ %spec.select, %bb.d ]
  %.169.lcssa = phi i64 [ %.068.lcssa, %._crit_edge ], [ %i.cv, %bb.d ] ; 9 uses
  %.167.lcssa = phi ptr [ %.066.lcssa, %._crit_edge ], [ %i.cw, %bb.d ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.cx, %bb.d ] ; 5 uses
  %.167.lcssa122 = ptrtoaddr ptr %.167.lcssa to i64 ; 2 uses
  %.1.lcssa123 = ptrtoaddr ptr %.1.lcssa to i64
  %.not = icmp eq i64 %.169.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #3
  %i.cz = add i32 %.074.lcssa, 1                  ; 2 uses
  %i.da = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cz) #4, !srcloc !24
  store i32 %i.da, ptr %i.r, align 4, !tbaa !10
  %i.db = icmp eq i32 %i.cz, 0
  br i1 %i.db, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !11
  %i.dh = lshr i32 %i.df, 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !11
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dh, %i.dk            ; 2 uses
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %i.di, align 2, !tbaa !11
  %i.dn = lshr i32 %i.dl, 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dn, %i.dq            ; 2 uses
  %i.ds = trunc i32 %i.dr to i8
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !11
  %i.dt = lshr i32 %i.dr, 8
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !11
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dt, %i.dw            ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %i.du, align 4, !tbaa !11
  %i.dz = lshr i32 %i.dx, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.dz, %i.ec            ; 2 uses
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !11
  %i.ef = lshr i32 %i.ed, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !11
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.ef, %i.ei            ; 2 uses
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.eg, align 2, !tbaa !11
  %i.el = lshr i32 %i.ej, 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.el, %i.eo            ; 2 uses
  %i.eq = trunc i32 %i.ep to i8
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !11
  %i.er = lshr i32 %i.ep, 8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.et = load i8, ptr %i.es, align 4, !tbaa !11
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nuw nsw i32 %i.er, %i.eu            ; 2 uses
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.es, align 4, !tbaa !11
  %i.ex = lshr i32 %i.ev, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa            ; 2 uses
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.ey, align 1, !tbaa !11
  %i.fd = lshr i32 %i.fb, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !11
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fe, align 2, !tbaa !11
  %i.fj = lshr i32 %i.fh, 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fj, %i.fm            ; 2 uses
  %i.fo = trunc i32 %i.fn to i8
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !11
  %i.fp = lshr i32 %i.fn, 8
  %i.fq = load i8, ptr %4, align 4, !tbaa !11
  %i.fr = trunc nuw nsw i32 %i.fp to i8
  %i.fs = add i8 %i.fq, %i.fr
  store i8 %i.fs, ptr %4, align 4, !tbaa !11
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.e
  %min.iters.check = icmp samesign ult i64 %.169.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %9 = add nsw i64 %.169.lcssa, -1                ; 2 uses
  %10 = trunc i64 %9 to i32
  %11 = xor i32 %.070.lcssa, -1
  %12 = icmp ult i32 %11, %10
  %13 = icmp ugt i64 %9, 4294967295
  %14 = or i1 %12, %13
  br i1 %14, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %15 = sub i64 %.1.lcssa123, %.167.lcssa122
  %diff.check = icmp ugt i64 %15, -32
  %16 = sub i64 %8, %.167.lcssa122
  %diff.check124 = icmp ugt i64 %16, -32
  %conflict.rdx = or i1 %diff.check, %diff.check124
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec130 = and i64 %.169.lcssa, 12             ; 3 uses
  %17 = and i64 %.169.lcssa, 3
  %18 = trunc nuw nsw i64 %n.vec130 to i32
  %19 = add i32 %.070.lcssa, %18                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 2 uses
  %20 = trunc i64 %index131 to i32
  %21 = add i32 %.070.lcssa, %20
  %22 = zext i32 %21 to i64                       ; 3 uses
  %23 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %22
  %wide.load132 = load <4 x i8>, ptr %23, align 1, !tbaa !11
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 %22
  %wide.load133 = load <4 x i8>, ptr %24, align 1, !tbaa !11
  %25 = xor <4 x i8> %wide.load133, %wide.load132
  %26 = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %22
  store <4 x i8> %25, ptr %26, align 1, !tbaa !11
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %27 = icmp eq i64 %index.next134, %n.vec130
  br i1 %27, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %.169.lcssa, %n.vec130
  br i1 %cmp.n135, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.298.ph = phi i64 [ %.169.lcssa, %vector.scevcheck ], [ %.169.lcssa, %vector.memcheck ], [ %.169.lcssa, %iter.check ], [ %17, %vec.epilog.middle.block ] ; 4 uses
  %.17197.ph = phi i32 [ %.070.lcssa, %vector.scevcheck ], [ %.070.lcssa, %vector.memcheck ], [ %.070.lcssa, %iter.check ], [ %19, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.298.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ft = add nsw i64 %.298.ph, -1
  %i.fu = zext i32 %.17197.ph to i64              ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 %i.fu
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !11
  %i.gb = add i32 %.17197.ph, 1                   ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gb, %vec.epilog.scalar.ph.prol ]
  %.298.unr = phi i64 [ %.298.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ft, %vec.epilog.scalar.ph.prol ]
  %.17197.unr = phi i32 [ %.17197.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gb, %vec.epilog.scalar.ph.prol ]
  %i.gc = icmp eq i64 %.298.ph, 1
  br i1 %i.gc, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.298 = phi i64 [ %i.gl, %vec.epilog.scalar.ph ], [ %.298.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.17197 = phi i32 [ %i.gt, %vec.epilog.scalar.ph ], [ %.17197.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.gd = zext i32 %.17197 to i64                 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 %i.gd
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !11
  %i.gi = xor i8 %i.gh, %i.gf
  %i.gj = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %i.gd
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !11
  %i.gk = add i32 %.17197, 1
  %i.gl = add nsw i64 %.298, -2                   ; 2 uses
  %i.gm = zext i32 %i.gk to i64                   ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 %i.gm
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !11
  %i.gr = xor i8 %i.gq, %i.go
  %i.gs = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %i.gm
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !11
  %i.gt = add i32 %.17197, 2                      ; 2 uses
  %.not77.1 = icmp eq i64 %i.gl, 0
  br i1 %.not77.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !21

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge92
  %.272 = phi i32 [ %.070.lcssa, %._crit_edge92 ], [ %19, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gt, %vec.epilog.scalar.ph ]
  store i32 %.272, ptr %6, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = !{!"long", !6, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12, !25, !26}
!21 = distinct !{!21, !12, !25}
!22 = !{i64 2148299001}
!23 = !{i64 2148299214}
!24 = !{i64 2148299405}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
