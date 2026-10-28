Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@AES_unwrap_key_padded:bb.a
  %i.bw = icmp eq i8 %i.bv, 0
  %i.bx = select i1 %isnotneg.i.i.inv.6, i1 true, i1 %i.bw
  %i.by = select i1 %i.bx, i1 %i.bq, i1 false
  %i.bz = select i1 %i.by, i1 %i.bi, i1 false
  %i.ca = select i1 %i.bz, i1 %i.ba, i1 false
  %i.cb = select i1 %i.ca, i1 %i.ay, i1 false
  %i.cc = select i1 %i.cb, i1 %i.aw, i1 false
  %i.cd = select i1 %i.cc, i1 %i.au, i1 false
  %i.ce = select i1 %i.cd, i64 %i.y, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.j
  %.032.lcssa = phi i64 [ %i.y, %bb.j ], [ %i.ce, %.lr.ph.preheader ] ; 3 uses
  %i.cf = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.lcssa) #47, !srcloc !81
  %i.cg = and i64 %i.cf, %i.r
  %i.ch = xor i64 %.032.lcssa, -1
  %i.ci = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ch) #47, !srcloc !81 ; 0 uses
  store i64 %i.cg, ptr %2, align 8, !tbaa !80
  %i.cj = trunc nsw i64 %.032.lcssa to i32
  %i.ck = and i32 %i.cj, 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %.033 = phi i32 [ 0, %bb.i ], [ %i.ck, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  %.1 = phi i32 [ %.033, %bb.k ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @AES_ctr128_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !73     ; 3 uses
  %i.e = icmp ne i32 %i.d, 0
  %i.f = icmp ne i64 %2, 0
  %i.g = and i1 %i.f, %i.e
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.05873.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.d, %bb.b ] ; 2 uses
  %.06072.i = phi ptr [ %i.h, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.06271.i = phi ptr [ %i.n, %.lr.ph.i ], [ %1, %bb.b ] ; 2 uses
  %.06470.i = phi i64 [ %i.o, %.lr.ph.i ], [ %2, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.06072.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %.06072.i, align 1, !tbaa !76
  %i.j = zext i32 %.05873.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !76
  %i.m = xor i8 %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.06271.i, i64 1 ; 2 uses
  store i8 %i.m, ptr %.06271.i, align 1, !tbaa !76
  %i.o = add i64 %.06470.i, -1                    ; 3 uses
  %i.p = add i32 %.05873.i, 1
  %i.q = and i32 %i.p, 15                         ; 3 uses
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp ne i64 %i.o, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.064.lcssa.i = phi i64 [ %2, %bb.b ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %.062.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.060.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %.058.lcssa.i = phi i32 [ %i.d, %bb.b ], [ %i.q, %.lr.ph.i ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.0.copyload.i.i = load i32, ptr %i.u, align 1
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i) ; 2 uses
  %i.w = icmp ugt i64 %.064.lcssa.i, 15
  br i1 %i.w, label %.lr.ph82.i, label %._crit_edge83.i

.lr.ph82.i:                                       ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph82.i
  %.05780.i = phi i32 [ %i.v, %.lr.ph82.i ], [ %spec.select.i, %bb.e ]
  %.16179.i = phi ptr [ %.060.lcssa.i, %.lr.ph82.i ], [ %i.cz, %bb.e ] ; 2 uses
  %.16378.i = phi ptr [ %.062.lcssa.i, %.lr.ph82.i ], [ %i.cy, %bb.e ] ; 2 uses
  %.16577.i = phi i64 [ %.064.lcssa.i, %.lr.ph82.i ], [ %i.cx, %bb.e ] ; 2 uses
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
  %.163.lcssa.i188 = ptrtoaddr ptr %.163.lcssa.i to i64 ; 2 uses
  %.161.lcssa.i189 = ptrtoaddr ptr %.161.lcssa.i to i64
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
  %i.gb = sub i64 %.161.lcssa.i189, %.163.lcssa.i188
  %diff.check = icmp ugt i64 %i.gb, -32
  %i.gc = sub i64 %i.a, %.163.lcssa.i188
  %diff.check190 = icmp ugt i64 %i.gc, -32
  %conflict.rdx = or i1 %diff.check, %diff.check190
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec195 = and i64 %.165.lcssa.i, 12           ; 3 uses
  %i.gd = trunc nuw nsw i64 %n.vec195 to i32
  %i.ge = add i32 %.058.lcssa.i, %i.gd            ; 2 uses
  %i.gf = and i64 %.165.lcssa.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index196 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next199, %vec.epilog.vector.body ] ; 2 uses
  %i.gg = trunc i64 %index196 to i32
  %i.gh = add i32 %.058.lcssa.i, %i.gg
  %i.gi = zext i32 %i.gh to i64                   ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.161.lcssa.i, i64 %i.gi
  %wide.load197 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !76
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 %i.gi
  %wide.load198 = load <4 x i8>, ptr %i.gk, align 1, !tbaa !76
  %i.gl = xor <4 x i8> %wide.load198, %wide.load197
  %i.gm = getelementptr inbounds nuw i8, ptr %.163.lcssa.i, i64 %i.gi
  store <4 x i8> %i.gl, ptr %i.gm, align 1, !tbaa !76
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next199, %n.vec195
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !656

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n200 = icmp eq i64 %.165.lcssa.i, %n.vec195
  br i1 %cmp.n200, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph.preheader

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
  %.lcssa305.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gw, %vec.epilog.scalar.ph.prol ]
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
  %.163.lcssa.i30209 = ptrtoaddr ptr %.163.lcssa.i30 to i64 ; 2 uses
  %.161.lcssa.i31210 = ptrtoaddr ptr %.161.lcssa.i31 to i64
  %.not.i33 = icmp eq i64 %.165.lcssa.i29, 0
  br i1 %.not.i33, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge83.i28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #46
  %i.lo = add i32 %.057.lcssa.i32, 1              ; 2 uses
  %i.lp = tail call noundef i32 @llvm.bswap.i32(i32 %i.lo)
  store i32 %i.lp, ptr %i.ih, align 1
  %i.lq = icmp eq i32 %i.lo, 0
  br i1 %i.lq, label %bb.n, label %iter.check229

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
  br label %iter.check229

iter.check229:                                    ; preds = %bb.n, %bb.m
  %min.iters.check211 = icmp samesign ult i64 %.165.lcssa.i29, 4
  br i1 %min.iters.check211, label %vec.epilog.scalar.ph231.preheader, label %vector.scevcheck202

vector.scevcheck202:                              ; preds = %iter.check229
  %i.oi = add nsw i64 %.165.lcssa.i29, -1         ; 2 uses
  %i.oj = trunc i64 %i.oi to i32
  %i.ok = xor i32 %.058.lcssa.i26, -1
  %i.ol = icmp ult i32 %i.ok, %i.oj
  %i.om = icmp ugt i64 %i.oi, 4294967295
  %i.on = or i1 %i.ol, %i.om
  br i1 %i.on, label %vec.epilog.scalar.ph231.preheader, label %vector.memcheck212

vector.memcheck212:                               ; preds = %vector.scevcheck202
  %i.oo = sub i64 %.161.lcssa.i31210, %.163.lcssa.i30209
  %diff.check213 = icmp ugt i64 %i.oo, -32
  %i.op = sub i64 %i.a, %.163.lcssa.i30209
  %diff.check214 = icmp ugt i64 %i.op, -32
  %conflict.rdx215 = or i1 %diff.check213, %diff.check214
  br i1 %conflict.rdx215, label %vec.epilog.scalar.ph231.preheader, label %vec.epilog.ph233

vec.epilog.ph233:                                 ; preds = %vector.memcheck212
  %n.vec235 = and i64 %.165.lcssa.i29, 12         ; 3 uses
  %i.oq = trunc nuw nsw i64 %n.vec235 to i32
  %i.or = add i32 %.058.lcssa.i26, %i.oq          ; 2 uses
  %i.os = and i64 %.165.lcssa.i29, 3
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %vec.epilog.vector.body236, %vec.epilog.ph233
  %index237 = phi i64 [ 0, %vec.epilog.ph233 ], [ %index.next240, %vec.epilog.vector.body236 ] ; 2 uses
  %i.ot = trunc i64 %index237 to i32
  %i.ou = add i32 %.058.lcssa.i26, %i.ot
  %i.ov = zext i32 %i.ou to i64                   ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.161.lcssa.i31, i64 %i.ov
  %wide.load238 = load <4 x i8>, ptr %i.ow, align 1, !tbaa !76
  %i.ox = getelementptr inbounds nuw i8, ptr %5, i64 %i.ov
  %wide.load239 = load <4 x i8>, ptr %i.ox, align 1, !tbaa !76
  %i.oy = xor <4 x i8> %wide.load239, %wide.load238
  %i.oz = getelementptr inbounds nuw i8, ptr %.163.lcssa.i30, i64 %i.ov
  store <4 x i8> %i.oy, ptr %i.oz, align 1, !tbaa !76
  %index.next240 = add nuw i64 %index237, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next240, %n.vec235
  br i1 %i.pa, label %vec.epilog.middle.block241, label %vec.epilog.vector.body236, !llvm.loop !658

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body236
  %cmp.n242 = icmp eq i64 %.165.lcssa.i29, %n.vec235
  br i1 %cmp.n242, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph231.preheader

vec.epilog.scalar.ph231.preheader:                ; preds = %iter.check229, %vector.scevcheck202, %vector.memcheck212, %vec.epilog.middle.block241
  %.15989.i34.ph = phi i32 [ %.058.lcssa.i26, %vector.scevcheck202 ], [ %.058.lcssa.i26, %vector.memcheck212 ], [ %.058.lcssa.i26, %iter.check229 ], [ %i.or, %vec.epilog.middle.block241 ] ; 3 uses
  %.26688.i35.ph = phi i64 [ %.165.lcssa.i29, %vector.scevcheck202 ], [ %.165.lcssa.i29, %vector.memcheck212 ], [ %.165.lcssa.i29, %iter.check229 ], [ %i.os, %vec.epilog.middle.block241 ] ; 4 uses
  %xtraiter313 = and i64 %.26688.i35.ph, 1
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %vec.epilog.scalar.ph231.prol.loopexit, label %vec.epilog.scalar.ph231.prol

vec.epilog.scalar.ph231.prol:                     ; preds = %vec.epilog.scalar.ph231.preheader
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
  br label %vec.epilog.scalar.ph231.prol.loopexit

vec.epilog.scalar.ph231.prol.loopexit:            ; preds = %vec.epilog.scalar.ph231.prol, %vec.epilog.scalar.ph231.preheader
  %.lcssa296.unr = phi i32 [ poison, %vec.epilog.scalar.ph231.preheader ], [ %i.pj, %vec.epilog.scalar.ph231.prol ]
  %.15989.i34.unr = phi i32 [ %.15989.i34.ph, %vec.epilog.scalar.ph231.preheader ], [ %i.pj, %vec.epilog.scalar.ph231.prol ]
  %.26688.i35.unr = phi i64 [ %.26688.i35.ph, %vec.epilog.scalar.ph231.preheader ], [ %i.pb, %vec.epilog.scalar.ph231.prol ]
  %i.pk = icmp eq i64 %.26688.i35.ph, 1
  br i1 %i.pk, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph231

vec.epilog.scalar.ph231:                          ; preds = %vec.epilog.scalar.ph231.prol.loopexit, %vec.epilog.scalar.ph231
  %.15989.i34 = phi i32 [ %i.qb, %vec.epilog.scalar.ph231 ], [ %.15989.i34.unr, %vec.epilog.scalar.ph231.prol.loopexit ] ; 3 uses
  %.26688.i35 = phi i64 [ %i.pt, %vec.epilog.scalar.ph231 ], [ %.26688.i35.unr, %vec.epilog.scalar.ph231.prol.loopexit ]
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
  br i1 %.not68.i36.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph231, !llvm.loop !659

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
  %.163.lcssa.i60252 = ptrtoaddr ptr %.163.lcssa.i60 to i64 ; 2 uses
  %.161.lcssa.i61253 = ptrtoaddr ptr %.161.lcssa.i61 to i64
  %.not.i63 = icmp eq i64 %.165.lcssa.i59, 0
  br i1 %.not.i63, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge83.i58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @aes_nohw_ctr32_encrypt_blocks(ptr noundef nonnull readonly %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef readonly %3, ptr noundef nonnull readonly %4)
  %i.tw = add i32 %.057.lcssa.i62, 1              ; 2 uses
  %i.tx = tail call noundef i32 @llvm.bswap.i32(i32 %i.tw)
  store i32 %i.tx, ptr %i.qp, align 1
  %i.ty = icmp eq i32 %i.tw, 0
  br i1 %i.ty, label %bb.t, label %iter.check272

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
  br label %iter.check272

iter.check272:                                    ; preds = %bb.t, %bb.s
  %min.iters.check254 = icmp samesign ult i64 %.165.lcssa.i59, 4
  br i1 %min.iters.check254, label %vec.epilog.scalar.ph274.preheader, label %vector.scevcheck245

vector.scevcheck245:                              ; preds = %iter.check272
  %i.wq = add nsw i64 %.165.lcssa.i59, -1         ; 2 uses
  %i.wr = trunc i64 %i.wq to i32
  %i.ws = xor i32 %.058.lcssa.i56, -1
  %i.wt = icmp ult i32 %i.ws, %i.wr
  %i.wu = icmp ugt i64 %i.wq, 4294967295
  %i.wv = or i1 %i.wt, %i.wu
  br i1 %i.wv, label %vec.epilog.scalar.ph274.preheader, label %vector.memcheck255

vector.memcheck255:                               ; preds = %vector.scevcheck245
  %i.ww = sub i64 %.161.lcssa.i61253, %.163.lcssa.i60252
  %diff.check256 = icmp ugt i64 %i.ww, -32
  %i.wx = sub i64 %i.a, %.163.lcssa.i60252
  %diff.check257 = icmp ugt i64 %i.wx, -32
  %conflict.rdx258 = or i1 %diff.check256, %diff.check257
  br i1 %conflict.rdx258, label %vec.epilog.scalar.ph274.preheader, label %vec.epilog.ph276

vec.epilog.ph276:                                 ; preds = %vector.memcheck255
  %n.vec278 = and i64 %.165.lcssa.i59, 12         ; 3 uses
  %i.wy = trunc nuw nsw i64 %n.vec278 to i32
  %i.wz = add i32 %.058.lcssa.i56, %i.wy          ; 2 uses
  %i.xa = and i64 %.165.lcssa.i59, 3
  br label %vec.epilog.vector.body279

vec.epilog.vector.body279:                        ; preds = %vec.epilog.vector.body279, %vec.epilog.ph276
  %index280 = phi i64 [ 0, %vec.epilog.ph276 ], [ %index.next283, %vec.epilog.vector.body279 ] ; 2 uses
  %i.xb = trunc i64 %index280 to i32
  %i.xc = add i32 %.058.lcssa.i56, %i.xb
  %i.xd = zext i32 %i.xc to i64                   ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.161.lcssa.i61, i64 %i.xd
  %wide.load281 = load <4 x i8>, ptr %i.xe, align 1, !tbaa !76
  %i.xf = getelementptr inbounds nuw i8, ptr %5, i64 %i.xd
  %wide.load282 = load <4 x i8>, ptr %i.xf, align 1, !tbaa !76
  %i.xg = xor <4 x i8> %wide.load282, %wide.load281
  %i.xh = getelementptr inbounds nuw i8, ptr %.163.lcssa.i60, i64 %i.xd
  store <4 x i8> %i.xg, ptr %i.xh, align 1, !tbaa !76
  %index.next283 = add nuw i64 %index280, 4       ; 2 uses
  %i.xi = icmp eq i64 %index.next283, %n.vec278
  br i1 %i.xi, label %vec.epilog.middle.block284, label %vec.epilog.vector.body279, !llvm.loop !660

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body279
  %cmp.n285 = icmp eq i64 %.165.lcssa.i59, %n.vec278
  br i1 %cmp.n285, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph274.preheader

vec.epilog.scalar.ph274.preheader:                ; preds = %iter.check272, %vector.scevcheck245, %vector.memcheck255, %vec.epilog.middle.block284
  %.15989.i64.ph = phi i32 [ %.058.lcssa.i56, %vector.scevcheck245 ], [ %.058.lcssa.i56, %vector.memcheck255 ], [ %.058.lcssa.i56, %iter.check272 ], [ %i.wz, %vec.epilog.middle.block284 ] ; 3 uses
  %.26688.i65.ph = phi i64 [ %.165.lcssa.i59, %vector.scevcheck245 ], [ %.165.lcssa.i59, %vector.memcheck255 ], [ %.165.lcssa.i59, %iter.check272 ], [ %i.xa, %vec.epilog.middle.block284 ] ; 4 uses
  %xtraiter315 = and i64 %.26688.i65.ph, 1
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %vec.epilog.scalar.ph274.prol.loopexit, label %vec.epilog.scalar.ph274.prol

vec.epilog.scalar.ph274.prol:                     ; preds = %vec.epilog.scalar.ph274.preheader
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
  br label %vec.epilog.scalar.ph274.prol.loopexit

vec.epilog.scalar.ph274.prol.loopexit:            ; preds = %vec.epilog.scalar.ph274.prol, %vec.epilog.scalar.ph274.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph274.preheader ], [ %i.xr, %vec.epilog.scalar.ph274.prol ]
  %.15989.i64.unr = phi i32 [ %.15989.i64.ph, %vec.epilog.scalar.ph274.preheader ], [ %i.xr, %vec.epilog.scalar.ph274.prol ]
  %.26688.i65.unr = phi i64 [ %.26688.i65.ph, %vec.epilog.scalar.ph274.preheader ], [ %i.xj, %vec.epilog.scalar.ph274.prol ]
  %i.xs = icmp eq i64 %.26688.i65.ph, 1
  br i1 %i.xs, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph274

vec.epilog.scalar.ph274:                          ; preds = %vec.epilog.scalar.ph274.prol.loopexit, %vec.epilog.scalar.ph274
  %.15989.i64 = phi i32 [ %i.yj, %vec.epilog.scalar.ph274 ], [ %.15989.i64.unr, %vec.epilog.scalar.ph274.prol.loopexit ] ; 3 uses
  %.26688.i65 = phi i64 [ %i.yb, %vec.epilog.scalar.ph274 ], [ %.26688.i65.unr, %vec.epilog.scalar.ph274.prol.loopexit ]
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
  br i1 %.not68.i66.1, label %CRYPTO_ctr128_encrypt_ctr32.exit, label %vec.epilog.scalar.ph274, !llvm.loop !661

CRYPTO_ctr128_encrypt_ctr32.exit:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph231.prol.loopexit, %vec.epilog.scalar.ph231, %vec.epilog.scalar.ph274.prol.loopexit, %vec.epilog.scalar.ph274, %vec.epilog.middle.block, %vec.epilog.middle.block241, %vec.epilog.middle.block284, %._crit_edge83.i58, %._crit_edge83.i28, %._crit_edge83.i
  %.2.i37.sink = phi i32 [ %i.yj, %vec.epilog.scalar.ph274 ], [ %i.qb, %vec.epilog.scalar.ph231 ], [ %.058.lcssa.i, %._crit_edge83.i ], [ %.058.lcssa.i26, %._crit_edge83.i28 ], [ %.058.lcssa.i56, %._crit_edge83.i58 ], [ %i.wz, %vec.epilog.middle.block284 ], [ %i.or, %vec.epilog.middle.block241 ], [ %i.ge, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph274.prol.loopexit ], [ %.lcssa296.unr, %vec.epilog.scalar.ph231.prol.loopexit ], [ %.lcssa305.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ho, %vec.epilog.scalar.ph ]
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
  %.163.lcssa116 = ptrtoaddr ptr %.163.lcssa to i64 ; 2 uses
  %.161.lcssa117 = ptrtoaddr ptr %.161.lcssa to i64
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
  %i.fz = sub i64 %.161.lcssa117, %.163.lcssa116
  %diff.check = icmp ugt i64 %i.fz, -32
  %i.ga = sub i64 %i.a, %.163.lcssa116
  %diff.check118 = icmp ugt i64 %i.ga, -32
  %conflict.rdx = or i1 %diff.check, %diff.check118
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec123 = and i64 %.165.lcssa, 12             ; 3 uses
  %i.gb = trunc nuw nsw i64 %n.vec123 to i32
  %i.gc = add i32 %.058.lcssa, %i.gb              ; 2 uses
  %i.gd = and i64 %.165.lcssa, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.ge = trunc i64 %index124 to i32
  %i.gf = add i32 %.058.lcssa, %i.ge
  %i.gg = zext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gg
  %wide.load125 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !76
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 %i.gg
  %wide.load126 = load <4 x i8>, ptr %i.gi, align 1, !tbaa !76
  %i.gj = xor <4 x i8> %wide.load126, %wide.load125
  %i.gk = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gg
  store <4 x i8> %i.gj, ptr %i.gk, align 1, !tbaa !76
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !662

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %.165.lcssa, %n.vec123
  br i1 %cmp.n128, label %.loopexit, label %vec.epilog.scalar.ph.preheader

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
  br i1 %i.d, label %CRYPTO_cbc128_encrypt.exit, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.f
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader44.i, %AES_encrypt.exit28
  %.048.i = phi ptr [ %.04046.i, %AES_encrypt.exit28 ], [ %4, %.preheader44.i ] ; 2 uses
  %.03947.i = phi ptr [ %i.o, %AES_encrypt.exit28 ], [ %0, %.preheader44.i ] ; 3 uses
  %.04046.i = phi ptr [ %i.p, %AES_encrypt.exit28 ], [ %1, %.preheader44.i ] ; 12 uses
end_hunk_0
begin_hunk_1_@CRYPTO_cbc128_decrypt:bb.a

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check210
  %vec.epilog.resume.val214 = phi i64 [ %n.vec201, %vec.epilog.iter.check210 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec215 = and i64 %i.bk, -8                   ; 3 uses
  %i.bu = add i64 %.282132, %n.vec215
  br label %vec.epilog.vector.body216

vec.epilog.vector.body216:                        ; preds = %vec.epilog.vector.body216, %vec.epilog.ph213
  %index217 = phi i64 [ %vec.epilog.resume.val214, %vec.epilog.ph213 ], [ %index.next219, %vec.epilog.vector.body216 ] ; 2 uses
  %i.bv = add nuw i64 %.282132, %index217         ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.bv
  %wide.load218 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bv
  store <8 x i8> %wide.load218, ptr %i.bx, align 1, !tbaa !76
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.by, label %vec.epilog.middle.block220, label %vec.epilog.vector.body216, !llvm.loop !686

vec.epilog.middle.block220:                       ; preds = %vec.epilog.vector.body216
  %cmp.n221 = icmp eq i64 %i.bk, %n.vec215
  br i1 %cmp.n221, label %.loopexit, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %iter.check209, %vec.epilog.iter.check210, %vec.epilog.middle.block220
  %.274114.ph = phi i64 [ %.282132, %iter.check209 ], [ %i.bn, %vec.epilog.iter.check210 ], [ %i.bu, %vec.epilog.middle.block220 ] ; 4 uses
  %i.bz = sub i64 %indvars.iv.lcssa, %.274114.ph
  %xtraiter229 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader, %.lr.ph115.prol
  %.274114.prol = phi i64 [ %i.cd, %.lr.ph115.prol ], [ %.274114.ph, %.lr.ph115.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph115.prol ], [ 0, %.lr.ph115.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114.prol
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !76
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %.274114.prol
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !76
  %i.cd = add nuw nsw i64 %.274114.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter229
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

.loopexit:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block207, %vec.epilog.middle.block220, %.loopexit97
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
  %.137.lcssa.i44 = ptrtoaddr ptr %.137.lcssa.i to i64 ; 2 uses
  %.135.lcssa.i45 = ptrtoaddr ptr %.135.lcssa.i to i64
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
  %i.ao = sub i64 %.135.lcssa.i45, %.137.lcssa.i44
  %diff.check = icmp ugt i64 %i.ao, -32
  %i.ap = sub i64 %i.a, %.137.lcssa.i44
  %diff.check46 = icmp ugt i64 %i.ap, -32
  %conflict.rdx = or i1 %diff.check, %diff.check46
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec51 = and i64 %.139.lcssa.i, 12            ; 3 uses
  %i.aq = trunc nuw nsw i64 %n.vec51 to i32
  %i.ar = add i32 %.1.lcssa.i, %i.aq              ; 2 uses
  %i.as = and i64 %.139.lcssa.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.at = trunc i64 %index52 to i32
  %i.au = add i32 %.1.lcssa.i, %i.at
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.av
  %wide.load53 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.av
  %wide.load54 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !76
  %i.ay = xor <4 x i8> %wide.load54, %wide.load53
  %i.az = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.av
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !76
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next55, %n.vec51
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !696

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %.139.lcssa.i, %n.vec51
  br i1 %cmp.n56, label %CRYPTO_ofb128_encrypt.exit, label %vec.epilog.scalar.ph.preheader

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
  %i.am = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !76
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !76
  %i.as = add i32 %.258, 1
  %i.at = add nsw i64 %.24057, -2                 ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 3 uses
end_hunk_1
begin_hunk_2_@BN_enhanced_miller_rabin_primality_test:bb.a
  %i.cs = and i64 %i.cq, %i.cr
  %.not119 = icmp eq i64 %i.cs, 0
  br i1 %.not119, label %BN_is_bit_set.exit.thread, label %bb.s

BN_is_bit_set.exit.thread:                        ; preds = %bb.r, %BN_is_bit_set.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next235 = add nuw i32 %indvars.iv234, 1
  br label %bb.r, !llvm.loop !1524

bb.s:                                             ; preds = %BN_is_bit_set.exit
  %i.ct = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.thread215, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32
  %i.cw = tail call i32 @BN_rshift(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cf, i32 noundef %i.cv)
  %.not120 = icmp eq i32 %i.cw, 0
  br i1 %.not120, label %.thread215, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 4 uses
  %i.cy = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 9 uses
  %i.cz = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 14 uses
  %i.da = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 9 uses
  %i.db = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 4 uses
  %i.dc = insertelement <4 x ptr> poison, ptr %i.cx, i64 0
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %i.cy, i64 1
  %i.de = insertelement <4 x ptr> %i.dd, ptr %i.cz, i64 2
  %i.df = insertelement <4 x ptr> %i.de, ptr %i.da, i64 3
  %.fr281 = freeze <4 x ptr> %i.df
  %i.dg = icmp eq <4 x ptr> %.fr281, splat (ptr null)
  %i.dh = icmp eq ptr %i.db, null
  %i.di = bitcast <4 x i1> %i.dg to i4
  %i.dj = icmp ne i4 %i.di, 0
  %op.rdx = select i1 %i.dj, i1 true, i1 %i.dh
  br i1 %op.rdx, label %.thread215, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = tail call ptr @BN_MONT_CTX_new_for_modulus(ptr noundef nonnull %1, ptr noundef nonnull %3) ; 19 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.thread215, label %.preheader218

.preheader218:                                    ; preds = %bb.v
  %.not121225 = icmp slt i32 %.0103, 1
  br i1 %.not121225, label %._crit_edge228, label %.lr.ph227

.lr.ph227:                                        ; preds = %.preheader218
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dq = icmp samesign ugt i64 %indvars.iv, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.not.i162 = icmp eq ptr %4, null
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph227, %BN_GENCB_call.exit.thread
  %.0100226 = phi i32 [ 1, %.lr.ph227 ], [ %i.gv, %BN_GENCB_call.exit.thread ] ; 3 uses
  %i.dt = tail call i32 @BN_rand_range_ex(ptr noundef %i.cx, i64 noundef 2, ptr noundef nonnull %i.cf)
  %.not122 = icmp eq i32 %i.dt, 0
  br i1 %.not122, label %.thread215, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.du = call fastcc i32 @bn_gcd_consttime(ptr noundef %i.cy, ptr noundef %i.b, ptr noundef readonly %i.cx, ptr noundef nonnull readonly %1, ptr noundef nonnull %3)
  %.not.i142 = icmp eq i32 %i.du, 0
  br i1 %.not.i142, label %BN_gcd.exit.thread, label %BN_gcd.exit

BN_gcd.exit.thread:                               ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %.thread215

BN_gcd.exit:                                      ; preds = %bb.x
  %i.dv = load i32, ptr %i.b, align 4, !tbaa !73
  %i.dw = tail call i32 @BN_lshift(ptr noundef %i.cy, ptr noundef %i.cy, i32 noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %.not123 = icmp eq i32 %i.dw, 0
  br i1 %.not123, label %.thread215, label %bb.y

bb.y:                                             ; preds = %BN_gcd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8, !tbaa !80
  %i.dx = load i32, ptr %i.dm, align 8, !tbaa !91
  %.not.i.i143 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i143, label %BN_cmp_word.exit145, label %BN_cmp_word.exit145.thread

BN_cmp_word.exit145.thread:                       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

BN_cmp_word.exit145:                              ; preds = %bb.y
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !92
  %i.dz = load i32, ptr %i.dn, align 8, !tbaa !93
  %i.ea = sext i32 %i.dz to i64
  %i.eb = call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.dy, i64 noundef %i.ea, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %BN_cmp_word.exit145
  store i32 1, ptr %0, align 4, !tbaa !73
  br label %.thread215

bb.aa:                                            ; preds = %BN_cmp_word.exit145.thread, %BN_cmp_word.exit145
  %i.ed = tail call i32 @BN_mod_exp_mont(ptr noundef nonnull %i.cz, ptr noundef %i.cx, ptr noundef nonnull %i.ct, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %i.dk)
  %.not124 = icmp eq i32 %i.ed, 0
  br i1 %.not124, label %.thread215, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i32, ptr %i.do, align 8, !tbaa !91
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ac, label %BN_is_one.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load i32, ptr %i.dp, align 8, !tbaa !93 ; 4 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %BN_is_one.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = load ptr, ptr %i.cz, align 8, !tbaa !92 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !80
  %i.ek = xor i64 %i.ej, 1                        ; 3 uses
  %i.el = icmp sgt i32 %i.eg, 1
  br i1 %i.el, label %.lr.ph.preheader.i.i, label %BN_is_one.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.ad
  %wide.trip.count.i.i = zext nneg i32 %i.eg to i64 ; 2 uses
  %i.em = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check266 = icmp ult i32 %i.eg, 5
  br i1 %min.iters.check266, label %.lr.ph.i.i146.preheader, label %vector.ph267

vector.ph267:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec268 = and i64 %i.em, -4                   ; 3 uses
  %i.en = or disjoint i64 %n.vec268, 1
  %i.eo = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ek, i64 0
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 2 uses
  %vec.phi271.a = phi <2 x i64> [ %i.eo, %vector.ph267 ], [ %i.es, %vector.body269 ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph267 ], [ %i.et, %vector.body269 ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index270 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %wide.load273.a = load <2 x i64>, ptr %i.eq, align 8, !tbaa !80
  %wide.load274 = load <2 x i64>, ptr %i.er, align 8, !tbaa !80
  %i.es = or <2 x i64> %wide.load273.a, %vec.phi271.a ; 2 uses
  %i.et = or <2 x i64> %wide.load274, %vec.phi272 ; 2 uses
  %index.next275 = add nuw i64 %index270, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.eu, label %middle.block276, label %vector.body269, !llvm.loop !1525

middle.block276:                                  ; preds = %vector.body269
  %bin.rdx277 = or <2 x i64> %i.et, %i.es
  %i.ev = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx277) ; 2 uses
  %cmp.n278 = icmp eq i64 %i.em, %n.vec268
  br i1 %cmp.n278, label %BN_is_one.exit, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block276
  %indvars.iv.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.en, %middle.block276 ]
  %.01113.i.i.ph = phi i64 [ %i.ek, %.lr.ph.preheader.i.i ], [ %i.ev, %middle.block276 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader, %.lr.ph.i.i146
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i146 ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %.01113.i.i = phi i64 [ %i.ey, %.lr.ph.i.i146 ], [ %.01113.i.i.ph, %.lr.ph.i.i146.preheader ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !80
  %i.ey = or i64 %i.ex, %.01113.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %BN_is_one.exit, label %.lr.ph.i.i146, !llvm.loop !1526

BN_is_one.exit:                                   ; preds = %.lr.ph.i.i146, %middle.block276, %bb.ad
  %.012.in.in.i.i = phi i64 [ %i.ek, %bb.ad ], [ %i.ev, %middle.block276 ], [ %i.ey, %.lr.ph.i.i146 ]
  %.012.in.i.i.not = icmp eq i64 %.012.in.in.i.i, 0
  br i1 %.012.in.i.i.not, label %.loopexit, label %BN_is_one.exit.thread

BN_is_one.exit.thread:                            ; preds = %bb.ac, %bb.ab, %BN_is_one.exit
  %i.ez = tail call i32 @BN_cmp(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cf)
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %BN_is_one.exit.thread
  br i1 %i.dq, label %.lr.ph, label %.preheader._crit_edge

.lr.ph:                                           ; preds = %.preheader, %BN_is_one.exit161.thread
  %.0224 = phi i32 [ %i.gh, %BN_is_one.exit161.thread ], [ 1, %.preheader ]
  %i.fb = tail call ptr @BN_copy(ptr noundef %i.da, ptr noundef nonnull %i.cz)
  %.not126 = icmp eq ptr %i.fb, null
  br i1 %.not126, label %.thread215, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.fc = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.cz, ptr noundef %i.da, ptr noundef %i.da, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.not127 = icmp eq i32 %i.fc, 0
  br i1 %.not127, label %.thread215, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = load i32, ptr %i.do, align 8, !tbaa !91 ; 3 uses
  %i.fe = load i32, ptr %i.dr, align 8, !tbaa !91
  %.not.i147 = icmp eq i32 %i.fd, %i.fe
  br i1 %.not.i147, label %BN_cmp.exit, label %BN_cmp.exit.thread

BN_cmp.exit:                                      ; preds = %bb.af
  %i.ff = load ptr, ptr %i.cz, align 8, !tbaa !92
  %i.fg = load i32, ptr %i.dp, align 8, !tbaa !93
  %i.fh = sext i32 %i.fg to i64
  %i.fi = load ptr, ptr %i.cf, align 8, !tbaa !92
  %i.fj = load i32, ptr %i.cj, align 8, !tbaa !93
  %i.fk = sext i32 %i.fj to i64
  %i.fl = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.ff, i64 noundef %i.fh, ptr noundef %i.fi, i64 noundef %i.fk) ; 2 uses
  %.not16.i = icmp eq i32 %i.fd, 0
  %5 = sub nsw i32 0, %i.fl
  %6 = select i1 %.not16.i, i32 %i.fl, i32 %5
  %i.fm = icmp eq i32 %6, 0
  br i1 %i.fm, label %.loopexit, label %BN_cmp.exit.thread

BN_cmp.exit.thread:                               ; preds = %BN_cmp.exit, %bb.af
  %i.fn = icmp eq i32 %i.fd, 0
  br i1 %i.fn, label %bb.ag, label %BN_is_one.exit161.thread

bb.ag:                                            ; preds = %BN_cmp.exit.thread
  %i.fo = load i32, ptr %i.dp, align 8, !tbaa !93 ; 4 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %BN_is_one.exit161.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fq = load ptr, ptr %i.cz, align 8, !tbaa !92 ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !80
  %i.fs = xor i64 %i.fr, 1                        ; 3 uses
  %i.ft = icmp sgt i32 %i.fo, 1
  br i1 %i.ft, label %.lr.ph.preheader.i.i154, label %BN_is_one.exit161

.lr.ph.preheader.i.i154:                          ; preds = %bb.ah
  %wide.trip.count.i.i155 = zext nneg i32 %i.fo to i64 ; 2 uses
  %i.fu = add nsw i64 %wide.trip.count.i.i155, -1 ; 2 uses
  %min.iters.check = icmp ult i32 %i.fo, 5
  br i1 %min.iters.check, label %.lr.ph.i.i156.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i154
  %n.vec = and i64 %i.fu, -4                      ; 3 uses
  %i.fv = or disjoint i64 %n.vec, 1
  %i.fw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.fs, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.fw, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi263 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gb, %vector.body ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %wide.load = load <2 x i64>, ptr %i.fy, align 8, !tbaa !80
  %wide.load264 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !80
  %i.ga = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.gb = or <2 x i64> %wide.load264, %vec.phi263 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !1527

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.gb, %i.ga
  %i.gd = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %BN_is_one.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %.lr.ph.preheader.i.i154, %middle.block
  %indvars.iv.i.i157.ph = phi i64 [ 1, %.lr.ph.preheader.i.i154 ], [ %i.fv, %middle.block ]
  %.01113.i.i158.ph = phi i64 [ %i.fs, %.lr.ph.preheader.i.i154 ], [ %i.gd, %middle.block ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader, %.lr.ph.i.i156
  %indvars.iv.i.i157 = phi i64 [ %indvars.iv.next.i.i159, %.lr.ph.i.i156 ], [ %indvars.iv.i.i157.ph, %.lr.ph.i.i156.preheader ] ; 2 uses
  %.01113.i.i158 = phi i64 [ %i.gg, %.lr.ph.i.i156 ], [ %.01113.i.i158.ph, %.lr.ph.i.i156.preheader ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i.i157
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !80
  %i.gg = or i64 %i.gf, %.01113.i.i158            ; 2 uses
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i157, 1 ; 2 uses
  %exitcond.not.i.i160 = icmp eq i64 %indvars.iv.next.i.i159, %wide.trip.count.i.i155
  br i1 %exitcond.not.i.i160, label %BN_is_one.exit161, label %.lr.ph.i.i156, !llvm.loop !1528

BN_is_one.exit161:                                ; preds = %.lr.ph.i.i156, %middle.block, %bb.ah
  %.012.in.in.i.i151 = phi i64 [ %i.fs, %bb.ah ], [ %i.gd, %middle.block ], [ %i.gg, %.lr.ph.i.i156 ]
  %.012.in.i.i152.not = icmp eq i64 %.012.in.in.i.i151, 0
  br i1 %.012.in.i.i152.not, label %.thread207, label %BN_is_one.exit161.thread

BN_is_one.exit161.thread:                         ; preds = %bb.ag, %BN_cmp.exit.thread, %BN_is_one.exit161
  %i.gh = add nuw nsw i32 %.0224, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gh, %indvars.iv234
  br i1 %exitcond.not, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !1529

.preheader._crit_edge:                            ; preds = %.preheader, %BN_is_one.exit161.thread
  %i.gi = tail call ptr @BN_copy(ptr noundef %i.da, ptr noundef nonnull %i.cz)
  %.not129 = icmp eq ptr %i.gi, null
  br i1 %.not129, label %.thread215, label %bb.ai

bb.ai:                                            ; preds = %.preheader._crit_edge
  %i.gj = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.cz, ptr noundef %i.da, ptr noundef %i.da, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.not130 = icmp eq i32 %i.gj, 0
  br i1 %.not130, label %.thread215, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = tail call i32 @BN_is_one(ptr noundef nonnull %i.cz)
  %.not131 = icmp eq i32 %i.gk, 0
  br i1 %.not131, label %bb.ak, label %.thread207

bb.ak:                                            ; preds = %bb.aj
  %i.gl = tail call ptr @BN_copy(ptr noundef %i.da, ptr noundef nonnull %i.cz)
  %.not132 = icmp eq ptr %i.gl, null
  br i1 %.not132, label %.thread215, label %.thread207

.thread207:                                       ; preds = %BN_is_one.exit161, %bb.aj, %bb.ak
  %i.gm = tail call ptr @BN_copy(ptr noundef %i.db, ptr noundef %i.da)
  %.not133 = icmp eq ptr %i.gm, null
  br i1 %.not133, label %.thread215, label %bb.al

bb.al:                                            ; preds = %.thread207
  %i.gn = tail call i32 @BN_sub_word(ptr noundef %i.db, i64 noundef 1)
  %.not134 = icmp eq i32 %i.gn, 0
  br i1 %.not134, label %.thread215, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = tail call i32 @BN_gcd(ptr noundef %i.cy, ptr noundef %i.db, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.not135 = icmp eq i32 %i.go, 0
  br i1 %.not135, label %.thread215, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = tail call i32 @BN_cmp_word(ptr noundef %i.cy, i64 noundef 1)
  %.inv = icmp slt i32 %i.gp, 1
  %. = select i1 %.inv, i32 2, i32 1
  store i32 %., ptr %0, align 4, !tbaa !73
  br label %.thread215

.loopexit:                                        ; preds = %BN_cmp.exit, %BN_is_one.exit, %BN_is_one.exit.thread
  %i.gq = add nsw i32 %.0100226, -1               ; 2 uses
  br i1 %.not.i162, label %BN_GENCB_call.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.gr = load i8, ptr %4, align 8, !tbaa !128
  switch i8 %i.gr, label %.thread215 [
    i8 1, label %BN_GENCB_call.exit
    i8 2, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gs = load ptr, ptr %i.ds, align 8, !tbaa !76
  tail call void %i.gs(i32 noundef 1, i32 noundef %i.gq, ptr noundef nonnull %4) #46, !inline_history !132
  br label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit:                               ; preds = %bb.ao
  %i.gt = load ptr, ptr %i.ds, align 8, !tbaa !76
  %i.gu = tail call i32 %i.gt(i32 noundef 1, i32 noundef %i.gq, ptr noundef nonnull %4) #46, !inline_history !132
  %.not136 = icmp eq i32 %i.gu, 0
  br i1 %.not136, label %.thread215, label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit.thread:                        ; preds = %.loopexit, %bb.ap, %BN_GENCB_call.exit
  %i.gv = add nuw i32 %.0100226, 1
  %exitcond236.not = icmp eq i32 %.0100226, %.0103
  br i1 %exitcond236.not, label %._crit_edge228, label %bb.w, !llvm.loop !1530

._crit_edge228:                                   ; preds = %BN_GENCB_call.exit.thread, %.preheader218
  store i32 0, ptr %0, align 4, !tbaa !73
  br label %.thread215

.thread215:                                       ; preds = %bb.ao, %BN_GENCB_call.exit, %bb.w, %BN_gcd.exit, %bb.aa, %bb.ae, %.lr.ph, %BN_gcd.exit.thread, %bb.al, %bb.am, %bb.ai, %.preheader._crit_edge, %bb.ak, %bb.an, %.thread207, %bb.z, %bb.v, %bb.u, %bb.s, %bb.t, %BN_CTX_start.exit, %bb.p, %bb.q, %._crit_edge228
  %.0106 = phi ptr [ null, %BN_CTX_start.exit ], [ null, %bb.s ], [ null, %bb.u ], [ null, %bb.v ], [ %i.dk, %._crit_edge228 ], [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.q ], [ %i.dk, %bb.z ], [ %i.dk, %.thread207 ], [ %i.dk, %bb.an ], [ %i.dk, %bb.ak ], [ %i.dk, %.preheader._crit_edge ], [ %i.dk, %bb.al ], [ %i.dk, %bb.ae ], [ %i.dk, %BN_gcd.exit.thread ], [ %i.dk, %bb.ai ], [ %i.dk, %bb.am ], [ %i.dk, %.lr.ph ], [ %i.dk, %bb.aa ], [ %i.dk, %BN_gcd.exit ], [ %i.dk, %bb.w ], [ %i.dk, %BN_GENCB_call.exit ], [ %i.dk, %bb.ao ]
  %.1105 = phi i32 [ 0, %BN_CTX_start.exit ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.v ], [ 1, %._crit_edge228 ], [ 0, %bb.p ], [ 0, %bb.t ], [ 0, %bb.q ], [ 1, %bb.z ], [ 0, %.thread207 ], [ 1, %bb.an ], [ 0, %bb.ak ], [ 0, %.preheader._crit_edge ], [ 0, %bb.al ], [ 0, %bb.ae ], [ 0, %BN_gcd.exit.thread ], [ 0, %bb.ai ], [ 0, %bb.am ], [ 0, %.lr.ph ], [ 0, %bb.aa ], [ 0, %BN_gcd.exit ], [ 0, %bb.w ], [ 0, %BN_GENCB_call.exit ], [ 0, %bb.ao ] ; 2 uses
  tail call void @BN_MONT_CTX_free(ptr noundef %.0106)
  %i.gw = load i8, ptr %i.bg, align 8, !tbaa !110
  %.not.i164 = icmp eq i8 %i.gw, 0
  br i1 %.not.i164, label %bb.aq, label %BN_CTX_end.exit

bb.aq:                                            ; preds = %.thread215
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !112
  %i.ha = add i64 %i.gz, -1                       ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !112
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !109
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !80
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !111
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.aq, %.thread215, %BN_is_odd.exit.thread
  %.1102 = phi i32 [ 0, %BN_is_odd.exit.thread ], [ %.1105, %.thread215 ], [ %.1105, %bb.aq ]
  ret i32 %.1102
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_rand(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bn_wexpand.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, -1
  %i.b = add i32 %2, -2
  %or.cond3 = icmp ult i32 %i.b, -3
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.11, i32 noundef 25) #46
  br label %bn_wexpand.exit.thread

bb.d:                                             ; preds = %bb.b
  %or.cond5 = icmp ugt i32 %3, 1
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.11, i32 noundef 30) #46
  br label %bn_wexpand.exit.thread

bb.f:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@EVP_shake128_init:bb.a
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 8), align 8, !tbaa !208
  store ptr @shake128_init, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 16), align 8, !tbaa !247
  store ptr @shake128_update, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 24), align 8, !tbaa !232
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 32), align 8, !tbaa !225
  store ptr @shake128_squeeze, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 56), align 8, !tbaa !230
  store ptr @shake128_final, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 48), align 8, !tbaa !223
  store i32 168, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 40), align 8, !tbaa !227
  store i32 400, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 44), align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @EVP_shake256() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @EVP_shake256_once, ptr noundef nonnull @EVP_shake256_init) #46
  ret ptr @EVP_shake256_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @EVP_shake256_init() #16 {
