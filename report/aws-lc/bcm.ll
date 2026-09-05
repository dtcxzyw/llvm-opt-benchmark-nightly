Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
begin_hunk_0_@AES_ctr128_encrypt:bb.a
  %i.ai = lshr i64 %.16577.i, 4
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 268435456) ; 3 uses
  %i.aj = trunc nuw nsw i64 %spec.store.select.i to i32
  %i.ak = add i32 %.05780.i, %i.aj                ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp samesign ugt i64 %spec.store.select.i, %i.al ; 2 uses
  %spec.select.i = select i1 %i.am, i32 0, i32 %i.ak ; 4 uses
  %i.an = select i1 %i.am, i64 %i.al, i64 0
  %spec.select69.i = sub nuw nsw i64 %spec.store.select.i, %i.an ; 2 uses
  tail call void @aes_hw_ctr32_encrypt_blocks(ptr noundef %.16179.i, ptr noundef %.16378.i, i64 noundef %spec.select69.i, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select.i)
  store i32 %i.ao, ptr %i.u, align 1
  %i.ap = icmp eq i32 %spec.select.i, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = load i8, ptr %i.x, align 1, !tbaa !76
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %i.x, align 1, !tbaa !76
  %i.au = lshr i32 %i.as, 8
  %i.av = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nuw nsw i32 %i.au, %i.aw            ; 2 uses
  %i.ay = trunc i32 %i.ax to i8
  store i8 %i.ay, ptr %i.y, align 1, !tbaa !76
  %i.az = lshr i32 %i.ax, 8
  %i.ba = load i8, ptr %i.z, align 1, !tbaa !76
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.az, %i.bb            ; 2 uses
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.z, align 1, !tbaa !76
  %i.be = lshr i32 %i.bc, 8
  %i.bf = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.be, %i.bg            ; 2 uses
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.aa, align 1, !tbaa !76
  %i.bj = lshr i32 %i.bh, 8
  %i.bk = load i8, ptr %i.ab, align 1, !tbaa !76
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %i.ab, align 1, !tbaa !76
  %i.bo = lshr i32 %i.bm, 8
  %i.bp = load i8, ptr %i.ac, align 1, !tbaa !76
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bo, %i.bq            ; 2 uses
  %i.bs = trunc i32 %i.br to i8
  store i8 %i.bs, ptr %i.ac, align 1, !tbaa !76
  %i.bt = lshr i32 %i.br, 8
  %i.bu = load i8, ptr %i.ad, align 1, !tbaa !76
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = trunc i32 %i.bw to i8
  store i8 %i.bx, ptr %i.ad, align 1, !tbaa !76
  %i.by = lshr i32 %i.bw, 8
  %i.bz = load i8, ptr %i.ae, align 1, !tbaa !76
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.by, %i.ca            ; 2 uses
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.ae, align 1, !tbaa !76
  %i.cd = lshr i32 %i.cb, 8
  %i.ce = load i8, ptr %i.af, align 1, !tbaa !76
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cd, %i.cf            ; 2 uses
  %i.ch = trunc i32 %i.cg to i8
  store i8 %i.ch, ptr %i.af, align 1, !tbaa !76
  %i.ci = lshr i32 %i.cg, 8
  %i.cj = load i8, ptr %i.ag, align 1, !tbaa !76
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = trunc i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ag, align 1, !tbaa !76
  %i.cn = lshr i32 %i.cl, 8
  %i.co = load i8, ptr %i.ah, align 1, !tbaa !76
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cn, %i.cp            ; 2 uses
  %i.cr = trunc i32 %i.cq to i8
  store i8 %i.cr, ptr %i.ah, align 1, !tbaa !76
  %i.cs = lshr i32 %i.cq, 8
  %i.ct = load i8, ptr %4, align 1, !tbaa !76
  %i.cu = trunc nuw nsw i32 %i.cs to i8
  %i.cv = add i8 %i.ct, %i.cu
  store i8 %i.cv, ptr %4, align 1, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cw = shl nuw nsw i64 %spec.select69.i, 4     ; 3 uses
  %i.cx = sub i64 %.16577.i, %i.cw                ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.16378.i, i64 %i.cw ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.16179.i, i64 %i.cw ; 2 uses
  %i.da = icmp ugt i64 %i.cx, 15
  br i1 %i.da, label %bb.c, label %._crit_edge83.i, !llvm.loop !3

._crit_edge83.i:                                  ; preds = %bb.e, %._crit_edge.i
  %.165.lcssa.i = phi i64 [ %.064.lcssa.i, %._crit_edge.i ], [ %i.cx, %bb.e ] ; 9 uses
  %.163.lcssa.i = phi ptr [ %.062.lcssa.i, %._crit_edge.i ], [ %i.cy, %bb.e ] ; 5 uses
  %.161.lcssa.i = phi ptr [ %.060.lcssa.i, %._crit_edge.i ], [ %i.cz, %bb.e ] ; 5 uses
  %.057.lcssa.i = phi i32 [ %i.v, %._crit_edge.i ], [ %spec.select.i, %bb.e ]
  %.163.lcssa.i185 = ptrtoaddr ptr %.163.lcssa.i to i64 ; 2 uses
  %.161.lcssa.i186 = ptrtoaddr ptr %.161.lcssa.i to i64
  %.not.i = icmp eq i64 %.165.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge83.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.db = add i32 %.057.lcssa.i, 1                ; 2 uses
  %i.dc = tail call noundef i32 @llvm.bswap.i32(i32 %i.db)
  store i32 %i.dc, ptr %i.u, align 1
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %bb.g, label %iter.check

bb.g:                                             ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !76
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dg, 1                ; 2 uses
  %i.di = trunc i32 %i.dh to i8
  store i8 %i.di, ptr %i.de, align 1, !tbaa !76
  %i.dj = lshr i32 %i.dh, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !76
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dj, %i.dm            ; 2 uses
  %i.do = trunc i32 %i.dn to i8
  store i8 %i.do, ptr %i.dk, align 1, !tbaa !76
  %i.dp = lshr i32 %i.dn, 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !76
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.dp, %i.ds            ; 2 uses
  %i.du = trunc i32 %i.dt to i8
  store i8 %i.du, ptr %i.dq, align 1, !tbaa !76
  %i.dv = lshr i32 %i.dt, 8
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !76
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dv, %i.dy            ; 2 uses
  %i.ea = trunc i32 %i.dz to i8
  store i8 %i.ea, ptr %i.dw, align 1, !tbaa !76
  %i.eb = lshr i32 %i.dz, 8
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !76
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add nuw nsw i32 %i.eb, %i.ee            ; 2 uses
  %i.eg = trunc i32 %i.ef to i8
  store i8 %i.eg, ptr %i.ec, align 1, !tbaa !76
  %i.eh = lshr i32 %i.ef, 8
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !76
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nuw nsw i32 %i.eh, %i.ek            ; 2 uses
  %i.em = trunc i32 %i.el to i8
  store i8 %i.em, ptr %i.ei, align 1, !tbaa !76
  %i.en = lshr i32 %i.el, 8
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !76
  %i.eq = zext i8 %i.ep to i32
  %i.er = add nuw nsw i32 %i.en, %i.eq            ; 2 uses
  %i.es = trunc i32 %i.er to i8
  store i8 %i.es, ptr %i.eo, align 1, !tbaa !76
  %i.et = lshr i32 %i.er, 8
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !76
  %i.ew = zext i8 %i.ev to i32
  %i.ex = add nuw nsw i32 %i.et, %i.ew            ; 2 uses
  %i.ey = trunc i32 %i.ex to i8
  store i8 %i.ey, ptr %i.eu, align 1, !tbaa !76
  %i.ez = lshr i32 %i.ex, 8
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !76
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nuw nsw i32 %i.ez, %i.fc            ; 2 uses
  %i.fe = trunc i32 %i.fd to i8
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !76
  %i.ff = lshr i32 %i.fd, 8
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !76
  %i.fi = zext i8 %i.fh to i32
  %i.fj = add nuw nsw i32 %i.ff, %i.fi            ; 2 uses
  %i.fk = trunc i32 %i.fj to i8
  store i8 %i.fk, ptr %i.fg, align 1, !tbaa !76
  %i.fl = lshr i32 %i.fj, 8
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !76
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nuw nsw i32 %i.fl, %i.fo            ; 2 uses
  %i.fq = trunc i32 %i.fp to i8
  store i8 %i.fq, ptr %i.fm, align 1, !tbaa !76
  %i.fr = lshr i32 %i.fp, 8
  %i.fs = load i8, ptr %4, align 1, !tbaa !76
  %i.ft = trunc nuw nsw i32 %i.fr to i8
  %i.fu = add i8 %i.fs, %i.ft
  store i8 %i.fu, ptr %4, align 1, !tbaa !76
  br label %iter.check

