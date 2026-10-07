Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 551
begin_hunk_0_@AES_ctr128_encrypt:bb.a
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
  %min.iters.check = icmp samesign ult i64 %.165.lcssa.i, 4
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
  %n.vec193 = and i64 %.165.lcssa.i, 12           ; 3 uses
  %i.gd = trunc nuw nsw i64 %n.vec193 to i32
  %i.ge = add i32 %.058.lcssa.i, %i.gd            ; 2 uses
  %i.gf = and i64 %.165.lcssa.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index194 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next197, %vec.epilog.vector.body ] ; 2 uses
  %i.gg = trunc i64 %index194 to i32
  %i.gh = add i32 %.058.lcssa.i, %i.gg
  %i.gi = zext i32 %i.gh to i64                   ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.gi
  %wide.load195 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !76
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 %i.gi
  %wide.load196 = load <4 x i8>, ptr %i.gk, align 1, !tbaa !76
  %i.gl = xor <4 x i8> %wide.load196, %wide.load195
  %i.gm = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.gi
  store <4 x i8> %i.gl, ptr %i.gm, align 1, !tbaa !76
  %index.next197 = add nuw i64 %index194, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next197, %n.vec193
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !656

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n198 = icmp eq i64 %.165.lcssa.i, %n.vec193
  br i1 %cmp.n198, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.15989.i.ph = phi i32 [ %.058.lcssa.i, %vector.scevcheck ], [ %.058.lcssa.i, %vector.memcheck ], [ %.058.lcssa.i, %iter.check ], [ %i.ge, %vec.epilog.middle.block ] ; 3 uses
  %.26688.i.ph = phi i64 [ %.165.lcssa.i, %vector.scevcheck ], [ %.165.lcssa.i, %vector.memcheck ], [ %.165.lcssa.i, %iter.check ], [ %i.gf, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.26688.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.go = add nsw i64 %.26688.i.ph, -1
  %i.gp = zext i32 %.15989.i.ph to i64            ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !76
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 %i.gp
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !76
  %i.gu = xor i8 %i.gt, %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.gp
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !76
  %i.gw = add i32 %.15989.i.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa294.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gw, %vec.epilog.scalar.ph.prol ]
  %.15989.i.unr = phi i32 [ %.15989.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gw, %vec.epilog.scalar.ph.prol ]
  %.26688.i.unr = phi i64 [ %.26688.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.go, %vec.epilog.scalar.ph.prol ]
  %i.gx = icmp eq i64 %.26688.i.ph, 1
  br i1 %i.gx, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15989.i = phi i32 [ %i.ho, %vec.epilog.scalar.ph ], [ %.15989.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.26688.i = phi i64 [ %i.hg, %vec.epilog.scalar.ph ], [ %.26688.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gy = zext i32 %.15989.i to i64               ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !76
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 %i.gy
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !76
  %i.hd = xor i8 %i.hc, %i.ha
  %i.he = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.gy
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !76
  %i.hf = add i32 %.15989.i, 1
  %i.hg = add nsw i64 %.26688.i, -2               ; 2 uses
  %i.hh = zext i32 %i.hf to i64                   ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !76
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 %i.hh
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !76
  %i.hm = xor i8 %i.hl, %i.hj
  %i.hn = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.hh
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !76
  %i.ho = add i32 %.15989.i, 2                    ; 2 uses
  %.not68.i.1 = icmp eq i64 %i.hg, 0
  br i1 %.not68.i.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph, !llvm.loop !657

bb.h:                                             ; preds = %bb.a
  %i.hp = and i32 %i.b, 512
  %.not20 = icmp eq i32 %i.hp, 0
  %i.hq = load i32, ptr %6, align 4, !tbaa !73    ; 5 uses
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = icmp ne i64 %2, 0
  %i.ht = and i1 %i.hs, %i.hr                     ; 2 uses
  br i1 %.not20, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ht, label %.lr.ph.i46, label %._crit_edge.i22

.lr.ph.i46:                                       ; preds = %bb.i, %.lr.ph.i46
  %.05873.i47 = phi i32 [ %i.id, %.lr.ph.i46 ], [ %i.hq, %bb.i ] ; 2 uses
  %.06072.i48 = phi ptr [ %i.hu, %.lr.ph.i46 ], [ %0, %bb.i ] ; 2 uses
  %.06271.i49 = phi ptr [ %i.ia, %.lr.ph.i46 ], [ %1, %bb.i ] ; 2 uses
  %.06470.i50 = phi i64 [ %i.ib, %.lr.ph.i46 ], [ %2, %bb.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.06072.i48, i64 1 ; 2 uses
  %i.hv = load i8, ptr %.06072.i48, align 1, !tbaa !76
  %i.hw = zext i32 %.05873.i47 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !76
  %i.hz = xor i8 %i.hy, %i.hv
  %i.ia = getelementptr inbounds nuw i8, ptr %.06271.i49, i64 1 ; 2 uses
  store i8 %i.hz, ptr %.06271.i49, align 1, !tbaa !76
  %i.ib = add i64 %.06470.i50, -1                 ; 3 uses
  %i.ic = add i32 %.05873.i47, 1
  %i.id = and i32 %i.ic, 15                       ; 3 uses
  %i.ie = icmp ne i32 %i.id, 0
  %i.if = icmp ne i64 %i.ib, 0
  %i.ig = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %i.ig, label %.lr.ph.i46, label %._crit_edge.i22, !llvm.loop !2

._crit_edge.i22:                                  ; preds = %.lr.ph.i46, %bb.i
  %.064.lcssa.i23 = phi i64 [ %2, %bb.i ], [ %i.ib, %.lr.ph.i46 ] ; 3 uses
  %.062.lcssa.i24 = phi ptr [ %1, %bb.i ], [ %i.ia, %.lr.ph.i46 ] ; 2 uses
  %.060.lcssa.i25 = phi ptr [ %0, %bb.i ], [ %i.hu, %.lr.ph.i46 ] ; 2 uses
  %.058.lcssa.i26 = phi i32 [ %i.hq, %bb.i ], [ %i.id, %.lr.ph.i46 ] ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.0.copyload.i.i27 = load i32, ptr %i.ih, align 1
  %i.ii = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i27) ; 2 uses
  %i.ij = icmp ugt i64 %.064.lcssa.i23, 15
  br i1 %i.ij, label %.lr.ph82.i38, label %._crit_edge83.i28

.lr.ph82.i38:                                     ; preds = %._crit_edge.i22
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph82.i38
  %.05780.i39 = phi i32 [ %i.ii, %.lr.ph82.i38 ], [ %spec.select.i44, %bb.l ]
  %.16179.i40 = phi ptr [ %.060.lcssa.i25, %.lr.ph82.i38 ], [ %i.lm, %bb.l ] ; 2 uses
  %.16378.i41 = phi ptr [ %.062.lcssa.i24, %.lr.ph82.i38 ], [ %i.ll, %bb.l ] ; 2 uses
  %.16577.i42 = phi i64 [ %.064.lcssa.i23, %.lr.ph82.i38 ], [ %i.lk, %bb.l ] ; 2 uses
  %i.iv = lshr i64 %.16577.i42, 4
  %spec.store.select.i43 = tail call i64 @llvm.umin.i64(i64 %i.iv, i64 268435456) ; 3 uses
  %i.iw = trunc nuw nsw i64 %spec.store.select.i43 to i32
  %i.ix = add i32 %.05780.i39, %i.iw              ; 2 uses
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = icmp samesign ugt i64 %spec.store.select.i43, %i.iy ; 2 uses
  %spec.select.i44 = select i1 %i.iz, i32 0, i32 %i.ix ; 4 uses
  %i.ja = select i1 %i.iz, i64 %i.iy, i64 0
  %spec.select69.i45 = sub nuw nsw i64 %spec.store.select.i43, %i.ja ; 2 uses
  tail call void @vpaes_ctr32_encrypt_blocks(ptr noundef %.16179.i40, ptr noundef %.16378.i41, i64 noundef %spec.select69.i45, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.jb = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select.i44)
  store i32 %i.jb, ptr %i.ih, align 1
  %i.jc = icmp eq i32 %spec.select.i44, 0
  br i1 %i.jc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.jd = load i8, ptr %i.ik, align 1, !tbaa !76
  %i.je = zext i8 %i.jd to i32
  %i.jf = add nuw nsw i32 %i.je, 1                ; 2 uses
  %i.jg = trunc i32 %i.jf to i8
  store i8 %i.jg, ptr %i.ik, align 1, !tbaa !76
  %i.jh = lshr i32 %i.jf, 8
  %i.ji = load i8, ptr %i.il, align 1, !tbaa !76
  %i.jj = zext i8 %i.ji to i32
  %i.jk = add nuw nsw i32 %i.jh, %i.jj            ; 2 uses
  %i.jl = trunc i32 %i.jk to i8
  store i8 %i.jl, ptr %i.il, align 1, !tbaa !76
  %i.jm = lshr i32 %i.jk, 8
  %i.jn = load i8, ptr %i.im, align 1, !tbaa !76
  %i.jo = zext i8 %i.jn to i32
  %i.jp = add nuw nsw i32 %i.jm, %i.jo            ; 2 uses
  %i.jq = trunc i32 %i.jp to i8
  store i8 %i.jq, ptr %i.im, align 1, !tbaa !76
  %i.jr = lshr i32 %i.jp, 8
  %i.js = load i8, ptr %i.in, align 1, !tbaa !76
  %i.jt = zext i8 %i.js to i32
  %i.ju = add nuw nsw i32 %i.jr, %i.jt            ; 2 uses
  %i.jv = trunc i32 %i.ju to i8
  store i8 %i.jv, ptr %i.in, align 1, !tbaa !76
  %i.jw = lshr i32 %i.ju, 8
  %i.jx = load i8, ptr %i.io, align 1, !tbaa !76
  %i.jy = zext i8 %i.jx to i32
  %i.jz = add nuw nsw i32 %i.jw, %i.jy            ; 2 uses
  %i.ka = trunc i32 %i.jz to i8
  store i8 %i.ka, ptr %i.io, align 1, !tbaa !76
  %i.kb = lshr i32 %i.jz, 8
  %i.kc = load i8, ptr %i.ip, align 1, !tbaa !76
  %i.kd = zext i8 %i.kc to i32
  %i.ke = add nuw nsw i32 %i.kb, %i.kd            ; 2 uses
  %i.kf = trunc i32 %i.ke to i8
  store i8 %i.kf, ptr %i.ip, align 1, !tbaa !76
  %i.kg = lshr i32 %i.ke, 8
  %i.kh = load i8, ptr %i.iq, align 1, !tbaa !76
  %i.ki = zext i8 %i.kh to i32
  %i.kj = add nuw nsw i32 %i.kg, %i.ki            ; 2 uses
  %i.kk = trunc i32 %i.kj to i8
  store i8 %i.kk, ptr %i.iq, align 1, !tbaa !76
  %i.kl = lshr i32 %i.kj, 8
  %i.km = load i8, ptr %i.ir, align 1, !tbaa !76
  %i.kn = zext i8 %i.km to i32
  %i.ko = add nuw nsw i32 %i.kl, %i.kn            ; 2 uses
  %i.kp = trunc i32 %i.ko to i8
  store i8 %i.kp, ptr %i.ir, align 1, !tbaa !76
  %i.kq = lshr i32 %i.ko, 8
  %i.kr = load i8, ptr %i.is, align 1, !tbaa !76
  %i.ks = zext i8 %i.kr to i32
  %i.kt = add nuw nsw i32 %i.kq, %i.ks            ; 2 uses
  %i.ku = trunc i32 %i.kt to i8
  store i8 %i.ku, ptr %i.is, align 1, !tbaa !76
  %i.kv = lshr i32 %i.kt, 8
  %i.kw = load i8, ptr %i.it, align 1, !tbaa !76
  %i.kx = zext i8 %i.kw to i32
  %i.ky = add nuw nsw i32 %i.kv, %i.kx            ; 2 uses
  %i.kz = trunc i32 %i.ky to i8
  store i8 %i.kz, ptr %i.it, align 1, !tbaa !76
  %i.la = lshr i32 %i.ky, 8
  %i.lb = load i8, ptr %i.iu, align 1, !tbaa !76
  %i.lc = zext i8 %i.lb to i32
  %i.ld = add nuw nsw i32 %i.la, %i.lc            ; 2 uses
  %i.le = trunc i32 %i.ld to i8
  store i8 %i.le, ptr %i.iu, align 1, !tbaa !76
  %i.lf = lshr i32 %i.ld, 8
  %i.lg = load i8, ptr %4, align 1, !tbaa !76
  %i.lh = trunc nuw nsw i32 %i.lf to i8
  %i.li = add i8 %i.lg, %i.lh
  store i8 %i.li, ptr %4, align 1, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.lj = shl nuw nsw i64 %spec.select69.i45, 4   ; 3 uses
  %i.lk = sub i64 %.16577.i42, %i.lj              ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.16378.i41, i64 %i.lj ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.16179.i40, i64 %i.lj ; 2 uses
  %i.ln = icmp ugt i64 %i.lk, 15
  br i1 %i.ln, label %bb.j, label %._crit_edge83.i28, !llvm.loop !3

._crit_edge83.i28:                                ; preds = %bb.l, %._crit_edge.i22
  %.165.lcssa.i29 = phi i64 [ %.064.lcssa.i23, %._crit_edge.i22 ], [ %i.lk, %bb.l ] ; 9 uses
  %.163.lcssa.i30 = phi ptr [ %.062.lcssa.i24, %._crit_edge.i22 ], [ %i.ll, %bb.l ] ; 5 uses
  %.161.lcssa.i31 = phi ptr [ %.060.lcssa.i25, %._crit_edge.i22 ], [ %i.lm, %bb.l ] ; 5 uses
  %.057.lcssa.i32 = phi i32 [ %i.ii, %._crit_edge.i22 ], [ %spec.select.i44, %bb.l ]
  %.163.lcssa.i30203 = ptrtoaddr ptr %.163.lcssa.i30 to i64 ; 2 uses
  %.161.lcssa.i31204 = ptrtoaddr ptr %.161.lcssa.i31 to i64
  %.not.i33 = icmp eq i64 %.165.lcssa.i29, 0
  br i1 %.not.i33, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge83.i28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.lo = add i32 %.057.lcssa.i32, 1              ; 2 uses
  %i.lp = tail call noundef i32 @llvm.bswap.i32(i32 %i.lo)
  store i32 %i.lp, ptr %i.ih, align 1
  %i.lq = icmp eq i32 %i.lo, 0
  br i1 %i.lq, label %bb.n, label %iter.check224

bb.n:                                             ; preds = %bb.m
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !76
  %i.lt = zext i8 %i.ls to i32
  %i.lu = add nuw nsw i32 %i.lt, 1                ; 2 uses
  %i.lv = trunc i32 %i.lu to i8
  store i8 %i.lv, ptr %i.lr, align 1, !tbaa !76
  %i.lw = lshr i32 %i.lu, 8
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !76
  %i.lz = zext i8 %i.ly to i32
  %i.ma = add nuw nsw i32 %i.lw, %i.lz            ; 2 uses
  %i.mb = trunc i32 %i.ma to i8
  store i8 %i.mb, ptr %i.lx, align 1, !tbaa !76
  %i.mc = lshr i32 %i.ma, 8
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !76
  %i.mf = zext i8 %i.me to i32
  %i.mg = add nuw nsw i32 %i.mc, %i.mf            ; 2 uses
  %i.mh = trunc i32 %i.mg to i8
  store i8 %i.mh, ptr %i.md, align 1, !tbaa !76
  %i.mi = lshr i32 %i.mg, 8
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !76
  %i.ml = zext i8 %i.mk to i32
  %i.mm = add nuw nsw i32 %i.mi, %i.ml            ; 2 uses
  %i.mn = trunc i32 %i.mm to i8
  store i8 %i.mn, ptr %i.mj, align 1, !tbaa !76
  %i.mo = lshr i32 %i.mm, 8
  %i.mp = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !76
  %i.mr = zext i8 %i.mq to i32
  %i.ms = add nuw nsw i32 %i.mo, %i.mr            ; 2 uses
  %i.mt = trunc i32 %i.ms to i8
  store i8 %i.mt, ptr %i.mp, align 1, !tbaa !76
  %i.mu = lshr i32 %i.ms, 8
  %i.mv = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !76
  %i.mx = zext i8 %i.mw to i32
  %i.my = add nuw nsw i32 %i.mu, %i.mx            ; 2 uses
  %i.mz = trunc i32 %i.my to i8
  store i8 %i.mz, ptr %i.mv, align 1, !tbaa !76
  %i.na = lshr i32 %i.my, 8
  %i.nb = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !76
  %i.nd = zext i8 %i.nc to i32
  %i.ne = add nuw nsw i32 %i.na, %i.nd            ; 2 uses
  %i.nf = trunc i32 %i.ne to i8
  store i8 %i.nf, ptr %i.nb, align 1, !tbaa !76
  %i.ng = lshr i32 %i.ne, 8
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !76
  %i.nj = zext i8 %i.ni to i32
  %i.nk = add nuw nsw i32 %i.ng, %i.nj            ; 2 uses
  %i.nl = trunc i32 %i.nk to i8
  store i8 %i.nl, ptr %i.nh, align 1, !tbaa !76
  %i.nm = lshr i32 %i.nk, 8
  %i.nn = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !76
  %i.np = zext i8 %i.no to i32
  %i.nq = add nuw nsw i32 %i.nm, %i.np            ; 2 uses
  %i.nr = trunc i32 %i.nq to i8
  store i8 %i.nr, ptr %i.nn, align 1, !tbaa !76
  %i.ns = lshr i32 %i.nq, 8
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !76
  %i.nv = zext i8 %i.nu to i32
  %i.nw = add nuw nsw i32 %i.ns, %i.nv            ; 2 uses
  %i.nx = trunc i32 %i.nw to i8
  store i8 %i.nx, ptr %i.nt, align 1, !tbaa !76
  %i.ny = lshr i32 %i.nw, 8
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !76
  %i.ob = zext i8 %i.oa to i32
  %i.oc = add nuw nsw i32 %i.ny, %i.ob            ; 2 uses
  %i.od = trunc i32 %i.oc to i8
  store i8 %i.od, ptr %i.nz, align 1, !tbaa !76
  %i.oe = lshr i32 %i.oc, 8
  %i.of = load i8, ptr %4, align 1, !tbaa !76
  %i.og = trunc nuw nsw i32 %i.oe to i8
  %i.oh = add i8 %i.of, %i.og
  store i8 %i.oh, ptr %4, align 1, !tbaa !76
  br label %iter.check224

iter.check224:                                    ; preds = %bb.n, %bb.m
  %min.iters.check208 = icmp samesign ult i64 %.165.lcssa.i29, 4
  br i1 %min.iters.check208, label %vec.epilog.scalar.ph225.preheader, label %vector.scevcheck201

vector.scevcheck201:                              ; preds = %iter.check224
  %i.oi = add nsw i64 %.165.lcssa.i29, -1         ; 2 uses
  %i.oj = trunc i64 %i.oi to i32
  %i.ok = xor i32 %.058.lcssa.i26, -1
  %i.ol = icmp ult i32 %i.ok, %i.oj
  %i.om = icmp ugt i64 %i.oi, 4294967295
  %i.on = or i1 %i.ol, %i.om
  br i1 %i.on, label %vec.epilog.scalar.ph225.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %vector.scevcheck201
  %i.oo = sub i64 %.161.lcssa.i31204, %.163.lcssa.i30203
  %diff.check205 = icmp ugt i64 %i.oo, -32
  %i.op = sub i64 %i.a, %.163.lcssa.i30203
  %diff.check206 = icmp ugt i64 %i.op, -32
  %conflict.rdx207 = or i1 %diff.check205, %diff.check206
  br i1 %conflict.rdx207, label %vec.epilog.scalar.ph225.preheader, label %vec.epilog.ph228

vec.epilog.ph228:                                 ; preds = %vector.memcheck202
  %n.vec229 = and i64 %.165.lcssa.i29, 12         ; 3 uses
  %i.oq = trunc nuw nsw i64 %n.vec229 to i32
  %i.or = add i32 %.058.lcssa.i26, %i.oq          ; 2 uses
  %i.os = and i64 %.165.lcssa.i29, 3
  br label %vec.epilog.vector.body230

vec.epilog.vector.body230:                        ; preds = %vec.epilog.vector.body230, %vec.epilog.ph228
  %index231 = phi i64 [ 0, %vec.epilog.ph228 ], [ %index.next234, %vec.epilog.vector.body230 ] ; 2 uses
  %i.ot = trunc i64 %index231 to i32
  %i.ou = add i32 %.058.lcssa.i26, %i.ot
  %i.ov = zext i32 %i.ou to i64                   ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.ov
  %wide.load232 = load <4 x i8>, ptr %i.ow, align 1, !tbaa !76
  %i.ox = getelementptr inbounds nuw i8, ptr %5, i64 %i.ov
  %wide.load233 = load <4 x i8>, ptr %i.ox, align 1, !tbaa !76
  %i.oy = xor <4 x i8> %wide.load233, %wide.load232
  %i.oz = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.ov
  store <4 x i8> %i.oy, ptr %i.oz, align 1, !tbaa !76
  %index.next234 = add nuw i64 %index231, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next234, %n.vec229
  br i1 %i.pa, label %vec.epilog.middle.block235, label %vec.epilog.vector.body230, !llvm.loop !658

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body230
  %cmp.n236 = icmp eq i64 %.165.lcssa.i29, %n.vec229
  br i1 %cmp.n236, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph225.preheader

vec.epilog.scalar.ph225.preheader:                ; preds = %iter.check224, %vector.scevcheck201, %vector.memcheck202, %vec.epilog.middle.block235
  %.15989.i34.ph = phi i32 [ %.058.lcssa.i26, %vector.scevcheck201 ], [ %.058.lcssa.i26, %vector.memcheck202 ], [ %.058.lcssa.i26, %iter.check224 ], [ %i.or, %vec.epilog.middle.block235 ] ; 3 uses
  %.26688.i35.ph = phi i64 [ %.165.lcssa.i29, %vector.scevcheck201 ], [ %.165.lcssa.i29, %vector.memcheck202 ], [ %.165.lcssa.i29, %iter.check224 ], [ %i.os, %vec.epilog.middle.block235 ] ; 4 uses
  %xtraiter302 = and i64 %.26688.i35.ph, 1
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %vec.epilog.scalar.ph225.prol.loopexit, label %vec.epilog.scalar.ph225.prol

vec.epilog.scalar.ph225.prol:                     ; preds = %vec.epilog.scalar.ph225.preheader
  %i.pb = add nsw i64 %.26688.i35.ph, -1
  %i.pc = zext i32 %.15989.i34.ph to i64          ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !76
  %i.pf = getelementptr inbounds nuw i8, ptr %5, i64 %i.pc
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !76
  %i.ph = xor i8 %i.pg, %i.pe
  %i.pi = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.pc
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !76
  %i.pj = add i32 %.15989.i34.ph, 1               ; 2 uses
  br label %vec.epilog.scalar.ph225.prol.loopexit

vec.epilog.scalar.ph225.prol.loopexit:            ; preds = %vec.epilog.scalar.ph225.prol, %vec.epilog.scalar.ph225.preheader
  %.lcssa285.unr = phi i32 [ poison, %vec.epilog.scalar.ph225.preheader ], [ %i.pj, %vec.epilog.scalar.ph225.prol ]
  %.15989.i34.unr = phi i32 [ %.15989.i34.ph, %vec.epilog.scalar.ph225.preheader ], [ %i.pj, %vec.epilog.scalar.ph225.prol ]
  %.26688.i35.unr = phi i64 [ %.26688.i35.ph, %vec.epilog.scalar.ph225.preheader ], [ %i.pb, %vec.epilog.scalar.ph225.prol ]
  %i.pk = icmp eq i64 %.26688.i35.ph, 1
  br i1 %i.pk, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph225

vec.epilog.scalar.ph225:                          ; preds = %vec.epilog.scalar.ph225.prol.loopexit, %vec.epilog.scalar.ph225
  %.15989.i34 = phi i32 [ %i.qb, %vec.epilog.scalar.ph225 ], [ %.15989.i34.unr, %vec.epilog.scalar.ph225.prol.loopexit ] ; 3 uses
  %.26688.i35 = phi i64 [ %i.pt, %vec.epilog.scalar.ph225 ], [ %.26688.i35.unr, %vec.epilog.scalar.ph225.prol.loopexit ]
  %i.pl = zext i32 %.15989.i34 to i64             ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !76
  %i.po = getelementptr inbounds nuw i8, ptr %5, i64 %i.pl
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !76
  %i.pq = xor i8 %i.pp, %i.pn
  %i.pr = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.pl
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !76
  %i.ps = add i32 %.15989.i34, 1
  %i.pt = add nsw i64 %.26688.i35, -2             ; 2 uses
  %i.pu = zext i32 %i.ps to i64                   ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !76
  %i.px = getelementptr inbounds nuw i8, ptr %5, i64 %i.pu
  %i.py = load i8, ptr %i.px, align 1, !tbaa !76
  %i.pz = xor i8 %i.py, %i.pw
  %i.qa = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.pu
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !76
  %i.qb = add i32 %.15989.i34, 2                  ; 2 uses
  %.not68.i36.1 = icmp eq i64 %i.pt, 0
  br i1 %.not68.i36.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph225, !llvm.loop !659

bb.o:                                             ; preds = %bb.h
  br i1 %i.ht, label %.lr.ph.i76, label %._crit_edge.i52

.lr.ph.i76:                                       ; preds = %bb.o, %.lr.ph.i76
  %.05873.i77 = phi i32 [ %i.ql, %.lr.ph.i76 ], [ %i.hq, %bb.o ] ; 2 uses
  %.06072.i78 = phi ptr [ %i.qc, %.lr.ph.i76 ], [ %0, %bb.o ] ; 2 uses
  %.06271.i79 = phi ptr [ %i.qi, %.lr.ph.i76 ], [ %1, %bb.o ] ; 2 uses
  %.06470.i80 = phi i64 [ %i.qj, %.lr.ph.i76 ], [ %2, %bb.o ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.06072.i78, i64 1 ; 2 uses
  %i.qd = load i8, ptr %.06072.i78, align 1, !tbaa !76
  %i.qe = zext i32 %.05873.i77 to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %5, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !76
  %i.qh = xor i8 %i.qg, %i.qd
  %i.qi = getelementptr inbounds nuw i8, ptr %.06271.i79, i64 1 ; 2 uses
  store i8 %i.qh, ptr %.06271.i79, align 1, !tbaa !76
  %i.qj = add i64 %.06470.i80, -1                 ; 3 uses
  %i.qk = add i32 %.05873.i77, 1
  %i.ql = and i32 %i.qk, 15                       ; 3 uses
  %i.qm = icmp ne i32 %i.ql, 0
  %i.qn = icmp ne i64 %i.qj, 0
  %i.qo = select i1 %i.qm, i1 %i.qn, i1 false
  br i1 %i.qo, label %.lr.ph.i76, label %._crit_edge.i52, !llvm.loop !2

._crit_edge.i52:                                  ; preds = %.lr.ph.i76, %bb.o
  %.064.lcssa.i53 = phi i64 [ %2, %bb.o ], [ %i.qj, %.lr.ph.i76 ] ; 3 uses
  %.062.lcssa.i54 = phi ptr [ %1, %bb.o ], [ %i.qi, %.lr.ph.i76 ] ; 2 uses
  %.060.lcssa.i55 = phi ptr [ %0, %bb.o ], [ %i.qc, %.lr.ph.i76 ] ; 2 uses
  %.058.lcssa.i56 = phi i32 [ %i.hq, %bb.o ], [ %i.ql, %.lr.ph.i76 ] ; 7 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.0.copyload.i.i57 = load i32, ptr %i.qp, align 1
  %i.qq = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i57) ; 2 uses
  %i.qr = icmp ugt i64 %.064.lcssa.i53, 15
  br i1 %i.qr, label %.lr.ph82.i68, label %._crit_edge83.i58

.lr.ph82.i68:                                     ; preds = %._crit_edge.i52
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph82.i68
  %.05780.i69 = phi i32 [ %i.qq, %.lr.ph82.i68 ], [ %spec.select.i74, %bb.r ]
  %.16179.i70 = phi ptr [ %.060.lcssa.i55, %.lr.ph82.i68 ], [ %i.tu, %bb.r ] ; 2 uses
  %.16378.i71 = phi ptr [ %.062.lcssa.i54, %.lr.ph82.i68 ], [ %i.tt, %bb.r ] ; 2 uses
  %.16577.i72 = phi i64 [ %.064.lcssa.i53, %.lr.ph82.i68 ], [ %i.ts, %bb.r ] ; 2 uses
  %i.rd = lshr i64 %.16577.i72, 4
  %spec.store.select.i73 = tail call i64 @llvm.umin.i64(i64 %i.rd, i64 268435456) ; 3 uses
  %i.re = trunc nuw nsw i64 %spec.store.select.i73 to i32
  %i.rf = add i32 %.05780.i69, %i.re              ; 2 uses
  %i.rg = zext i32 %i.rf to i64                   ; 2 uses
  %i.rh = icmp samesign ugt i64 %spec.store.select.i73, %i.rg ; 2 uses
  %spec.select.i74 = select i1 %i.rh, i32 0, i32 %i.rf ; 4 uses
  %i.ri = select i1 %i.rh, i64 %i.rg, i64 0
  %spec.select69.i75 = sub nuw nsw i64 %spec.store.select.i73, %i.ri ; 2 uses
  tail call void @aes_nohw_ctr32_encrypt_blocks(ptr noundef readonly %.16179.i70, ptr noundef %.16378.i71, i64 noundef %spec.select69.i75, ptr noundef readonly %3, ptr noundef nonnull readonly %4)
  %i.rj = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select.i74)
  store i32 %i.rj, ptr %i.qp, align 1
  %i.rk = icmp eq i32 %spec.select.i74, 0
  br i1 %i.rk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.rl = load i8, ptr %i.qs, align 1, !tbaa !76
  %i.rm = zext i8 %i.rl to i32
  %i.rn = add nuw nsw i32 %i.rm, 1                ; 2 uses
  %i.ro = trunc i32 %i.rn to i8
  store i8 %i.ro, ptr %i.qs, align 1, !tbaa !76
  %i.rp = lshr i32 %i.rn, 8
  %i.rq = load i8, ptr %i.qt, align 1, !tbaa !76
  %i.rr = zext i8 %i.rq to i32
  %i.rs = add nuw nsw i32 %i.rp, %i.rr            ; 2 uses
  %i.rt = trunc i32 %i.rs to i8
  store i8 %i.rt, ptr %i.qt, align 1, !tbaa !76
  %i.ru = lshr i32 %i.rs, 8
  %i.rv = load i8, ptr %i.qu, align 1, !tbaa !76
  %i.rw = zext i8 %i.rv to i32
  %i.rx = add nuw nsw i32 %i.ru, %i.rw            ; 2 uses
  %i.ry = trunc i32 %i.rx to i8
  store i8 %i.ry, ptr %i.qu, align 1, !tbaa !76
  %i.rz = lshr i32 %i.rx, 8
  %i.sa = load i8, ptr %i.qv, align 1, !tbaa !76
  %i.sb = zext i8 %i.sa to i32
  %i.sc = add nuw nsw i32 %i.rz, %i.sb            ; 2 uses
  %i.sd = trunc i32 %i.sc to i8
  store i8 %i.sd, ptr %i.qv, align 1, !tbaa !76
  %i.se = lshr i32 %i.sc, 8
  %i.sf = load i8, ptr %i.qw, align 1, !tbaa !76
  %i.sg = zext i8 %i.sf to i32
  %i.sh = add nuw nsw i32 %i.se, %i.sg            ; 2 uses
  %i.si = trunc i32 %i.sh to i8
  store i8 %i.si, ptr %i.qw, align 1, !tbaa !76
  %i.sj = lshr i32 %i.sh, 8
  %i.sk = load i8, ptr %i.qx, align 1, !tbaa !76
  %i.sl = zext i8 %i.sk to i32
  %i.sm = add nuw nsw i32 %i.sj, %i.sl            ; 2 uses
  %i.sn = trunc i32 %i.sm to i8
  store i8 %i.sn, ptr %i.qx, align 1, !tbaa !76
  %i.so = lshr i32 %i.sm, 8
  %i.sp = load i8, ptr %i.qy, align 1, !tbaa !76
  %i.sq = zext i8 %i.sp to i32
  %i.sr = add nuw nsw i32 %i.so, %i.sq            ; 2 uses
  %i.ss = trunc i32 %i.sr to i8
  store i8 %i.ss, ptr %i.qy, align 1, !tbaa !76
  %i.st = lshr i32 %i.sr, 8
  %i.su = load i8, ptr %i.qz, align 1, !tbaa !76
  %i.sv = zext i8 %i.su to i32
  %i.sw = add nuw nsw i32 %i.st, %i.sv            ; 2 uses
  %i.sx = trunc i32 %i.sw to i8
  store i8 %i.sx, ptr %i.qz, align 1, !tbaa !76
  %i.sy = lshr i32 %i.sw, 8
  %i.sz = load i8, ptr %i.ra, align 1, !tbaa !76
  %i.ta = zext i8 %i.sz to i32
  %i.tb = add nuw nsw i32 %i.sy, %i.ta            ; 2 uses
  %i.tc = trunc i32 %i.tb to i8
  store i8 %i.tc, ptr %i.ra, align 1, !tbaa !76
  %i.td = lshr i32 %i.tb, 8
  %i.te = load i8, ptr %i.rb, align 1, !tbaa !76
  %i.tf = zext i8 %i.te to i32
  %i.tg = add nuw nsw i32 %i.td, %i.tf            ; 2 uses
  %i.th = trunc i32 %i.tg to i8
  store i8 %i.th, ptr %i.rb, align 1, !tbaa !76
  %i.ti = lshr i32 %i.tg, 8
  %i.tj = load i8, ptr %i.rc, align 1, !tbaa !76
  %i.tk = zext i8 %i.tj to i32
  %i.tl = add nuw nsw i32 %i.ti, %i.tk            ; 2 uses
  %i.tm = trunc i32 %i.tl to i8
  store i8 %i.tm, ptr %i.rc, align 1, !tbaa !76
  %i.tn = lshr i32 %i.tl, 8
  %i.to = load i8, ptr %4, align 1, !tbaa !76
  %i.tp = trunc nuw nsw i32 %i.tn to i8
  %i.tq = add i8 %i.to, %i.tp
  store i8 %i.tq, ptr %4, align 1, !tbaa !76
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.tr = shl nuw nsw i64 %spec.select69.i75, 4   ; 3 uses
  %i.ts = sub i64 %.16577.i72, %i.tr              ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.16378.i71, i64 %i.tr ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.16179.i70, i64 %i.tr ; 2 uses
  %i.tv = icmp ugt i64 %i.ts, 15
  br i1 %i.tv, label %bb.p, label %._crit_edge83.i58, !llvm.loop !3

._crit_edge83.i58:                                ; preds = %bb.r, %._crit_edge.i52
  %.165.lcssa.i59 = phi i64 [ %.064.lcssa.i53, %._crit_edge.i52 ], [ %i.ts, %bb.r ] ; 9 uses
  %.163.lcssa.i60 = phi ptr [ %.062.lcssa.i54, %._crit_edge.i52 ], [ %i.tt, %bb.r ] ; 5 uses
  %.161.lcssa.i61 = phi ptr [ %.060.lcssa.i55, %._crit_edge.i52 ], [ %i.tu, %bb.r ] ; 5 uses
  %.057.lcssa.i62 = phi i32 [ %i.qq, %._crit_edge.i52 ], [ %spec.select.i74, %bb.r ]
  %.163.lcssa.i60241 = ptrtoaddr ptr %.163.lcssa.i60 to i64 ; 2 uses
  %.161.lcssa.i61242 = ptrtoaddr ptr %.161.lcssa.i61 to i64
  %.not.i63 = icmp eq i64 %.165.lcssa.i59, 0
  br i1 %.not.i63, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge83.i58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @aes_nohw_ctr32_encrypt_blocks(ptr noundef nonnull readonly %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef readonly %3, ptr noundef nonnull readonly %4)
  %i.tw = add i32 %.057.lcssa.i62, 1              ; 2 uses
  %i.tx = tail call noundef i32 @llvm.bswap.i32(i32 %i.tw)
  store i32 %i.tx, ptr %i.qp, align 1
  %i.ty = icmp eq i32 %i.tw, 0
  br i1 %i.ty, label %bb.t, label %iter.check262

bb.t:                                             ; preds = %bb.s
  %i.tz = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !76
  %i.ub = zext i8 %i.ua to i32
  %i.uc = add nuw nsw i32 %i.ub, 1                ; 2 uses
  %i.ud = trunc i32 %i.uc to i8
  store i8 %i.ud, ptr %i.tz, align 1, !tbaa !76
  %i.ue = lshr i32 %i.uc, 8
  %i.uf = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !76
  %i.uh = zext i8 %i.ug to i32
  %i.ui = add nuw nsw i32 %i.ue, %i.uh            ; 2 uses
  %i.uj = trunc i32 %i.ui to i8
  store i8 %i.uj, ptr %i.uf, align 1, !tbaa !76
  %i.uk = lshr i32 %i.ui, 8
  %i.ul = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !76
  %i.un = zext i8 %i.um to i32
  %i.uo = add nuw nsw i32 %i.uk, %i.un            ; 2 uses
  %i.up = trunc i32 %i.uo to i8
  store i8 %i.up, ptr %i.ul, align 1, !tbaa !76
  %i.uq = lshr i32 %i.uo, 8
  %i.ur = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !76
  %i.ut = zext i8 %i.us to i32
  %i.uu = add nuw nsw i32 %i.uq, %i.ut            ; 2 uses
  %i.uv = trunc i32 %i.uu to i8
  store i8 %i.uv, ptr %i.ur, align 1, !tbaa !76
  %i.uw = lshr i32 %i.uu, 8
  %i.ux = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !76
  %i.uz = zext i8 %i.uy to i32
  %i.va = add nuw nsw i32 %i.uw, %i.uz            ; 2 uses
  %i.vb = trunc i32 %i.va to i8
  store i8 %i.vb, ptr %i.ux, align 1, !tbaa !76
  %i.vc = lshr i32 %i.va, 8
  %i.vd = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !76
  %i.vf = zext i8 %i.ve to i32
  %i.vg = add nuw nsw i32 %i.vc, %i.vf            ; 2 uses
  %i.vh = trunc i32 %i.vg to i8
  store i8 %i.vh, ptr %i.vd, align 1, !tbaa !76
  %i.vi = lshr i32 %i.vg, 8
  %i.vj = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !76
  %i.vl = zext i8 %i.vk to i32
  %i.vm = add nuw nsw i32 %i.vi, %i.vl            ; 2 uses
  %i.vn = trunc i32 %i.vm to i8
  store i8 %i.vn, ptr %i.vj, align 1, !tbaa !76
  %i.vo = lshr i32 %i.vm, 8
  %i.vp = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !76
  %i.vr = zext i8 %i.vq to i32
  %i.vs = add nuw nsw i32 %i.vo, %i.vr            ; 2 uses
  %i.vt = trunc i32 %i.vs to i8
  store i8 %i.vt, ptr %i.vp, align 1, !tbaa !76
  %i.vu = lshr i32 %i.vs, 8
  %i.vv = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !76
  %i.vx = zext i8 %i.vw to i32
  %i.vy = add nuw nsw i32 %i.vu, %i.vx            ; 2 uses
  %i.vz = trunc i32 %i.vy to i8
  store i8 %i.vz, ptr %i.vv, align 1, !tbaa !76
  %i.wa = lshr i32 %i.vy, 8
  %i.wb = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !76
  %i.wd = zext i8 %i.wc to i32
  %i.we = add nuw nsw i32 %i.wa, %i.wd            ; 2 uses
  %i.wf = trunc i32 %i.we to i8
  store i8 %i.wf, ptr %i.wb, align 1, !tbaa !76
  %i.wg = lshr i32 %i.we, 8
  %i.wh = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !76
  %i.wj = zext i8 %i.wi to i32
  %i.wk = add nuw nsw i32 %i.wg, %i.wj            ; 2 uses
  %i.wl = trunc i32 %i.wk to i8
  store i8 %i.wl, ptr %i.wh, align 1, !tbaa !76
  %i.wm = lshr i32 %i.wk, 8
  %i.wn = load i8, ptr %4, align 1, !tbaa !76
  %i.wo = trunc nuw nsw i32 %i.wm to i8
  %i.wp = add i8 %i.wn, %i.wo
  store i8 %i.wp, ptr %4, align 1, !tbaa !76
  br label %iter.check262

iter.check262:                                    ; preds = %bb.t, %bb.s
  %min.iters.check246 = icmp samesign ult i64 %.165.lcssa.i59, 4
  br i1 %min.iters.check246, label %vec.epilog.scalar.ph263.preheader, label %vector.scevcheck239

vector.scevcheck239:                              ; preds = %iter.check262
  %i.wq = add nsw i64 %.165.lcssa.i59, -1         ; 2 uses
  %i.wr = trunc i64 %i.wq to i32
  %i.ws = xor i32 %.058.lcssa.i56, -1
  %i.wt = icmp ult i32 %i.ws, %i.wr
  %i.wu = icmp ugt i64 %i.wq, 4294967295
  %i.wv = or i1 %i.wt, %i.wu
  br i1 %i.wv, label %vec.epilog.scalar.ph263.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %vector.scevcheck239
  %i.ww = sub i64 %.161.lcssa.i61242, %.163.lcssa.i60241
  %diff.check243 = icmp ugt i64 %i.ww, -32
  %i.wx = sub i64 %i.a, %.163.lcssa.i60241
  %diff.check244 = icmp ugt i64 %i.wx, -32
  %conflict.rdx245 = or i1 %diff.check243, %diff.check244
  br i1 %conflict.rdx245, label %vec.epilog.scalar.ph263.preheader, label %vec.epilog.ph266

vec.epilog.ph266:                                 ; preds = %vector.memcheck240
  %n.vec267 = and i64 %.165.lcssa.i59, 12         ; 3 uses
  %i.wy = trunc nuw nsw i64 %n.vec267 to i32
  %i.wz = add i32 %.058.lcssa.i56, %i.wy          ; 2 uses
  %i.xa = and i64 %.165.lcssa.i59, 3
  br label %vec.epilog.vector.body268

vec.epilog.vector.body268:                        ; preds = %vec.epilog.vector.body268, %vec.epilog.ph266
  %index269 = phi i64 [ 0, %vec.epilog.ph266 ], [ %index.next272, %vec.epilog.vector.body268 ] ; 2 uses
  %i.xb = trunc i64 %index269 to i32
  %i.xc = add i32 %.058.lcssa.i56, %i.xb
  %i.xd = zext i32 %i.xc to i64                   ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xd
  %wide.load270 = load <4 x i8>, ptr %i.xe, align 1, !tbaa !76
  %i.xf = getelementptr inbounds nuw i8, ptr %5, i64 %i.xd
  %wide.load271 = load <4 x i8>, ptr %i.xf, align 1, !tbaa !76
  %i.xg = xor <4 x i8> %wide.load271, %wide.load270
  %i.xh = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xd
  store <4 x i8> %i.xg, ptr %i.xh, align 1, !tbaa !76
  %index.next272 = add nuw i64 %index269, 4       ; 2 uses
  %i.xi = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.xi, label %vec.epilog.middle.block273, label %vec.epilog.vector.body268, !llvm.loop !660

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body268
  %cmp.n274 = icmp eq i64 %.165.lcssa.i59, %n.vec267
  br i1 %cmp.n274, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph263.preheader

vec.epilog.scalar.ph263.preheader:                ; preds = %iter.check262, %vector.scevcheck239, %vector.memcheck240, %vec.epilog.middle.block273
  %.15989.i64.ph = phi i32 [ %.058.lcssa.i56, %vector.scevcheck239 ], [ %.058.lcssa.i56, %vector.memcheck240 ], [ %.058.lcssa.i56, %iter.check262 ], [ %i.wz, %vec.epilog.middle.block273 ] ; 3 uses
  %.26688.i65.ph = phi i64 [ %.165.lcssa.i59, %vector.scevcheck239 ], [ %.165.lcssa.i59, %vector.memcheck240 ], [ %.165.lcssa.i59, %iter.check262 ], [ %i.xa, %vec.epilog.middle.block273 ] ; 4 uses
  %xtraiter304 = and i64 %.26688.i65.ph, 1
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol

vec.epilog.scalar.ph263.prol:                     ; preds = %vec.epilog.scalar.ph263.preheader
  %i.xj = add nsw i64 %.26688.i65.ph, -1
  %i.xk = zext i32 %.15989.i64.ph to i64          ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !76
  %i.xn = getelementptr inbounds nuw i8, ptr %5, i64 %i.xk
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !76
  %i.xp = xor i8 %i.xo, %i.xm
  %i.xq = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xk
  store i8 %i.xp, ptr %i.xq, align 1, !tbaa !76
  %i.xr = add i32 %.15989.i64.ph, 1               ; 2 uses
  br label %vec.epilog.scalar.ph263.prol.loopexit

vec.epilog.scalar.ph263.prol.loopexit:            ; preds = %vec.epilog.scalar.ph263.prol, %vec.epilog.scalar.ph263.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph263.preheader ], [ %i.xr, %vec.epilog.scalar.ph263.prol ]
  %.15989.i64.unr = phi i32 [ %.15989.i64.ph, %vec.epilog.scalar.ph263.preheader ], [ %i.xr, %vec.epilog.scalar.ph263.prol ]
  %.26688.i65.unr = phi i64 [ %.26688.i65.ph, %vec.epilog.scalar.ph263.preheader ], [ %i.xj, %vec.epilog.scalar.ph263.prol ]
  %i.xs = icmp eq i64 %.26688.i65.ph, 1
  br i1 %i.xs, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph263