bb.a:
  store i32 980, ptr @EVP_shake256_storage, align 8, !tbaa !226
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 4), align 4, !tbaa !207
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 8), align 8, !tbaa !208
  store ptr @shake256_init, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 16), align 8, !tbaa !247
  store ptr @shake256_update, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 24), align 8, !tbaa !232
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 32), align 8, !tbaa !225
  store ptr @shake256_squeeze, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 56), align 8, !tbaa !230
  store ptr @shake256_final, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 48), align 8, !tbaa !223
  store i32 136, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 40), align 8, !tbaa !227
  store i32 400, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 44), align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @EVP_md5_sha1() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @EVP_md5_sha1_once, ptr noundef nonnull @EVP_md5_sha1_init) #46
  ret ptr @EVP_md5_sha1_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @EVP_md5_sha1_init() #16 {
bb.a:
  store i32 114, ptr @EVP_md5_sha1_storage, align 8, !tbaa !226
  store i32 36, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 4), align 4, !tbaa !207
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 8), align 8, !tbaa !208
  store ptr @md5_sha1_init, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 16), align 8, !tbaa !247
  store ptr @md5_sha1_update, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 24), align 8, !tbaa !232
  store ptr @md5_sha1_final, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 32), align 8, !tbaa !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 48), i8 0, i64 16, i1 false)
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 40), align 8, !tbaa !227
  store i32 188, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 44), align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @ECDH_compute_shared_secret(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.EC_JACOBIAN, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 27, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.21, i32 noundef 32) #46
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %3, align 8, !tbaa !264    ; 7 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !268
  %i.g = tail call i32 @EC_GROUP_cmp(ptr noundef %i.e, ptr noundef %i.f, ptr poison)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.21, i32 noundef 38) #46
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @EC_KEY_new_method(ptr noundef null) ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !264  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %EC_KEY_set_group.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @EC_GROUP_cmp(ptr noundef nonnull %i.j, ptr noundef %i.e, ptr poison)
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %EC_KEY_set_group.exit.thread35, label %EC_KEY_set_group.exit.thread