iter.check:                                       ; preds = %bb.g, %bb.f
  %min.iters.check = icmp samesign ult i64 %.165.lcssa.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fv = add nsw i64 %.165.lcssa.i, -1           ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = xor i32 %.058.lcssa.i, -1
  %i.fy = icmp ult i32 %i.fx, %i.fw
  %i.fz = icmp ugt i64 %i.fv, 4294967295
  %i.ga = or i1 %i.fy, %i.fz
  br i1 %i.ga, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gb = sub i64 %.161.lcssa.i186, %.163.lcssa.i185
  %diff.check = icmp ugt i64 %i.gb, -32
  %i.gc = sub i64 %i.a, %.163.lcssa.i185
  %diff.check187 = icmp ugt i64 %i.gc, -32
  %conflict.rdx = or i1 %diff.check, %diff.check187
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec193 = and i64 %.165.lcssa.i, 8            ; 3 uses
  %i.gd = trunc nuw nsw i64 %n.vec193 to i32
  %i.ge = add i32 %.058.lcssa.i, %i.gd            ; 2 uses
  %i.gf = and i64 %.165.lcssa.i, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index194 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next197, %vec.epilog.vector.body ] ; 2 uses
  %i.gg = trunc i64 %index194 to i32
  %i.gh = add i32 %.058.lcssa.i, %i.gg
  %i.gi = zext i32 %i.gh to i64                   ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.gi
  %wide.load195 = load <8 x i8>, ptr %i.gj, align 1, !tbaa !76
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 %i.gi
  %wide.load196 = load <8 x i8>, ptr %i.gk, align 1, !tbaa !76
  %7 = xor <8 x i8> %wide.load196, %wide.load195
  %i.gl = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.gi
  store <8 x i8> %7, ptr %i.gl, align 1, !tbaa !76
  %index.next197 = add nuw i64 %index194, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next197, %n.vec193
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !656

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n198 = icmp eq i64 %.165.lcssa.i, %n.vec193
  br i1 %cmp.n198, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.15989.i.ph = phi i32 [ %.058.lcssa.i, %vector.scevcheck ], [ %.058.lcssa.i, %vector.memcheck ], [ %.058.lcssa.i, %iter.check ], [ %i.ge, %vec.epilog.middle.block ] ; 3 uses
  %.26688.i.ph = phi i64 [ %.165.lcssa.i, %vector.scevcheck ], [ %.165.lcssa.i, %vector.memcheck ], [ %.165.lcssa.i, %iter.check ], [ %i.gf, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.26688.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gn = add nsw i64 %.26688.i.ph, -1
  %i.go = zext i32 %.15989.i.ph to i64            ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !76
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 %i.go
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !76
  %i.gt = xor i8 %i.gs, %i.gq
  %i.gu = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.go
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !76
  %i.gv = add i32 %.15989.i.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa294.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gv, %vec.epilog.scalar.ph.prol ]
  %.15989.i.unr = phi i32 [ %.15989.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gv, %vec.epilog.scalar.ph.prol ]
  %.26688.i.unr = phi i64 [ %.26688.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gn, %vec.epilog.scalar.ph.prol ]
  %i.gw = icmp eq i64 %.26688.i.ph, 1
  br i1 %i.gw, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15989.i = phi i32 [ %i.hn, %vec.epilog.scalar.ph ], [ %.15989.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.26688.i = phi i64 [ %i.hf, %vec.epilog.scalar.ph ], [ %.26688.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gx = zext i32 %.15989.i to i64               ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !76
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !76
  %i.hc = xor i8 %i.hb, %i.gz
  %i.hd = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.gx
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !76
  %i.he = add i32 %.15989.i, 1
  %i.hf = add i64 %.26688.i, -2                   ; 2 uses
  %i.hg = zext i32 %i.he to i64                   ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !76
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 %i.hg
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !76
  %i.hl = xor i8 %i.hk, %i.hi
  %i.hm = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.hg
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !76
  %i.hn = add i32 %.15989.i, 2                    ; 2 uses
  %.not68.i.1 = icmp eq i64 %i.hf, 0
  br i1 %.not68.i.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph, !llvm.loop !657

bb.h:                                             ; preds = %bb.a
  %i.ho = and i32 %i.b, 512
  %.not20 = icmp eq i32 %i.ho, 0
  %i.hp = load i32, ptr %6, align 4, !tbaa !73    ; 5 uses
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = icmp ne i64 %2, 0
  %i.hs = and i1 %i.hr, %i.hq                     ; 2 uses
  br i1 %.not20, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.hs, label %.lr.ph.i46, label %._crit_edge.i22

.lr.ph.i46:                                       ; preds = %bb.i, %.lr.ph.i46
  %.05873.i47 = phi i32 [ %i.ic, %.lr.ph.i46 ], [ %i.hp, %bb.i ] ; 2 uses
  %.06072.i48 = phi ptr [ %i.ht, %.lr.ph.i46 ], [ %0, %bb.i ] ; 2 uses
  %.06271.i49 = phi ptr [ %i.hz, %.lr.ph.i46 ], [ %1, %bb.i ] ; 2 uses
  %.06470.i50 = phi i64 [ %i.ia, %.lr.ph.i46 ], [ %2, %bb.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.06072.i48, i64 1 ; 2 uses
  %i.hu = load i8, ptr %.06072.i48, align 1, !tbaa !76
  %i.hv = zext i32 %.05873.i47 to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !76
  %i.hy = xor i8 %i.hx, %i.hu
  %i.hz = getelementptr inbounds nuw i8, ptr %.06271.i49, i64 1 ; 2 uses
  store i8 %i.hy, ptr %.06271.i49, align 1, !tbaa !76
  %i.ia = add i64 %.06470.i50, -1                 ; 3 uses
  %i.ib = add i32 %.05873.i47, 1
  %i.ic = and i32 %i.ib, 15                       ; 3 uses
  %i.id = icmp ne i32 %i.ic, 0
  %i.ie = icmp ne i64 %i.ia, 0
  %i.if = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %i.if, label %.lr.ph.i46, label %._crit_edge.i22, !llvm.loop !2

._crit_edge.i22:                                  ; preds = %.lr.ph.i46, %bb.i
  %.064.lcssa.i23 = phi i64 [ %2, %bb.i ], [ %i.ia, %.lr.ph.i46 ] ; 3 uses
  %.062.lcssa.i24 = phi ptr [ %1, %bb.i ], [ %i.hz, %.lr.ph.i46 ] ; 2 uses
  %.060.lcssa.i25 = phi ptr [ %0, %bb.i ], [ %i.ht, %.lr.ph.i46 ] ; 2 uses
  %.058.lcssa.i26 = phi i32 [ %i.hp, %bb.i ], [ %i.ic, %.lr.ph.i46 ] ; 7 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.0.copyload.i.i27 = load i32, ptr %i.ig, align 1
  %i.ih = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i27) ; 2 uses
  %i.ii = icmp ugt i64 %.064.lcssa.i23, 15
  br i1 %i.ii, label %.lr.ph82.i38, label %._crit_edge83.i28

.lr.ph82.i38:                                     ; preds = %._crit_edge.i22
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph82.i38
  %.05780.i39 = phi i32 [ %i.ih, %.lr.ph82.i38 ], [ %spec.select.i44, %bb.l ]
  %.16179.i40 = phi ptr [ %.060.lcssa.i25, %.lr.ph82.i38 ], [ %i.ll, %bb.l ] ; 2 uses
  %.16378.i41 = phi ptr [ %.062.lcssa.i24, %.lr.ph82.i38 ], [ %i.lk, %bb.l ] ; 2 uses
  %.16577.i42 = phi i64 [ %.064.lcssa.i23, %.lr.ph82.i38 ], [ %i.lj, %bb.l ] ; 2 uses
  %i.iu = lshr i64 %.16577.i42, 4
  %spec.store.select.i43 = tail call i64 @llvm.umin.i64(i64 %i.iu, i64 268435456) ; 3 uses
  %i.iv = trunc nuw nsw i64 %spec.store.select.i43 to i32
  %i.iw = add i32 %.05780.i39, %i.iv              ; 2 uses
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = icmp samesign ugt i64 %spec.store.select.i43, %i.ix ; 2 uses
  %spec.select.i44 = select i1 %i.iy, i32 0, i32 %i.iw ; 4 uses
  %i.iz = select i1 %i.iy, i64 %i.ix, i64 0
  %spec.select69.i45 = sub nuw nsw i64 %spec.store.select.i43, %i.iz ; 2 uses
  tail call void @vpaes_ctr32_encrypt_blocks(ptr noundef %.16179.i40, ptr noundef %.16378.i41, i64 noundef %spec.select69.i45, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.ja = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select.i44)
  store i32 %i.ja, ptr %i.ig, align 1
  %i.jb = icmp eq i32 %spec.select.i44, 0
  br i1 %i.jb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.jc = load i8, ptr %i.ij, align 1, !tbaa !76
  %i.jd = zext i8 %i.jc to i32
  %i.je = add nuw nsw i32 %i.jd, 1                ; 2 uses
  %i.jf = trunc i32 %i.je to i8
  store i8 %i.jf, ptr %i.ij, align 1, !tbaa !76
  %i.jg = lshr i32 %i.je, 8
  %i.jh = load i8, ptr %i.ik, align 1, !tbaa !76
  %i.ji = zext i8 %i.jh to i32
  %i.jj = add nuw nsw i32 %i.jg, %i.ji            ; 2 uses
  %i.jk = trunc i32 %i.jj to i8
  store i8 %i.jk, ptr %i.ik, align 1, !tbaa !76
  %i.jl = lshr i32 %i.jj, 8
  %i.jm = load i8, ptr %i.il, align 1, !tbaa !76
  %i.jn = zext i8 %i.jm to i32
  %i.jo = add nuw nsw i32 %i.jl, %i.jn            ; 2 uses
  %i.jp = trunc i32 %i.jo to i8
  store i8 %i.jp, ptr %i.il, align 1, !tbaa !76
  %i.jq = lshr i32 %i.jo, 8
  %i.jr = load i8, ptr %i.im, align 1, !tbaa !76
  %i.js = zext i8 %i.jr to i32
  %i.jt = add nuw nsw i32 %i.jq, %i.js            ; 2 uses
  %i.ju = trunc i32 %i.jt to i8
  store i8 %i.ju, ptr %i.im, align 1, !tbaa !76
  %i.jv = lshr i32 %i.jt, 8
  %i.jw = load i8, ptr %i.in, align 1, !tbaa !76
  %i.jx = zext i8 %i.jw to i32
  %i.jy = add nuw nsw i32 %i.jv, %i.jx            ; 2 uses
  %i.jz = trunc i32 %i.jy to i8
  store i8 %i.jz, ptr %i.in, align 1, !tbaa !76
  %i.ka = lshr i32 %i.jy, 8
  %i.kb = load i8, ptr %i.io, align 1, !tbaa !76
  %i.kc = zext i8 %i.kb to i32
  %i.kd = add nuw nsw i32 %i.ka, %i.kc            ; 2 uses
  %i.ke = trunc i32 %i.kd to i8
  store i8 %i.ke, ptr %i.io, align 1, !tbaa !76
  %i.kf = lshr i32 %i.kd, 8
  %i.kg = load i8, ptr %i.ip, align 1, !tbaa !76
  %i.kh = zext i8 %i.kg to i32
  %i.ki = add nuw nsw i32 %i.kf, %i.kh            ; 2 uses
  %i.kj = trunc i32 %i.ki to i8
  store i8 %i.kj, ptr %i.ip, align 1, !tbaa !76
  %i.kk = lshr i32 %i.ki, 8
  %i.kl = load i8, ptr %i.iq, align 1, !tbaa !76
  %i.km = zext i8 %i.kl to i32
  %i.kn = add nuw nsw i32 %i.kk, %i.km            ; 2 uses
  %i.ko = trunc i32 %i.kn to i8
  store i8 %i.ko, ptr %i.iq, align 1, !tbaa !76
  %i.kp = lshr i32 %i.kn, 8
  %i.kq = load i8, ptr %i.ir, align 1, !tbaa !76
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nuw nsw i32 %i.kp, %i.kr            ; 2 uses
  %i.kt = trunc i32 %i.ks to i8
  store i8 %i.kt, ptr %i.ir, align 1, !tbaa !76
  %i.ku = lshr i32 %i.ks, 8
  %i.kv = load i8, ptr %i.is, align 1, !tbaa !76
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add nuw nsw i32 %i.ku, %i.kw            ; 2 uses
  %i.ky = trunc i32 %i.kx to i8
  store i8 %i.ky, ptr %i.is, align 1, !tbaa !76
  %i.kz = lshr i32 %i.kx, 8
  %i.la = load i8, ptr %i.it, align 1, !tbaa !76
  %i.lb = zext i8 %i.la to i32
  %i.lc = add nuw nsw i32 %i.kz, %i.lb            ; 2 uses
  %i.ld = trunc i32 %i.lc to i8
  store i8 %i.ld, ptr %i.it, align 1, !tbaa !76
  %i.le = lshr i32 %i.lc, 8
  %i.lf = load i8, ptr %4, align 1, !tbaa !76
  %i.lg = trunc nuw nsw i32 %i.le to i8
  %i.lh = add i8 %i.lf, %i.lg
  store i8 %i.lh, ptr %4, align 1, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.li = shl nuw nsw i64 %spec.select69.i45, 4   ; 3 uses
  %i.lj = sub i64 %.16577.i42, %i.li              ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.16378.i41, i64 %i.li ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.16179.i40, i64 %i.li ; 2 uses
  %i.lm = icmp ugt i64 %i.lj, 15
  br i1 %i.lm, label %bb.j, label %._crit_edge83.i28, !llvm.loop !3

._crit_edge83.i28:                                ; preds = %bb.l, %._crit_edge.i22
  %.165.lcssa.i29 = phi i64 [ %.064.lcssa.i23, %._crit_edge.i22 ], [ %i.lj, %bb.l ] ; 9 uses
  %.163.lcssa.i30 = phi ptr [ %.062.lcssa.i24, %._crit_edge.i22 ], [ %i.lk, %bb.l ] ; 5 uses
  %.161.lcssa.i31 = phi ptr [ %.060.lcssa.i25, %._crit_edge.i22 ], [ %i.ll, %bb.l ] ; 5 uses
  %.057.lcssa.i32 = phi i32 [ %i.ih, %._crit_edge.i22 ], [ %spec.select.i44, %bb.l ]
  %.163.lcssa.i30203 = ptrtoaddr ptr %.163.lcssa.i30 to i64 ; 2 uses
  %.161.lcssa.i31204 = ptrtoaddr ptr %.161.lcssa.i31 to i64
  %.not.i33 = icmp eq i64 %.165.lcssa.i29, 0
  br i1 %.not.i33, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge83.i28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.ln = add i32 %.057.lcssa.i32, 1              ; 2 uses
  %i.lo = tail call noundef i32 @llvm.bswap.i32(i32 %i.ln)
  store i32 %i.lo, ptr %i.ig, align 1
  %i.lp = icmp eq i32 %i.ln, 0
  br i1 %i.lp, label %bb.n, label %iter.check224

bb.n:                                             ; preds = %bb.m
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !76
  %i.ls = zext i8 %i.lr to i32
  %i.lt = add nuw nsw i32 %i.ls, 1                ; 2 uses
  %i.lu = trunc i32 %i.lt to i8
  store i8 %i.lu, ptr %i.lq, align 1, !tbaa !76
  %i.lv = lshr i32 %i.lt, 8
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !76
  %i.ly = zext i8 %i.lx to i32
  %i.lz = add nuw nsw i32 %i.lv, %i.ly            ; 2 uses
  %i.ma = trunc i32 %i.lz to i8
  store i8 %i.ma, ptr %i.lw, align 1, !tbaa !76
  %i.mb = lshr i32 %i.lz, 8
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !76
  %i.me = zext i8 %i.md to i32
  %i.mf = add nuw nsw i32 %i.mb, %i.me            ; 2 uses
  %i.mg = trunc i32 %i.mf to i8
  store i8 %i.mg, ptr %i.mc, align 1, !tbaa !76
  %i.mh = lshr i32 %i.mf, 8
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !76
  %i.mk = zext i8 %i.mj to i32
  %i.ml = add nuw nsw i32 %i.mh, %i.mk            ; 2 uses
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %i.mi, align 1, !tbaa !76
  %i.mn = lshr i32 %i.ml, 8
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !76
  %i.mq = zext i8 %i.mp to i32
  %i.mr = add nuw nsw i32 %i.mn, %i.mq            ; 2 uses
  %i.ms = trunc i32 %i.mr to i8
  store i8 %i.ms, ptr %i.mo, align 1, !tbaa !76
  %i.mt = lshr i32 %i.mr, 8
  %i.mu = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !76
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nuw nsw i32 %i.mt, %i.mw            ; 2 uses
  %i.my = trunc i32 %i.mx to i8
  store i8 %i.my, ptr %i.mu, align 1, !tbaa !76
  %i.mz = lshr i32 %i.mx, 8
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !76
  %i.nc = zext i8 %i.nb to i32
  %i.nd = add nuw nsw i32 %i.mz, %i.nc            ; 2 uses
  %i.ne = trunc i32 %i.nd to i8
  store i8 %i.ne, ptr %i.na, align 1, !tbaa !76
  %i.nf = lshr i32 %i.nd, 8
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !76
  %i.ni = zext i8 %i.nh to i32
  %i.nj = add nuw nsw i32 %i.nf, %i.ni            ; 2 uses
  %i.nk = trunc i32 %i.nj to i8
  store i8 %i.nk, ptr %i.ng, align 1, !tbaa !76
  %i.nl = lshr i32 %i.nj, 8
  %i.nm = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !76
  %i.no = zext i8 %i.nn to i32
  %i.np = add nuw nsw i32 %i.nl, %i.no            ; 2 uses
  %i.nq = trunc i32 %i.np to i8
  store i8 %i.nq, ptr %i.nm, align 1, !tbaa !76
  %i.nr = lshr i32 %i.np, 8
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !76
  %i.nu = zext i8 %i.nt to i32
  %i.nv = add nuw nsw i32 %i.nr, %i.nu            ; 2 uses
  %i.nw = trunc i32 %i.nv to i8
  store i8 %i.nw, ptr %i.ns, align 1, !tbaa !76
  %i.nx = lshr i32 %i.nv, 8
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !76
  %i.oa = zext i8 %i.nz to i32
  %i.ob = add nuw nsw i32 %i.nx, %i.oa            ; 2 uses
  %i.oc = trunc i32 %i.ob to i8
  store i8 %i.oc, ptr %i.ny, align 1, !tbaa !76
  %i.od = lshr i32 %i.ob, 8
  %i.oe = load i8, ptr %4, align 1, !tbaa !76
  %i.of = trunc nuw nsw i32 %i.od to i8
  %i.og = add i8 %i.oe, %i.of
  store i8 %i.og, ptr %4, align 1, !tbaa !76
  br label %iter.check224

iter.check224:                                    ; preds = %bb.n, %bb.m
  %min.iters.check208 = icmp samesign ult i64 %.165.lcssa.i29, 8
  br i1 %min.iters.check208, label %vec.epilog.scalar.ph225.preheader, label %vector.scevcheck201

vector.scevcheck201:                              ; preds = %iter.check224
  %i.oh = add nsw i64 %.165.lcssa.i29, -1         ; 2 uses
  %i.oi = trunc i64 %i.oh to i32
  %i.oj = xor i32 %.058.lcssa.i26, -1
  %i.ok = icmp ult i32 %i.oj, %i.oi
  %i.ol = icmp ugt i64 %i.oh, 4294967295
  %i.om = or i1 %i.ok, %i.ol
  br i1 %i.om, label %vec.epilog.scalar.ph225.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %vector.scevcheck201
  %i.on = sub i64 %.161.lcssa.i31204, %.163.lcssa.i30203
  %diff.check205 = icmp ugt i64 %i.on, -32
  %i.oo = sub i64 %i.a, %.163.lcssa.i30203
  %diff.check206 = icmp ugt i64 %i.oo, -32
  %conflict.rdx207 = or i1 %diff.check205, %diff.check206
  br i1 %conflict.rdx207, label %vec.epilog.scalar.ph225.preheader, label %vec.epilog.ph228

vec.epilog.ph228:                                 ; preds = %vector.memcheck202
  %n.vec229 = and i64 %.165.lcssa.i29, 8          ; 3 uses
  %i.op = trunc nuw nsw i64 %n.vec229 to i32
  %i.oq = add i32 %.058.lcssa.i26, %i.op          ; 2 uses
  %i.or = and i64 %.165.lcssa.i29, 7
  br label %vec.epilog.vector.body230

vec.epilog.vector.body230:                        ; preds = %vec.epilog.vector.body230, %vec.epilog.ph228
  %index231 = phi i64 [ 0, %vec.epilog.ph228 ], [ %index.next234, %vec.epilog.vector.body230 ] ; 2 uses
  %i.os = trunc i64 %index231 to i32
  %i.ot = add i32 %.058.lcssa.i26, %i.os
  %i.ou = zext i32 %i.ot to i64                   ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.ou
  %wide.load232 = load <8 x i8>, ptr %i.ov, align 1, !tbaa !76
  %i.ow = getelementptr inbounds nuw i8, ptr %5, i64 %i.ou
  %wide.load233 = load <8 x i8>, ptr %i.ow, align 1, !tbaa !76
  %8 = xor <8 x i8> %wide.load233, %wide.load232
  %i.ox = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.ou
  store <8 x i8> %8, ptr %i.ox, align 1, !tbaa !76
  %index.next234 = add nuw i64 %index231, 8       ; 2 uses
  %i.oy = icmp eq i64 %index.next234, %n.vec229
  br i1 %i.oy, label %vec.epilog.middle.block235, label %vec.epilog.vector.body230, !llvm.loop !658

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body230
  %cmp.n236 = icmp eq i64 %.165.lcssa.i29, %n.vec229
  br i1 %cmp.n236, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph225.preheader

vec.epilog.scalar.ph225.preheader:                ; preds = %vector.memcheck202, %vector.scevcheck201, %iter.check224, %vec.epilog.middle.block235
  %.15989.i34.ph = phi i32 [ %.058.lcssa.i26, %vector.scevcheck201 ], [ %.058.lcssa.i26, %vector.memcheck202 ], [ %.058.lcssa.i26, %iter.check224 ], [ %i.oq, %vec.epilog.middle.block235 ] ; 3 uses
  %.26688.i35.ph = phi i64 [ %.165.lcssa.i29, %vector.scevcheck201 ], [ %.165.lcssa.i29, %vector.memcheck202 ], [ %.165.lcssa.i29, %iter.check224 ], [ %i.or, %vec.epilog.middle.block235 ] ; 4 uses
  %xtraiter302 = and i64 %.26688.i35.ph, 1
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %vec.epilog.scalar.ph225.prol.loopexit, label %vec.epilog.scalar.ph225.prol

vec.epilog.scalar.ph225.prol:                     ; preds = %vec.epilog.scalar.ph225.preheader
  %i.oz = add nsw i64 %.26688.i35.ph, -1
  %i.pa = zext i32 %.15989.i34.ph to i64          ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !76
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 %i.pa
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !76
  %i.pf = xor i8 %i.pe, %i.pc
  %i.pg = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.pa
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !76
  %i.ph = add i32 %.15989.i34.ph, 1               ; 2 uses
  br label %vec.epilog.scalar.ph225.prol.loopexit

vec.epilog.scalar.ph225.prol.loopexit:            ; preds = %vec.epilog.scalar.ph225.prol, %vec.epilog.scalar.ph225.preheader
  %.lcssa285.unr = phi i32 [ poison, %vec.epilog.scalar.ph225.preheader ], [ %i.ph, %vec.epilog.scalar.ph225.prol ]
  %.15989.i34.unr = phi i32 [ %.15989.i34.ph, %vec.epilog.scalar.ph225.preheader ], [ %i.ph, %vec.epilog.scalar.ph225.prol ]
  %.26688.i35.unr = phi i64 [ %.26688.i35.ph, %vec.epilog.scalar.ph225.preheader ], [ %i.oz, %vec.epilog.scalar.ph225.prol ]
  %i.pi = icmp eq i64 %.26688.i35.ph, 1
  br i1 %i.pi, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph225

vec.epilog.scalar.ph225:                          ; preds = %vec.epilog.scalar.ph225.prol.loopexit, %vec.epilog.scalar.ph225
  %.15989.i34 = phi i32 [ %i.pz, %vec.epilog.scalar.ph225 ], [ %.15989.i34.unr, %vec.epilog.scalar.ph225.prol.loopexit ] ; 3 uses
  %.26688.i35 = phi i64 [ %i.pr, %vec.epilog.scalar.ph225 ], [ %.26688.i35.unr, %vec.epilog.scalar.ph225.prol.loopexit ]
  %i.pj = zext i32 %.15989.i34 to i64             ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !76
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 %i.pj
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !76
  %i.po = xor i8 %i.pn, %i.pl
  %i.pp = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.pj
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !76
  %i.pq = add i32 %.15989.i34, 1
  %i.pr = add i64 %.26688.i35, -2                 ; 2 uses
  %i.ps = zext i32 %i.pq to i64                   ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !76
  %i.pv = getelementptr inbounds nuw i8, ptr %5, i64 %i.ps
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !76
  %i.px = xor i8 %i.pw, %i.pu
  %i.py = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.ps
  store i8 %i.px, ptr %i.py, align 1, !tbaa !76
  %i.pz = add i32 %.15989.i34, 2                  ; 2 uses
  %.not68.i36.1 = icmp eq i64 %i.pr, 0
  br i1 %.not68.i36.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph225, !llvm.loop !659

bb.o:                                             ; preds = %bb.h
  br i1 %i.hs, label %.lr.ph.i76, label %._crit_edge.i52

.lr.ph.i76:                                       ; preds = %bb.o, %.lr.ph.i76
  %.05873.i77 = phi i32 [ %i.qj, %.lr.ph.i76 ], [ %i.hp, %bb.o ] ; 2 uses
  %.06072.i78 = phi ptr [ %i.qa, %.lr.ph.i76 ], [ %0, %bb.o ] ; 2 uses
  %.06271.i79 = phi ptr [ %i.qg, %.lr.ph.i76 ], [ %1, %bb.o ] ; 2 uses
  %.06470.i80 = phi i64 [ %i.qh, %.lr.ph.i76 ], [ %2, %bb.o ]
  %i.qa = getelementptr inbounds nuw i8, ptr %.06072.i78, i64 1 ; 2 uses
  %i.qb = load i8, ptr %.06072.i78, align 1, !tbaa !76
  %i.qc = zext i32 %.05873.i77 to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %5, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !76
  %i.qf = xor i8 %i.qe, %i.qb
  %i.qg = getelementptr inbounds nuw i8, ptr %.06271.i79, i64 1 ; 2 uses
  store i8 %i.qf, ptr %.06271.i79, align 1, !tbaa !76
  %i.qh = add i64 %.06470.i80, -1                 ; 3 uses
  %i.qi = add i32 %.05873.i77, 1
  %i.qj = and i32 %i.qi, 15                       ; 3 uses
  %i.qk = icmp ne i32 %i.qj, 0
  %i.ql = icmp ne i64 %i.qh, 0
  %i.qm = select i1 %i.qk, i1 %i.ql, i1 false
  br i1 %i.qm, label %.lr.ph.i76, label %._crit_edge.i52, !llvm.loop !2

._crit_edge.i52:                                  ; preds = %.lr.ph.i76, %bb.o
  %.064.lcssa.i53 = phi i64 [ %2, %bb.o ], [ %i.qh, %.lr.ph.i76 ] ; 3 uses
  %.062.lcssa.i54 = phi ptr [ %1, %bb.o ], [ %i.qg, %.lr.ph.i76 ] ; 2 uses
  %.060.lcssa.i55 = phi ptr [ %0, %bb.o ], [ %i.qa, %.lr.ph.i76 ] ; 2 uses
  %.058.lcssa.i56 = phi i32 [ %i.hp, %bb.o ], [ %i.qj, %.lr.ph.i76 ] ; 7 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.0.copyload.i.i57 = load i32, ptr %i.qn, align 1
  %i.qo = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i57) ; 2 uses
  %i.qp = icmp ugt i64 %.064.lcssa.i53, 15
  br i1 %i.qp, label %.lr.ph82.i68, label %._crit_edge83.i58

.lr.ph82.i68:                                     ; preds = %._crit_edge.i52
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph82.i68
  %.05780.i69 = phi i32 [ %i.qo, %.lr.ph82.i68 ], [ %spec.select.i74, %bb.r ]
  %.16179.i70 = phi ptr [ %.060.lcssa.i55, %.lr.ph82.i68 ], [ %i.ts, %bb.r ] ; 2 uses
  %.16378.i71 = phi ptr [ %.062.lcssa.i54, %.lr.ph82.i68 ], [ %i.tr, %bb.r ] ; 2 uses
  %.16577.i72 = phi i64 [ %.064.lcssa.i53, %.lr.ph82.i68 ], [ %i.tq, %bb.r ] ; 2 uses
  %i.rb = lshr i64 %.16577.i72, 4
  %spec.store.select.i73 = tail call i64 @llvm.umin.i64(i64 %i.rb, i64 268435456) ; 3 uses
  %i.rc = trunc nuw nsw i64 %spec.store.select.i73 to i32
  %i.rd = add i32 %.05780.i69, %i.rc              ; 2 uses
  %i.re = zext i32 %i.rd to i64                   ; 2 uses
  %i.rf = icmp samesign ugt i64 %spec.store.select.i73, %i.re ; 2 uses
  %spec.select.i74 = select i1 %i.rf, i32 0, i32 %i.rd ; 4 uses
  %i.rg = select i1 %i.rf, i64 %i.re, i64 0
  %spec.select69.i75 = sub nuw nsw i64 %spec.store.select.i73, %i.rg ; 2 uses
  tail call void @aes_nohw_ctr32_encrypt_blocks(ptr noundef readonly %.16179.i70, ptr noundef %.16378.i71, i64 noundef %spec.select69.i75, ptr noundef readonly %3, ptr noundef nonnull readonly %4)
  %i.rh = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select.i74)
  store i32 %i.rh, ptr %i.qn, align 1
  %i.ri = icmp eq i32 %spec.select.i74, 0
  br i1 %i.ri, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.rj = load i8, ptr %i.qq, align 1, !tbaa !76
  %i.rk = zext i8 %i.rj to i32
  %i.rl = add nuw nsw i32 %i.rk, 1                ; 2 uses
  %i.rm = trunc i32 %i.rl to i8
  store i8 %i.rm, ptr %i.qq, align 1, !tbaa !76
  %i.rn = lshr i32 %i.rl, 8
  %i.ro = load i8, ptr %i.qr, align 1, !tbaa !76
  %i.rp = zext i8 %i.ro to i32
  %i.rq = add nuw nsw i32 %i.rn, %i.rp            ; 2 uses
  %i.rr = trunc i32 %i.rq to i8
  store i8 %i.rr, ptr %i.qr, align 1, !tbaa !76
  %i.rs = lshr i32 %i.rq, 8
  %i.rt = load i8, ptr %i.qs, align 1, !tbaa !76
  %i.ru = zext i8 %i.rt to i32
  %i.rv = add nuw nsw i32 %i.rs, %i.ru            ; 2 uses
  %i.rw = trunc i32 %i.rv to i8
  store i8 %i.rw, ptr %i.qs, align 1, !tbaa !76
  %i.rx = lshr i32 %i.rv, 8
  %i.ry = load i8, ptr %i.qt, align 1, !tbaa !76
  %i.rz = zext i8 %i.ry to i32
  %i.sa = add nuw nsw i32 %i.rx, %i.rz            ; 2 uses
  %i.sb = trunc i32 %i.sa to i8
  store i8 %i.sb, ptr %i.qt, align 1, !tbaa !76
  %i.sc = lshr i32 %i.sa, 8
  %i.sd = load i8, ptr %i.qu, align 1, !tbaa !76
  %i.se = zext i8 %i.sd to i32
  %i.sf = add nuw nsw i32 %i.sc, %i.se            ; 2 uses
  %i.sg = trunc i32 %i.sf to i8
  store i8 %i.sg, ptr %i.qu, align 1, !tbaa !76
  %i.sh = lshr i32 %i.sf, 8
  %i.si = load i8, ptr %i.qv, align 1, !tbaa !76
  %i.sj = zext i8 %i.si to i32
  %i.sk = add nuw nsw i32 %i.sh, %i.sj            ; 2 uses
  %i.sl = trunc i32 %i.sk to i8
  store i8 %i.sl, ptr %i.qv, align 1, !tbaa !76
  %i.sm = lshr i32 %i.sk, 8
  %i.sn = load i8, ptr %i.qw, align 1, !tbaa !76
  %i.so = zext i8 %i.sn to i32
  %i.sp = add nuw nsw i32 %i.sm, %i.so            ; 2 uses
  %i.sq = trunc i32 %i.sp to i8
  store i8 %i.sq, ptr %i.qw, align 1, !tbaa !76
  %i.sr = lshr i32 %i.sp, 8
  %i.ss = load i8, ptr %i.qx, align 1, !tbaa !76
  %i.st = zext i8 %i.ss to i32
  %i.su = add nuw nsw i32 %i.sr, %i.st            ; 2 uses
  %i.sv = trunc i32 %i.su to i8
  store i8 %i.sv, ptr %i.qx, align 1, !tbaa !76
  %i.sw = lshr i32 %i.su, 8
  %i.sx = load i8, ptr %i.qy, align 1, !tbaa !76
  %i.sy = zext i8 %i.sx to i32
  %i.sz = add nuw nsw i32 %i.sw, %i.sy            ; 2 uses
  %i.ta = trunc i32 %i.sz to i8
  store i8 %i.ta, ptr %i.qy, align 1, !tbaa !76
  %i.tb = lshr i32 %i.sz, 8
  %i.tc = load i8, ptr %i.qz, align 1, !tbaa !76
  %i.td = zext i8 %i.tc to i32
  %i.te = add nuw nsw i32 %i.tb, %i.td            ; 2 uses
  %i.tf = trunc i32 %i.te to i8
  store i8 %i.tf, ptr %i.qz, align 1, !tbaa !76
  %i.tg = lshr i32 %i.te, 8
  %i.th = load i8, ptr %i.ra, align 1, !tbaa !76
  %i.ti = zext i8 %i.th to i32
  %i.tj = add nuw nsw i32 %i.tg, %i.ti            ; 2 uses
  %i.tk = trunc i32 %i.tj to i8
  store i8 %i.tk, ptr %i.ra, align 1, !tbaa !76
  %i.tl = lshr i32 %i.tj, 8
  %i.tm = load i8, ptr %4, align 1, !tbaa !76
  %i.tn = trunc nuw nsw i32 %i.tl to i8
  %i.to = add i8 %i.tm, %i.tn
  store i8 %i.to, ptr %4, align 1, !tbaa !76
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.tp = shl nuw nsw i64 %spec.select69.i75, 4   ; 3 uses
  %i.tq = sub i64 %.16577.i72, %i.tp              ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.16378.i71, i64 %i.tp ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.16179.i70, i64 %i.tp ; 2 uses
  %i.tt = icmp ugt i64 %i.tq, 15
  br i1 %i.tt, label %bb.p, label %._crit_edge83.i58, !llvm.loop !3