vec.epilog.scalar.ph263:                          ; preds = %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263
  %.15989.i64 = phi i32 [ %i.yj, %vec.epilog.scalar.ph263 ], [ %.15989.i64.unr, %vec.epilog.scalar.ph263.prol.loopexit ] ; 3 uses
  %.26688.i65 = phi i64 [ %i.yb, %vec.epilog.scalar.ph263 ], [ %.26688.i65.unr, %vec.epilog.scalar.ph263.prol.loopexit ]
  %i.xt = zext i32 %.15989.i64 to i64             ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !76
  %i.xw = getelementptr inbounds nuw i8, ptr %5, i64 %i.xt
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !76
  %i.xy = xor i8 %i.xx, %i.xv
  %i.xz = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xt
  store i8 %i.xy, ptr %i.xz, align 1, !tbaa !76
  %i.ya = add i32 %.15989.i64, 1
  %i.yb = add nsw i64 %.26688.i65, -2             ; 2 uses
  %i.yc = zext i32 %i.ya to i64                   ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.yc
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !76
  %i.yf = getelementptr inbounds nuw i8, ptr %5, i64 %i.yc
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !76
  %i.yh = xor i8 %i.yg, %i.ye
  %i.yi = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.yc
  store i8 %i.yh, ptr %i.yi, align 1, !tbaa !76
  %i.yj = add i32 %.15989.i64, 2                  ; 2 uses
  %.not68.i66.1 = icmp eq i64 %i.yb, 0
  br i1 %.not68.i66.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph263, !llvm.loop !661