EC_KEY_set_group.exit.thread:                     ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 130, ptr noundef nonnull @.str.28, i32 noundef 157) #46
  br label %bb.i

EC_KEY_set_group.exit:                            ; preds = %bb.f
  %i.l = tail call ptr @EC_GROUP_dup(ptr noundef %i.e) ; 2 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !264
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %bb.i, label %EC_KEY_set_group.exit.thread35

EC_KEY_set_group.exit.thread35:                   ; preds = %bb.g, %EC_KEY_set_group.exit
  %i.m = tail call i32 @EC_KEY_set_public_key(ptr noundef nonnull %i.h, ptr noundef nonnull %2)
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %EC_KEY_set_group.exit.thread35
  %i.n = tail call i32 @EC_KEY_check_fips(ptr noundef nonnull %i.h)
  %.not27 = icmp eq i32 %i.n, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %EC_KEY_set_group.exit.thread, %bb.h, %EC_KEY_set_group.exit.thread35, %EC_KEY_set_group.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @.str.21, i32 noundef 59) #46
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !273
  call void %i.r(ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d) #46, !inline_history !274
  %i.s = call i32 @ec_GFp_simple_is_on_curve(ptr noundef nonnull %i.e, ptr noundef nonnull %4)
  %.not.i31 = icmp eq i32 %i.s, 0
  br i1 %.not.i31, label %ec_point_mul_scalar.exit.thread, label %ec_point_mul_scalar.exit