._crit_edge83.i58:                                ; preds = %bb.r, %._crit_edge.i52
  %.165.lcssa.i59 = phi i64 [ %.064.lcssa.i53, %._crit_edge.i52 ], [ %i.tq, %bb.r ] ; 9 uses
  %.163.lcssa.i60 = phi ptr [ %.062.lcssa.i54, %._crit_edge.i52 ], [ %i.tr, %bb.r ] ; 5 uses
  %.161.lcssa.i61 = phi ptr [ %.060.lcssa.i55, %._crit_edge.i52 ], [ %i.ts, %bb.r ] ; 5 uses
  %.057.lcssa.i62 = phi i32 [ %i.qo, %._crit_edge.i52 ], [ %spec.select.i74, %bb.r ]
  %.163.lcssa.i60241 = ptrtoaddr ptr %.163.lcssa.i60 to i64 ; 2 uses
  %.161.lcssa.i61242 = ptrtoaddr ptr %.161.lcssa.i61 to i64
  %.not.i63 = icmp eq i64 %.165.lcssa.i59, 0
  br i1 %.not.i63, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge83.i58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @aes_nohw_ctr32_encrypt_blocks(ptr noundef nonnull readonly %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef readonly %3, ptr noundef nonnull readonly %4)
  %i.tu = add i32 %.057.lcssa.i62, 1              ; 2 uses
  %i.tv = tail call noundef i32 @llvm.bswap.i32(i32 %i.tu)
  store i32 %i.tv, ptr %i.qn, align 1
  %i.tw = icmp eq i32 %i.tu, 0
  br i1 %i.tw, label %bb.t, label %iter.check262

bb.t:                                             ; preds = %bb.s
  %i.tx = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !76
  %i.tz = zext i8 %i.ty to i32
  %i.ua = add nuw nsw i32 %i.tz, 1                ; 2 uses
  %i.ub = trunc i32 %i.ua to i8
  store i8 %i.ub, ptr %i.tx, align 1, !tbaa !76
  %i.uc = lshr i32 %i.ua, 8
  %i.ud = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !76
  %i.uf = zext i8 %i.ue to i32
  %i.ug = add nuw nsw i32 %i.uc, %i.uf            ; 2 uses
  %i.uh = trunc i32 %i.ug to i8
  store i8 %i.uh, ptr %i.ud, align 1, !tbaa !76
  %i.ui = lshr i32 %i.ug, 8
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !76
  %i.ul = zext i8 %i.uk to i32
  %i.um = add nuw nsw i32 %i.ui, %i.ul            ; 2 uses
  %i.un = trunc i32 %i.um to i8
  store i8 %i.un, ptr %i.uj, align 1, !tbaa !76
  %i.uo = lshr i32 %i.um, 8
  %i.up = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !76
  %i.ur = zext i8 %i.uq to i32
  %i.us = add nuw nsw i32 %i.uo, %i.ur            ; 2 uses
  %i.ut = trunc i32 %i.us to i8
  store i8 %i.ut, ptr %i.up, align 1, !tbaa !76
  %i.uu = lshr i32 %i.us, 8
  %i.uv = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !76
  %i.ux = zext i8 %i.uw to i32
  %i.uy = add nuw nsw i32 %i.uu, %i.ux            ; 2 uses
  %i.uz = trunc i32 %i.uy to i8
  store i8 %i.uz, ptr %i.uv, align 1, !tbaa !76
  %i.va = lshr i32 %i.uy, 8
  %i.vb = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !76
  %i.vd = zext i8 %i.vc to i32
  %i.ve = add nuw nsw i32 %i.va, %i.vd            ; 2 uses
  %i.vf = trunc i32 %i.ve to i8
  store i8 %i.vf, ptr %i.vb, align 1, !tbaa !76
  %i.vg = lshr i32 %i.ve, 8
  %i.vh = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !76
  %i.vj = zext i8 %i.vi to i32
  %i.vk = add nuw nsw i32 %i.vg, %i.vj            ; 2 uses
  %i.vl = trunc i32 %i.vk to i8
  store i8 %i.vl, ptr %i.vh, align 1, !tbaa !76
  %i.vm = lshr i32 %i.vk, 8
  %i.vn = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !76
  %i.vp = zext i8 %i.vo to i32
  %i.vq = add nuw nsw i32 %i.vm, %i.vp            ; 2 uses
  %i.vr = trunc i32 %i.vq to i8
  store i8 %i.vr, ptr %i.vn, align 1, !tbaa !76
  %i.vs = lshr i32 %i.vq, 8
  %i.vt = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !76
  %i.vv = zext i8 %i.vu to i32
  %i.vw = add nuw nsw i32 %i.vs, %i.vv            ; 2 uses
  %i.vx = trunc i32 %i.vw to i8
  store i8 %i.vx, ptr %i.vt, align 1, !tbaa !76
  %i.vy = lshr i32 %i.vw, 8
  %i.vz = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !76
  %i.wb = zext i8 %i.wa to i32
  %i.wc = add nuw nsw i32 %i.vy, %i.wb            ; 2 uses
  %i.wd = trunc i32 %i.wc to i8
  store i8 %i.wd, ptr %i.vz, align 1, !tbaa !76
  %i.we = lshr i32 %i.wc, 8
  %i.wf = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !76
  %i.wh = zext i8 %i.wg to i32
  %i.wi = add nuw nsw i32 %i.we, %i.wh            ; 2 uses
  %i.wj = trunc i32 %i.wi to i8
  store i8 %i.wj, ptr %i.wf, align 1, !tbaa !76
  %i.wk = lshr i32 %i.wi, 8
  %i.wl = load i8, ptr %4, align 1, !tbaa !76
  %i.wm = trunc nuw nsw i32 %i.wk to i8
  %i.wn = add i8 %i.wl, %i.wm
  store i8 %i.wn, ptr %4, align 1, !tbaa !76
  br label %iter.check262

iter.check262:                                    ; preds = %bb.t, %bb.s
  %min.iters.check246 = icmp samesign ult i64 %.165.lcssa.i59, 8
  br i1 %min.iters.check246, label %vec.epilog.scalar.ph263.preheader, label %vector.scevcheck239

vector.scevcheck239:                              ; preds = %iter.check262
  %i.wo = add nsw i64 %.165.lcssa.i59, -1         ; 2 uses
  %i.wp = trunc i64 %i.wo to i32
  %i.wq = xor i32 %.058.lcssa.i56, -1
  %i.wr = icmp ult i32 %i.wq, %i.wp
  %i.ws = icmp ugt i64 %i.wo, 4294967295
  %i.wt = or i1 %i.wr, %i.ws
  br i1 %i.wt, label %vec.epilog.scalar.ph263.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %vector.scevcheck239
  %i.wu = sub i64 %.161.lcssa.i61242, %.163.lcssa.i60241
  %diff.check243 = icmp ugt i64 %i.wu, -32
  %i.wv = sub i64 %i.a, %.163.lcssa.i60241
  %diff.check244 = icmp ugt i64 %i.wv, -32
  %conflict.rdx245 = or i1 %diff.check243, %diff.check244
  br i1 %conflict.rdx245, label %vec.epilog.scalar.ph263.preheader, label %vec.epilog.ph266

vec.epilog.ph266:                                 ; preds = %vector.memcheck240
  %n.vec267 = and i64 %.165.lcssa.i59, 8          ; 3 uses
  %i.ww = trunc nuw nsw i64 %n.vec267 to i32
  %i.wx = add i32 %.058.lcssa.i56, %i.ww          ; 2 uses
  %i.wy = and i64 %.165.lcssa.i59, 7
  br label %vec.epilog.vector.body268

vec.epilog.vector.body268:                        ; preds = %vec.epilog.vector.body268, %vec.epilog.ph266
  %index269 = phi i64 [ 0, %vec.epilog.ph266 ], [ %index.next272, %vec.epilog.vector.body268 ] ; 2 uses
  %i.wz = trunc i64 %index269 to i32
  %i.xa = add i32 %.058.lcssa.i56, %i.wz
  %i.xb = zext i32 %i.xa to i64                   ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xb
  %wide.load270 = load <8 x i8>, ptr %i.xc, align 1, !tbaa !76
  %i.xd = getelementptr inbounds nuw i8, ptr %5, i64 %i.xb
  %wide.load271 = load <8 x i8>, ptr %i.xd, align 1, !tbaa !76
  %9 = xor <8 x i8> %wide.load271, %wide.load270
  %i.xe = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xb
  store <8 x i8> %9, ptr %i.xe, align 1, !tbaa !76
  %index.next272 = add nuw i64 %index269, 8       ; 2 uses
  %i.xf = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.xf, label %vec.epilog.middle.block273, label %vec.epilog.vector.body268, !llvm.loop !660

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body268
  %cmp.n274 = icmp eq i64 %.165.lcssa.i59, %n.vec267
  br i1 %cmp.n274, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph263.preheader