CRYPTO_ctr128_encrypt_ctr32.exit:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph225.prol.loopexit, %vec.epilog.scalar.ph225, %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263, %vec.epilog.middle.block, %vec.epilog.middle.block235, %vec.epilog.middle.block273, %._crit_edge83.i58, %._crit_edge83.i28, %._crit_edge83.i
  %.2.i37.sink = phi i32 [ %i.yj, %vec.epilog.scalar.ph263 ], [ %i.qb, %vec.epilog.scalar.ph225 ], [ %.058.lcssa.i, %._crit_edge83.i ], [ %.058.lcssa.i26, %._crit_edge83.i28 ], [ %.058.lcssa.i56, %._crit_edge83.i58 ], [ %i.wz, %vec.epilog.middle.block273 ], [ %i.or, %vec.epilog.middle.block235 ], [ %i.ge, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph263.prol.loopexit ], [ %.lcssa285.unr, %vec.epilog.scalar.ph225.prol.loopexit ], [ %.lcssa294.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ho, %vec.epilog.scalar.ph ]
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
  %min.iters.check = icmp samesign ult i64 %.165.lcssa, 4
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
  %n.vec121 = and i64 %.165.lcssa, 12             ; 3 uses
  %i.gb = trunc nuw nsw i64 %n.vec121 to i32
  %i.gc = add i32 %.058.lcssa, %i.gb              ; 2 uses
  %i.gd = and i64 %.165.lcssa, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.ge = trunc i64 %index122 to i32
  %i.gf = add i32 %.058.lcssa, %i.ge
  %i.gg = zext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gg
  %wide.load123 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !76
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 %i.gg
  %wide.load124 = load <4 x i8>, ptr %i.gi, align 1, !tbaa !76
  %i.gj = xor <4 x i8> %wide.load124, %wide.load123
  %i.gk = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gg
  store <4 x i8> %i.gj, ptr %i.gk, align 1, !tbaa !76
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !662

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %.165.lcssa, %n.vec121
  br i1 %cmp.n126, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.15989.ph = phi i32 [ %.058.lcssa, %vector.scevcheck ], [ %.058.lcssa, %vector.memcheck ], [ %.058.lcssa, %iter.check ], [ %i.gc, %vec.epilog.middle.block ] ; 3 uses
  %.26688.ph = phi i64 [ %.165.lcssa, %vector.scevcheck ], [ %.165.lcssa, %vector.memcheck ], [ %.165.lcssa, %iter.check ], [ %i.gd, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.26688.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gm = add nsw i64 %.26688.ph, -1
  %i.gn = zext i32 %.15989.ph to i64              ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !76
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 %i.gn
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !76
  %i.gs = xor i8 %i.gr, %i.gp
  %i.gt = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gn
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !76
  %i.gu = add i32 %.15989.ph, 1                   ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.15989.unr = phi i32 [ %.15989.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.26688.unr = phi i64 [ %.26688.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gm, %vec.epilog.scalar.ph.prol ]
  %i.gv = icmp eq i64 %.26688.ph, 1
  br i1 %i.gv, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15989 = phi i32 [ %i.hm, %vec.epilog.scalar.ph ], [ %.15989.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.26688 = phi i64 [ %i.he, %vec.epilog.scalar.ph ], [ %.26688.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gw = zext i32 %.15989 to i64                 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !76
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 %i.gw
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !76
  %i.hb = xor i8 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gw
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !76
  %i.hd = add i32 %.15989, 1
  %i.he = add nsw i64 %.26688, -2                 ; 2 uses
  %i.hf = zext i32 %i.hd to i64                   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !76
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 %i.hf
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !76
  %i.hk = xor i8 %i.hj, %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.hf
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !76
  %i.hm = add i32 %.15989, 2                      ; 2 uses
  %.not68.1 = icmp eq i64 %i.he, 0
  br i1 %.not68.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !663

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge83
  %.2 = phi i32 [ %.058.lcssa, %._crit_edge83 ], [ %i.gc, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hm, %vec.epilog.scalar.ph ]
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
end_hunk_0
begin_hunk_1_@AES_cbc_encrypt:bb.a
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
  br i1 %.not9.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @vpaes_encrypt(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef %3) #46
  br label %AES_encrypt.exit28

bb.j:                                             ; preds = %bb.h
  tail call void @aes_nohw_encrypt(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef %3)
  br label %AES_encrypt.exit28

AES_encrypt.exit28:                               ; preds = %bb.g, %bb.i, %bb.j
  %i.n = add i64 %.04145.i, -16                   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03947.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04046.i, i64 16 ; 2 uses
  %i.q = icmp ugt i64 %i.n, 15
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %AES_encrypt.exit28
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %AES_encrypt.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader44.i
  %.0.lcssa70.i = phi ptr [ %.04046.i, %._crit_edge.i ], [ %4, %.preheader44.i ] ; 15 uses
  %.039.lcssa69.i = phi ptr [ %i.o, %._crit_edge.i ], [ %0, %.preheader44.i ] ; 8 uses
  %.040.lcssa68.i = phi ptr [ %i.p, %._crit_edge.i ], [ %1, %.preheader44.i ] ; 24 uses
  %.041.lcssa67.i = phi i64 [ %i.n, %._crit_edge.i ], [ %2, %.preheader44.i ] ; 14 uses
  %.040.lcssa68.i39 = ptrtoaddr ptr %.040.lcssa68.i to i64 ; 3 uses
  %.0.lcssa70.i41 = ptrtoaddr ptr %.0.lcssa70.i to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.041.lcssa67.i, 4
  br i1 %min.iters.check, label %.preheader43.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.039.lcssa69.i40 = ptrtoaddr ptr %.039.lcssa69.i to i64
  %i.r = sub i64 %.039.lcssa69.i40, %.040.lcssa68.i39
  %diff.check = icmp ugt i64 %i.r, -32
  %i.s = sub i64 %.0.lcssa70.i41, %.040.lcssa68.i39
  %diff.check42 = icmp ugt i64 %i.s, -32
  %conflict.rdx = or i1 %diff.check, %diff.check42
  br i1 %conflict.rdx, label %.preheader43.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp ult i64 %.041.lcssa67.i, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !76
  %wide.load44 = load <16 x i8>, ptr %i.u, align 1, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load45 = load <16 x i8>, ptr %i.v, align 1, !tbaa !76
  %wide.load46 = load <16 x i8>, ptr %i.w, align 1, !tbaa !76
  %i.x = xor <16 x i8> %wide.load45, %wide.load
  %i.y = xor <16 x i8> %wide.load46, %wide.load44
  %i.z = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %i.x, ptr %i.z, align 1, !tbaa !76
  store <16 x i8> %i.y, ptr %i.aa, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !664

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec47 = and i64 %.041.lcssa67.i, 12          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index48
  %wide.load49 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index48
  %wide.load50 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !76
  %i.ad = xor <4 x i8> %wide.load50, %wide.load49
  %i.ae = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index48
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !76
  %index.next51 = add nuw i64 %index48, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !665

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %.041.lcssa67.i, %n.vec47
  br i1 %cmp.n52, label %iter.check69, label %.preheader43.i.preheader

.preheader43.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.03752.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec47, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.041.lcssa67.i, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol

.preheader43.i.prol:                              ; preds = %.preheader43.i.preheader, %.preheader43.i.prol
  %.03752.i.prol = phi i64 [ %i.am, %.preheader43.i.prol ], [ %.03752.i.ph, %.preheader43.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader43.i.prol ], [ 0, %.preheader43.i.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !76
  %i.ak = xor i8 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i.prol
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !76
  %i.am = add nuw nsw i64 %.03752.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol, !llvm.loop !666

.preheader43.i.prol.loopexit:                     ; preds = %.preheader43.i.prol, %.preheader43.i.preheader
  %.03752.i.unr = phi i64 [ %.03752.i.ph, %.preheader43.i.preheader ], [ %i.am, %.preheader43.i.prol ]
  %i.an = sub nsw i64 %.03752.i.ph, %.041.lcssa67.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %iter.check69, label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i
  %.03752.i = phi i64 [ %i.bq, %.preheader43.i ], [ %.03752.i.unr, %.preheader43.i.prol.loopexit ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !76
  %i.at = xor i8 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i
  store i8 %i.at, ptr %i.au, align 1, !tbaa !76
  %i.av = add nuw nsw i64 %.03752.i, 1            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !76
  %i.ba = xor i8 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.av
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !76
  %i.bc = add nuw nsw i64 %.03752.i, 2            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !76
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bc
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !76
  %i.bj = add nuw nsw i64 %.03752.i, 3            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !76
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bj
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !76
  %i.bq = add nuw nsw i64 %.03752.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bq, %.041.lcssa67.i
  br i1 %exitcond.not.i.3, label %iter.check69, label %.preheader43.i, !llvm.loop !667

iter.check69:                                     ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i, %vec.epilog.middle.block
  %i.br = sub nuw nsw i64 16, %.041.lcssa67.i     ; 2 uses
  %min.iters.check55 = icmp ugt i64 %.041.lcssa67.i, 8
  %i.bs = sub i64 %.0.lcssa70.i41, %.040.lcssa68.i39
  %diff.check54 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check55, i1 true, i1 %diff.check54
  br i1 %or.cond, label %.lr.ph54.i.preheader, label %vec.epilog.ph73

vec.epilog.ph73:                                  ; preds = %iter.check69
  %n.vec74 = and i64 %i.br, 24                    ; 3 uses
  %i.bt = add nuw nsw i64 %.041.lcssa67.i, %n.vec74
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.041.lcssa67.i
  %wide.load77 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.041.lcssa67.i
  store <8 x i8> %wide.load77, ptr %i.bv, align 1, !tbaa !76
  %i.bw = icmp eq i64 %n.vec74, 8
  br i1 %i.bw, label %vec.epilog.middle.block79, label %vec.epilog.vector.body75.1

vec.epilog.vector.body75.1:                       ; preds = %vec.epilog.ph73
  %i.bx = add nuw nsw i64 %.041.lcssa67.i, 8      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bx
  %wide.load77.1 = load <8 x i8>, ptr %i.by, align 1, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bx
  store <8 x i8> %wide.load77.1, ptr %i.bz, align 1, !tbaa !76
  br label %vec.epilog.middle.block79

vec.epilog.middle.block79:                        ; preds = %vec.epilog.vector.body75.1, %vec.epilog.ph73
  %cmp.n80 = icmp eq i64 %i.br, %n.vec74
  br i1 %cmp.n80, label %._crit_edge55.i, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check69, %vec.epilog.middle.block79
  %.13853.i.ph = phi i64 [ %.041.lcssa67.i, %iter.check69 ], [ %i.bt, %vec.epilog.middle.block79 ] ; 4 uses
  %i.ca = sub i64 0, %.13853.i.ph
  %xtraiter84 = and i64 %i.ca, 3                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol

.lr.ph54.i.prol:                                  ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i.prol
  %.13853.i.prol = phi i64 [ %i.ce, %.lr.ph54.i.prol ], [ %.13853.i.ph, %.lr.ph54.i.preheader ] ; 3 uses
  %prol.iter86 = phi i64 [ %prol.iter86.next, %.lr.ph54.i.prol ], [ 0, %.lr.ph54.i.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i.prol
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i.prol
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !76
  %i.ce = add i64 %.13853.i.prol, 1               ; 2 uses
  %prol.iter86.next = add i64 %prol.iter86, 1     ; 2 uses
  %prol.iter86.cmp.not = icmp eq i64 %prol.iter86.next, %xtraiter84
  br i1 %prol.iter86.cmp.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol, !llvm.loop !668

.lr.ph54.i.prol.loopexit:                         ; preds = %.lr.ph54.i.prol, %.lr.ph54.i.preheader
  %.13853.i.unr = phi i64 [ %.13853.i.ph, %.lr.ph54.i.preheader ], [ %i.ce, %.lr.ph54.i.prol ]
  %i.cf = add i64 %.13853.i.ph, -13
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %._crit_edge55.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i
  %.13853.i = phi i64 [ %i.cw, %.lr.ph54.i ], [ %.13853.i.unr, %.lr.ph54.i.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !76
  %i.ck = add i64 %.13853.i, 1                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !76
  %i.cn = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !76
  %i.co = add i64 %.13853.i, 2                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !76
  %i.cs = add i64 %.13853.i, 3                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !76
  %i.cv = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cs
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !76
  %i.cw = add i64 %.13853.i, 4                    ; 2 uses
  %exitcond60.not.i.3 = icmp eq i64 %i.cw, 16
  br i1 %exitcond60.not.i.3, label %._crit_edge55.i, label %.lr.ph54.i, !llvm.loop !669

._crit_edge55.i:                                  ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i, %vec.epilog.middle.block79
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.cy = and i32 %i.cx, 33554432
  %.not.i25 = icmp eq i32 %i.cy, 0
  br i1 %.not.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge55.i
  tail call void @aes_hw_encrypt(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef %3) #46
  br label %AES_encrypt.exit

bb.l:                                             ; preds = %._crit_edge55.i
  %i.cz = and i32 %i.cx, 512
  %.not9.i = icmp eq i32 %i.cz, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @vpaes_encrypt(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef %3) #46
  br label %AES_encrypt.exit

bb.n:                                             ; preds = %bb.l
  tail call void @aes_nohw_encrypt(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef %3)
  br label %AES_encrypt.exit

AES_encrypt.exit:                                 ; preds = %bb.n, %bb.m, %bb.k, %._crit_edge.i
  %.1.i = phi ptr [ %.04046.i, %._crit_edge.i ], [ %.040.lcssa68.i, %bb.k ], [ %.040.lcssa68.i, %bb.m ], [ %.040.lcssa68.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.1.i, i64 16, i1 false)
  br label %CRYPTO_cbc128_encrypt.exit

bb.o:                                             ; preds = %bb.e
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @AES_decrypt)
  br label %CRYPTO_cbc128_encrypt.exit

CRYPTO_cbc128_encrypt.exit:                       ; preds = %AES_encrypt.exit, %bb.f, %bb.d, %bb.o, %bb.b
  ret void
}

declare void @aes_hw_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cbc128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %.preheader44

.preheader44:                                     ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 15
  br i1 %i.b, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.preheader44, %.lr.ph
  %.048 = phi ptr [ %.04046, %.lr.ph ], [ %4, %.preheader44 ] ; 2 uses
  %.03947 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.preheader44 ] ; 3 uses
  %.04046 = phi ptr [ %i.j, %.lr.ph ], [ %1, %.preheader44 ] ; 8 uses
  %.04145 = phi i64 [ %i.h, %.lr.ph ], [ %2, %.preheader44 ]
  %.0.copyload.i.i = load i64, ptr %.03947, align 1
  %.0.copyload.i7.i = load i64, ptr %.048, align 1
  %i.c = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.c, ptr %.04046, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.04046, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.03947, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.g = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.g, ptr %i.d, align 1
  tail call void %5(ptr noundef nonnull %.04046, ptr noundef nonnull %.04046, ptr noundef %3) #46
  %i.h = add i64 %.04145, -16                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03947, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04046, i64 16 ; 2 uses
  %i.k = icmp ugt i64 %i.h, 15
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader44, %._crit_edge
  %.0.lcssa70 = phi ptr [ %.04046, %._crit_edge ], [ %4, %.preheader44 ] ; 15 uses
  %.039.lcssa69 = phi ptr [ %i.i, %._crit_edge ], [ %0, %.preheader44 ] ; 8 uses
  %.040.lcssa68 = phi ptr [ %i.j, %._crit_edge ], [ %1, %.preheader44 ] ; 18 uses
  %.041.lcssa67 = phi i64 [ %i.h, %._crit_edge ], [ %2, %.preheader44 ] ; 14 uses
  %.040.lcssa6875 = ptrtoaddr ptr %.040.lcssa68 to i64 ; 3 uses
  %.0.lcssa7077 = ptrtoaddr ptr %.0.lcssa70 to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.041.lcssa67, 4
  br i1 %min.iters.check, label %.preheader43.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.039.lcssa6976 = ptrtoaddr ptr %.039.lcssa69 to i64
  %i.l = sub i64 %.039.lcssa6976, %.040.lcssa6875
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %.0.lcssa7077, %.040.lcssa6875
  %diff.check78 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check78
  br i1 %conflict.rdx, label %.preheader43.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check79 = icmp ult i64 %.041.lcssa67, 32
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !76
  %wide.load80 = load <16 x i8>, ptr %i.o, align 1, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load81 = load <16 x i8>, ptr %i.p, align 1, !tbaa !76
  %wide.load82 = load <16 x i8>, ptr %i.q, align 1, !tbaa !76
  %i.r = xor <16 x i8> %wide.load81, %wide.load
  %i.s = xor <16 x i8> %wide.load82, %wide.load80
  %i.t = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !tbaa !76
  store <16 x i8> %i.s, ptr %i.u, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !670

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec83 = and i64 %.041.lcssa67, 12            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %index84
  %wide.load85 = load <4 x i8>, ptr %i.v, align 1, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %index84
  %wide.load86 = load <4 x i8>, ptr %i.w, align 1, !tbaa !76
  %i.x = xor <4 x i8> %wide.load86, %wide.load85
  %i.y = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %index84
  store <4 x i8> %i.x, ptr %i.y, align 1, !tbaa !76
  %index.next87 = add nuw i64 %index84, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next87, %n.vec83
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !671

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %.041.lcssa67, %n.vec83
  br i1 %cmp.n88, label %iter.check105, label %.preheader43.preheader

.preheader43.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.03752.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec83, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.041.lcssa67, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader43.prol.loopexit, label %.preheader43.prol

.preheader43.prol:                                ; preds = %.preheader43.preheader, %.preheader43.prol
  %.03752.prol = phi i64 [ %i.ag, %.preheader43.prol ], [ %.03752.ph, %.preheader43.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader43.prol ], [ 0, %.preheader43.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %.03752.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.03752.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !76
  %i.ae = xor i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.03752.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !76
  %i.ag = add nuw nsw i64 %.03752.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader43.prol.loopexit, label %.preheader43.prol, !llvm.loop !672

.preheader43.prol.loopexit:                       ; preds = %.preheader43.prol, %.preheader43.preheader
  %.03752.unr = phi i64 [ %.03752.ph, %.preheader43.preheader ], [ %i.ag, %.preheader43.prol ]
  %i.ah = sub nsw i64 %.03752.ph, %.041.lcssa67
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %iter.check105, label %.preheader43

.preheader43:                                     ; preds = %.preheader43.prol.loopexit, %.preheader43
  %.03752 = phi i64 [ %i.bk, %.preheader43 ], [ %.03752.unr, %.preheader43.prol.loopexit ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %.03752
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.03752
  %i.am = load i8, ptr %i.al, align 1, !tbaa !76
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.03752
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !76
  %i.ap = add nuw nsw i64 %.03752, 1              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !76
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ap
  store i8 %i.au, ptr %i.av, align 1, !tbaa !76
  %i.aw = add nuw nsw i64 %.03752, 2              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !76
  %i.bb = xor i8 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.aw
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !76
  %i.bd = add nuw nsw i64 %.03752, 3              ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !76
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.bd
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !76
  %i.bk = add nuw nsw i64 %.03752, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bk, %.041.lcssa67
  br i1 %exitcond.not.3, label %iter.check105, label %.preheader43, !llvm.loop !673

iter.check105:                                    ; preds = %.preheader43.prol.loopexit, %.preheader43, %vec.epilog.middle.block
  %i.bl = sub nuw nsw i64 16, %.041.lcssa67       ; 2 uses
  %min.iters.check91 = icmp ugt i64 %.041.lcssa67, 8
  %i.bm = sub i64 %.0.lcssa7077, %.040.lcssa6875
  %diff.check90 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check91, i1 true, i1 %diff.check90
  br i1 %or.cond, label %.lr.ph54.preheader, label %vec.epilog.ph109

vec.epilog.ph109:                                 ; preds = %iter.check105
  %n.vec110 = and i64 %i.bl, 24                   ; 3 uses
  %i.bn = add nuw nsw i64 %.041.lcssa67, %n.vec110
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.041.lcssa67
  %wide.load113 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.041.lcssa67
  store <8 x i8> %wide.load113, ptr %i.bp, align 1, !tbaa !76
  %i.bq = icmp eq i64 %n.vec110, 8
  br i1 %i.bq, label %vec.epilog.middle.block115, label %vec.epilog.vector.body111.1

vec.epilog.vector.body111.1:                      ; preds = %vec.epilog.ph109
  %i.br = add nuw nsw i64 %.041.lcssa67, 8        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.br
  %wide.load113.1 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.br
  store <8 x i8> %wide.load113.1, ptr %i.bt, align 1, !tbaa !76
  br label %vec.epilog.middle.block115

vec.epilog.middle.block115:                       ; preds = %vec.epilog.vector.body111.1, %vec.epilog.ph109
  %cmp.n116 = icmp eq i64 %i.bl, %n.vec110
  br i1 %cmp.n116, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %iter.check105, %vec.epilog.middle.block115
  %.13853.ph = phi i64 [ %.041.lcssa67, %iter.check105 ], [ %i.bn, %vec.epilog.middle.block115 ] ; 4 uses
  %i.bu = sub i64 0, %.13853.ph
  %xtraiter120 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader, %.lr.ph54.prol
  %.13853.prol = phi i64 [ %i.by, %.lr.ph54.prol ], [ %.13853.ph, %.lr.ph54.preheader ] ; 3 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph54.prol ], [ 0, %.lr.ph54.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.13853.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.13853.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !76
  %i.by = add i64 %.13853.prol, 1                 ; 2 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol, !llvm.loop !674

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %.13853.unr = phi i64 [ %.13853.ph, %.lr.ph54.preheader ], [ %i.by, %.lr.ph54.prol ]
  %i.bz = add i64 %.13853.ph, -13
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54
  %.13853 = phi i64 [ %i.cq, %.lr.ph54 ], [ %.13853.unr, %.lr.ph54.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.13853
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.13853
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !76
  %i.ce = add i64 %.13853, 1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !76
  %i.ch = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !76
  %i.ci = add i64 %.13853, 2                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !76
  %i.cl = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !76
  %i.cm = add i64 %.13853, 3                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !76
  %i.cp = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !76
  %i.cq = add i64 %.13853, 4                      ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.cq, 16
  br i1 %exitcond60.not.3, label %._crit_edge55, label %.lr.ph54, !llvm.loop !675

._crit_edge55:                                    ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54, %vec.epilog.middle.block115
  tail call void %5(ptr noundef nonnull %.040.lcssa68, ptr noundef nonnull %.040.lcssa68, ptr noundef %3) #46
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge55, %._crit_edge
  %.1 = phi ptr [ %.040.lcssa68, %._crit_edge55 ], [ %.04046, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.1, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.d = icmp ugt ptr %0, inttoptr (i64 31 to ptr)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -32
  %.not = icmp uge i64 %i.g, %i.e
  %or.cond.not94 = and i1 %i.d, %.not
  %i.h = icmp ult ptr %0, %1
  %or.cond90 = or i1 %i.h, %or.cond.not94
  %i.i = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %or.cond90, label %.preheader95, label %.preheader96

.preheader96:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph

.preheader95:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %.preheader95, %.lr.ph108
  %.070107 = phi ptr [ %i.q, %.lr.ph108 ], [ %0, %.preheader95 ] ; 4 uses
  %.071106 = phi ptr [ %.070107, %.lr.ph108 ], [ %4, %.preheader95 ] ; 2 uses
  %.075105 = phi ptr [ %i.r, %.lr.ph108 ], [ %1, %.preheader95 ] ; 5 uses
  %.080104 = phi i64 [ %i.p, %.lr.ph108 ], [ %2, %.preheader95 ]
  tail call void %5(ptr noundef %.070107, ptr noundef %.075105, ptr noundef %3) #46
  %.0.copyload.i.i = load i64, ptr %.075105, align 1
  %.0.copyload.i7.i = load i64, ptr %.071106, align 1
  %i.l = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.l, ptr %.075105, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.075105, i64 8 ; 2 uses
  %.0.copyload.i.1.i = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.071106, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.o, ptr %i.m, align 1
  %i.p = add i64 %.080104, -16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.070107, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.075105, i64 16 ; 2 uses
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %.lr.ph108, label %._crit_edge, !llvm.loop !676

._crit_edge:                                      ; preds = %.lr.ph108, %.preheader95
  %.080.lcssa = phi i64 [ %2, %.preheader95 ], [ %i.p, %.lr.ph108 ]
  %.075.lcssa = phi ptr [ %1, %.preheader95 ], [ %i.r, %.lr.ph108 ]
  %.071.lcssa = phi ptr [ %4, %.preheader95 ], [ %.070107, %.lr.ph108 ]
  %.070.lcssa = phi ptr [ %0, %.preheader95 ], [ %i.q, %.lr.ph108 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.071.lcssa, i64 16, i1 false)
  br label %.loopexit97

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1101 = phi ptr [ %i.y, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.176100 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.18199 = phi i64 [ %i.x, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  call void %5(ptr noundef %.1101, ptr noundef nonnull %i.b, ptr noundef %3) #46
  %.0.copyload.i = load i64, ptr %.1101, align 1
  %.0.copyload.i91 = load i64, ptr %i.b, align 16
  %.0.copyload.i92 = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i92, %.0.copyload.i91
  store i64 %i.t, ptr %.176100, align 1
  store i64 %.0.copyload.i, ptr %4, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.1101, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.176100, i64 8
  %.0.copyload.i91.1 = load i64, ptr %i.j, align 8
  %.0.copyload.i92.1 = load i64, ptr %i.k, align 1
  %i.w = xor i64 %.0.copyload.i92.1, %.0.copyload.i91.1
  store i64 %i.w, ptr %i.v, align 1
  store i64 %.0.copyload.i.1, ptr %i.k, align 1
  %i.x = add i64 %.18199, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1101, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.176100, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %.lr.ph, label %.loopexit97, !llvm.loop !677

.loopexit97:                                      ; preds = %.lr.ph, %._crit_edge
  %.282 = phi i64 [ %.080.lcssa, %._crit_edge ], [ %i.x, %.lr.ph ] ; 2 uses
  %.277 = phi ptr [ %.075.lcssa, %._crit_edge ], [ %i.z, %.lr.ph ]
  %.2 = phi ptr [ %.070.lcssa, %._crit_edge ], [ %i.y, %.lr.ph ]
  %.not87 = icmp eq i64 %.282, 0
  br i1 %.not87, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader96, %.loopexit97
  %.2134 = phi ptr [ %.2, %.loopexit97 ], [ %0, %.preheader96 ] ; 17 uses
  %.277133 = phi ptr [ %.277, %.loopexit97 ], [ %1, %.preheader96 ] ; 9 uses
  %.282132 = phi i64 [ %.282, %.loopexit97 ], [ %2, %.preheader96 ] ; 21 uses
  %.2134195 = ptrtoaddr ptr %.2134 to i64
  call void %5(ptr noundef %.2134, ptr noundef nonnull %i.b, ptr noundef %3) #46
  %i.ab = sub nuw nsw i64 17, %.282132            ; 4 uses
  %min.iters.check = icmp ult i64 %.282132, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = getelementptr i8, ptr %.277133, i64 %.282132 ; 3 uses
  %i.ad = getelementptr i8, ptr %4, i64 %.282132  ; 3 uses
  %i.ae = getelementptr i8, ptr %.2134, i64 %.282132 ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %.282132 ; 2 uses
  %bound0 = icmp ult ptr %.277133, %i.ad
  %bound1 = icmp ult ptr %4, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %.277133, %i.ae
  %bound1164 = icmp ult ptr %.2134, %i.ac
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %.277133, %i.af
  %bound1167 = icmp ult ptr %i.b, %i.ac
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %4, %i.ae
  %bound1171 = icmp ult ptr %.2134, %i.ad
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %4, %i.af
  %bound1175 = icmp ult ptr %i.b, %i.ad
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  br i1 %conflict.rdx177, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check178 = icmp ult i64 %.282132, 32
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %.282132, 28
  %n.vec = and i64 %.282132, -32                  ; 5 uses
  %i.ah = or disjoint i64 %i.ab, %n.vec           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2134, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !76, !alias.scope !690
  %wide.load179 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !76, !alias.scope !690
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load180 = load <16 x i8>, ptr %i.ak, align 16, !tbaa !76, !alias.scope !691
  %wide.load181 = load <16 x i8>, ptr %i.al, align 16, !tbaa !76, !alias.scope !691
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load182 = load <16 x i8>, ptr %i.am, align 1, !tbaa !76, !alias.scope !692, !noalias !693
  %wide.load183 = load <16 x i8>, ptr %i.an, align 1, !tbaa !76, !alias.scope !692, !noalias !693
  %i.ao = xor <16 x i8> %wide.load182, %wide.load180
  %i.ap = xor <16 x i8> %wide.load183, %wide.load181
  %i.aq = getelementptr inbounds nuw i8, ptr %.277133, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !76, !alias.scope !694, !noalias !695
end_hunk_1
begin_hunk_2_@CRYPTO_cbc128_decrypt:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %.274114.prol
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !76
  %i.cd = add nuw nsw i64 %.274114.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter228
  br i1 %prol.iter.cmp.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol, !llvm.loop !687

.lr.ph115.prol.loopexit:                          ; preds = %.lr.ph115.prol, %.lr.ph115.preheader
  %.274114.unr = phi i64 [ %.274114.ph, %.lr.ph115.preheader ], [ %i.cd, %.lr.ph115.prol ]
  %i.ce = sub i64 %.274114.ph, %indvars.iv.lcssa
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %.loopexit, label %.lr.ph115

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.173113 = phi i64 [ %i.cx, %vec.epilog.scalar.ph ], [ %.173113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2134, i64 %.173113
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !76
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %.173113
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !76
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %.173113 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !76
  %i.cm = xor i8 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.277133, i64 %.173113
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !76
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !76
  %i.co = add nuw nsw i64 %.173113, 1             ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %i.co ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !76
  %i.cv = xor i8 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.277133, i64 %i.co
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !76
  store i8 %i.cq, ptr %i.ct, align 1, !tbaa !76
  %i.cx = add nuw nsw i64 %.173113, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %.282132
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check209.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !688

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %.274114 = phi i64 [ %i.dn, %.lr.ph115 ], [ %.274114.unr, %.lr.ph115.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %.274114
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !76
  %i.db = add nuw nsw i64 %.274114, 1             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !76
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !76
  %i.df = add nuw nsw i64 %.274114, 2             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !76
  %i.dj = add nuw nsw i64 %.274114, 3             ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !76
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !76
  %i.dn = add nuw nsw i64 %.274114, 4             ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %i.dn, %indvars.iv.lcssa
  br i1 %exitcond123.not.3, label %.loopexit, label %.lr.ph115, !llvm.loop !689

.loopexit:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block206, %vec.epilog.middle.block219, %.loopexit97
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
  %min.iters.check = icmp samesign ult i64 %.139.lcssa.i, 4
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
  %n.vec49 = and i64 %.139.lcssa.i, 12            ; 3 uses
  %i.aq = trunc nuw nsw i64 %n.vec49 to i32
  %i.ar = add i32 %.1.lcssa.i, %i.aq              ; 2 uses
  %i.as = and i64 %.139.lcssa.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.at = trunc i64 %index50 to i32
  %i.au = add i32 %.1.lcssa.i, %i.at
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.av
  %wide.load51 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  %wide.load52 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !76
  %i.ay = xor <4 x i8> %wide.load52, %wide.load51
  %i.az = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.av
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !76
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !696

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %.139.lcssa.i, %n.vec49
  br i1 %cmp.n54, label %CRYPTO_ofb128_encrypt.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.258.i.ph = phi i32 [ %.1.lcssa.i, %vector.scevcheck ], [ %.1.lcssa.i, %vector.memcheck ], [ %.1.lcssa.i, %iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 3 uses
  %.24057.i.ph = phi i64 [ %.139.lcssa.i, %vector.scevcheck ], [ %.139.lcssa.i, %vector.memcheck ], [ %.139.lcssa.i, %iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.24057.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bb = add nsw i64 %.24057.i.ph, -1
  %i.bc = zext i32 %.258.i.ph to i64              ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !76
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.bc
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !76
  %i.bj = add i32 %.258.i.ph, 1                   ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bj, %vec.epilog.scalar.ph.prol ]
  %.258.i.unr = phi i32 [ %.258.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bj, %vec.epilog.scalar.ph.prol ]
  %.24057.i.unr = phi i64 [ %.24057.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bb, %vec.epilog.scalar.ph.prol ]
  %i.bk = icmp eq i64 %.24057.i.ph, 1
  br i1 %i.bk, label %CRYPTO_ofb128_encrypt.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.258.i = phi i32 [ %i.cb, %vec.epilog.scalar.ph ], [ %.258.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.24057.i = phi i64 [ %i.bt, %vec.epilog.scalar.ph ], [ %.24057.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.bl = zext i32 %.258.i to i64                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !76
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !76
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.bl
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !76
  %i.bs = add i32 %.258.i, 1
  %i.bt = add nsw i64 %.24057.i, -2               ; 2 uses
  %i.bu = zext i32 %i.bs to i64                   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bu
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !76
  %i.bz = xor i8 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !76
  %i.cb = add i32 %.258.i, 2                      ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.bt, 0
  br i1 %.not41.i.1, label %CRYPTO_ofb128_encrypt.exit, label %vec.epilog.scalar.ph, !llvm.loop !697

CRYPTO_ofb128_encrypt.exit:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge.i
  %.3.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.ar, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cb, %vec.epilog.scalar.ph ]
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
end_hunk_2
begin_hunk_3_@AES_cfb8_encrypt:bb.a
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
  %min.iters.check = icmp samesign ult i64 %.198.lcssa, 4
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
  %i.ax = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %i.ay = add nuw nsw i64 %.198.lcssa, %i.aw      ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 %i.ay     ; 2 uses
  %i.ba = getelementptr i8, ptr %.194.lcssa, i64 %i.aw ; 2 uses
  %i.bb = getelementptr i8, ptr %.194.lcssa, i64 %i.ay ; 2 uses
  %i.bc = getelementptr i8, ptr %.1.lcssa, i64 %i.aw ; 2 uses
  %i.bd = getelementptr i8, ptr %.1.lcssa, i64 %i.ay ; 2 uses
  %bound0 = icmp ult ptr %i.ax, %i.bb
  %bound1 = icmp ult ptr %i.ba, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %bound0234 = icmp ult ptr %i.ax, %i.bd
  %bound1235 = icmp ult ptr %i.bc, %i.az
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx = or i1 %found.conflict, %found.conflict236
  %bound0237 = icmp ult ptr %i.ba, %i.bd
  %bound1238 = icmp ult ptr %i.bc, %i.bb
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx, %found.conflict239
  br i1 %conflict.rdx240, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec246 = and i64 %.198.lcssa, 12             ; 3 uses
  %i.be = and i64 %.198.lcssa, 3
  %i.bf = trunc nuw nsw i64 %n.vec246 to i32
  %i.bg = add i32 %.1102.lcssa, %i.bf             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index247 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next250, %vec.epilog.vector.body ] ; 2 uses
  %i.bh = trunc i64 %index247 to i32
  %i.bi = add i32 %.1102.lcssa, %i.bh
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bj
  %wide.load248 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !76, !alias.scope !715
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bj ; 2 uses
  %wide.load249 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !76, !alias.scope !716, !noalias !717
  %i.bm = xor <4 x i8> %wide.load249, %wide.load248 ; 2 uses
  store <4 x i8> %i.bm, ptr %i.bl, align 1, !tbaa !76, !alias.scope !716, !noalias !717
  %i.bn = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bj
  store <4 x i8> %i.bm, ptr %i.bn, align 1, !tbaa !76, !alias.scope !718, !noalias !715
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next250, %n.vec246
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !705

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n251 = icmp eq i64 %.198.lcssa, %n.vec246
  br i1 %cmp.n251, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.299138.ph = phi i64 [ %.198.lcssa, %vector.scevcheck ], [ %.198.lcssa, %vector.memcheck ], [ %.198.lcssa, %iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.ph = phi i32 [ %.1102.lcssa, %vector.scevcheck ], [ %.1102.lcssa, %vector.memcheck ], [ %.1102.lcssa, %iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bp = add nsw i64 %.299138.ph, -1
  %i.bq = zext i32 %.3104137.ph to i64            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 %i.bq ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !76
  %i.bv = xor i8 %i.bu, %i.bs                     ; 2 uses
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bq
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !76
  %i.bx = add i32 %.3104137.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa323.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bx, %vec.epilog.scalar.ph.prol ]
  %.299138.unr = phi i64 [ %.299138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bp, %vec.epilog.scalar.ph.prol ]
  %.3104137.unr = phi i32 [ %.3104137.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bx, %vec.epilog.scalar.ph.prol ]
  %i.by = icmp eq i64 %.299138.ph, 1
  br i1 %i.by, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138 = phi i64 [ %i.ch, %vec.epilog.scalar.ph ], [ %.299138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137 = phi i32 [ %i.cp, %vec.epilog.scalar.ph ], [ %.3104137.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bz = zext i32 %.3104137 to i64               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !76
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %i.bz ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !76
  %i.ce = xor i8 %i.cd, %i.cb                     ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !76
  %i.cf = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bz
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !76
  %i.cg = add i32 %.3104137, 1
  %i.ch = add nsw i64 %.299138, -2                ; 2 uses
  %i.ci = zext i32 %i.cg to i64                   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !76
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !76
  %i.cn = xor i8 %i.cm, %i.ck                     ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !76
  %i.co = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.ci
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !76
  %i.cp = add i32 %.3104137, 2                    ; 2 uses
  %.not110.1 = icmp eq i64 %i.ch, 0
  br i1 %.not110.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !706

.preheader:                                       ; preds = %.lr.ph143, %.preheader114
  %.5106.lcssa = phi i32 [ %i.a, %.preheader114 ], [ %i.dq, %.lr.ph143 ] ; 4 uses
  %.3100.lcssa = phi i64 [ %2, %.preheader114 ], [ %i.do, %.lr.ph143 ] ; 3 uses
  %.295.lcssa = phi ptr [ %1, %.preheader114 ], [ %i.dn, %.lr.ph143 ] ; 4 uses
  %.2.lcssa = phi ptr [ %0, %.preheader114 ], [ %i.dk, %.lr.ph143 ] ; 4 uses
  %i.cq = icmp ugt i64 %.3100.lcssa, 15
  br i1 %i.cq, label %.lr.ph156.peel, label %._crit_edge157

.lr.ph156.peel:                                   ; preds = %.preheader
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %i.cr = icmp ult i32 %.5106.lcssa, 16
  br i1 %i.cr, label %.lr.ph150.peel, label %._crit_edge151.peel

.lr.ph150.peel:                                   ; preds = %.lr.ph156.peel
  %i.cs = zext nneg i32 %.5106.lcssa to i64       ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cs
  %.0.copyload.i112.peel = load i64, ptr %i.ct, align 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 %i.cs ; 2 uses
  %.0.copyload.i113.peel = load i64, ptr %i.cv, align 1
  %i.cw = xor i64 %.0.copyload.i113.peel, %.0.copyload.i112.peel
  store i64 %i.cw, ptr %i.cu, align 1
  store i64 %.0.copyload.i112.peel, ptr %i.cv, align 1
  %i.cx = icmp ult i32 %.5106.lcssa, 8
  br i1 %i.cx, label %.lr.ph150.1.peel, label %._crit_edge151.peel

.lr.ph150.1.peel:                                 ; preds = %.lr.ph150.peel
  %indvars.iv.next182.peel = add nuw nsw i64 %i.cs, 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next182.peel
  %.0.copyload.i112.1.peel = load i64, ptr %i.cy, align 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %indvars.iv.next182.peel
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.peel ; 2 uses
  %.0.copyload.i113.1.peel = load i64, ptr %i.da, align 1
  %i.db = xor i64 %.0.copyload.i113.1.peel, %.0.copyload.i112.1.peel
  store i64 %i.db, ptr %i.cz, align 1
  store i64 %.0.copyload.i112.1.peel, ptr %i.da, align 1
  br label %._crit_edge151.peel

._crit_edge151.peel:                              ; preds = %.lr.ph150.peel, %.lr.ph150.1.peel, %.lr.ph156.peel
  %i.dc = add i64 %.3100.lcssa, -16               ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16 ; 2 uses
  %i.df = icmp ugt i64 %i.dc, 15
  br i1 %i.df, label %.lr.ph156.preheader.peel.newph, label %._crit_edge157

.lr.ph156.preheader.peel.newph:                   ; preds = %._crit_edge151.peel
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156

.lr.ph143:                                        ; preds = %.preheader114, %.lr.ph143
  %.2142 = phi ptr [ %i.dk, %.lr.ph143 ], [ %0, %.preheader114 ] ; 2 uses
  %.295141 = phi ptr [ %i.dn, %.lr.ph143 ], [ %1, %.preheader114 ] ; 2 uses
  %.3100140 = phi i64 [ %i.do, %.lr.ph143 ], [ %2, %.preheader114 ]
  %.5106139 = phi i32 [ %i.dq, %.lr.ph143 ], [ %i.a, %.preheader114 ] ; 2 uses
  %i.dh = zext i32 %.5106139 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %.2142, i64 1 ; 2 uses
  %i.dl = load i8, ptr %.2142, align 1, !tbaa !76 ; 2 uses
  %i.dm = xor i8 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %.295141, i64 1 ; 2 uses
  store i8 %i.dm, ptr %.295141, align 1, !tbaa !76
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !76
  %i.do = add i64 %.3100140, -1                   ; 3 uses
  %i.dp = add i32 %.5106139, 1
  %i.dq = and i32 %i.dp, 15                       ; 3 uses
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = icmp ne i64 %i.do, 0
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %.lr.ph143, label %.preheader, !llvm.loop !707

.lr.ph156:                                        ; preds = %.lr.ph156.preheader.peel.newph, %.lr.ph156
  %.3155 = phi ptr [ %i.ea, %.lr.ph156 ], [ %i.de, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.396154 = phi ptr [ %i.dz, %.lr.ph156 ], [ %i.dd, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.4153 = phi i64 [ %i.dy, %.lr.ph156 ], [ %i.dc, %.lr.ph156.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %.0.copyload.i112 = load i64, ptr %.3155, align 1 ; 2 uses
  %.0.copyload.i113 = load i64, ptr %4, align 1
  %i.du = xor i64 %.0.copyload.i113, %.0.copyload.i112
  store i64 %i.du, ptr %.396154, align 1
  store i64 %.0.copyload.i112, ptr %4, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.3155, i64 8
  %.0.copyload.i112.1 = load i64, ptr %i.dv, align 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.396154, i64 8
  %.0.copyload.i113.1 = load i64, ptr %i.dg, align 1
  %i.dx = xor i64 %.0.copyload.i113.1, %.0.copyload.i112.1
  store i64 %i.dx, ptr %i.dw, align 1
  store i64 %.0.copyload.i112.1, ptr %i.dg, align 1
  %i.dy = add i64 %.4153, -16                     ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.396154, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.3155, i64 16 ; 2 uses
  %i.eb = icmp ugt i64 %i.dy, 15
  br i1 %i.eb, label %.lr.ph156, label %._crit_edge157, !llvm.loop !708

._crit_edge157:                                   ; preds = %._crit_edge151.peel, %.lr.ph156, %.preheader
  %.6.lcssa = phi i32 [ %.5106.lcssa, %.preheader ], [ 0, %.lr.ph156 ], [ 0, %._crit_edge151.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.3100.lcssa, %.preheader ], [ %i.dc, %._crit_edge151.peel ], [ %i.dy, %.lr.ph156 ] ; 10 uses
  %.396.lcssa = phi ptr [ %.295.lcssa, %.preheader ], [ %i.dd, %._crit_edge151.peel ], [ %i.dz, %.lr.ph156 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.de, %._crit_edge151.peel ], [ %i.ea, %.lr.ph156 ] ; 6 uses
  %.not107 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not107, label %.loopexit, label %iter.check300

iter.check300:                                    ; preds = %._crit_edge157
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %min.iters.check272 = icmp samesign ult i64 %.4.lcssa, 4
  br i1 %min.iters.check272, label %vec.epilog.scalar.ph301.preheader, label %vector.scevcheck254

vector.scevcheck254:                              ; preds = %iter.check300
  %i.ec = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = xor i32 %.6.lcssa, -1
  %i.ef = icmp ult i32 %i.ee, %i.ed
  %i.eg = icmp ugt i64 %i.ec, 4294967295
  %i.eh = or i1 %i.ef, %i.eg
  br i1 %i.eh, label %vec.epilog.scalar.ph301.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %vector.scevcheck254
  %i.ei = zext i32 %.6.lcssa to i64               ; 4 uses
  %i.ej = getelementptr i8, ptr %.396.lcssa, i64 %i.ei ; 2 uses
  %i.ek = add nuw nsw i64 %.4.lcssa, %i.ei        ; 3 uses
  %i.el = getelementptr i8, ptr %.396.lcssa, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  %i.en = getelementptr i8, ptr %4, i64 %i.ek     ; 2 uses
  %i.eo = getelementptr i8, ptr %.3.lcssa, i64 %i.ei ; 2 uses
  %i.ep = getelementptr i8, ptr %.3.lcssa, i64 %i.ek ; 2 uses
  %bound0274 = icmp ult ptr %i.ej, %i.en
  %bound1275 = icmp ult ptr %i.em, %i.el
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0277 = icmp ult ptr %i.ej, %i.ep
  %bound1278 = icmp ult ptr %i.eo, %i.el
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %found.conflict276, %found.conflict279
  %bound0281 = icmp ult ptr %i.em, %i.ep
  %bound1282 = icmp ult ptr %i.eo, %i.en
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx280, %found.conflict283
  br i1 %conflict.rdx284, label %vec.epilog.scalar.ph301.preheader, label %vec.epilog.ph304

vec.epilog.ph304:                                 ; preds = %vector.memcheck273
  %n.vec305 = and i64 %.4.lcssa, 12               ; 3 uses
  %i.eq = and i64 %.4.lcssa, 3
  %i.er = trunc nuw nsw i64 %n.vec305 to i32
  %i.es = add i32 %.6.lcssa, %i.er                ; 2 uses
  br label %vec.epilog.vector.body306

vec.epilog.vector.body306:                        ; preds = %vec.epilog.vector.body306, %vec.epilog.ph304
  %index307 = phi i64 [ 0, %vec.epilog.ph304 ], [ %index.next310, %vec.epilog.vector.body306 ] ; 2 uses
  %i.et = trunc i64 %index307 to i32
  %i.eu = add i32 %.6.lcssa, %i.et
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 %i.ev ; 2 uses
  %wide.load308 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !76, !alias.scope !719, !noalias !720
  %i.ex = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ev
  %wide.load309 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !76, !alias.scope !720 ; 2 uses
  %i.ey = xor <4 x i8> %wide.load309, %wide.load308
  %i.ez = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ev
  store <4 x i8> %i.ey, ptr %i.ez, align 1, !tbaa !76, !alias.scope !721, !noalias !722
  store <4 x i8> %wide.load309, ptr %i.ew, align 1, !tbaa !76, !alias.scope !719, !noalias !720
  %index.next310 = add nuw i64 %index307, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.fa, label %vec.epilog.middle.block311, label %vec.epilog.vector.body306, !llvm.loop !713

vec.epilog.middle.block311:                       ; preds = %vec.epilog.vector.body306
  %cmp.n312 = icmp eq i64 %.4.lcssa, %n.vec305
  br i1 %cmp.n312, label %.loopexit, label %vec.epilog.scalar.ph301.preheader

vec.epilog.scalar.ph301.preheader:                ; preds = %iter.check300, %vector.scevcheck254, %vector.memcheck273, %vec.epilog.middle.block311
  %.5163.ph = phi i64 [ %.4.lcssa, %vector.scevcheck254 ], [ %.4.lcssa, %vector.memcheck273 ], [ %.4.lcssa, %iter.check300 ], [ %i.eq, %vec.epilog.middle.block311 ] ; 4 uses
  %.8162.ph = phi i32 [ %.6.lcssa, %vector.scevcheck254 ], [ %.6.lcssa, %vector.memcheck273 ], [ %.6.lcssa, %iter.check300 ], [ %i.es, %vec.epilog.middle.block311 ] ; 3 uses
  %xtraiter333 = and i64 %.5163.ph, 1
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %vec.epilog.scalar.ph301.prol.loopexit, label %vec.epilog.scalar.ph301.prol

vec.epilog.scalar.ph301.prol:                     ; preds = %vec.epilog.scalar.ph301.preheader
  %i.fb = add nsw i64 %.5163.ph, -1
  %i.fc = zext i32 %.8162.ph to i64               ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !76
  %i.ff = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fc
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !76  ; 2 uses
  %i.fh = xor i8 %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fc
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !76
  store i8 %i.fg, ptr %i.fd, align 1, !tbaa !76
  %i.fj = add i32 %.8162.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph301.prol.loopexit

vec.epilog.scalar.ph301.prol.loopexit:            ; preds = %vec.epilog.scalar.ph301.prol, %vec.epilog.scalar.ph301.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph301.preheader ], [ %i.fj, %vec.epilog.scalar.ph301.prol ]
  %.5163.unr = phi i64 [ %.5163.ph, %vec.epilog.scalar.ph301.preheader ], [ %i.fb, %vec.epilog.scalar.ph301.prol ]
  %.8162.unr = phi i32 [ %.8162.ph, %vec.epilog.scalar.ph301.preheader ], [ %i.fj, %vec.epilog.scalar.ph301.prol ]
  %i.fk = icmp eq i64 %.5163.ph, 1
  br i1 %i.fk, label %.loopexit, label %vec.epilog.scalar.ph301

vec.epilog.scalar.ph301:                          ; preds = %vec.epilog.scalar.ph301.prol.loopexit, %vec.epilog.scalar.ph301
  %.5163 = phi i64 [ %i.ft, %vec.epilog.scalar.ph301 ], [ %.5163.unr, %vec.epilog.scalar.ph301.prol.loopexit ]
  %.8162 = phi i32 [ %i.gb, %vec.epilog.scalar.ph301 ], [ %.8162.unr, %vec.epilog.scalar.ph301.prol.loopexit ] ; 3 uses
  %i.fl = zext i32 %.8162 to i64                  ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 %i.fl ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !76
  %i.fo = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fl
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !76  ; 2 uses
  %i.fq = xor i8 %i.fp, %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fl
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !76
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !76
  %i.fs = add i32 %.8162, 1
  %i.ft = add nsw i64 %.5163, -2                  ; 2 uses
  %i.fu = zext i32 %i.fs to i64                   ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !76
  %i.fx = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fu
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !76  ; 2 uses
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !76
  store i8 %i.fy, ptr %i.fv, align 1, !tbaa !76
  %i.gb = add i32 %.8162, 2                       ; 2 uses
  %.not108.1 = icmp eq i64 %i.ft, 0
  br i1 %.not108.1, label %.loopexit, label %vec.epilog.scalar.ph301, !llvm.loop !714

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph301.prol.loopexit, %vec.epilog.scalar.ph301, %vec.epilog.middle.block, %vec.epilog.middle.block311, %._crit_edge157, %._crit_edge132
  %storemerge = phi i32 [ %.1102.lcssa, %._crit_edge132 ], [ %i.gb, %vec.epilog.scalar.ph301 ], [ %.6.lcssa, %._crit_edge157 ], [ %i.es, %vec.epilog.middle.block311 ], [ %i.bg, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph301.prol.loopexit ], [ %.lcssa323.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cp, %vec.epilog.scalar.ph ]
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
end_hunk_3
begin_hunk_4_@CRYPTO_gcm128_aad:bb.a
  %.257 = phi i32 [ 0, %bb.a ], [ 1, %.loopexit ], [ 0, %bb.b ]
  ret i32 %.257
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_encrypt(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !467 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !464 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !468  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !469
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %i.k = icmp ugt i64 %i.j, 68719476704
  %i.l = icmp ult i64 %i.j, %4
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.j, ptr %i.h, align 8, !tbaa !469
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !465
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.m, align 4, !tbaa !465
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !466 ; 3 uses
  %.not123 = icmp eq i32 %i.q, 0
  br i1 %.not123, label %bb.g, label %.preheader133

.preheader133:                                    ; preds = %bb.d
  %.not166 = icmp eq i64 %4, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader133
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.097137 = phi i32 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 2 uses
  %.0101136 = phi i64 [ %4, %.lr.ph ], [ %i.ad, %bb.e ]
  %.0105135 = phi ptr [ %3, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.0111134 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0111134, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0111134, align 1, !tbaa !76
  %i.v = zext i32 %.097137 to i64                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !76
  %i.y = xor i8 %i.x, %i.u                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0105135, i64 1 ; 2 uses
  store i8 %i.y, ptr %.0105135, align 1, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.ac = xor i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !76
  %i.ad = add nsw i64 %.0101136, -1               ; 3 uses
  %i.ae = add i32 %.097137, 1
  %i.af = and i32 %i.ae, 15                       ; 4 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i64 %i.ad, 0
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %._crit_edge, !llvm.loop !2232

._crit_edge:                                      ; preds = %bb.e
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1112 = phi ptr [ %i.t, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %.1106 = phi ptr [ %i.z, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.1102 = phi i64 [ %i.ad, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.an = icmp ugt i64 %.1102, 3071
  br i1 %i.an, label %.preheader132.lr.ph, label %._crit_edge149

.preheader132.lr.ph:                              ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader132

.preheader132:                                    ; preds = %.preheader132.lr.ph, %bb.i
  %.096148 = phi i32 [ %i.am, %.preheader132.lr.ph ], [ %i.ar, %bb.i ]
  %.2103147 = phi i64 [ %.1102, %.preheader132.lr.ph ], [ %i.bb, %bb.i ]
  %.2107146 = phi ptr [ %.1106, %.preheader132.lr.ph ], [ %i.ax, %bb.i ]
  %.2113145 = phi ptr [ %.1112, %.preheader132.lr.ph ], [ %i.ay, %bb.i ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader132, %bb.h
  %.0144 = phi i64 [ 3072, %.preheader132 ], [ %i.az, %bb.h ]
  %.1143 = phi i32 [ %.096148, %.preheader132 ], [ %i.ar, %bb.h ]
  %.3108142 = phi ptr [ %.2107146, %.preheader132 ], [ %i.ax, %bb.h ] ; 4 uses
  %.3114141 = phi ptr [ %.2113145, %.preheader132 ], [ %i.ay, %bb.h ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef %1) #46
  %i.ar = add i32 %.1143, 1                       ; 4 uses
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.al, align 4
  %.0.copyload.i.i = load i64, ptr %.3114141, align 1
  %.0.copyload.i7.i = load i64, ptr %i.ao, align 16
  %i.at = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.at, ptr %.3108142, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.3108142, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.3114141, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.av, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.ap, align 8
  %i.aw = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.3108142, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3114141, i64 16 ; 3 uses
  %i.az = add nsw i64 %.0144, -16                 ; 2 uses
  %.not127 = icmp eq i64 %i.az, 0
  br i1 %.not127, label %bb.i, label %bb.h, !llvm.loop !2233

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds i8, ptr %.3108142, i64 -3056
  tail call void %i.g(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ba, i64 noundef 3072) #46
  %i.bb = add nsw i64 %.2103147, -3072            ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 3071
  br i1 %i.bc, label %.preheader132, label %._crit_edge149, !llvm.loop !2234

._crit_edge149:                                   ; preds = %bb.i, %bb.g
  %.2113.lcssa = phi ptr [ %.1112, %bb.g ], [ %i.ay, %bb.i ] ; 2 uses
  %.2107.lcssa = phi ptr [ %.1106, %bb.g ], [ %i.ax, %bb.i ] ; 2 uses
  %.2103.lcssa = phi i64 [ %.1102, %bb.g ], [ %i.bb, %bb.i ] ; 3 uses
  %.096.lcssa = phi i32 [ %i.am, %bb.g ], [ %i.ar, %bb.i ] ; 2 uses
  %i.bd = and i64 %.2103.lcssa, 4080              ; 3 uses
  %.not124 = icmp eq i64 %i.bd, 0
  br i1 %.not124, label %bb.k, label %.lr.ph158

.lr.ph158:                                        ; preds = %._crit_edge149
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph158, %bb.j
  %.2157 = phi i32 [ %.096.lcssa, %.lr.ph158 ], [ %i.bg, %bb.j ]
  %.3104156 = phi i64 [ %.2103.lcssa, %.lr.ph158 ], [ %i.bo, %bb.j ]
  %.4109155 = phi ptr [ %.2107.lcssa, %.lr.ph158 ], [ %i.bm, %bb.j ] ; 3 uses
  %.4115154 = phi ptr [ %.2113.lcssa, %.lr.ph158 ], [ %i.bn, %bb.j ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.be, ptr noundef %1) #46
  %i.bg = add i32 %.2157, 1                       ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.al, align 4
  %.0.copyload.i.i128 = load i64, ptr %.4115154, align 1
  %.0.copyload.i7.i129 = load i64, ptr %i.be, align 16
  %i.bi = xor i64 %.0.copyload.i7.i129, %.0.copyload.i.i128
  store i64 %i.bi, ptr %.4109155, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.4109155, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.4115154, i64 8
  %.0.copyload.i.1.i130 = load i64, ptr %i.bk, align 1
  %.0.copyload.i7.1.i131 = load i64, ptr %i.bf, align 8
  %i.bl = xor i64 %.0.copyload.i7.1.i131, %.0.copyload.i.1.i130
  store i64 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.4109155, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4115154, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.3104156, -16              ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %bb.j, label %._crit_edge159, !llvm.loop !2235

._crit_edge159:                                   ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = sub nsw i64 0, %i.bd
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 %i.br
  tail call void %i.g(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, i64 noundef %i.bd) #46
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge159, %._crit_edge149
  %.5116 = phi ptr [ %i.bn, %._crit_edge159 ], [ %.2113.lcssa, %._crit_edge149 ] ; 8 uses
  %.5110 = phi ptr [ %i.bm, %._crit_edge159 ], [ %.2107.lcssa, %._crit_edge149 ] ; 8 uses
  %.4 = phi i64 [ %i.bo, %._crit_edge159 ], [ %.2103.lcssa, %._crit_edge149 ] ; 15 uses
  %.3 = phi i32 [ %i.bg, %._crit_edge159 ], [ %.096.lcssa, %._crit_edge149 ]
  %.not125 = icmp eq i64 %.4, 0
  br i1 %.not125, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, ptr noundef %1) #46
  %i.bu = add i32 %.3, 1
  %i.bv = tail call noundef i32 @llvm.bswap.i32(i32 %i.bu)
  store i32 %i.bv, ptr %i.al, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.bx = add i64 %.4, -4294967297
  %or.cond242 = icmp ult i64 %i.bx, -4294967293
  br i1 %or.cond242, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.by = getelementptr i8, ptr %.5110, i64 %.4   ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 %.4
  %i.ca = getelementptr i8, ptr %i.bz, i64 64     ; 2 uses
  %i.cb = getelementptr i8, ptr %.5116, i64 %.4   ; 2 uses
  %bound0 = icmp ult ptr %.5110, %i.ca
  %bound1 = icmp ult ptr %i.bt, %i.by
  %found.conflict = and i1 %bound0, %bound1
  %bound0221 = icmp ult ptr %.5110, %i.cb
  %bound1222 = icmp ult ptr %.5116, %i.by
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx = or i1 %found.conflict, %found.conflict223
  %bound0224 = icmp ult ptr %i.bt, %i.cb
  %bound1225 = icmp ult ptr %.5116, %i.ca
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx, %found.conflict226
  br i1 %conflict.rdx227, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check228 = icmp ult i64 %.4, 16
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %.4, 12
  %n.vec = and i64 %.4, 8589934576                ; 4 uses
  %i.cd = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ce = and i64 %.4, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = and i64 %index, 4294967280              ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.cf
  %wide.load = load <16 x i8>, ptr %i.cg, align 1, !tbaa !76, !alias.scope !2243
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cf
  %wide.load229 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !76, !alias.scope !2244, !noalias !2243
  %i.ci = xor <16 x i8> %wide.load229, %wide.load ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.cf
  store <16 x i8> %i.ci, ptr %i.cj, align 1, !tbaa !76, !alias.scope !2245, !noalias !2246
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cf ; 2 uses
  %wide.load230 = load <16 x i8>, ptr %i.ck, align 1, !tbaa !76, !alias.scope !2244, !noalias !2243
  %i.cl = xor <16 x i8> %wide.load230, %i.ci
  store <16 x i8> %i.cl, ptr %i.ck, align 1, !tbaa !76, !alias.scope !2244, !noalias !2243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !2240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !471

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec232 = and i64 %.4, 8589934588             ; 3 uses
  %i.cn = trunc i64 %n.vec232 to i32              ; 2 uses
  %i.co = and i64 %.4, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index233 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 2 uses
  %i.cp = and i64 %index233, 4294967292           ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.cp
  %wide.load234 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !76, !alias.scope !2243
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cp
  %wide.load235 = load <4 x i8>, ptr %i.cr, align 1, !tbaa !76, !alias.scope !2244, !noalias !2243
  %i.cs = xor <4 x i8> %wide.load235, %wide.load234 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.cp
  store <4 x i8> %i.cs, ptr %i.ct, align 1, !tbaa !76, !alias.scope !2245, !noalias !2246
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cp ; 2 uses
  %wide.load236 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !76, !alias.scope !2244, !noalias !2243
  %i.cv = xor <4 x i8> %wide.load236, %i.cs
  store <4 x i8> %i.cv, ptr %i.cu, align 1, !tbaa !76, !alias.scope !2244, !noalias !2243
  %index.next237 = add nuw i64 %index233, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n238 = icmp eq i64 %.4, %n.vec232
  br i1 %cmp.n238, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.299165.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ] ; 3 uses
  %.5164.ph = phi i64 [ %.4, %iter.check ], [ %.4, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5164.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cx = add nsw i64 %.5164.ph, -1
  %i.cy = zext i32 %.299165.ph to i64             ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !76
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !76
  %i.dd = xor i8 %i.dc, %i.da                     ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.cy
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !76
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cy ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !76
  %i.dh = xor i8 %i.dg, %i.dd
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !76
  %i.di = add i32 %.299165.ph, 1                  ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.di, %vec.epilog.scalar.ph.prol ]
  %.299165.unr = phi i32 [ %.299165.ph, %vec.epilog.scalar.ph.preheader ], [ %i.di, %vec.epilog.scalar.ph.prol ]
  %.5164.unr = phi i64 [ %.5164.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cx, %vec.epilog.scalar.ph.prol ]
  %i.dj = icmp eq i64 %.5164.ph, 1
  br i1 %i.dj, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299165 = phi i32 [ %i.eg, %vec.epilog.scalar.ph ], [ %.299165.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.5164 = phi i64 [ %i.dv, %vec.epilog.scalar.ph ], [ %.5164.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dk = zext i32 %.299165 to i64                ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !76
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dk
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !76
  %i.dp = xor i8 %i.do, %i.dm                     ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.dk
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dk ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !76
  %i.dt = xor i8 %i.ds, %i.dp
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !76
  %i.du = add i32 %.299165, 1
  %i.dv = add i64 %.5164, -2                      ; 2 uses
  %i.dw = zext i32 %i.du to i64                   ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dw
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !76
  %i.eb = xor i8 %i.ea, %i.dy                     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.dw
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !76
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dw ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !76
  %i.ef = xor i8 %i.ee, %i.eb
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !76
  %i.eg = add i32 %.299165, 2                     ; 2 uses
  %.not126.1 = icmp eq i64 %i.dv, 0
  br i1 %.not126.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2242

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader133, %bb.k, %._crit_edge
  %storemerge = phi i32 [ %i.af, %._crit_edge ], [ 0, %bb.k ], [ %i.q, %.preheader133 ], [ %i.cn, %vec.epilog.middle.block ], [ %i.cd, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.eg, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.p, align 16, !tbaa !466
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.loopexit
  %.1118 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1118
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !467 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !464 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !468  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !469
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %i.k = icmp ugt i64 %i.j, 68719476704
  %i.l = icmp ult i64 %i.j, %4
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.j, ptr %i.h, align 8, !tbaa !469
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !465
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.m, align 4, !tbaa !465
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !466 ; 3 uses
  %.not126 = icmp eq i32 %i.q, 0
  br i1 %.not126, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not170 = icmp eq i64 %4, 0
  br i1 %.not170, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0102139 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %.0106138 = phi i32 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 2 uses
  %.0110137 = phi i64 [ %4, %.lr.ph ], [ %i.ad, %bb.e ]
  %.0116136 = phi ptr [ %3, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0102139, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0102139, align 1, !tbaa !76 ; 2 uses
  %i.v = zext i32 %.0106138 to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !76
  %i.y = xor i8 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %.0116136, i64 1 ; 2 uses
  store i8 %i.y, ptr %.0116136, align 1, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.ac = xor i8 %i.ab, %i.u
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !76
  %i.ad = add nsw i64 %.0110137, -1               ; 3 uses
  %i.ae = add i32 %.0106138, 1
  %i.af = and i32 %i.ae, 15                       ; 4 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i64 %i.ad, 0
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %._crit_edge, !llvm.loop !2247

._crit_edge:                                      ; preds = %bb.e
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1117 = phi ptr [ %i.z, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.1111 = phi i64 [ %i.ad, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %.1103 = phi ptr [ %i.t, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.an = icmp ugt i64 %.1111, 3071
  br i1 %i.an, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph152, %bb.j
  %.0100150 = phi i32 [ %i.am, %.lr.ph152 ], [ %i.ar, %bb.j ]
  %.2104149 = phi ptr [ %.1103, %.lr.ph152 ], [ %i.ay, %bb.j ] ; 2 uses
  %.2112148 = phi i64 [ %.1111, %.lr.ph152 ], [ %i.ba, %bb.j ]
  %.2118147 = phi ptr [ %.1117, %.lr.ph152 ], [ %i.ax, %bb.j ]
  tail call void %i.g(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef %.2104149, i64 noundef 3072) #46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.099146 = phi i64 [ 3072, %bb.h ], [ %i.az, %bb.i ]
  %.1101145 = phi i32 [ %.0100150, %bb.h ], [ %i.ar, %bb.i ]
  %.3105144 = phi ptr [ %.2104149, %bb.h ], [ %i.ay, %bb.i ] ; 3 uses
  %.3119143 = phi ptr [ %.2118147, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, ptr noundef %1) #46
  %i.ar = add i32 %.1101145, 1                    ; 4 uses
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.al, align 4
  %.0.copyload.i.i = load i64, ptr %.3105144, align 1
  %.0.copyload.i7.i = load i64, ptr %i.ap, align 16
  %i.at = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.at, ptr %.3119143, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.3119143, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.3105144, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.av, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.aq, align 8
  %i.aw = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.3119143, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3105144, i64 16 ; 3 uses
  %i.az = add nsw i64 %.099146, -16               ; 2 uses
  %.not130 = icmp eq i64 %i.az, 0
  br i1 %.not130, label %bb.j, label %bb.i, !llvm.loop !2248

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i64 %.2112148, -3072            ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, 3071
  br i1 %i.bb, label %bb.h, label %._crit_edge153, !llvm.loop !2249

._crit_edge153:                                   ; preds = %bb.j, %bb.g
  %.2118.lcssa = phi ptr [ %.1117, %bb.g ], [ %i.ax, %bb.j ] ; 2 uses
  %.2112.lcssa = phi i64 [ %.1111, %bb.g ], [ %i.ba, %bb.j ] ; 3 uses
  %.2104.lcssa = phi ptr [ %.1103, %bb.g ], [ %i.ay, %bb.j ] ; 3 uses
  %.0100.lcssa = phi i32 [ %i.am, %bb.g ], [ %i.ar, %bb.j ] ; 2 uses
  %i.bc = and i64 %.2112.lcssa, 4080              ; 2 uses
  %.not127 = icmp eq i64 %i.bc, 0
  br i1 %.not127, label %.loopexit135, label %.lr.ph163

.lr.ph163:                                        ; preds = %._crit_edge153
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.g(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, ptr noundef %.2104.lcssa, i64 noundef %i.bc) #46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph163, %bb.k
  %.2161 = phi i32 [ %.0100.lcssa, %.lr.ph163 ], [ %i.bg, %bb.k ]
  %.4160 = phi ptr [ %.2104.lcssa, %.lr.ph163 ], [ %i.bn, %bb.k ] ; 3 uses
  %.3113159 = phi i64 [ %.2112.lcssa, %.lr.ph163 ], [ %i.bo, %bb.k ]
  %.4120158 = phi ptr [ %.2118.lcssa, %.lr.ph163 ], [ %i.bm, %bb.k ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.be, ptr noundef %1) #46
  %i.bg = add i32 %.2161, 1                       ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.al, align 4
  %.0.copyload.i.i131 = load i64, ptr %.4160, align 1
  %.0.copyload.i7.i132 = load i64, ptr %i.be, align 16
  %i.bi = xor i64 %.0.copyload.i7.i132, %.0.copyload.i.i131
  store i64 %i.bi, ptr %.4120158, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.4120158, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.4160, i64 8
  %.0.copyload.i.1.i133 = load i64, ptr %i.bk, align 1
  %.0.copyload.i7.1.i134 = load i64, ptr %i.bf, align 8
  %i.bl = xor i64 %.0.copyload.i7.1.i134, %.0.copyload.i.1.i133
  store i64 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.4120158, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4160, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.3113159, -16              ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %bb.k, label %.loopexit135, !llvm.loop !2250

.loopexit135:                                     ; preds = %bb.k, %._crit_edge153
  %.5121 = phi ptr [ %.2118.lcssa, %._crit_edge153 ], [ %i.bm, %bb.k ] ; 8 uses
  %.4114 = phi i64 [ %.2112.lcssa, %._crit_edge153 ], [ %i.bo, %bb.k ] ; 15 uses
  %.5 = phi ptr [ %.2104.lcssa, %._crit_edge153 ], [ %i.bn, %bb.k ] ; 8 uses
  %.3 = phi i32 [ %.0100.lcssa, %._crit_edge153 ], [ %i.bg, %bb.k ]
  %.not128 = icmp eq i64 %.4114, 0
  br i1 %.not128, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.loopexit135
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.bq, ptr noundef %1) #46
  %i.br = add i32 %.3, 1
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  store i32 %i.bs, ptr %i.al, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.bu = add i64 %.4114, -4294967297
  %or.cond250 = icmp ult i64 %i.bu, -4294967293
  br i1 %or.cond250, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bv = getelementptr i8, ptr %0, i64 %.4114
  %i.bw = getelementptr i8, ptr %i.bv, i64 64     ; 2 uses
  %i.bx = getelementptr i8, ptr %.5121, i64 %.4114 ; 2 uses
  %i.by = getelementptr i8, ptr %.5, i64 %.4114   ; 2 uses
  %bound0 = icmp ult ptr %i.bq, %i.bx
  %bound1 = icmp ult ptr %.5121, %i.bw
  %found.conflict = and i1 %bound0, %bound1
  %bound0226 = icmp ult ptr %i.bq, %i.by
  %bound1227 = icmp ult ptr %.5, %i.bw
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx = or i1 %found.conflict, %found.conflict228
  %bound0229 = icmp ult ptr %.5121, %i.by
  %bound1230 = icmp ult ptr %.5, %i.bx
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx, %found.conflict231
  br i1 %conflict.rdx232, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check233 = icmp ult i64 %.4114, 32
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %.4114, 28
  %n.vec = and i64 %.4114, 8589934560             ; 4 uses
  %i.ca = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cb = and i64 %.4114, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = and i64 %index, 4294967264              ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.5, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <16 x i8>, ptr %i.cd, align 1, !tbaa !76, !alias.scope !2258 ; 2 uses
  %wide.load234 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !76, !alias.scope !2258 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cc ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load235 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %wide.load236 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %i.ch = xor <16 x i8> %wide.load235, %wide.load
  %i.ci = xor <16 x i8> %wide.load236, %wide.load234
  store <16 x i8> %i.ch, ptr %i.cf, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  store <16 x i8> %i.ci, ptr %i.cg, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cc ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load237 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %wide.load238 = load <16 x i8>, ptr %i.ck, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %i.cl = xor <16 x i8> %wide.load237, %wide.load
  %i.cm = xor <16 x i8> %wide.load238, %wide.load234
  %i.cn = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.cc ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <16 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !76, !alias.scope !2261, !noalias !2258
  store <16 x i8> %i.cm, ptr %i.co, align 1, !tbaa !76, !alias.scope !2261, !noalias !2258
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !2255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4114, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec240 = and i64 %.4114, 8589934588          ; 3 uses
  %i.cq = trunc i64 %n.vec240 to i32              ; 2 uses
  %i.cr = and i64 %.4114, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next245, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = and i64 %index241, 4294967292           ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.5, i64 %i.cs
  %wide.load242 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !76, !alias.scope !2258 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cs ; 2 uses
  %wide.load243 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %i.cv = xor <4 x i8> %wide.load243, %wide.load242
  store <4 x i8> %i.cv, ptr %i.cu, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cs
  %wide.load244 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !76, !alias.scope !2259, !noalias !2260
  %i.cx = xor <4 x i8> %wide.load244, %wide.load242
  %i.cy = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.cs
  store <4 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !76, !alias.scope !2261, !noalias !2258
  %index.next245 = add nuw i64 %index241, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next245, %n.vec240
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2256

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n246 = icmp eq i64 %.4114, %n.vec240
  br i1 %cmp.n246, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2108169.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ] ; 3 uses
  %.5115168.ph = phi i64 [ %.4114, %iter.check ], [ %.4114, %vector.memcheck ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5115168.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.da = add nsw i64 %.5115168.ph, -1
  %i.db = zext i32 %.2108169.ph to i64            ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.5, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !76  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.db ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !76
  %i.dg = xor i8 %i.df, %i.dd
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !76
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.db
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !76
  %i.dj = xor i8 %i.di, %i.dd
  %i.dk = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.db
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !76
  %i.dl = add i32 %.2108169.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dl, %vec.epilog.scalar.ph.prol ]
  %.2108169.unr = phi i32 [ %.2108169.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dl, %vec.epilog.scalar.ph.prol ]
  %.5115168.unr = phi i64 [ %.5115168.ph, %vec.epilog.scalar.ph.preheader ], [ %i.da, %vec.epilog.scalar.ph.prol ]
  %i.dm = icmp eq i64 %.5115168.ph, 1
  br i1 %i.dm, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2108169 = phi i32 [ %i.ej, %vec.epilog.scalar.ph ], [ %.2108169.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.5115168 = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.5115168.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dn = zext i32 %.2108169 to i64               ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !76  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dn ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !76
  %i.ds = xor i8 %i.dr, %i.dp
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dn
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !76
  %i.dv = xor i8 %i.du, %i.dp
  %i.dw = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.dn
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !76
  %i.dx = add i32 %.2108169, 1
  %i.dy = add i64 %.5115168, -2                   ; 2 uses
  %i.dz = zext i32 %i.dx to i64                   ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !76  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dz ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !76
  %i.ee = xor i8 %i.ed, %i.eb
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !76
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dz
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !76
  %i.eh = xor i8 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.dz
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !76
  %i.ej = add i32 %.2108169, 2                    ; 2 uses
  %.not129.1 = icmp eq i64 %i.dy, 0
  br i1 %.not129.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2257

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %.loopexit135, %._crit_edge
  %storemerge = phi i32 [ %i.af, %._crit_edge ], [ 0, %.loopexit135 ], [ %i.q, %.preheader ], [ %i.cq, %vec.epilog.middle.block ], [ %i.ca, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ej, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.p, align 16, !tbaa !466
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !468  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !469
  %i.h = add i64 %i.g, %4                         ; 3 uses
  %i.i = icmp ugt i64 %i.h, 68719476704
  %i.j = icmp ult i64 %i.h, %4
  %or.cond148 = or i1 %i.i, %i.j
  br i1 %or.cond148, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.f, align 8, !tbaa !469
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !465
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.k, align 4, !tbaa !465
  br label %bb.d
end_hunk_4
begin_hunk_5_@aes_cbc_cipher:bb.a
  %.not21 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !562  ; 3 uses
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %CRYPTO_cbc128_encrypt.exit, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.d
  %i.n = icmp ugt i64 %3, 15
  br i1 %i.n, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader44.i, %.lr.ph.i
  %.048.i = phi ptr [ %.04046.i, %.lr.ph.i ], [ %i.j, %.preheader44.i ] ; 2 uses
  %.03947.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %.preheader44.i ] ; 3 uses
  %.04046.i = phi ptr [ %i.v, %.lr.ph.i ], [ %1, %.preheader44.i ] ; 8 uses
  %.04145.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %.preheader44.i ]
  %.0.copyload.i.i.i = load i64, ptr %.03947.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.048.i, align 1
  %i.o = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.o, ptr %.04046.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04046.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.03947.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.r, align 1
  %i.s = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.s, ptr %i.p, align 1
  tail call void %i.l(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef nonnull %i.b) #46, !inline_history !2541
  %i.t = add i64 %.04145.i, -16                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03947.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04046.i, i64 16 ; 2 uses
  %i.w = icmp ugt i64 %i.t, 15
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader44.i
  %.0.lcssa70.i = phi ptr [ %.04046.i, %._crit_edge.i ], [ %i.j, %.preheader44.i ] ; 15 uses
  %.039.lcssa69.i = phi ptr [ %i.u, %._crit_edge.i ], [ %2, %.preheader44.i ] ; 8 uses
  %.040.lcssa68.i = phi ptr [ %i.v, %._crit_edge.i ], [ %1, %.preheader44.i ] ; 18 uses
  %.041.lcssa67.i = phi i64 [ %i.t, %._crit_edge.i ], [ %3, %.preheader44.i ] ; 14 uses
  %.040.lcssa68.i33 = ptrtoaddr ptr %.040.lcssa68.i to i64 ; 3 uses
  %.0.lcssa70.i35 = ptrtoaddr ptr %.0.lcssa70.i to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.041.lcssa67.i, 4
  br i1 %min.iters.check, label %.preheader43.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.039.lcssa69.i34 = ptrtoaddr ptr %.039.lcssa69.i to i64
  %i.x = sub i64 %.039.lcssa69.i34, %.040.lcssa68.i33
  %diff.check = icmp ugt i64 %i.x, -32
  %i.y = sub i64 %.0.lcssa70.i35, %.040.lcssa68.i33
  %diff.check36 = icmp ugt i64 %i.y, -32
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.preheader43.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %.041.lcssa67.i, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !76
  %wide.load38 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load39 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !76
  %wide.load40 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !76
  %i.ad = xor <16 x i8> %wide.load39, %wide.load
  %i.ae = xor <16 x i8> %wide.load40, %wide.load38
  %i.af = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !76
  store <16 x i8> %i.ae, ptr %i.ag, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !2535

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec41 = and i64 %.041.lcssa67.i, 12          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index42
  %wide.load43 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index42
  %wide.load44 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !76
  %i.aj = xor <4 x i8> %wide.load44, %wide.load43
  %i.ak = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index42
  store <4 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !76
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2536

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.041.lcssa67.i, %n.vec41
  br i1 %cmp.n46, label %iter.check63, label %.preheader43.i.preheader

.preheader43.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.03752.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.041.lcssa67.i, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol

.preheader43.i.prol:                              ; preds = %.preheader43.i.preheader, %.preheader43.i.prol
  %.03752.i.prol = phi i64 [ %i.as, %.preheader43.i.prol ], [ %.03752.i.ph, %.preheader43.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader43.i.prol ], [ 0, %.preheader43.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i.prol
  %i.an = load i8, ptr %i.am, align 1, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !76
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !76
  %i.as = add nuw nsw i64 %.03752.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol, !llvm.loop !2537

.preheader43.i.prol.loopexit:                     ; preds = %.preheader43.i.prol, %.preheader43.i.preheader
  %.03752.i.unr = phi i64 [ %.03752.i.ph, %.preheader43.i.preheader ], [ %i.as, %.preheader43.i.prol ]
  %i.at = sub nsw i64 %.03752.i.ph, %.041.lcssa67.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %iter.check63, label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i
  %.03752.i = phi i64 [ %i.bw, %.preheader43.i ], [ %.03752.i.unr, %.preheader43.i.prol.loopexit ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !76
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !76
  %i.bb = add nuw nsw i64 %.03752.i, 1            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !76
  %i.bg = xor i8 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bb
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !76
  %i.bi = add nuw nsw i64 %.03752.i, 2            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !76
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !76
  %i.bp = add nuw nsw i64 %.03752.i, 3            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !76
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !76
  %i.bw = add nuw nsw i64 %.03752.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bw, %.041.lcssa67.i
  br i1 %exitcond.not.i.3, label %iter.check63, label %.preheader43.i, !llvm.loop !2538

iter.check63:                                     ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i, %vec.epilog.middle.block
  %i.bx = sub nuw nsw i64 16, %.041.lcssa67.i     ; 2 uses
  %min.iters.check49 = icmp ugt i64 %.041.lcssa67.i, 8
  %i.by = sub i64 %.0.lcssa70.i35, %.040.lcssa68.i33
  %diff.check48 = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check49, i1 true, i1 %diff.check48
  br i1 %or.cond, label %.lr.ph54.i.preheader, label %vec.epilog.ph67

vec.epilog.ph67:                                  ; preds = %iter.check63
  %n.vec68 = and i64 %i.bx, 24                    ; 3 uses
  %i.bz = add nuw nsw i64 %.041.lcssa67.i, %n.vec68
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.041.lcssa67.i
  %wide.load71 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !76
  %i.cb = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.041.lcssa67.i
  store <8 x i8> %wide.load71, ptr %i.cb, align 1, !tbaa !76
  %i.cc = icmp eq i64 %n.vec68, 8
  br i1 %i.cc, label %vec.epilog.middle.block73, label %vec.epilog.vector.body69.1

vec.epilog.vector.body69.1:                       ; preds = %vec.epilog.ph67
  %i.cd = add nuw nsw i64 %.041.lcssa67.i, 8      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cd
  %wide.load71.1 = load <8 x i8>, ptr %i.ce, align 1, !tbaa !76
  %i.cf = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cd
  store <8 x i8> %wide.load71.1, ptr %i.cf, align 1, !tbaa !76
  br label %vec.epilog.middle.block73

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body69.1, %vec.epilog.ph67
  %cmp.n74 = icmp eq i64 %i.bx, %n.vec68
  br i1 %cmp.n74, label %._crit_edge55.i, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check63, %vec.epilog.middle.block73
  %.13853.i.ph = phi i64 [ %.041.lcssa67.i, %iter.check63 ], [ %i.bz, %vec.epilog.middle.block73 ] ; 4 uses
  %i.cg = sub i64 0, %.13853.i.ph
  %xtraiter78 = and i64 %i.cg, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol

.lr.ph54.i.prol:                                  ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i.prol
  %.13853.i.prol = phi i64 [ %i.ck, %.lr.ph54.i.prol ], [ %.13853.i.ph, %.lr.ph54.i.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph54.i.prol ], [ 0, %.lr.ph54.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i.prol
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i.prol
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !76
  %i.ck = add i64 %.13853.i.prol, 1               ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol, !llvm.loop !2539

.lr.ph54.i.prol.loopexit:                         ; preds = %.lr.ph54.i.prol, %.lr.ph54.i.preheader
  %.13853.i.unr = phi i64 [ %.13853.i.ph, %.lr.ph54.i.preheader ], [ %i.ck, %.lr.ph54.i.prol ]
  %i.cl = add i64 %.13853.i.ph, -13
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %._crit_edge55.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i
  %.13853.i = phi i64 [ %i.dc, %.lr.ph54.i ], [ %.13853.i.unr, %.lr.ph54.i.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !76
  %i.cp = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !76
  %i.cq = add i64 %.13853.i, 1                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !76
  %i.cu = add i64 %.13853.i, 2                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !76
  %i.cy = add i64 %.13853.i, 3                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !76
  %i.db = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !tbaa !76
  %i.dc = add i64 %.13853.i, 4                    ; 2 uses
  %exitcond60.not.i.3 = icmp eq i64 %i.dc, 16
  br i1 %exitcond60.not.i.3, label %._crit_edge55.i, label %.lr.ph54.i, !llvm.loop !2540

._crit_edge55.i:                                  ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i, %vec.epilog.middle.block73
  tail call void %i.l(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %i.b) #46, !inline_history !2541
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge55.i, %._crit_edge.i
  %.1.i = phi ptr [ %.040.lcssa68.i, %._crit_edge55.i ], [ %.04046.i, %._crit_edge.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(16) %.1.i, i64 16, i1 false)
  br label %CRYPTO_cbc128_encrypt.exit

bb.f:                                             ; preds = %bb.c
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef %i.l)
  br label %CRYPTO_cbc128_encrypt.exit

CRYPTO_cbc128_encrypt.exit:                       ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  ret i32 1
}

declare void @vpaes_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_ctr_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !562
  tail call void @CRYPTO_ctr128_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_ofb_cipher(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !562  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i64 %3, 0
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %3, %bb.a ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.g, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.k = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.k, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.m, %.lr.ph.i ], [ %2, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %.03444.i, align 1, !tbaa !76
  %i.o = zext i32 %.045.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !76
  %i.r = xor i8 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.03643.i, align 1, !tbaa !76
  %i.t = add i64 %.03842.i, -1                    ; 3 uses
  %i.u = add i32 %.045.i, 1
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne i64 %i.t, 0
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i, !llvm.loop !5

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.af, %bb.b ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.ad, %bb.b ]
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #46, !inline_history !2542
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %i.c, align 4
  %i.z = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.z, ptr %.13750.i, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.ab, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.l, align 4
  %i.ac = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = add i64 %.13949.i, -16                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.ag = icmp ugt i64 %i.ad, 15
  br i1 %i.ag, label %bb.b, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.ad, %bb.b ] ; 5 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.af, %bb.b ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #46, !inline_history !2542
  %xtraiter = and i64 %.139.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ah = add nsw i64 %.139.lcssa.i, -1
  %i.ai = zext i32 %.1.lcssa.i to i64             ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !tbaa !76
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ai
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !76
  %i.ap = add i32 %.1.lcssa.i, 1                  ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.258.i.unr = phi i32 [ %.1.lcssa.i, %bb.c ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.24057.i.unr = phi i64 [ %.139.lcssa.i, %bb.c ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %i.aq = icmp eq i64 %.139.lcssa.i, 1
  br i1 %i.aq, label %CRYPTO_ofb128_encrypt.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258.i = phi i32 [ %i.bh, %.new ], [ %.258.i.unr, %.prol.loopexit ] ; 3 uses
  %.24057.i = phi i64 [ %i.az, %.new ], [ %.24057.i.unr, %.prol.loopexit ]
  %i.ar = zext i32 %.258.i to i64                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !76
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !76
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ar
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !76
  %i.ay = add i32 %.258.i, 1
  %i.az = add nsw i64 %.24057.i, -2               ; 2 uses
  %i.ba = zext i32 %i.ay to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !76
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ba
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !76
  %i.bh = add i32 %.258.i, 2                      ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.az, 0
end_hunk_5