ec_point_mul_scalar.exit.thread:                  ; preds = %bb.j
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.23, i32 noundef 914) #46
  br label %bb.k

ec_point_mul_scalar.exit:                         ; preds = %bb.j
  %i.t = load i64, ptr %1, align 8, !tbaa !80
  %i.u = call i32 @ec_get_x_coordinate_as_bytes(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.t, ptr noundef nonnull %4)
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.k, label %bb.m

bb.k:                                             ; preds = %ec_point_mul_scalar.exit.thread, %ec_point_mul_scalar.exit
  call void @ERR_put_error(i32 noundef 27, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.21, i32 noundef 67) #46
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 216) #46
  br label %bb.n

bb.m:                                             ; preds = %ec_point_mul_scalar.exit, %bb.k, %bb.i
  %.0.ph = phi i32 [ 1, %ec_point_mul_scalar.exit ], [ 0, %bb.k ], [ 0, %bb.i ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 216) #46
  call void @EC_KEY_free(ptr noundef nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.d, %bb.m, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.0.ph, %bb.m ], [ 0, %bb.l ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @EC_KEY_get0_group(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %BN_cmp.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.c = load i32, ptr %i.b, align 8, !tbaa !275  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.e = load i32, ptr %i.d, align 8, !tbaa !275
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %BN_cmp.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not27 = icmp eq i32 %i.c, 0
  br i1 %.not27, label %bb.d, label %BN_cmp.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !271
  %i.g = load ptr, ptr %1, align 8, !tbaa !271
  %.not28 = icmp eq ptr %i.f, %i.g
  br i1 %.not28, label %bb.e, label %BN_cmp.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !276
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 532 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !276
  %.not29 = icmp eq i32 %i.i, %i.k
  br i1 %.not29, label %bb.f, label %BN_cmp.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.m = load i32, ptr %i.l, align 8, !tbaa !91   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.m, %i.o
  br i1 %.not.i, label %BN_cmp.exit, label %BN_cmp.exit.thread

BN_cmp.exit:                                      ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !93
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.x = load i32, ptr %i.w, align 8, !tbaa !93
  %i.y = sext i32 %i.x to i64
  %i.z = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.r, i64 noundef %i.u, ptr noundef %i.v, i64 noundef %i.y) ; 2 uses
  %.not16.i = icmp eq i32 %i.m, 0
  %3 = sub nsw i32 0, %i.z
  %4 = select i1 %.not16.i, i32 %i.z, i32 %3
  %.not30 = icmp eq i32 %4, 0
  br i1 %.not30, label %bb.g, label %BN_cmp.exit.thread

bb.g:                                             ; preds = %BN_cmp.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ac = shl nsw i64 %i.u, 3
  %i.ad = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) #46
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %bb.h, label %BN_cmp.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ag = load i32, ptr %i.s, align 8, !tbaa !277
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.ai) #46
  %.not40 = icmp eq i32 %i.aj, 0
  br i1 %.not40, label %bb.i, label %BN_cmp.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !276
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %BN_cmp.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.j, align 4, !tbaa !276
  %.not34 = icmp eq i32 %i.al, 0
  br i1 %.not34, label %BN_cmp.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ao = tail call i32 @BN_cmp(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an)
  %.not35 = icmp eq i32 %i.ao, 0
  br i1 %.not35, label %bb.l, label %BN_cmp.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = tail call i32 @ec_GFp_simple_points_equal(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.as = xor i32 %i.ar, 1
  br label %BN_cmp.exit.thread

BN_cmp.exit.thread:                               ; preds = %bb.f, %bb.d, %bb.e, %BN_cmp.exit, %bb.g, %bb.h, %bb.k, %bb.l, %bb.j, %bb.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %BN_cmp.exit ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.j ], [ 0, %bb.i ], [ 1, %bb.k ], [ %i.as, %bb.l ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @EC_KEY_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @EC_KEY_new_method(ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_set_group(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @EC_GROUP_cmp(ptr noundef nonnull %i.a, ptr noundef %1, ptr poison)
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 130, ptr noundef nonnull @.str.28, i32 noundef 157) #46
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = tail call ptr @EC_GROUP_dup(ptr noundef %1) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !264
  %i.d = icmp ne ptr %i.c, null
  %i.e = zext i1 %i.d to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.e, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_set_public_key(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.28, i32 noundef 205) #46
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !268
  %i.d = tail call i32 @EC_GROUP_cmp(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr poison)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.e, label %EC_POINT_is_at_infinity.exit.thread

EC_POINT_is_at_infinity.exit.thread:              ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.23, i32 noundef 602) #46
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.g = load i32, ptr %i.f, align 8, !tbaa !277  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i.i, label %EC_POINT_is_at_infinity.exit.thread22

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %wide.trip.count.i.i.i = zext nneg i32 %i.g to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !80
  %wide.load31 = load <2 x i64>, ptr %i.j, align 8, !tbaa !80
  %i.k = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.l = or <2 x i64> %wide.load31, %vec.phi30    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1660

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %EC_POINT_is_at_infinity.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.067.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %.067.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !80
  %i.q = or i64 %i.p, %.067.i.i.i                 ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %EC_POINT_is_at_infinity.exit, label %.lr.ph.i.i.i, !llvm.loop !1661

EC_POINT_is_at_infinity.exit:                     ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa = phi i64 [ %i.n, %middle.block ], [ %i.q, %.lr.ph.i.i.i ]
  %.not.i.i.not = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i.not, label %EC_POINT_is_at_infinity.exit.thread22, label %bb.g

EC_POINT_is_at_infinity.exit.thread22:            ; preds = %bb.e, %EC_POINT_is_at_infinity.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.28, i32 noundef 210) #46
  br label %bb.j

.split:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !278  ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.s, null
  br i1 %.not.i.i17, label %EC_POINT_free.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !268
  tail call void @EC_GROUP_free(ptr noundef %i.t)
  tail call void @OPENSSL_free(ptr noundef nonnull %i.s) #46
  br label %EC_POINT_free.exit

bb.g:                                             ; preds = %EC_POINT_is_at_infinity.exit, %EC_POINT_is_at_infinity.exit.thread
  %i.u = load ptr, ptr %0, align 8, !tbaa !264
  %i.v = load ptr, ptr %1, align 8, !tbaa !268
  %i.w = tail call i32 @EC_GROUP_cmp(ptr noundef %i.u, ptr noundef %i.v, ptr poison)
  %.not16 = icmp eq i32 %i.w, 0
  br i1 %.not16, label %.split12, label %bb.i

.split12:                                         ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !278  ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i18, label %EC_POINT_free.exit19, label %bb.h

bb.h:                                             ; preds = %.split12
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !268
  tail call void @EC_GROUP_free(ptr noundef %i.z)
  tail call void @OPENSSL_free(ptr noundef nonnull %i.y) #46
  br label %EC_POINT_free.exit19

end_hunk_3