vec.epilog.scalar.ph263.preheader:                ; preds = %vector.memcheck240, %vector.scevcheck239, %iter.check262, %vec.epilog.middle.block273
  %.15989.i64.ph = phi i32 [ %.058.lcssa.i56, %vector.scevcheck239 ], [ %.058.lcssa.i56, %vector.memcheck240 ], [ %.058.lcssa.i56, %iter.check262 ], [ %i.wx, %vec.epilog.middle.block273 ] ; 3 uses
  %.26688.i65.ph = phi i64 [ %.165.lcssa.i59, %vector.scevcheck239 ], [ %.165.lcssa.i59, %vector.memcheck240 ], [ %.165.lcssa.i59, %iter.check262 ], [ %i.wy, %vec.epilog.middle.block273 ] ; 4 uses
  %xtraiter304 = and i64 %.26688.i65.ph, 1
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol

vec.epilog.scalar.ph263.prol:                     ; preds = %vec.epilog.scalar.ph263.preheader
  %i.xg = add nsw i64 %.26688.i65.ph, -1
  %i.xh = zext i32 %.15989.i64.ph to i64          ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xh
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !76
  %i.xk = getelementptr inbounds nuw i8, ptr %5, i64 %i.xh
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !76
  %i.xm = xor i8 %i.xl, %i.xj
  %i.xn = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xh
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !76
  %i.xo = add i32 %.15989.i64.ph, 1               ; 2 uses
  br label %vec.epilog.scalar.ph263.prol.loopexit

vec.epilog.scalar.ph263.prol.loopexit:            ; preds = %vec.epilog.scalar.ph263.prol, %vec.epilog.scalar.ph263.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph263.preheader ], [ %i.xo, %vec.epilog.scalar.ph263.prol ]
  %.15989.i64.unr = phi i32 [ %.15989.i64.ph, %vec.epilog.scalar.ph263.preheader ], [ %i.xo, %vec.epilog.scalar.ph263.prol ]
  %.26688.i65.unr = phi i64 [ %.26688.i65.ph, %vec.epilog.scalar.ph263.preheader ], [ %i.xg, %vec.epilog.scalar.ph263.prol ]
  %i.xp = icmp eq i64 %.26688.i65.ph, 1
  br i1 %i.xp, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph263

vec.epilog.scalar.ph263:                          ; preds = %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263
  %.15989.i64 = phi i32 [ %i.yg, %vec.epilog.scalar.ph263 ], [ %.15989.i64.unr, %vec.epilog.scalar.ph263.prol.loopexit ] ; 3 uses
  %.26688.i65 = phi i64 [ %i.xy, %vec.epilog.scalar.ph263 ], [ %.26688.i65.unr, %vec.epilog.scalar.ph263.prol.loopexit ]
  %i.xq = zext i32 %.15989.i64 to i64             ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xq
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !76
  %i.xt = getelementptr inbounds nuw i8, ptr %5, i64 %i.xq
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !76
  %i.xv = xor i8 %i.xu, %i.xs
  %i.xw = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xq
  store i8 %i.xv, ptr %i.xw, align 1, !tbaa !76
  %i.xx = add i32 %.15989.i64, 1
  %i.xy = add i64 %.26688.i65, -2                 ; 2 uses
  %i.xz = zext i32 %i.xx to i64                   ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !76
  %i.yc = getelementptr inbounds nuw i8, ptr %5, i64 %i.xz
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !76
  %i.ye = xor i8 %i.yd, %i.yb
  %i.yf = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xz
  store i8 %i.ye, ptr %i.yf, align 1, !tbaa !76
  %i.yg = add i32 %.15989.i64, 2                  ; 2 uses
  %.not68.i66.1 = icmp eq i64 %i.xy, 0
  br i1 %.not68.i66.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph263, !llvm.loop !661

CRYPTO_ctr128_encrypt_ctr32.exit:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph225.prol.loopexit, %vec.epilog.scalar.ph225, %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263, %vec.epilog.middle.block, %vec.epilog.middle.block235, %vec.epilog.middle.block273, %._crit_edge83.i58, %._crit_edge83.i28, %._crit_edge83.i
  %.2.i37.sink = phi i32 [ %i.yg, %vec.epilog.scalar.ph263 ], [ %i.pz, %vec.epilog.scalar.ph225 ], [ %.058.lcssa.i, %._crit_edge83.i ], [ %.058.lcssa.i26, %._crit_edge83.i28 ], [ %.058.lcssa.i56, %._crit_edge83.i58 ], [ %i.wx, %vec.epilog.middle.block273 ], [ %i.oq, %vec.epilog.middle.block235 ], [ %i.ge, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph263.prol.loopexit ], [ %.lcssa285.unr, %vec.epilog.scalar.ph225.prol.loopexit ], [ %.lcssa294.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hn, %vec.epilog.scalar.ph ]
  store i32 %.2.i37.sink, ptr %6, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = load i32, ptr %6, align 4, !tbaa !73     ; 3 uses
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp ne i64 %2, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05873 = phi i32 [ %i.o, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.06072 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.06271 = phi ptr [ %i.l, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.06470 = phi i64 [ %i.m, %.lr.ph ], [ %2, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.06072, i64 1 ; 2 uses
  %i.g = load i8, ptr %.06072, align 1, !tbaa !76
  %i.h = zext i32 %.05873 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !76
  %i.k = xor i8 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %.06271, i64 1 ; 2 uses
  store i8 %i.k, ptr %.06271, align 1, !tbaa !76
  %i.m = add i64 %.06470, -1                      ; 3 uses
  %i.n = add i32 %.05873, 1
  %i.o = and i32 %i.n, 15                         ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp ne i64 %i.m, 0
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.064.lcssa = phi i64 [ %2, %bb.a ], [ %i.m, %.lr.ph ] ; 3 uses
  %.062.lcssa = phi ptr [ %1, %bb.a ], [ %i.l, %.lr.ph ] ; 2 uses
  %.060.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %.lr.ph ] ; 2 uses
  %.058.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.o, %.lr.ph ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.0.copyload.i = load i32, ptr %i.s, align 1
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.u = icmp ugt i64 %.064.lcssa, 15
  br i1 %i.u, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %._crit_edge
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

bb.b:                                             ; preds = %.lr.ph82, %bb.d
  %.05780 = phi i32 [ %i.t, %.lr.ph82 ], [ %spec.select, %bb.d ]
  %.16179 = phi ptr [ %.060.lcssa, %.lr.ph82 ], [ %i.cx, %bb.d ] ; 2 uses
  %.16378 = phi ptr [ %.062.lcssa, %.lr.ph82 ], [ %i.cw, %bb.d ] ; 2 uses
  %.16577 = phi i64 [ %.064.lcssa, %.lr.ph82 ], [ %i.cv, %bb.d ] ; 2 uses
  %i.ag = lshr i64 %.16577, 4
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 268435456) ; 3 uses
  %i.ah = trunc nuw nsw i64 %spec.store.select to i32
  %i.ai = add i32 %.05780, %i.ah                  ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = icmp samesign ugt i64 %spec.store.select, %i.aj ; 2 uses
  %spec.select = select i1 %i.ak, i32 0, i32 %i.ai ; 4 uses
  %i.al = select i1 %i.ak, i64 %i.aj, i64 0
  %spec.select69 = sub nuw nsw i64 %spec.store.select, %i.al ; 2 uses
  tail call void %7(ptr noundef %.16179, ptr noundef %.16378, i64 noundef %spec.select69, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select)
  store i32 %i.am, ptr %i.s, align 1
  %i.an = icmp eq i32 %spec.select, 0
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !76
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 2 uses
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.v, align 1, !tbaa !76
  %i.as = lshr i32 %i.aq, 8
  %i.at = load i8, ptr %i.w, align 1, !tbaa !76
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.as, %i.au            ; 2 uses
  %i.aw = trunc i32 %i.av to i8
  store i8 %i.aw, ptr %i.w, align 1, !tbaa !76
  %i.ax = lshr i32 %i.av, 8
  %i.ay = load i8, ptr %i.x, align 1, !tbaa !76
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.ax, %i.az            ; 2 uses
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.x, align 1, !tbaa !76
  %i.bc = lshr i32 %i.ba, 8
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !76
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.bc, %i.be            ; 2 uses
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %i.y, align 1, !tbaa !76
  %i.bh = lshr i32 %i.bf, 8
  %i.bi = load i8, ptr %i.z, align 1, !tbaa !76
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bh, %i.bj            ; 2 uses
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %i.z, align 1, !tbaa !76
  %i.bm = lshr i32 %i.bk, 8
  %i.bn = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bm, %i.bo            ; 2 uses
  %i.bq = trunc i32 %i.bp to i8
  store i8 %i.bq, ptr %i.aa, align 1, !tbaa !76
  %i.br = lshr i32 %i.bp, 8
  %i.bs = load i8, ptr %i.ab, align 1, !tbaa !76
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.ab, align 1, !tbaa !76
  %i.bw = lshr i32 %i.bu, 8
  %i.bx = load i8, ptr %i.ac, align 1, !tbaa !76
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bw, %i.by            ; 2 uses
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %i.ac, align 1, !tbaa !76
  %i.cb = lshr i32 %i.bz, 8
  %i.cc = load i8, ptr %i.ad, align 1, !tbaa !76
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cb, %i.cd            ; 2 uses
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.ad, align 1, !tbaa !76
  %i.cg = lshr i32 %i.ce, 8
  %i.ch = load i8, ptr %i.ae, align 1, !tbaa !76
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.cg, %i.ci            ; 2 uses
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %i.ae, align 1, !tbaa !76
  %i.cl = lshr i32 %i.cj, 8
  %i.cm = load i8, ptr %i.af, align 1, !tbaa !76
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cl, %i.cn            ; 2 uses
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.af, align 1, !tbaa !76
  %i.cq = lshr i32 %i.co, 8
  %i.cr = load i8, ptr %4, align 1, !tbaa !76
  %i.cs = trunc nuw nsw i32 %i.cq to i8
  %i.ct = add i8 %i.cr, %i.cs
  store i8 %i.ct, ptr %4, align 1, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cu = shl nuw nsw i64 %spec.select69, 4       ; 3 uses
  %i.cv = sub i64 %.16577, %i.cu                  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.16378, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.16179, i64 %i.cu ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, 15
  br i1 %i.cy, label %bb.b, label %._crit_edge83, !llvm.loop !3

._crit_edge83:                                    ; preds = %bb.d, %._crit_edge
  %.165.lcssa = phi i64 [ %.064.lcssa, %._crit_edge ], [ %i.cv, %bb.d ] ; 9 uses
  %.163.lcssa = phi ptr [ %.062.lcssa, %._crit_edge ], [ %i.cw, %bb.d ] ; 5 uses
  %.161.lcssa = phi ptr [ %.060.lcssa, %._crit_edge ], [ %i.cx, %bb.d ] ; 5 uses
  %.057.lcssa = phi i32 [ %i.t, %._crit_edge ], [ %spec.select, %bb.d ]
  %.163.lcssa113 = ptrtoaddr ptr %.163.lcssa to i64 ; 2 uses
  %.161.lcssa114 = ptrtoaddr ptr %.161.lcssa to i64
  %.not = icmp eq i64 %.165.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.cz = add i32 %.057.lcssa, 1                  ; 2 uses
  %i.da = tail call noundef i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %i.s, align 1
  %i.db = icmp eq i32 %i.cz, 0
  br i1 %i.db, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !76
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !76
  %i.dh = lshr i32 %i.df, 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !76
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dh, %i.dk            ; 2 uses
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %i.di, align 1, !tbaa !76
  %i.dn = lshr i32 %i.dl, 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !76
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dn, %i.dq            ; 2 uses
  %i.ds = trunc i32 %i.dr to i8
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !76
  %i.dt = lshr i32 %i.dr, 8
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !76
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dt, %i.dw            ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !76
  %i.dz = lshr i32 %i.dx, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !76
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.dz, %i.ec            ; 2 uses
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !76
  %i.ef = lshr i32 %i.ed, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !76
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.ef, %i.ei            ; 2 uses
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.eg, align 1, !tbaa !76
  %i.el = lshr i32 %i.ej, 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !76
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.el, %i.eo            ; 2 uses
  %i.eq = trunc i32 %i.ep to i8
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !76
  %i.er = lshr i32 %i.ep, 8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !76
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nuw nsw i32 %i.er, %i.eu            ; 2 uses
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.es, align 1, !tbaa !76
  %i.ex = lshr i32 %i.ev, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !76
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa            ; 2 uses
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.ey, align 1, !tbaa !76
  %i.fd = lshr i32 %i.fb, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !76
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !76
  %i.fj = lshr i32 %i.fh, 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !76
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fj, %i.fm            ; 2 uses
  %i.fo = trunc i32 %i.fn to i8
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !76
  %i.fp = lshr i32 %i.fn, 8
  %i.fq = load i8, ptr %4, align 1, !tbaa !76
  %i.fr = trunc nuw nsw i32 %i.fp to i8
  %i.fs = add i8 %i.fq, %i.fr
  store i8 %i.fs, ptr %4, align 1, !tbaa !76
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.e
  %min.iters.check = icmp samesign ult i64 %.165.lcssa, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ft = add nsw i64 %.165.lcssa, -1             ; 2 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = xor i32 %.058.lcssa, -1
  %i.fw = icmp ult i32 %i.fv, %i.fu
  %i.fx = icmp ugt i64 %i.ft, 4294967295
  %i.fy = or i1 %i.fw, %i.fx
  br i1 %i.fy, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fz = sub i64 %.161.lcssa114, %.163.lcssa113
  %diff.check = icmp ugt i64 %i.fz, -32
  %i.ga = sub i64 %i.a, %.163.lcssa113
  %diff.check115 = icmp ugt i64 %i.ga, -32
  %conflict.rdx = or i1 %diff.check, %diff.check115
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec121 = and i64 %.165.lcssa, 8              ; 3 uses
  %i.gb = trunc nuw nsw i64 %n.vec121 to i32
  %i.gc = add i32 %.058.lcssa, %i.gb              ; 2 uses
  %i.gd = and i64 %.165.lcssa, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.ge = trunc i64 %index122 to i32
  %i.gf = add i32 %.058.lcssa, %i.ge
  %i.gg = zext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gg
  %wide.load123 = load <8 x i8>, ptr %i.gh, align 1, !tbaa !76
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 %i.gg
  %wide.load124 = load <8 x i8>, ptr %i.gi, align 1, !tbaa !76
  %8 = xor <8 x i8> %wide.load124, %wide.load123
  %i.gj = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gg
  store <8 x i8> %8, ptr %i.gj, align 1, !tbaa !76
  %index.next125 = add nuw i64 %index122, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.gk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !662

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %.165.lcssa, %n.vec121
  br i1 %cmp.n126, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.15989.ph = phi i32 [ %.058.lcssa, %vector.scevcheck ], [ %.058.lcssa, %vector.memcheck ], [ %.058.lcssa, %iter.check ], [ %i.gc, %vec.epilog.middle.block ] ; 3 uses
  %.26688.ph = phi i64 [ %.165.lcssa, %vector.scevcheck ], [ %.165.lcssa, %vector.memcheck ], [ %.165.lcssa, %iter.check ], [ %i.gd, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.26688.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gl = add nsw i64 %.26688.ph, -1
  %i.gm = zext i32 %.15989.ph to i64              ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !76
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 %i.gm
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !76
  %i.gr = xor i8 %i.gq, %i.go
  %i.gs = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gm
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !76
  %i.gt = add i32 %.15989.ph, 1                   ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gt, %vec.epilog.scalar.ph.prol ]
  %.15989.unr = phi i32 [ %.15989.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gt, %vec.epilog.scalar.ph.prol ]
  %.26688.unr = phi i64 [ %.26688.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gl, %vec.epilog.scalar.ph.prol ]
  %i.gu = icmp eq i64 %.26688.ph, 1
  br i1 %i.gu, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15989 = phi i32 [ %i.hl, %vec.epilog.scalar.ph ], [ %.15989.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.26688 = phi i64 [ %i.hd, %vec.epilog.scalar.ph ], [ %.26688.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gv = zext i32 %.15989 to i64                 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !76
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 %i.gv
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !76
  %i.ha = xor i8 %i.gz, %i.gx
  %i.hb = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gv
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !76
  %i.hc = add i32 %.15989, 1
  %i.hd = add i64 %.26688, -2                     ; 2 uses
  %i.he = zext i32 %i.hc to i64                   ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !76
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 %i.he
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !76
  %i.hj = xor i8 %i.hi, %i.hg
  %i.hk = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.he
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !76
  %i.hl = add i32 %.15989, 2                      ; 2 uses
  %.not68.1 = icmp eq i64 %i.hd, 0
  br i1 %.not68.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !663

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge83
  %.2 = phi i32 [ %.058.lcssa, %._crit_edge83 ], [ %i.gc, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hl, %vec.epilog.scalar.ph ]
  store i32 %.2, ptr %6, align 4, !tbaa !73
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aes_hw_ctr32_encrypt_blocks_wrapper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #7 {
bb.a:
  tail call void @aes_hw_ctr32_encrypt_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #46
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vpaes_ctr32_encrypt_blocks_wrapper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #7 {
bb.a:
  tail call void @vpaes_ctr32_encrypt_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #46
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @aes_nohw_ctr32_encrypt_blocks_wrapper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #8 {
bb.a:
  tail call void @aes_nohw_ctr32_encrypt_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_ecb_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 3 uses
  %i.c = and i32 %i.b, 33554432
  %.not.i = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @aes_hw_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.d:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 512
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @vpaes_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.f:                                             ; preds = %bb.d
  tail call void @aes_nohw_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %AES_encrypt.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @aes_hw_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.i:                                             ; preds = %bb.g
  %i.e = and i32 %i.b, 512
  %.not9.i7 = icmp eq i32 %i.e, 0
  br i1 %.not9.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @vpaes_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.k:                                             ; preds = %bb.i
  tail call void @aes_nohw_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %AES_encrypt.exit

AES_encrypt.exit:                                 ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @aes_hw_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #46
  br label %CRYPTO_cbc128_encrypt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 512
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @aes_nohw_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %CRYPTO_cbc128_encrypt.exit

bb.e:                                             ; preds = %bb.c
  %.not23 = icmp eq i32 %5, 0
  br i1 %.not23, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %CRYPTO_cbc128_encrypt.exit, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.f
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader44.i, %AES_encrypt.exit28
  %.048.i = phi ptr [ %.04046.i, %AES_encrypt.exit28 ], [ %4, %.preheader44.i ] ; 2 uses
  %.03947.i = phi ptr [ %i.o, %AES_encrypt.exit28 ], [ %0, %.preheader44.i ] ; 3 uses
  %.04046.i = phi ptr [ %i.p, %AES_encrypt.exit28 ], [ %1, %.preheader44.i ] ; 12 uses
  %.04145.i = phi i64 [ %i.n, %AES_encrypt.exit28 ], [ %2, %.preheader44.i ]
  %.0.copyload.i.i.i = load i64, ptr %.03947.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.048.i, align 1
  %i.f = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.f, ptr %.04046.i, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.04046.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.03947.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.j, ptr %i.g, align 1
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.l = and i32 %i.k, 33554432
  %.not.i26 = icmp eq i32 %i.l, 0
  br i1 %.not.i26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @aes_hw_encrypt(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef %3) #46
  br label %AES_encrypt.exit28

bb.h:                                             ; preds = %.lr.ph.i
  %i.m = and i32 %i.k, 512
  %.not9.i27 = icmp eq i32 %i.m, 0
end_hunk_0
begin_hunk_1_@CRYPTO_cbc128_decrypt:bb.a
.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader, %.lr.ph115.prol
  %.274114.prol = phi i64 [ %i.bz, %.lr.ph115.prol ], [ %.274114.ph, %.lr.ph115.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph115.prol ], [ 0, %.lr.ph115.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 %.274114.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !76
  %i.bz = add nuw nsw i64 %.274114.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter213
  br i1 %prol.iter.cmp.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol, !llvm.loop !687

.lr.ph115.prol.loopexit:                          ; preds = %.lr.ph115.prol, %.lr.ph115.preheader
  %.274114.unr = phi i64 [ %.274114.ph, %.lr.ph115.preheader ], [ %i.bz, %.lr.ph115.prol ]
  %i.ca = sub i64 %.274114.ph, %indvars.iv.lcssa
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.loopexit, label %.lr.ph115

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.173113 = phi i64 [ %i.ct, %vec.epilog.scalar.ph ], [ %.173113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.2134, i64 %.173113
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !76
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %.173113
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !76
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 %.173113 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !76
  %i.ci = xor i8 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %.277133, i64 %.173113
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !76
  store i8 %i.cd, ptr %i.cg, align 1, !tbaa !76
  %i.ck = add nuw nsw i64 %.173113, 1             ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !76
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !76
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 %i.ck ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !76
  %i.cr = xor i8 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %.277133, i64 %i.ck
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !76
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !76
  %i.ct = add nuw nsw i64 %.173113, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ct, %.282132
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check194.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !688

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %.274114 = phi i64 [ %i.dj, %.lr.ph115 ], [ %.274114.unr, %.lr.ph115.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !76
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %.274114
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !76
  %i.cx = add nuw nsw i64 %.274114, 1             ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %i.cx
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !76
  %i.db = add nuw nsw i64 %.274114, 2             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !76
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !76
  %i.df = add nuw nsw i64 %.274114, 3             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !76
  %i.dj = add nuw nsw i64 %.274114, 4             ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %i.dj, %indvars.iv.lcssa
  br i1 %exitcond123.not.3, label %.loopexit, label %.lr.ph115, !llvm.loop !689

.loopexit:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block191, %vec.epilog.middle.block204, %.loopexit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_ofb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = load i32, ptr %5, align 4, !tbaa !73     ; 3 uses
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp ne i64 %2, 0
  %i.e = and i1 %i.d, %i.c
  br i1 %i.e, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.b, %bb.a ], [ %i.q, %.lr.ph.i ]
  %i.f = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.f, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.h, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.n, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.o, %.lr.ph.i ], [ %2, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %.03444.i, align 1, !tbaa !76
  %i.j = zext i32 %.045.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !76
  %i.m = xor i8 %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.m, ptr %.03643.i, align 1, !tbaa !76
  %i.o = add i64 %.03842.i, -1                    ; 3 uses
  %i.p = add i32 %.045.i, 1
  %i.q = and i32 %i.p, 15                         ; 3 uses
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp ne i64 %i.o, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i, label %.preheader.i, !llvm.loop !5

bb.b:                                             ; preds = %AES_encrypt.exit9, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.ad, %AES_encrypt.exit9 ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.ac, %AES_encrypt.exit9 ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.ab, %AES_encrypt.exit9 ]
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.v = and i32 %i.u, 33554432
  %.not.i7 = icmp eq i32 %i.v, 0
  br i1 %.not.i7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @aes_hw_encrypt(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  br label %AES_encrypt.exit9

bb.d:                                             ; preds = %bb.b
  %i.w = and i32 %i.u, 512
  %.not9.i8 = icmp eq i32 %i.w, 0
  br i1 %.not9.i8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @vpaes_encrypt(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  br label %AES_encrypt.exit9

bb.f:                                             ; preds = %bb.d
  tail call void @aes_nohw_encrypt(ptr noundef %4, ptr noundef %4, ptr noundef %3)
  br label %AES_encrypt.exit9

AES_encrypt.exit9:                                ; preds = %bb.c, %bb.e, %bb.f
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %4, align 1
  %i.x = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.x, ptr %.13750.i, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.z, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.g, align 1
  %i.aa = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.aa, ptr %i.y, align 1
  %i.ab = add i64 %.13949.i, -16                  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.ae = icmp ugt i64 %i.ab, 15
  br i1 %i.ae, label %bb.b, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %AES_encrypt.exit9, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.ab, %AES_encrypt.exit9 ] ; 9 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.ac, %AES_encrypt.exit9 ] ; 5 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.ad, %AES_encrypt.exit9 ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %AES_encrypt.exit9 ] ; 7 uses
  %.137.lcssa.i41 = ptrtoaddr ptr %.137.lcssa.i to i64 ; 2 uses
  %.135.lcssa.i42 = ptrtoaddr ptr %.135.lcssa.i to i64
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.ag = and i32 %i.af, 33554432
  %.not.i6 = icmp eq i32 %i.ag, 0
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @aes_hw_encrypt(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  br label %iter.check

bb.i:                                             ; preds = %bb.g
  %i.ah = and i32 %i.af, 512
  %.not9.i = icmp eq i32 %i.ah, 0
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @vpaes_encrypt(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  br label %iter.check

bb.k:                                             ; preds = %bb.i
  tail call void @aes_nohw_encrypt(ptr noundef %4, ptr noundef %4, ptr noundef %3)
  br label %iter.check

iter.check:                                       ; preds = %bb.h, %bb.j, %bb.k
  %min.iters.check = icmp samesign ult i64 %.139.lcssa.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ai = add nsw i64 %.139.lcssa.i, -1           ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = xor i32 %.1.lcssa.i, -1
  %i.al = icmp ult i32 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ai, 4294967295
  %i.an = or i1 %i.al, %i.am
  br i1 %i.an, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ao = sub i64 %.135.lcssa.i42, %.137.lcssa.i41
  %diff.check = icmp ugt i64 %i.ao, -32
  %i.ap = sub i64 %i.a, %.137.lcssa.i41
  %diff.check43 = icmp ugt i64 %i.ap, -32
  %conflict.rdx = or i1 %diff.check, %diff.check43
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec49 = and i64 %.139.lcssa.i, 8             ; 3 uses
  %i.aq = trunc nuw nsw i64 %n.vec49 to i32
  %i.ar = add i32 %.1.lcssa.i, %i.aq              ; 2 uses
  %i.as = and i64 %.139.lcssa.i, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.at = trunc i64 %index50 to i32
  %i.au = add i32 %.1.lcssa.i, %i.at
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.av
  %wide.load51 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  %wide.load52 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !76
  %6 = xor <8 x i8> %wide.load52, %wide.load51
  %i.ay = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.av
  store <8 x i8> %6, ptr %i.ay, align 1, !tbaa !76
  %index.next53 = add nuw i64 %index50, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !696

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %.139.lcssa.i, %n.vec49
  br i1 %cmp.n54, label %CRYPTO_ofb128_encrypt.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.258.i.ph = phi i32 [ %.1.lcssa.i, %vector.scevcheck ], [ %.1.lcssa.i, %vector.memcheck ], [ %.1.lcssa.i, %iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 3 uses
  %.24057.i.ph = phi i64 [ %.139.lcssa.i, %vector.scevcheck ], [ %.139.lcssa.i, %vector.memcheck ], [ %.139.lcssa.i, %iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.24057.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ba = add nsw i64 %.24057.i.ph, -1
  %i.bb = zext i32 %.258.i.ph to i64              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !76
  %i.bg = xor i8 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.bb
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !76
  %i.bi = add i32 %.258.i.ph, 1                   ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bi, %vec.epilog.scalar.ph.prol ]
  %.258.i.unr = phi i32 [ %.258.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bi, %vec.epilog.scalar.ph.prol ]
  %.24057.i.unr = phi i64 [ %.24057.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ba, %vec.epilog.scalar.ph.prol ]
  %i.bj = icmp eq i64 %.24057.i.ph, 1
  br i1 %i.bj, label %CRYPTO_ofb128_encrypt.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.258.i = phi i32 [ %i.ca, %vec.epilog.scalar.ph ], [ %.258.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.24057.i = phi i64 [ %i.bs, %vec.epilog.scalar.ph ], [ %.24057.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.bk = zext i32 %.258.i to i64                 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !76
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 %i.bk
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !76
  %i.bp = xor i8 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.bk
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !76
  %i.br = add i32 %.258.i, 1
  %i.bs = add i64 %.24057.i, -2                   ; 2 uses
  %i.bt = zext i32 %i.br to i64                   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !76
  %i.by = xor i8 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !76
  %i.ca = add i32 %.258.i, 2                      ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.bs, 0
  br i1 %.not41.i.1, label %CRYPTO_ofb128_encrypt.exit, label %vec.epilog.scalar.ph, !llvm.loop !697

CRYPTO_ofb128_encrypt.exit:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge.i
  %.3.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.ar, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ca, %vec.epilog.scalar.ph ]
  store i32 %.3.i, ptr %5, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_ofb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !73     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.038.lcssa = phi i64 [ %2, %bb.a ], [ %i.n, %.lr.ph ] ; 3 uses
  %.036.lcssa = phi ptr [ %1, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %.034.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.p, %.lr.ph ]
  %i.e = icmp ugt i64 %.038.lcssa, 15
  br i1 %i.e, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.045 = phi i32 [ %i.p, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.03444 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.03643 = phi ptr [ %i.m, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.03842 = phi i64 [ %i.n, %.lr.ph ], [ %2, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.03444, i64 1 ; 2 uses
  %i.h = load i8, ptr %.03444, align 1, !tbaa !76
  %i.i = zext i32 %.045 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !76
  %i.l = xor i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.03643, i64 1 ; 2 uses
  store i8 %i.l, ptr %.03643, align 1, !tbaa !76
  %i.n = add i64 %.03842, -1                      ; 3 uses
  %i.o = add i32 %.045, 1
  %i.p = and i32 %i.o, 15                         ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp ne i64 %i.n, 0
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %.preheader, !llvm.loop !5

bb.b:                                             ; preds = %.lr.ph52, %bb.b
  %.13551 = phi ptr [ %.034.lcssa, %.lr.ph52 ], [ %i.z, %bb.b ] ; 3 uses
  %.13750 = phi ptr [ %.036.lcssa, %.lr.ph52 ], [ %i.y, %bb.b ] ; 3 uses
  %.13949 = phi i64 [ %.038.lcssa, %.lr.ph52 ], [ %i.x, %bb.b ]
  tail call void %6(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %.0.copyload.i.i = load i64, ptr %.13551, align 1
  %.0.copyload.i7.i = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.t, ptr %.13750, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.13750, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.13551, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.v, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.w = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.w, ptr %i.u, align 1
  %i.x = add i64 %.13949, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.13750, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13551, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.139.lcssa = phi i64 [ %.038.lcssa, %.preheader ], [ %i.x, %bb.b ] ; 5 uses
  %.137.lcssa = phi ptr [ %.036.lcssa, %.preheader ], [ %i.y, %bb.b ] ; 3 uses
  %.135.lcssa = phi ptr [ %.034.lcssa, %.preheader ], [ %i.z, %bb.b ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.139.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void %6(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %xtraiter = and i64 %.139.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ab = add nsw i64 %.139.lcssa, -1
  %i.ac = zext i32 %.1.lcssa to i64               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !76
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !76
  %i.aj = add i32 %.1.lcssa, 1                    ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.258.unr = phi i32 [ %.1.lcssa, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.24057.unr = phi i64 [ %.139.lcssa, %bb.c ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %.139.lcssa, 1
  br i1 %i.ak, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258 = phi i32 [ %i.bb, %.new ], [ %.258.unr, %.prol.loopexit ] ; 3 uses
  %.24057 = phi i64 [ %i.at, %.new ], [ %.24057.unr, %.prol.loopexit ]
  %i.al = zext i32 %.258 to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !76
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !76
  %i.as = add i32 %.258, 1
  %i.at = add i64 %.24057, -2                     ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !76
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.au
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !76
  %i.bb = add i32 %.258, 2                        ; 2 uses
  %.not41.1 = icmp eq i64 %i.at, 0
  br i1 %.not41.1, label %.loopexit, label %.new, !llvm.loop !7

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  store i32 %.3, ptr %5, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_cfb1_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !73
  tail call void @CRYPTO_cfb128_1_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nonnull poison, i32 noundef %6, ptr noundef nonnull @AES_encrypt)
  store i32 %i.a, ptr %5, align 4, !tbaa !73
  ret void
end_hunk_1
begin_hunk_2_@AES_cfb8_encrypt:bb.a
  store i8 %i.r, ptr %i.l, align 1, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx.i, i64 15, i1 false)
  store i8 %i.r, ptr %.sroa.4.1..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.s = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %2
  br i1 %exitcond.not.i, label %CRYPTO_cfb128_8_encrypt.exit, label %.lr.ph.split.i, !llvm.loop !9

CRYPTO_cfb128_8_encrypt.exit:                     ; preds = %AES_encrypt.exit, %AES_encrypt.exit10, %bb.a
  store i32 %i.a, ptr %5, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cfb128_8_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.010.us = phi i64 [ %i.f, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.010.us
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #46, !inline_history !8
  %i.c = load i8, ptr %i.a, align 1, !tbaa !76    ; 2 uses
  %i.d = load i8, ptr %4, align 1, !tbaa !76
  %i.e = xor i8 %i.d, %i.c
  store i8 %i.e, ptr %i.b, align 1, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.c, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = add nuw i64 %.010.us, 1                  ; 2 uses
  %exitcond12.not = icmp eq i64 %i.f, %2
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !9

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.010 = phi i64 [ %i.l, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #46, !inline_history !8
  %i.i = load i8, ptr %i.g, align 1, !tbaa !76
  %i.j = load i8, ptr %4, align 1, !tbaa !76
  %i.k = xor i8 %i.j, %i.i                        ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.k, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.l = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = load i32, ptr %5, align 4, !tbaa !73
  store i32 %i.b, ptr %i.a, align 4, !tbaa !73
  call void @CRYPTO_cfb128_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef %6, ptr noundef nonnull @AES_encrypt)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !73
  store i32 %i.c, ptr %5, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !73     ; 5 uses
  %.not = icmp eq i32 %6, 0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c                        ; 2 uses
  br i1 %.not, label %.preheader114, label %.preheader117

.preheader117:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.preheader116

.preheader114:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph143, label %.preheader

.preheader116:                                    ; preds = %.lr.ph, %.preheader117
  %.0101.lcssa = phi i32 [ %i.a, %.preheader117 ], [ %i.ae, %.lr.ph ] ; 4 uses
  %.097.lcssa = phi i64 [ %2, %.preheader117 ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.093.lcssa = phi ptr [ %1, %.preheader117 ], [ %i.ab, %.lr.ph ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %.preheader117 ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.e = icmp ugt i64 %.097.lcssa, 15
  br i1 %i.e, label %.lr.ph131.peel, label %._crit_edge132

.lr.ph131.peel:                                   ; preds = %.preheader116
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %i.f = icmp ult i32 %.0101.lcssa, 16
  br i1 %i.f, label %.lr.ph126.peel, label %._crit_edge.peel

.lr.ph126.peel:                                   ; preds = %.lr.ph131.peel
  %i.g = zext nneg i32 %.0101.lcssa to i64        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.g
  %.0.copyload.i111.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.peel, %.0.copyload.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa, 8
  br i1 %i.l, label %.lr.ph126.1.peel, label %._crit_edge.peel

.lr.ph126.1.peel:                                 ; preds = %.lr.ph126.peel
  %indvars.iv.next.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.peel ; 2 uses
  %.0.copyload.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %indvars.iv.next.peel
  %.0.copyload.i111.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.1.peel, %.0.copyload.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv.next.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %.lr.ph126.peel, %.lr.ph126.1.peel, %.lr.ph131.peel
  %i.q = add i64 %.097.lcssa, -16                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.preheader.peel.newph, label %._crit_edge132

.lr.ph131.preheader.peel.newph:                   ; preds = %._crit_edge.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.preheader117, %.lr.ph
  %.0121 = phi ptr [ %i.v, %.lr.ph ], [ %0, %.preheader117 ] ; 2 uses
  %.093120 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %.preheader117 ] ; 2 uses
  %.097119 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %.preheader117 ]
  %.0101118 = phi i32 [ %i.ae, %.lr.ph ], [ %i.a, %.preheader117 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121, align 1, !tbaa !76
  %i.x = zext i32 %.0101118 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120, align 1, !tbaa !76
  %i.ac = add i64 %.097119, -1                    ; 3 uses
  %i.ad = add i32 %.0101118, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.preheader116, !llvm.loop !699

.lr.ph131:                                        ; preds = %.lr.ph131.preheader.peel.newph, %.lr.ph131
  %.1130 = phi ptr [ %i.ao, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.194129 = phi ptr [ %i.an, %.lr.ph131 ], [ %i.r, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.198128 = phi i64 [ %i.am, %.lr.ph131 ], [ %i.q, %.lr.ph131.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %.0.copyload.i = load i64, ptr %4, align 1
  %.0.copyload.i111 = load i64, ptr %.1130, align 1
  %i.ai = xor i64 %.0.copyload.i111, %.0.copyload.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129, align 1
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130, i64 8
  %.0.copyload.i111.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.1, %.0.copyload.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128, -16                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131, label %._crit_edge132, !llvm.loop !700

._crit_edge132:                                   ; preds = %._crit_edge.peel, %.lr.ph131, %.preheader116
  %.1102.lcssa = phi i32 [ %.0101.lcssa, %.preheader116 ], [ 0, %.lr.ph131 ], [ 0, %._crit_edge.peel ] ; 8 uses
  %.198.lcssa = phi i64 [ %.097.lcssa, %.preheader116 ], [ %i.q, %._crit_edge.peel ], [ %i.am, %.lr.ph131 ] ; 10 uses
  %.194.lcssa = phi ptr [ %.093.lcssa, %.preheader116 ], [ %i.r, %._crit_edge.peel ], [ %i.an, %.lr.ph131 ] ; 6 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader116 ], [ %i.s, %._crit_edge.peel ], [ %i.ao, %.lr.ph131 ] ; 6 uses
  %.not109 = icmp eq i64 %.198.lcssa, 0
  br i1 %.not109, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %min.iters.check = icmp samesign ult i64 %.198.lcssa, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa, -1             ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa to i64            ; 4 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.aw  ; 2 uses
  %i.ax = add nuw nsw i64 %.198.lcssa, %i.aw      ; 3 uses
  %scevgep222 = getelementptr i8, ptr %4, i64 %i.ax ; 2 uses
  %scevgep223 = getelementptr i8, ptr %.194.lcssa, i64 %i.aw ; 2 uses
  %scevgep224 = getelementptr i8, ptr %.194.lcssa, i64 %i.ax ; 2 uses
  %scevgep225 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw ; 2 uses
  %scevgep226 = getelementptr i8, ptr %.1.lcssa, i64 %i.ax ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep224
  %bound1 = icmp ult ptr %scevgep223, %scevgep222
  %found.conflict = and i1 %bound0, %bound1
  %bound0227 = icmp ult ptr %scevgep, %scevgep226
  %bound1228 = icmp ult ptr %scevgep225, %scevgep222
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx = or i1 %found.conflict, %found.conflict229
  %bound0230 = icmp ult ptr %scevgep223, %scevgep226
  %bound1231 = icmp ult ptr %scevgep225, %scevgep224
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx, %found.conflict232
  br i1 %conflict.rdx233, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec239 = and i64 %.198.lcssa, 8              ; 3 uses
  %i.ay = and i64 %.198.lcssa, 7
  %i.az = trunc nuw nsw i64 %n.vec239 to i32
  %i.ba = add i32 %.1102.lcssa, %i.az             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = trunc i64 %index240 to i32
  %i.bc = add i32 %.1102.lcssa, %i.bb
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bd
  %wide.load241 = load <8 x i8>, ptr %i.be, align 1, !tbaa !76, !alias.scope !715
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.bd ; 2 uses
  %wide.load242 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !76, !alias.scope !716, !noalias !717
  %8 = xor <8 x i8> %wide.load242, %wide.load241  ; 2 uses
  store <8 x i8> %8, ptr %i.bf, align 1, !tbaa !76, !alias.scope !716, !noalias !717
  %i.bg = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bd
  store <8 x i8> %8, ptr %i.bg, align 1, !tbaa !76, !alias.scope !718, !noalias !715
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next243, %n.vec239
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !705

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %.198.lcssa, %n.vec239
  br i1 %cmp.n244, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.299138.ph = phi i64 [ %.198.lcssa, %vector.scevcheck ], [ %.198.lcssa, %vector.memcheck ], [ %.198.lcssa, %iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.ph = phi i32 [ %.1102.lcssa, %vector.scevcheck ], [ %.1102.lcssa, %vector.memcheck ], [ %.1102.lcssa, %iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bi = add nsw i64 %.299138.ph, -1
  %i.bj = zext i32 %.3104137.ph to i64            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bj ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !76
  %i.bo = xor i8 %i.bn, %i.bl                     ; 2 uses
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bj
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !76
  %i.bq = add i32 %.3104137.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa305.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bq, %vec.epilog.scalar.ph.prol ]
  %.299138.unr = phi i64 [ %.299138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bi, %vec.epilog.scalar.ph.prol ]
  %.3104137.unr = phi i32 [ %.3104137.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bq, %vec.epilog.scalar.ph.prol ]
  %i.br = icmp eq i64 %.299138.ph, 1
  br i1 %i.br, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138 = phi i64 [ %i.ca, %vec.epilog.scalar.ph ], [ %.299138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137 = phi i32 [ %i.ci, %vec.epilog.scalar.ph ], [ %.3104137.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bs = zext i32 %.3104137 to i64               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %i.bs ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !76
  %i.bx = xor i8 %i.bw, %i.bu                     ; 2 uses
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bs
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !76
  %i.bz = add i32 %.3104137, 1
  %i.ca = add i64 %.299138, -2                    ; 2 uses
  %i.cb = zext i32 %i.bz to i64                   ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !76
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %i.cb ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !76
  %i.cg = xor i8 %i.cf, %i.cd                     ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !76
  %i.ch = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !76
  %i.ci = add i32 %.3104137, 2                    ; 2 uses
  %.not110.1 = icmp eq i64 %i.ca, 0
  br i1 %.not110.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !706

.preheader:                                       ; preds = %.lr.ph143, %.preheader114
  %.5106.lcssa = phi i32 [ %i.a, %.preheader114 ], [ %i.dj, %.lr.ph143 ] ; 4 uses
  %.3100.lcssa = phi i64 [ %2, %.preheader114 ], [ %i.dh, %.lr.ph143 ] ; 3 uses
  %.295.lcssa = phi ptr [ %1, %.preheader114 ], [ %i.dg, %.lr.ph143 ] ; 4 uses
  %.2.lcssa = phi ptr [ %0, %.preheader114 ], [ %i.dd, %.lr.ph143 ] ; 4 uses
  %i.cj = icmp ugt i64 %.3100.lcssa, 15
  br i1 %i.cj, label %.lr.ph156.peel, label %._crit_edge157

.lr.ph156.peel:                                   ; preds = %.preheader
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %i.ck = icmp ult i32 %.5106.lcssa, 16
  br i1 %i.ck, label %.lr.ph150.peel, label %._crit_edge151.peel

.lr.ph150.peel:                                   ; preds = %.lr.ph156.peel
  %i.cl = zext nneg i32 %.5106.lcssa to i64       ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cl
  %.0.copyload.i112.peel = load i64, ptr %i.cm, align 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 %i.cl ; 2 uses
  %.0.copyload.i113.peel = load i64, ptr %i.co, align 1
  %i.cp = xor i64 %.0.copyload.i113.peel, %.0.copyload.i112.peel
  store i64 %i.cp, ptr %i.cn, align 1
  store i64 %.0.copyload.i112.peel, ptr %i.co, align 1
  %i.cq = icmp ult i32 %.5106.lcssa, 8
  br i1 %i.cq, label %.lr.ph150.1.peel, label %._crit_edge151.peel

.lr.ph150.1.peel:                                 ; preds = %.lr.ph150.peel
  %indvars.iv.next182.peel = add nuw nsw i64 %i.cl, 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next182.peel
  %.0.copyload.i112.1.peel = load i64, ptr %i.cr, align 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %indvars.iv.next182.peel
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.peel ; 2 uses
  %.0.copyload.i113.1.peel = load i64, ptr %i.ct, align 1
  %i.cu = xor i64 %.0.copyload.i113.1.peel, %.0.copyload.i112.1.peel
  store i64 %i.cu, ptr %i.cs, align 1
  store i64 %.0.copyload.i112.1.peel, ptr %i.ct, align 1
  br label %._crit_edge151.peel

._crit_edge151.peel:                              ; preds = %.lr.ph150.peel, %.lr.ph150.1.peel, %.lr.ph156.peel
  %i.cv = add i64 %.3100.lcssa, -16               ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16 ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, 15
  br i1 %i.cy, label %.lr.ph156.preheader.peel.newph, label %._crit_edge157

.lr.ph156.preheader.peel.newph:                   ; preds = %._crit_edge151.peel
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156

.lr.ph143:                                        ; preds = %.preheader114, %.lr.ph143
  %.2142 = phi ptr [ %i.dd, %.lr.ph143 ], [ %0, %.preheader114 ] ; 2 uses
  %.295141 = phi ptr [ %i.dg, %.lr.ph143 ], [ %1, %.preheader114 ] ; 2 uses
  %.3100140 = phi i64 [ %i.dh, %.lr.ph143 ], [ %2, %.preheader114 ]
  %.5106139 = phi i32 [ %i.dj, %.lr.ph143 ], [ %i.a, %.preheader114 ] ; 2 uses
  %i.da = zext i32 %.5106139 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !76
  %i.dd = getelementptr inbounds nuw i8, ptr %.2142, i64 1 ; 2 uses
  %i.de = load i8, ptr %.2142, align 1, !tbaa !76 ; 2 uses
  %i.df = xor i8 %i.de, %i.dc
  %i.dg = getelementptr inbounds nuw i8, ptr %.295141, i64 1 ; 2 uses
  store i8 %i.df, ptr %.295141, align 1, !tbaa !76
  store i8 %i.de, ptr %i.db, align 1, !tbaa !76
  %i.dh = add i64 %.3100140, -1                   ; 3 uses
  %i.di = add i32 %.5106139, 1
  %i.dj = and i32 %i.di, 15                       ; 3 uses
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = icmp ne i64 %i.dh, 0
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph143, label %.preheader, !llvm.loop !707

.lr.ph156:                                        ; preds = %.lr.ph156.preheader.peel.newph, %.lr.ph156
  %.3155 = phi ptr [ %i.dt, %.lr.ph156 ], [ %i.cx, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.396154 = phi ptr [ %i.ds, %.lr.ph156 ], [ %i.cw, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.4153 = phi i64 [ %i.dr, %.lr.ph156 ], [ %i.cv, %.lr.ph156.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %.0.copyload.i112 = load i64, ptr %.3155, align 1 ; 2 uses
  %.0.copyload.i113 = load i64, ptr %4, align 1
  %i.dn = xor i64 %.0.copyload.i113, %.0.copyload.i112
  store i64 %i.dn, ptr %.396154, align 1
  store i64 %.0.copyload.i112, ptr %4, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %.3155, i64 8
  %.0.copyload.i112.1 = load i64, ptr %i.do, align 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.396154, i64 8
  %.0.copyload.i113.1 = load i64, ptr %i.cz, align 1
  %i.dq = xor i64 %.0.copyload.i113.1, %.0.copyload.i112.1
  store i64 %i.dq, ptr %i.dp, align 1
  store i64 %.0.copyload.i112.1, ptr %i.cz, align 1
  %i.dr = add i64 %.4153, -16                     ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.396154, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.3155, i64 16 ; 2 uses
  %i.du = icmp ugt i64 %i.dr, 15
  br i1 %i.du, label %.lr.ph156, label %._crit_edge157, !llvm.loop !708

._crit_edge157:                                   ; preds = %._crit_edge151.peel, %.lr.ph156, %.preheader
  %.6.lcssa = phi i32 [ %.5106.lcssa, %.preheader ], [ 0, %.lr.ph156 ], [ 0, %._crit_edge151.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.3100.lcssa, %.preheader ], [ %i.cv, %._crit_edge151.peel ], [ %i.dr, %.lr.ph156 ] ; 10 uses
  %.396.lcssa = phi ptr [ %.295.lcssa, %.preheader ], [ %i.cw, %._crit_edge151.peel ], [ %i.ds, %.lr.ph156 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.cx, %._crit_edge151.peel ], [ %i.dt, %.lr.ph156 ] ; 6 uses
  %.not107 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not107, label %.loopexit, label %iter.check282

iter.check282:                                    ; preds = %._crit_edge157
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %min.iters.check266 = icmp samesign ult i64 %.4.lcssa, 8
  br i1 %min.iters.check266, label %vec.epilog.scalar.ph283.preheader, label %vector.scevcheck247

vector.scevcheck247:                              ; preds = %iter.check282
  %i.dv = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = xor i32 %.6.lcssa, -1
  %i.dy = icmp ult i32 %i.dx, %i.dw
  %i.dz = icmp ugt i64 %i.dv, 4294967295
  %i.ea = or i1 %i.dy, %i.dz
  br i1 %i.ea, label %vec.epilog.scalar.ph283.preheader, label %vector.memcheck248

vector.memcheck248:                               ; preds = %vector.scevcheck247
  %i.eb = zext i32 %.6.lcssa to i64               ; 4 uses
  %scevgep249 = getelementptr i8, ptr %.396.lcssa, i64 %i.eb ; 2 uses
  %i.ec = add nuw nsw i64 %.4.lcssa, %i.eb        ; 3 uses
  %scevgep250 = getelementptr i8, ptr %.396.lcssa, i64 %i.ec ; 2 uses
  %scevgep251 = getelementptr i8, ptr %4, i64 %i.eb ; 2 uses
  %scevgep252 = getelementptr i8, ptr %4, i64 %i.ec ; 2 uses
  %scevgep253 = getelementptr i8, ptr %.3.lcssa, i64 %i.eb ; 2 uses
  %scevgep254 = getelementptr i8, ptr %.3.lcssa, i64 %i.ec ; 2 uses
  %bound0255 = icmp ult ptr %scevgep249, %scevgep252
  %bound1256 = icmp ult ptr %scevgep251, %scevgep250
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0258 = icmp ult ptr %scevgep249, %scevgep254
  %bound1259 = icmp ult ptr %scevgep253, %scevgep250
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %found.conflict257, %found.conflict260
  %bound0262 = icmp ult ptr %scevgep251, %scevgep254
  %bound1263 = icmp ult ptr %scevgep253, %scevgep252
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  br i1 %conflict.rdx265, label %vec.epilog.scalar.ph283.preheader, label %vec.epilog.ph286

vec.epilog.ph286:                                 ; preds = %vector.memcheck248
  %n.vec287 = and i64 %.4.lcssa, 8                ; 3 uses
  %i.ed = and i64 %.4.lcssa, 7
  %i.ee = trunc nuw nsw i64 %n.vec287 to i32
  %i.ef = add i32 %.6.lcssa, %i.ee                ; 2 uses
  br label %vec.epilog.vector.body288

vec.epilog.vector.body288:                        ; preds = %vec.epilog.vector.body288, %vec.epilog.ph286
  %index289 = phi i64 [ 0, %vec.epilog.ph286 ], [ %index.next292, %vec.epilog.vector.body288 ] ; 2 uses
  %i.eg = trunc i64 %index289 to i32
  %i.eh = add i32 %.6.lcssa, %i.eg
  %i.ei = zext i32 %i.eh to i64                   ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 %i.ei ; 2 uses
  %wide.load290 = load <8 x i8>, ptr %i.ej, align 1, !tbaa !76, !alias.scope !719, !noalias !720
  %i.ek = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ei
  %wide.load291 = load <8 x i8>, ptr %i.ek, align 1, !tbaa !76, !alias.scope !720 ; 2 uses
  %9 = xor <8 x i8> %wide.load291, %wide.load290
  %i.el = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ei
  store <8 x i8> %9, ptr %i.el, align 1, !tbaa !76, !alias.scope !721, !noalias !722
  store <8 x i8> %wide.load291, ptr %i.ej, align 1, !tbaa !76, !alias.scope !719, !noalias !720
  %index.next292 = add nuw i64 %index289, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next292, %n.vec287
  br i1 %i.em, label %vec.epilog.middle.block293, label %vec.epilog.vector.body288, !llvm.loop !713

vec.epilog.middle.block293:                       ; preds = %vec.epilog.vector.body288
  %cmp.n294 = icmp eq i64 %.4.lcssa, %n.vec287
  br i1 %cmp.n294, label %.loopexit, label %vec.epilog.scalar.ph283.preheader

vec.epilog.scalar.ph283.preheader:                ; preds = %vector.memcheck248, %vector.scevcheck247, %iter.check282, %vec.epilog.middle.block293
  %.5163.ph = phi i64 [ %.4.lcssa, %vector.scevcheck247 ], [ %.4.lcssa, %vector.memcheck248 ], [ %.4.lcssa, %iter.check282 ], [ %i.ed, %vec.epilog.middle.block293 ] ; 4 uses
  %.8162.ph = phi i32 [ %.6.lcssa, %vector.scevcheck247 ], [ %.6.lcssa, %vector.memcheck248 ], [ %.6.lcssa, %iter.check282 ], [ %i.ef, %vec.epilog.middle.block293 ] ; 3 uses
  %xtraiter315 = and i64 %.5163.ph, 1
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %vec.epilog.scalar.ph283.prol.loopexit, label %vec.epilog.scalar.ph283.prol

vec.epilog.scalar.ph283.prol:                     ; preds = %vec.epilog.scalar.ph283.preheader
  %i.en = add nsw i64 %.5163.ph, -1
  %i.eo = zext i32 %.8162.ph to i64               ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 %i.eo ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !76
  %i.er = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.eo
  %i.es = load i8, ptr %i.er, align 1, !tbaa !76  ; 2 uses
  %i.et = xor i8 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.eo
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !76
  store i8 %i.es, ptr %i.ep, align 1, !tbaa !76
  %i.ev = add i32 %.8162.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph283.prol.loopexit

vec.epilog.scalar.ph283.prol.loopexit:            ; preds = %vec.epilog.scalar.ph283.prol, %vec.epilog.scalar.ph283.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph283.preheader ], [ %i.ev, %vec.epilog.scalar.ph283.prol ]
  %.5163.unr = phi i64 [ %.5163.ph, %vec.epilog.scalar.ph283.preheader ], [ %i.en, %vec.epilog.scalar.ph283.prol ]
  %.8162.unr = phi i32 [ %.8162.ph, %vec.epilog.scalar.ph283.preheader ], [ %i.ev, %vec.epilog.scalar.ph283.prol ]
  %i.ew = icmp eq i64 %.5163.ph, 1
  br i1 %i.ew, label %.loopexit, label %vec.epilog.scalar.ph283

vec.epilog.scalar.ph283:                          ; preds = %vec.epilog.scalar.ph283.prol.loopexit, %vec.epilog.scalar.ph283
  %.5163 = phi i64 [ %i.ff, %vec.epilog.scalar.ph283 ], [ %.5163.unr, %vec.epilog.scalar.ph283.prol.loopexit ]
  %.8162 = phi i32 [ %i.fn, %vec.epilog.scalar.ph283 ], [ %.8162.unr, %vec.epilog.scalar.ph283.prol.loopexit ] ; 3 uses
  %i.ex = zext i32 %.8162 to i64                  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !76
  %i.fa = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ex
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !76  ; 2 uses
  %i.fc = xor i8 %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ex
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !76
  store i8 %i.fb, ptr %i.ey, align 1, !tbaa !76
  %i.fe = add i32 %.8162, 1
  %i.ff = add i64 %.5163, -2                      ; 2 uses
  %i.fg = zext i32 %i.fe to i64                   ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 %i.fg ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !76
  %i.fj = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fg
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !76  ; 2 uses
  %i.fl = xor i8 %i.fk, %i.fi
  %i.fm = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fg
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !76
  store i8 %i.fk, ptr %i.fh, align 1, !tbaa !76
  %i.fn = add i32 %.8162, 2                       ; 2 uses
  %.not108.1 = icmp eq i64 %i.ff, 0
  br i1 %.not108.1, label %.loopexit, label %vec.epilog.scalar.ph283, !llvm.loop !714

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph283.prol.loopexit, %vec.epilog.scalar.ph283, %vec.epilog.middle.block, %vec.epilog.middle.block293, %._crit_edge157, %._crit_edge132
  %storemerge = phi i32 [ %.1102.lcssa, %._crit_edge132 ], [ %i.fn, %vec.epilog.scalar.ph283 ], [ %.6.lcssa, %._crit_edge157 ], [ %i.ef, %vec.epilog.middle.block293 ], [ %i.ba, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph283.prol.loopexit ], [ %.lcssa305.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ci, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %5, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @aes_hw_xts_cipher(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 12), align 4, !tbaa !73 ; 3 uses
  %i.c = and i32 %i.b, 576
  %or.cond.not.i29 = icmp eq i32 %i.c, 576        ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond.not.i29, label %bb.d, label %avx512_xts_available.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.e = and i32 %i.d, -1073545216
  %.not5.i = icmp ne i32 %i.e, -1073545216
  %i.f = and i32 %i.b, 1024
  %.not28 = icmp eq i32 %i.f, 0
  %or.cond = or i1 %.not28, %.not5.i
  br i1 %or.cond, label %avx512_xts_available.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @aes_hw_xts_encrypt_avx512(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

avx512_xts_available.exit.thread:                 ; preds = %bb.c, %bb.d
  tail call void @aes_hw_xts_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %or.cond.not.i29, label %bb.g, label %avx512_xts_available.exit32.thread

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.h = and i32 %i.g, -1073545216
  %.not5.i30 = icmp ne i32 %i.h, -1073545216
  %i.i = and i32 %i.b, 1024
  %.not27 = icmp eq i32 %i.i, 0
  %or.cond35 = or i1 %.not27, %.not5.i30
  br i1 %or.cond35, label %avx512_xts_available.exit32.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @aes_hw_xts_decrypt_avx512(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

avx512_xts_available.exit32.thread:               ; preds = %bb.f, %bb.g
  tail call void @aes_hw_xts_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

bb.i:                                             ; preds = %avx512_xts_available.exit.thread, %avx512_xts_available.exit32.thread, %bb.a, %bb.h, %bb.e
  %.0 = phi i32 [ 1, %bb.h ], [ 1, %bb.e ], [ 0, %bb.a ], [ 1, %avx512_xts_available.exit32.thread ], [ 1, %avx512_xts_available.exit.thread ]
  ret i32 %.0
}

declare void @aes_hw_xts_encrypt_avx512(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aes_hw_xts_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aes_hw_xts_decrypt_avx512(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aes_hw_xts_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !91
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq i32 %i.b, 0                   ; 2 uses
  %spec.select = select i1 %.not25, ptr %1, ptr %2 ; 4 uses
  %spec.select28 = select i1 %.not25, ptr %2, ptr %1 ; 4 uses
  %i.e = load ptr, ptr %spec.select, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !93
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %spec.select28, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select28, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = sext i32 %i.k to i64
  %i.m = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.e, i64 noundef %i.h, ptr noundef %i.i, i64 noundef %i.l)
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @bn_usub_consttime(ptr noundef %0, ptr noundef nonnull readonly %spec.select28, ptr noundef nonnull readonly %spec.select)
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %BN_usub.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !93   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i, label %BN_usub.exit.sink.split

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.q, %.lr.ph.i.i.i ], [ %i.y, %bb.f ] ; 4 uses
  %i.t = zext nneg i32 %.05.i.i.i to i64
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %.05.i.i.i, -1
  %i.z = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.z, label %bb.e, label %.sink.split, !llvm.loop !10

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %.05.i.i.i, %bb.e ], [ 0, %bb.f ]
  store i32 %.sink, ptr %i.p, align 8, !tbaa !93
  br label %BN_usub.exit.sink.split

bb.g:                                             ; preds = %bb.b
  %i.aa = tail call i32 @bn_usub_consttime(ptr noundef %0, ptr noundef nonnull readonly %spec.select, ptr noundef nonnull readonly %spec.select28)
  %.not.i29 = icmp eq i32 %i.aa, 0
  br i1 %.not.i29, label %BN_usub.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@BN_nnmod_pow2:bb.a
  %i.q = load i32, ptr %i.p, align 8, !tbaa !91
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %BN_is_zero.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %2, -1                           ; 2 uses
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !94
  %i.w = sext i32 %i.v to i64
  %.not.i37.not = icmp ult i64 %i.s, %i.w
  br i1 %.not.i37.not, label %bn_wexpand.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i64 %i.r, 536870847
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 311) #46
  br label %BN_is_zero.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !95
  %i.aa = and i32 %i.z, 2
  %.not16.i = icmp eq i32 %i.aa, 0
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 316) #46
  br label %BN_is_zero.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call ptr @OPENSSL_calloc(i64 noundef %i.t, i64 noundef 8) #46 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %BN_is_zero.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %OPENSSL_memcpy.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = sext i32 %i.ad to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr readonly align 1 %i.ah, i64 %i.ag, i1 false)
  br label %OPENSSL_memcpy.exit.i

OPENSSL_memcpy.exit.i:                            ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.ai) #46
  store ptr %i.ab, ptr %0, align 8, !tbaa !92
  %i.aj = trunc nuw nsw i64 %i.t to i32
  store i32 %i.aj, ptr %i.u, align 4, !tbaa !94
  %.pre = load i32, ptr %i.b, align 8, !tbaa !93
  %.pre48 = sext i32 %.pre to i64
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %OPENSSL_memcpy.exit.i, %bb.d
  %.pre-phi = phi i64 [ %.pre48, %OPENSSL_memcpy.exit.i ], [ %i.d, %bb.d ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %OPENSSL_memcpy.exit.i ], [ %i.e, %bb.d ]
  %i.al = icmp eq i64 %i.t, %.pre-phi
  br i1 %i.al, label %OPENSSL_memset.exit, label %bb.l

bb.l:                                             ; preds = %bn_wexpand.exit
  %i.am = sub nsw i64 %i.t, %.pre-phi
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.an, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bn_wexpand.exit, %bb.l
  store i32 0, ptr %i.p, align 8, !tbaa !91
  %i.ap = trunc i64 %i.t to i32                   ; 4 uses
  store i32 %i.ap, ptr %i.b, align 8, !tbaa !93
  %i.aq = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %OPENSSL_memset.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  %wide.trip.count = and i64 %i.t, 2147483647     ; 3 uses
  %min.iters.check61 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph
  %n.vec63 = and i64 %i.t, 2147483644             ; 3 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index65 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %i.as, align 8, !tbaa !80
  %wide.load67 = load <2 x i64>, ptr %i.at, align 8, !tbaa !80
  %i.au = xor <2 x i64> %wide.load66, splat (i64 -1)
  %i.av = xor <2 x i64> %wide.load67, splat (i64 -1)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !80
  store <2 x i64> %i.av, ptr %i.at, align 8, !tbaa !80
  %index.next68 = add nuw i64 %index65, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.aw, label %middle.block69, label %vector.body64, !llvm.loop !1207

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %wide.trip.count, %n.vec63
  br i1 %cmp.n70, label %._crit_edge, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %.lr.ph, %middle.block69
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec63, %middle.block69 ]
  br label %scalar.ph60

._crit_edge:                                      ; preds = %scalar.ph60, %middle.block69, %OPENSSL_memset.exit
  %i.ax = and i64 %2, 63                          ; 2 uses
  %.not36 = icmp eq i64 %i.ax, 0
  br i1 %.not36, label %bb.n, label %bb.m

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph60 ], [ %indvars.iv.ph, %scalar.ph60.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.ba = xor i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph60, !llvm.loop !1208

bb.m:                                             ; preds = %._crit_edge
  %notmask = shl nsw i64 -1, %i.ax
  %i.bb = xor i64 %notmask, -1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !92
  %sext = shl i64 %i.t, 32
  %i.bd = ashr exact i64 %sext, 29
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8     ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !80
  %i.bh = and i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  br i1 %i.aq, label %.lr.ph.i.i38, label %bn_minimal_width.exit.i

.lr.ph.i.i38:                                     ; preds = %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !92
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i38
  %.05.i.i = phi i32 [ %i.ap, %.lr.ph.i.i38 ], [ %i.bo, %bb.p ] ; 4 uses
  %i.bj = zext nneg i32 %.05.i.i to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !80
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.o
  store i32 %.05.i.i, ptr %i.b, align 8, !tbaa !93
  br label %bn_set_minimal_width.exit

bb.p:                                             ; preds = %bb.o
  %i.bo = add nsw i32 %.05.i.i, -1
  %i.bp = icmp sgt i32 %.05.i.i, 1
  br i1 %i.bp, label %bb.o, label %bn_minimal_width.exit.thread.i, !llvm.loop !10

bn_minimal_width.exit.thread.i:                   ; preds = %bb.p
  store i32 0, ptr %i.b, align 8, !tbaa !93
  br label %bb.q

bn_minimal_width.exit.i:                          ; preds = %bb.n
  %i.bq = icmp eq i32 %i.ap, 0
  br i1 %i.bq, label %bb.q, label %bn_set_minimal_width.exit

bb.q:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  store i32 0, ptr %i.p, align 8, !tbaa !91
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bn_minimal_width.exit.thread5.i, %bn_minimal_width.exit.i, %bb.q
  tail call void @CRYPTO_once(ptr noundef nonnull @BN_value_one_once, ptr noundef nonnull @BN_value_one_init) #46
  %i.br = tail call i32 @BN_add(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @BN_value_one_storage)
  br label %BN_is_zero.exit.thread

BN_is_zero.exit.thread:                           ; preds = %bb.i, %bb.h, %bb.f, %bb.b, %bn_set_minimal_width.exit, %BN_is_zero.exit, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %BN_is_zero.exit ], [ 1, %bb.c ], [ %i.br, %bn_set_minimal_width.exit ], [ 1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i16 @bn_mod_u16_consttime(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i16 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.e = zext i16 %1 to i64                       ; 3 uses
  %2 = add nsw i64 %i.e, -1
  %i.f = add nuw nsw i64 %i.e, 4294967295
  %3 = and i64 %i.f, 4294967295                   ; 3 uses
  %i.g = lshr i64 %3, 8                           ; 2 uses
  %.not53.i = icmp eq i64 %i.g, 0                 ; 2 uses
  %4 = select i1 %.not53.i, i32 0, i32 8
  %5 = icmp ne i64 %3, 0
  %6 = zext i1 %5 to i32
  %7 = or disjoint i32 %4, %6
  %i.h = select i1 %.not53.i, i64 %3, i64 %i.g    ; 2 uses
  %i.i = lshr i64 %i.h, 4                         ; 2 uses
  %.not54.i = icmp eq i64 %i.i, 0                 ; 2 uses
  %i.j = select i1 %.not54.i, i32 0, i32 4
  %i.k = or disjoint i32 %7, %i.j
  %i.l = select i1 %.not54.i, i64 %i.h, i64 %i.i  ; 2 uses
  %i.m = lshr i64 %i.l, 2                         ; 2 uses
  %.not55.i = icmp eq i64 %i.m, 0                 ; 2 uses
  %i.n = select i1 %.not55.i, i32 0, i32 2
  %i.o = or disjoint i32 %i.k, %i.n
  %i.p = select i1 %.not55.i, i64 %i.l, i64 %i.m
  %i.q = icmp samesign ugt i64 %i.p, 1
  %.neg.i = zext i1 %i.q to i32
  %i.r = add nuw nsw i32 %i.o, %.neg.i            ; 2 uses
  %i.s = or disjoint i32 %i.r, 32
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = add nuw i64 %2, %i.u
  %i.w = udiv i64 %i.v, %i.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !92
  %i.y = and i64 %i.w, 4294967295                 ; 4 uses
  %i.z = add nsw i32 %i.r, -1                     ; 4 uses
  %i.aa = zext i16 %1 to i32                      ; 4 uses
  %i.ab = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.02124 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.c ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i32              ; 3 uses
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %.02124, i32 %i.af, i32 16) ; 3 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.y, %i.ah
  %i.aj = lshr i64 %i.ai, 32
  %i.ak = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.al = sub i32 %i.ag, %i.ak
  %i.am = lshr i32 %i.al, 1
  %i.an = add i32 %i.am, %i.ak
  %i.ao = lshr i32 %i.an, %i.z
  %i.ap = mul i32 %i.ao, %i.aa
  %i.aq = sub i32 %i.ag, %i.ap
  %i.ar = shl i32 %i.aq, 16
  %i.as = and i32 %i.af, 65535
  %i.at = or disjoint i32 %i.ar, %i.as            ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.y, %i.au
  %i.aw = lshr i64 %i.av, 32
  %i.ax = trunc nuw i64 %i.aw to i32              ; 2 uses
  %i.ay = sub i32 %i.at, %i.ax
  %i.az = lshr i32 %i.ay, 1
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = lshr i32 %i.ba, %i.z
  %i.bc = mul i32 %i.bb, %i.aa
  %i.bd = sub i32 %i.af, %i.bc
  %i.be = trunc i64 %i.ad to i32                  ; 3 uses
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.be, i32 16) ; 3 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul nuw i64 %i.y, %i.bg
  %i.bi = lshr i64 %i.bh, 32
  %i.bj = trunc nuw i64 %i.bi to i32              ; 2 uses
  %i.bk = sub i32 %i.bf, %i.bj
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = add i32 %i.bl, %i.bj
  %i.bn = lshr i32 %i.bm, %i.z
  %i.bo = mul i32 %i.bn, %i.aa
  %i.bp = sub i32 %i.bf, %i.bo
  %i.bq = shl i32 %i.bp, 16
  %i.br = and i32 %i.be, 65535
  %i.bs = or disjoint i32 %i.bq, %i.br            ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw i64 %i.y, %i.bt
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = trunc nuw i64 %i.bv to i32              ; 2 uses
  %i.bx = sub i32 %i.bs, %i.bw
  %i.by = lshr i32 %i.bx, 1
  %i.bz = add i32 %i.by, %i.bw
  %i.ca = lshr i32 %i.bz, %i.z
  %i.cb = mul i32 %i.ca, %i.aa
  %i.cc = sub i32 %i.be, %i.cb                    ; 2 uses
  %i.cd = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cd, label %bb.c, label %.loopexit.loopexit, !llvm.loop !14

.loopexit.loopexit:                               ; preds = %bb.c
  %i.ce = trunc i32 %i.cc to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %.022 = phi i16 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ce, %.loopexit.loopexit ]
  ret i16 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_exp(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !110
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %BN_CTX_start.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !112  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !113
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.g, 0
  %i.k = mul i64 %i.g, 3
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %.not.i.i, i64 32, i64 %i.l    ; 4 uses
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = icmp samesign ugt i64 %i.m, 2305843009213693951
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.q = shl nuw i64 %i.m, 3
  %i.r = tail call ptr @OPENSSL_realloc(ptr noundef %i.p, i64 noundef %i.q) #46 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !109
  store i64 %i.m, ptr %i.h, align 8, !tbaa !113
  %.pre26.i.i = load i64, ptr %i.f, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i

BN_STACK_push.exit.i:                             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.e ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store i64 %i.e, ptr %i.v, align 8, !tbaa !80
  %i.w = load i64, ptr %i.f, align 8, !tbaa !112
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !112
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 1, ptr %i.y, align 1, !tbaa !114
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %BN_STACK_push.exit.i, %bb.f
  %i.z = icmp eq ptr %0, %1
  %i.aa = icmp eq ptr %0, %2
  %or.cond45 = or i1 %i.z, %i.aa
  br i1 %or.cond45, label %bb.g, label %bb.h

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ab = tail call ptr @BN_CTX_get(ptr noundef nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %BN_CTX_start.exit, %bb.g
  %.0 = phi ptr [ %i.ab, %bb.g ], [ %0, %BN_CTX_start.exit ] ; 18 uses
  %i.ac = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 8 uses
  %i.ad = icmp eq ptr %.0, null
  %i.ae = icmp eq ptr %i.ac, null
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond, label %BN_sqr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call ptr @BN_copy(ptr noundef nonnull %i.ac, ptr noundef %1)
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %BN_sqr.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !93 ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0                   ; 2 uses
  br i1 %i.aj, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !92    ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.ai, %.lr.ph.i.i ], [ %i.aq, %bb.l ] ; 4 uses
  %i.al = zext nneg i32 %.05.i.i to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !80
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bn_minimal_width.exit.thread7.i

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %.05.i.i, -1
  %i.ar = icmp sgt i32 %.05.i.i, 1
  br i1 %i.ar, label %bb.k, label %BN_num_bits.exit, !llvm.loop !10

bn_minimal_width.exit.i:                          ; preds = %bb.j
  %i.as = icmp eq i32 %i.ai, 0
  br i1 %i.as, label %BN_is_odd.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !92
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.k, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.at = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.ak, %bb.k ] ; 2 uses
  %.0.lcssa.i9.i = phi i32 [ %i.ai, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.k ]
  %i.au = add nsw i32 %.0.lcssa.i9.i, -1          ; 2 uses
  %i.av = shl nsw i32 %i.au, 6
  %i.aw = sext i32 %i.au to i64
end_hunk_3
begin_hunk_4_@BN_GENCB_free:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BN_GENCB_set(ptr nofree noundef writeonly captures(none) initializes((0, 1), (8, 24)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BN_GENCB_set_old(ptr nofree noundef writeonly captures(none) initializes((0, 1), (8, 24)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  store i8 2, ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !129
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BN_GENCB_call(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !128
  switch i8 %i.a, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = tail call i32 %i.c(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %0) #46
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  tail call void %i.f(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %0) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 1, %bb.d ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BN_GENCB_get_arg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_generate_prime_ex(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp sgt i32 %1, 3746
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 1344
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 475
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %1, 399
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %1, 346
  br i1 %i.h, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %1, 307
  br i1 %i.i, label %.thread, label %BN_prime_checks_for_size.exit

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.ph = phi i32 [ 7, %bb.e ], [ 6, %bb.d ], [ 5, %bb.c ], [ 4, %bb.b ], [ 3, %bb.a ], [ 8, %bb.f ]
  %i.j = icmp ne i32 %2, 0
  br label %bb.j

BN_prime_checks_for_size.exit:                    ; preds = %bb.f
  %i.k = icmp slt i32 %1, 2
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %BN_prime_checks_for_size.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 304) #46
  br label %probable_prime.exit.thread118

bb.h:                                             ; preds = %BN_prime_checks_for_size.exit
  %i.l = icmp samesign ugt i32 %1, 54
  %..i = select i1 %i.l, i32 27, i32 34
  %i.m = icmp eq i32 %1, 2
  %i.n = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 308) #46
  br label %probable_prime.exit.thread118

bb.j:                                             ; preds = %.thread, %bb.h
  %i.o = phi i1 [ %i.j, %.thread ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i98101 = phi i32 [ %.0.i.ph, %.thread ], [ %..i, %bb.h ] ; 2 uses
  %i.p = tail call ptr @OPENSSL_zalloc(i64 noundef 48) #46 ; 25 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %probable_prime.exit.thread118, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 8 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i67 = icmp eq i8 %i.s, 0
  br i1 %.not.i67, label %bb.l, label %BN_CTX_start.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !111
  %i.v = tail call ptr @OPENSSL_realloc(ptr noundef null, i64 noundef 256) #46 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %BN_STACK_push.exit.i

BN_STACK_push.exit.i:                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !109
  store i64 32, ptr %i.x, align 8, !tbaa !113
  %.pre26.i.i = load i64, ptr %i.y, align 8, !tbaa !112
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre26.i.i
  store i64 %i.u, ptr %i.z, align 8, !tbaa !80
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !112
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !112
  br label %BN_CTX_start.exit

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.r, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store i8 1, ptr %i.ac, align 1, !tbaa !114
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.k, %BN_STACK_push.exit.i, %bb.m
  %i.ad = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %probable_prime.exit.thread115, label %.preheader126

.preheader126:                                    ; preds = %BN_CTX_start.exit
  %i.ae = icmp eq ptr %3, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 41 ; 2 uses
  %i.aj = icmp eq ptr %4, null                    ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.al = add nsw i32 %1, -1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i84 = icmp eq ptr %5, null                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader126
  %.0 = phi i32 [ 0, %.preheader126 ], [ %i.ib, %.backedge.backedge ] ; 3 uses
  br i1 %i.ae, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.backedge
  %i.ao = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1)
  %.not16.i = icmp eq i32 %i.ao, 0
  br i1 %.not16.i, label %probable_prime.exit.thread115.loopexit187, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.critedge.backedge.i
  %.val.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !93 ; 6 uses
  %i.ap = icmp sgt i32 %.val.i.i.i, 16
  %..i.i.i.i = select i1 %i.ap, i64 1024, i64 512
  %i.aq = icmp sgt i32 %.val.i.i.i, 0
  %i.ar = zext i32 %.val.i.i.i to i64             ; 3 uses
  br i1 %i.aq, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !92
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.p, %.split.us.i
  %.0914.i.i.us.i = phi i64 [ 1, %.split.us.i ], [ %i.dx, %bb.p ] ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.0914.i.i.us.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !131 ; 2 uses
  %i.av = zext i16 %i.au to i64                   ; 4 uses
  %6 = add nsw i64 %i.av, -1
  %i.aw = add nuw nsw i64 %i.av, 4294967295
  %7 = and i64 %i.aw, 4294967295                  ; 3 uses
  %i.ax = lshr i64 %7, 8                          ; 2 uses
  %.not53.i.i.us.i = icmp eq i64 %i.ax, 0         ; 2 uses
  %8 = select i1 %.not53.i.i.us.i, i32 0, i32 8
  %9 = icmp ne i64 %7, 0
  %10 = zext i1 %9 to i32
  %11 = or disjoint i32 %8, %10
  %i.ay = select i1 %.not53.i.i.us.i, i64 %7, i64 %i.ax ; 2 uses
  %i.az = lshr i64 %i.ay, 4                       ; 2 uses
  %.not54.i.i.us.i = icmp eq i64 %i.az, 0         ; 2 uses
  %i.ba = select i1 %.not54.i.i.us.i, i32 0, i32 4
  %i.bb = or disjoint i32 %11, %i.ba
  %i.bc = select i1 %.not54.i.i.us.i, i64 %i.ay, i64 %i.az ; 2 uses
  %i.bd = lshr i64 %i.bc, 2                       ; 2 uses
  %.not55.i.i.us.i = icmp eq i64 %i.bd, 0         ; 2 uses
  %i.be = select i1 %.not55.i.i.us.i, i32 0, i32 2
  %i.bf = or disjoint i32 %i.bb, %i.be
  %i.bg = select i1 %.not55.i.i.us.i, i64 %i.bc, i64 %i.bd
  %i.bh = icmp samesign ugt i64 %i.bg, 1
  %.neg.i.i.us.i = zext i1 %i.bh to i32
  %i.bi = add nuw nsw i32 %i.bf, %.neg.i.i.us.i   ; 2 uses
  %i.bj = or disjoint i32 %i.bi, 32
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = add nuw i64 %6, %i.bl
  %i.bn = udiv i64 %i.bm, %i.av
  %i.bo = and i64 %i.bn, 4294967295               ; 4 uses
  %i.bp = add nsw i32 %i.bi, -1                   ; 4 uses
  %i.bq = zext i16 %i.au to i32                   ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %i.ar, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.o ] ; 2 uses
  %.02124.i.us.i = phi i32 [ 0, %.lr.ph.i.us.i ], [ %i.dr, %bb.o ]
  %indvars.iv.next.i.us.i = add nsw i64 %indvars.iv.i.us.i, -1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.us.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80 ; 2 uses
  %i.bt = lshr i64 %i.bs, 32
  %i.bu = trunc nuw i64 %i.bt to i32              ; 3 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %.02124.i.us.i, i32 %i.bu, i32 16) ; 3 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bo, %i.bw
  %i.by = lshr i64 %i.bx, 32
  %i.bz = trunc nuw i64 %i.by to i32              ; 2 uses
  %i.ca = sub i32 %i.bv, %i.bz
  %i.cb = lshr i32 %i.ca, 1
  %i.cc = add i32 %i.cb, %i.bz
  %i.cd = lshr i32 %i.cc, %i.bp
  %i.ce = mul i32 %i.cd, %i.bq
  %i.cf = sub i32 %i.bv, %i.ce
  %i.cg = shl i32 %i.cf, 16
  %i.ch = and i32 %i.bu, 65535
  %i.ci = or disjoint i32 %i.cg, %i.ch            ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul nuw i64 %i.bo, %i.cj
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = trunc nuw i64 %i.cl to i32              ; 2 uses
  %i.cn = sub i32 %i.ci, %i.cm
  %i.co = lshr i32 %i.cn, 1
  %i.cp = add i32 %i.co, %i.cm
  %i.cq = lshr i32 %i.cp, %i.bp
  %i.cr = mul i32 %i.cq, %i.bq
  %i.cs = sub i32 %i.bu, %i.cr
  %i.ct = trunc i64 %i.bs to i32                  ; 3 uses
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.ct, i32 16) ; 3 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = mul nuw i64 %i.bo, %i.cv
  %i.cx = lshr i64 %i.cw, 32
  %i.cy = trunc nuw i64 %i.cx to i32              ; 2 uses
  %i.cz = sub i32 %i.cu, %i.cy
  %i.da = lshr i32 %i.cz, 1
  %i.db = add i32 %i.da, %i.cy
  %i.dc = lshr i32 %i.db, %i.bp
  %i.dd = mul i32 %i.dc, %i.bq
  %i.de = sub i32 %i.cu, %i.dd
  %i.df = shl i32 %i.de, 16
  %i.dg = and i32 %i.ct, 65535
  %i.dh = or disjoint i32 %i.df, %i.dg            ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = mul nuw i64 %i.bo, %i.di
  %i.dk = lshr i64 %i.dj, 32
  %i.dl = trunc nuw i64 %i.dk to i32              ; 2 uses
  %i.dm = sub i32 %i.dh, %i.dl
  %i.dn = lshr i32 %i.dm, 1
  %i.do = add i32 %i.dn, %i.dl
  %i.dp = lshr i32 %i.do, %i.bp
  %i.dq = mul i32 %i.dp, %i.bq
  %i.dr = sub i32 %i.ct, %i.dq                    ; 2 uses
  %i.ds = icmp samesign ugt i64 %indvars.iv.i.us.i, 1
  br i1 %i.ds, label %bb.o, label %.loopexit.loopexit.i.us.i, !llvm.loop !14

.loopexit.loopexit.i.us.i:                        ; preds = %bb.o
  %i.dt = and i32 %i.dr, 65535
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %i.dw = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dv) #47, !srcloc !120
  %.not.not.not.i.not.i.us.i = icmp eq i32 %i.dw, 0
  br i1 %.not.not.not.i.not.i.us.i, label %bb.p, label %.split11.us.i

bb.p:                                             ; preds = %.loopexit.loopexit.i.us.i
  %i.dx = add nuw nsw i64 %.0914.i.i.us.i, 1      ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.dx, %..i.i.i.i
  br i1 %exitcond.not.i.i.us.i, label %probable_prime.exit.thread, label %.lr.ph.i.us.i, !llvm.loop !16

.split.i:                                         ; preds = %.lr.ph.i
  %i.dy = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 1) #47, !srcloc !120
  %.not.not.not.i.not.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.not.not.i.not.i.i, label %probable_prime.exit.thread, label %.split11.us.i

.split11.us.i:                                    ; preds = %.loopexit.loopexit.i.us.i, %.split.i
  %.us-phi.i = phi i64 [ 3, %.split.i ], [ %i.av, %.loopexit.loopexit.i.us.i ]
  %i.dz = icmp eq i32 %.val.i.i.i, 0
  br i1 %i.dz, label %.critedge.backedge.i, label %bb.q

bb.q:                                             ; preds = %.split11.us.i
  %i.ea = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !80
  %i.ec = xor i64 %i.eb, %.us-phi.i               ; 3 uses
  %i.ed = icmp sgt i32 %.val.i.i.i, 1
  br i1 %i.ed, label %.lr.ph.i.i.i.i.preheader, label %BN_abs_is_word.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %i.ee = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.val.i.i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader182, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ee, -4                      ; 3 uses
  %i.ef = or disjoint i64 %n.vec, 1
  %i.eg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ec, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eg, %vector.ph ], [ %i.ek, %vector.body ]
  %vec.phi180 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.el, %vector.body ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %wide.load = load <2 x i64>, ptr %i.ei, align 8, !tbaa !80
  %wide.load181 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !80
  %i.ek = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.el = or <2 x i64> %wide.load181, %vec.phi180 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !1481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.el, %i.ek
  %i.en = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader182

.lr.ph.i.i.i.i.preheader182:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.ef, %middle.block ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.preheader ], [ %i.en, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader182, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader182 ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader182 ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i.i.i
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !80
  %i.eq = or i64 %i.ep, %.01113.i.i.i.i           ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ar
  br i1 %exitcond.not.i.i.i.i, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1482

BN_abs_is_word.exit.i.i.i:                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.q
  %.012.in.in.i.i.i.i = phi i64 [ %i.ec, %bb.q ], [ %i.en, %middle.block ], [ %i.eq, %.lr.ph.i.i.i.i ]
  %.012.in.i.not.i.i.i = icmp eq i64 %.012.in.in.i.i.i.i, 0
  br i1 %.012.in.i.not.i.i.i, label %bn_odd_number_is_obviously_composite.exit.i, label %.critedge.backedge.i

bn_odd_number_is_obviously_composite.exit.i:      ; preds = %BN_abs_is_word.exit.i.i.i
  %i.er = load i32, ptr %i.am, align 8, !tbaa !91
  %.not5.i = icmp eq i32 %i.er, 0
  br i1 %.not5.i, label %probable_prime.exit.thread, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %.split11.us.i, %bn_odd_number_is_obviously_composite.exit.i, %BN_abs_is_word.exit.i.i.i
  %i.es = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1)
  %.not.i68 = icmp eq i32 %i.es, 0
  br i1 %.not.i68, label %probable_prime.exit.thread115, label %.lr.ph.i, !llvm.loop !1483

bb.r:                                             ; preds = %.backedge
  %i.et = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i.i70 = icmp eq i8 %i.et, 0               ; 2 uses
  br i1 %i.o, label %bb.s, label %bb.ap

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i70, label %bb.t, label %BN_CTX_start.exit.i

bb.t:                                             ; preds = %bb.s
  %i.eu = load i64, ptr %i.af, align 8, !tbaa !111
  %i.ev = load i64, ptr %i.ag, align 8, !tbaa !112 ; 5 uses
  %i.ew = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.u, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.t
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i.i

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i = icmp eq i64 %i.ev, 0
  %i.ey = mul i64 %i.ev, 3
  %i.ez = lshr i64 %i.ey, 1
  %i.fa = select i1 %.not.i.i.i, i64 32, i64 %i.ez ; 4 uses
  %i.fb = icmp ule i64 %i.fa, %i.ev
  %i.fc = icmp samesign ugt i64 %i.fa, 2305843009213693951
  %or.cond.i.i.i = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %or.cond.i.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.fe = shl nuw i64 %i.fa, 3
  %i.ff = tail call ptr @OPENSSL_realloc(ptr noundef %i.fd, i64 noundef %i.fe) #46 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ff, ptr %i.q, align 8, !tbaa !109
  store i64 %i.fa, ptr %i.ah, align 8, !tbaa !113
  %.pre26.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i.i

end_hunk_4
