Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1194
loop-unroll.NumRuntimeUnrolled: 417
loop-unroll.NumUnrolled: 1633
begin_hunk_0_@helper_sve2p1_zipq_d:bb.a
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 10 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %iter.check, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !817
  br label %iter.check

iter.check:                                       ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 27 uses
  %i.o = add nsw i64 %i.i, 2
  %smax = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.o)
  %i.p = xor i64 %i.i, -1
  %i.q = add i64 %smax, %i.p                      ; 5 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 4 uses
  %min.iters.check = icmp ult i64 %i.q, 16
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add nsw i64 %i.i, 2
  %i.u = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.t)
  %i.v = xor i64 %i.i, -1
  %i.w = add i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 1
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = getelementptr i8, ptr %1, i64 %i.i
  %i.ab = and i64 %i.w, -2
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  %bound0 = icmp ult ptr %0, %i.ae
  %bound1 = icmp ult ptr %i.aa, %i.z
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.s, 15                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 16, i64 %i.af      ; 2 uses
  %n.vec = sub i64 %i.s, %i.ah                    ; 4 uses
  %i.ai = shl i64 %n.vec, 1
  %i.aj = add i64 %i.ai, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 1
  %i.al = add i64 %i.ak, %i.i                     ; 16 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  %i.ap = getelementptr i8, ptr %1, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = getelementptr i8, ptr %1, i64 %i.al
  %i.as = getelementptr i8, ptr %i.ar, i64 6
  %i.at = getelementptr i8, ptr %1, i64 %i.al
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = getelementptr i8, ptr %1, i64 %i.al
  %i.aw = getelementptr i8, ptr %i.av, i64 10
  %i.ax = getelementptr i8, ptr %1, i64 %i.al
  %i.ay = getelementptr i8, ptr %i.ax, i64 12
  %i.az = getelementptr i8, ptr %1, i64 %i.al
  %i.ba = getelementptr i8, ptr %i.az, i64 14
  %i.bb = getelementptr i8, ptr %1, i64 %i.al
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = getelementptr i8, ptr %1, i64 %i.al
  %i.be = getelementptr i8, ptr %i.bd, i64 18
  %i.bf = getelementptr i8, ptr %1, i64 %i.al
  %i.bg = getelementptr i8, ptr %i.bf, i64 20
  %i.bh = getelementptr i8, ptr %1, i64 %i.al
  %i.bi = getelementptr i8, ptr %i.bh, i64 22
  %i.bj = getelementptr i8, ptr %1, i64 %i.al
  %i.bk = getelementptr i8, ptr %i.bj, i64 24
  %i.bl = getelementptr i8, ptr %1, i64 %i.al
  %i.bm = getelementptr i8, ptr %i.bl, i64 26
  %i.bn = getelementptr i8, ptr %1, i64 %i.al
  %i.bo = getelementptr i8, ptr %i.bn, i64 28
  %i.bp = getelementptr i8, ptr %1, i64 %i.al
  %i.bq = getelementptr i8, ptr %i.bp, i64 30
  %i.br = load i8, ptr %i.am, align 1, !alias.scope !818
  %i.bs = load i8, ptr %i.ao, align 1, !alias.scope !818
  %i.bt = load i8, ptr %i.aq, align 1, !alias.scope !818
  %i.bu = load i8, ptr %i.as, align 1, !alias.scope !818
  %i.bv = load i8, ptr %i.au, align 1, !alias.scope !818
  %i.bw = load i8, ptr %i.aw, align 1, !alias.scope !818
  %i.bx = load i8, ptr %i.ay, align 1, !alias.scope !818
  %i.by = load i8, ptr %i.ba, align 1, !alias.scope !818
  %i.bz = load i8, ptr %i.bc, align 1, !alias.scope !818
  %i.ca = load i8, ptr %i.be, align 1, !alias.scope !818
  %i.cb = load i8, ptr %i.bg, align 1, !alias.scope !818
  %i.cc = load i8, ptr %i.bi, align 1, !alias.scope !818
  %i.cd = load i8, ptr %i.bk, align 1, !alias.scope !818
  %i.ce = load i8, ptr %i.bm, align 1, !alias.scope !818
  %i.cf = load i8, ptr %i.bo, align 1, !alias.scope !818
  %i.cg = load i8, ptr %i.bq, align 1, !alias.scope !818
  %i.ch = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 1
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 2
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 3
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 4
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 5
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 6
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 7
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 8
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 9
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 10
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 11
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 12
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 13
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 14
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 15
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.cw, ptr %i.cx, align 1, !alias.scope !819, !noalias !818
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !808

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ah, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph, label %vec.epilog.ph, !prof !820

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cz = and i64 %i.s, 7                         ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = select i1 %i.da, i64 8, i64 %i.cz
  %n.vec47 = sub i64 %i.s, %i.db                  ; 3 uses
  %i.dc = shl i64 %n.vec47, 1
  %i.dd = add i64 %i.dc, %i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %i.de = shl i64 %index48, 1
  %i.df = add i64 %i.de, %i.i                     ; 8 uses
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %1, i64 %i.df
  %i.di = getelementptr i8, ptr %i.dh, i64 2
  %i.dj = getelementptr i8, ptr %1, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.dj, i64 4
  %i.dl = getelementptr i8, ptr %1, i64 %i.df
  %i.dm = getelementptr i8, ptr %i.dl, i64 6
  %i.dn = getelementptr i8, ptr %1, i64 %i.df
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = getelementptr i8, ptr %1, i64 %i.df
  %i.dq = getelementptr i8, ptr %i.dp, i64 10
  %i.dr = getelementptr i8, ptr %1, i64 %i.df
  %i.ds = getelementptr i8, ptr %i.dr, i64 12
  %i.dt = getelementptr i8, ptr %1, i64 %i.df
  %i.du = getelementptr i8, ptr %i.dt, i64 14
  %i.dv = load i8, ptr %i.dg, align 1, !alias.scope !818
  %i.dw = load i8, ptr %i.di, align 1, !alias.scope !818
  %i.dx = load i8, ptr %i.dk, align 1, !alias.scope !818
  %i.dy = load i8, ptr %i.dm, align 1, !alias.scope !818
  %i.dz = load i8, ptr %i.do, align 1, !alias.scope !818
  %i.ea = load i8, ptr %i.dq, align 1, !alias.scope !818
  %i.eb = load i8, ptr %i.ds, align 1, !alias.scope !818
  %i.ec = load i8, ptr %i.du, align 1, !alias.scope !818
  %i.ed = insertelement <8 x i8> poison, i8 %i.dv, i64 0
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 1
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 2
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 3
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 4
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 5
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 6
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 7
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %index48
  store <8 x i8> %i.ek, ptr %i.el, align 1, !alias.scope !819, !noalias !818
  %index.next49 = add nuw i64 %index48, 8         ; 2 uses
  %i.em = icmp eq i64 %index.next49, %n.vec47
  br i1 %i.em, label %vec.epilog.scalar.ph, label %vec.epilog.vector.body, !llvm.loop !809

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %bc.resume.val = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ], [ %n.vec47, %vec.epilog.vector.body ]
  %bc.resume.val50 = phi i64 [ %i.i, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.i, %vector.memcheck ], [ %i.dd, %vec.epilog.vector.body ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %vec.epilog.scalar.ph, %bb.c
  %.027 = phi i64 [ %bc.resume.val, %vec.epilog.scalar.ph ], [ %i.eq, %bb.c ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val50, %vec.epilog.scalar.ph ], [ %i.er, %bb.c ] ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = add i64 %.027, 1                        ; 8 uses
  %i.er = add nsw i64 %.0, 2                      ; 3 uses
  %i.es = icmp slt i64 %i.er, %i.g
  br i1 %i.es, label %bb.c, label %iter.check68, !llvm.loop !810

iter.check68:                                     ; preds = %bb.c
  %i.et = sub i64 %i.er, %i.g                     ; 7 uses
  %i.eu = and i64 %i.q, -2                        ; 2 uses
  %i.ev = add i64 %i.eu, %i.i
  %i.ew = add i64 %i.ev, -4
  %i.ex = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %umax58 = call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.g)
  %i.ez = add i64 %umax58, %i.ex
  %i.fa = add i64 %i.ez, 5
  %i.fb = add i64 %i.eu, %i.i
  %i.fc = sub i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 4 uses
  %min.iters.check59 = icmp ult i64 %i.fc, 16
  br i1 %min.iters.check59, label %vec.epilog.scalar.ph70.preheader, label %vector.memcheck51

vector.memcheck51:                                ; preds = %iter.check68
  %scevgep = getelementptr i8, ptr %0, i64 %i.eq
  %i.ff = and i64 %i.q, -2                        ; 2 uses
  %5 = add i64 %i.ff, %i.i
  %i.fg = add i64 %5, -4
  %6 = zext nneg i32 %.v.v.i to i64               ; 3 uses
  %i.fh = sub i64 %i.fg, %6
  %umax = call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.g)
  %i.fi = add i64 %umax, %6
  %i.fj = add i64 %i.fi, 5
  %i.fk = add i64 %i.ff, %i.i
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = lshr i64 %i.fl, 1
  %i.fn = getelementptr i8, ptr %0, i64 %.027
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %scevgep52 = getelementptr i8, ptr %i.fo, i64 2
  %scevgep53 = getelementptr i8, ptr %.029, i64 %i.et
  %i.fp = and i64 %i.fl, -2
  %i.fq = add i64 %bc.resume.val50, %i.fp
  %i.fr = add i64 %i.fq, -5
  %i.fs = sub i64 %i.fr, %6
  %i.ft = sub i64 %.0, %bc.resume.val50
  %i.fu = getelementptr i8, ptr %.029, i64 %i.fs
  %scevgep54 = getelementptr i8, ptr %i.fu, i64 %i.ft
  %bound055 = icmp ult ptr %scevgep, %scevgep54
  %bound156 = icmp ult ptr %scevgep53, %scevgep52
  %found.conflict57 = and i1 %bound055, %bound156
  br i1 %found.conflict57, label %vec.epilog.scalar.ph70.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %vector.memcheck51
  %min.iters.check61 = icmp ult i64 %i.fc, 32
  br i1 %min.iters.check61, label %vec.epilog.ph72, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %i.fv = and i64 %i.fe, 15                       ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = select i1 %i.fw, i64 16, i64 %i.fv      ; 2 uses
  %n.vec63 = sub i64 %i.fe, %i.fx                 ; 4 uses
  %i.fy = add i64 %i.eq, %n.vec63
  %i.fz = shl i64 %n.vec63, 1
  %i.ga = add i64 %i.et, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  br label %vector.body64

vector.body64:                                    ; preds = %vector.ph62, %vector.body64
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next66, %vector.body64 ] ; 3 uses
  %i.gc = shl nuw i64 %index65, 1
  %i.gd = add nuw i64 %i.et, %i.gc                ; 16 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.029, i64 %i.gd
  %i.gf = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gg = getelementptr i8, ptr %i.gf, i64 2
  %i.gh = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gi = getelementptr i8, ptr %i.gh, i64 4
  %i.gj = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gk = getelementptr i8, ptr %i.gj, i64 6
  %i.gl = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = getelementptr i8, ptr %.029, i64 %i.gd
  %i.go = getelementptr i8, ptr %i.gn, i64 10
  %i.gp = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gq = getelementptr i8, ptr %i.gp, i64 12
  %i.gr = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gs = getelementptr i8, ptr %i.gr, i64 14
  %i.gt = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %i.gv = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gw = getelementptr i8, ptr %i.gv, i64 18
  %i.gx = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gy = getelementptr i8, ptr %i.gx, i64 20
  %i.gz = getelementptr i8, ptr %.029, i64 %i.gd
  %i.ha = getelementptr i8, ptr %i.gz, i64 22
  %i.hb = getelementptr i8, ptr %.029, i64 %i.gd
  %i.hc = getelementptr i8, ptr %i.hb, i64 24
  %i.hd = getelementptr i8, ptr %.029, i64 %i.gd
  %i.he = getelementptr i8, ptr %i.hd, i64 26
  %i.hf = getelementptr i8, ptr %.029, i64 %i.gd
  %i.hg = getelementptr i8, ptr %i.hf, i64 28
  %i.hh = getelementptr i8, ptr %.029, i64 %i.gd
  %i.hi = getelementptr i8, ptr %i.hh, i64 30
  %i.hj = load i8, ptr %i.ge, align 1, !alias.scope !821
  %i.hk = load i8, ptr %i.gg, align 1, !alias.scope !821
  %i.hl = load i8, ptr %i.gi, align 1, !alias.scope !821
  %i.hm = load i8, ptr %i.gk, align 1, !alias.scope !821
  %i.hn = load i8, ptr %i.gm, align 1, !alias.scope !821
  %i.ho = load i8, ptr %i.go, align 1, !alias.scope !821
  %i.hp = load i8, ptr %i.gq, align 1, !alias.scope !821
  %i.hq = load i8, ptr %i.gs, align 1, !alias.scope !821
  %i.hr = load i8, ptr %i.gu, align 1, !alias.scope !821
  %i.hs = load i8, ptr %i.gw, align 1, !alias.scope !821
  %i.ht = load i8, ptr %i.gy, align 1, !alias.scope !821
  %i.hu = load i8, ptr %i.ha, align 1, !alias.scope !821
  %i.hv = load i8, ptr %i.hc, align 1, !alias.scope !821
  %i.hw = load i8, ptr %i.he, align 1, !alias.scope !821
  %i.hx = load i8, ptr %i.hg, align 1, !alias.scope !821
  %i.hy = load i8, ptr %i.hi, align 1, !alias.scope !821
  %i.hz = insertelement <16 x i8> poison, i8 %i.hj, i64 0
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 1
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 2
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 3
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 4
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 5
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 6
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 7
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 8
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 9
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 10
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 11
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 12
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 13
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 14
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 15
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gb, i64 %index65
  store <16 x i8> %i.io, ptr %i.ip, align 1, !alias.scope !822, !noalias !821
  %index.next66 = add nuw i64 %index65, 16        ; 2 uses
  %i.iq = icmp eq i64 %index.next66, %n.vec63
  br i1 %i.iq, label %vec.epilog.iter.check69, label %vector.body64, !llvm.loop !814

vec.epilog.iter.check69:                          ; preds = %vector.body64
  %min.epilog.iters.check71 = icmp samesign ult i64 %i.fx, 9
  br i1 %min.epilog.iters.check71, label %vec.epilog.scalar.ph70.preheader, label %vec.epilog.ph72, !prof !820

vec.epilog.ph72:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check69
  %vec.epilog.resume.val73 = phi i64 [ %n.vec63, %vec.epilog.iter.check69 ], [ 0, %vector.main.loop.iter.check60 ]
  %i.ir = and i64 %i.fe, 7                        ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  %i.it = select i1 %i.is, i64 8, i64 %i.ir
  %n.vec74 = sub i64 %i.fe, %i.it                 ; 3 uses
  %i.iu = add i64 %i.eq, %n.vec74
  %i.iv = shl i64 %n.vec74, 1
  %i.iw = add i64 %i.et, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  br label %vec.epilog.vector.body75

vec.epilog.vector.body75:                         ; preds = %vec.epilog.vector.body75, %vec.epilog.ph72
  %index76 = phi i64 [ %vec.epilog.resume.val73, %vec.epilog.ph72 ], [ %index.next77, %vec.epilog.vector.body75 ] ; 3 uses
  %i.iy = shl nuw i64 %index76, 1
  %i.iz = add nuw i64 %i.et, %i.iy                ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.029, i64 %i.iz
  %i.jb = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jc = getelementptr i8, ptr %i.jb, i64 2
  %i.jd = getelementptr i8, ptr %.029, i64 %i.iz
  %i.je = getelementptr i8, ptr %i.jd, i64 4
  %i.jf = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jg = getelementptr i8, ptr %i.jf, i64 6
  %i.jh = getelementptr i8, ptr %.029, i64 %i.iz
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %i.jj = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jk = getelementptr i8, ptr %i.jj, i64 10
  %i.jl = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jm = getelementptr i8, ptr %i.jl, i64 12
  %i.jn = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jo = getelementptr i8, ptr %i.jn, i64 14
  %i.jp = load i8, ptr %i.ja, align 1, !alias.scope !821
  %i.jq = load i8, ptr %i.jc, align 1, !alias.scope !821
  %i.jr = load i8, ptr %i.je, align 1, !alias.scope !821
  %i.js = load i8, ptr %i.jg, align 1, !alias.scope !821
  %i.jt = load i8, ptr %i.ji, align 1, !alias.scope !821
  %i.ju = load i8, ptr %i.jk, align 1, !alias.scope !821
  %i.jv = load i8, ptr %i.jm, align 1, !alias.scope !821
  %i.jw = load i8, ptr %i.jo, align 1, !alias.scope !821
  %i.jx = insertelement <8 x i8> poison, i8 %i.jp, i64 0
  %i.jy = insertelement <8 x i8> %i.jx, i8 %i.jq, i64 1
  %i.jz = insertelement <8 x i8> %i.jy, i8 %i.jr, i64 2
  %i.ka = insertelement <8 x i8> %i.jz, i8 %i.js, i64 3
  %i.kb = insertelement <8 x i8> %i.ka, i8 %i.jt, i64 4
  %i.kc = insertelement <8 x i8> %i.kb, i8 %i.ju, i64 5
  %i.kd = insertelement <8 x i8> %i.kc, i8 %i.jv, i64 6
  %i.ke = insertelement <8 x i8> %i.kd, i8 %i.jw, i64 7
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ix, i64 %index76
  store <8 x i8> %i.ke, ptr %i.kf, align 1, !alias.scope !822, !noalias !821
  %index.next77 = add nuw i64 %index76, 8         ; 2 uses
  %i.kg = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.kg, label %vec.epilog.scalar.ph70.preheader, label %vec.epilog.vector.body75, !llvm.loop !815

vec.epilog.scalar.ph70.preheader:                 ; preds = %vec.epilog.vector.body75, %iter.check68, %vector.memcheck51, %vec.epilog.iter.check69
  %.128.ph = phi i64 [ %i.eq, %iter.check68 ], [ %i.eq, %vector.memcheck51 ], [ %i.fy, %vec.epilog.iter.check69 ], [ %i.iu, %vec.epilog.vector.body75 ]
  %.1.ph = phi i64 [ %i.et, %iter.check68 ], [ %i.et, %vector.memcheck51 ], [ %i.ga, %vec.epilog.iter.check69 ], [ %i.iw, %vec.epilog.vector.body75 ]
  br label %vec.epilog.scalar.ph70

vec.epilog.scalar.ph70:                           ; preds = %vec.epilog.scalar.ph70.preheader, %vec.epilog.scalar.ph70
  %.128 = phi i64 [ %i.kk, %vec.epilog.scalar.ph70 ], [ %.128.ph, %vec.epilog.scalar.ph70.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.kl, %vec.epilog.scalar.ph70 ], [ %.1.ph, %vec.epilog.scalar.ph70.preheader ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i8 %i.ki, ptr %i.kj, align 1
  %i.kk = add nuw nsw i64 %.128, 1                ; 2 uses
  %i.kl = add nuw nsw i64 %.1, 2                  ; 2 uses
  %i.km = icmp samesign ult i64 %i.kl, %i.g
  br i1 %i.km, label %vec.epilog.scalar.ph70, label %bb.d, !llvm.loop !816

bb.d:                                             ; preds = %vec.epilog.scalar.ph70
  %i.kn = icmp eq i64 %i.kk, %i.g
  call void @llvm.assume(i1 %i.kn)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !836
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.o = add nsw i64 %i.i, 4
  %i.p = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.o)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 6 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 112
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = lshr i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 2
  %i.y = getelementptr i8, ptr %1, i64 %i.i
  %i.z = and i64 %i.r, -4
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 2
  %bound0 = icmp ult ptr %0, %i.ac
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 7                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 1
  %i.ah = shl i64 %n.vec, 2
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 1
  %i.ak = shl i64 %index, 2
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.vec = load <8 x i16>, ptr %i.am, align 2, !alias.scope !837
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i16>, ptr %i.ao, align 2, !alias.scope !837
  %strided.vec47 = shufflevector <8 x i16> %wide.vec46, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store <4 x i16> %strided.vec, ptr %i.ap, align 2, !alias.scope !838, !noalias !837
  store <4 x i16> %strided.vec47, ptr %i.aq, align 2, !alias.scope !838, !noalias !837
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !829

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %bc.resume.val48 = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph, %bb.d
  %.027 = phi i64 [ %bc.resume.val, %scalar.ph ], [ %i.av, %bb.d ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val48, %scalar.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i16, ptr %i.as, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i16 %i.at, ptr %i.au, align 2
  %i.av = add i64 %.027, 2                        ; 6 uses
  %i.aw = add nsw i64 %.0, 4                      ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !830

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -4                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add i64 %i.az, %i.i
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.g)
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = add i64 %i.be, 3
  %i.bg = add i64 %i.az, %i.i
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check57 = icmp ult i64 %i.bh, 208
  br i1 %min.iters.check57, label %scalar.ph56.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %0, i64 %i.av
  %i.bk = and i64 %i.r, -4                        ; 2 uses
  %i.bl = add i64 %i.bk, %i.i
  %5 = zext nneg i32 %.v.v.i to i64               ; 3 uses
  %i.bm = sub i64 %i.bl, %5
  %umax = call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.g)
  %i.bn = add i64 %umax, %5
  %i.bo = add i64 %i.bn, 3
  %i.bp = add i64 %i.bk, %i.i
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = and i64 %i.br, 9223372036854775806
  %i.bt = getelementptr i8, ptr %0, i64 %.027
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs
  %scevgep50 = getelementptr i8, ptr %i.bu, i64 4
  %scevgep51 = getelementptr i8, ptr %.029, i64 %i.ay
  %i.bv = and i64 %i.bq, -4
  %i.bw = add i64 %bc.resume.val48, %i.bv
  %i.bx = add i64 %i.bw, -2
  %i.by = sub i64 %i.bx, %5
  %i.bz = sub i64 %.0, %bc.resume.val48
  %i.ca = getelementptr i8, ptr %.029, i64 %i.by
  %scevgep52 = getelementptr i8, ptr %i.ca, i64 %i.bz
  %bound053 = icmp ult ptr %scevgep, %scevgep52
  %bound154 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict55 = and i1 %bound053, %bound154
  br i1 %found.conflict55, label %scalar.ph56.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck49
  %i.cb = and i64 %i.bj, 7                        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 8, i64 %i.cb
  %n.vec59 = sub nsw i64 %i.bj, %i.cd             ; 3 uses
  %i.ce = shl i64 %n.vec59, 1
  %i.cf = add i64 %i.av, %i.ce
  %i.cg = shl i64 %n.vec59, 2
  %i.ch = add i64 %i.ay, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next66, %vector.body60 ] ; 3 uses
  %i.cj = shl nuw i64 %index61, 1
  %i.ck = shl nuw i64 %index61, 2
  %i.cl = add nuw i64 %i.ay, %i.ck                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.029, i64 %i.cl
  %i.cn = getelementptr i8, ptr %.029, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %wide.vec62 = load <8 x i16>, ptr %i.cm, align 2, !alias.scope !839
  %strided.vec63 = shufflevector <8 x i16> %wide.vec62, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec64 = load <8 x i16>, ptr %i.co, align 2, !alias.scope !839
  %strided.vec65 = shufflevector <8 x i16> %wide.vec64, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store <4 x i16> %strided.vec63, ptr %i.cp, align 2, !alias.scope !840, !noalias !839
  store <4 x i16> %strided.vec65, ptr %i.cq, align 2, !alias.scope !840, !noalias !839
  %index.next66 = add nuw i64 %index61, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.cr, label %scalar.ph56.preheader, label %vector.body60, !llvm.loop !834

scalar.ph56.preheader:                            ; preds = %vector.body60, %vector.memcheck49, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck49 ], [ %i.av, %bb.e ], [ %i.cf, %vector.body60 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck49 ], [ %i.ay, %bb.e ], [ %i.ch, %vector.body60 ]
  br label %scalar.ph56

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %.128 = phi i64 [ %i.cv, %scalar.ph56 ], [ %.128.ph, %scalar.ph56.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.cw, %scalar.ph56 ], [ %.1.ph, %scalar.ph56.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = add nuw nsw i64 %.128, 2                ; 2 uses
  %i.cw = add nuw nsw i64 %.1, 4                  ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cw, %i.g
  br i1 %i.cx, label %scalar.ph56, label %bb.f, !llvm.loop !835

bb.f:                                             ; preds = %scalar.ph56
  %i.cy = icmp eq i64 %i.cv, %i.g
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_s(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !854
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.o = add nsw i64 %i.i, 8
  %i.p = call i64 @llvm.smax.i64(i64 %i.o, i64 %i.g)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 6 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 224
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = lshr i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775804
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = getelementptr i8, ptr %1, i64 %i.i
  %i.z = and i64 %i.r, -8
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %bound0 = icmp ult ptr %0, %i.ac
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 7                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 2
  %i.ah = shl i64 %n.vec, 3
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 2
  %i.ak = shl i64 %index, 3
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %wide.vec = load <8 x i32>, ptr %i.am, align 4, !alias.scope !855
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i32>, ptr %i.ao, align 4, !alias.scope !855
  %strided.vec47 = shufflevector <8 x i32> %wide.vec46, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %strided.vec, ptr %i.ap, align 4, !alias.scope !856, !noalias !855
  store <4 x i32> %strided.vec47, ptr %i.aq, align 4, !alias.scope !856, !noalias !855
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !847

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %bc.resume.val48 = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph, %bb.d
  %.027 = phi i64 [ %bc.resume.val, %scalar.ph ], [ %i.av, %bb.d ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val48, %scalar.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add i64 %.027, 4                        ; 6 uses
  %i.aw = add nsw i64 %.0, 8                      ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !848

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -8                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add i64 %i.az, %i.i
  %i.bc = add i64 %i.bb, 8
  %i.bd = sub i64 %i.bc, %i.ba
  %i.be = call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.g)
  %i.bf = add i64 %i.be, %i.ba
  %i.bg = xor i64 %i.i, -1
  %i.bh = add i64 %i.bf, %i.bg
  %i.bi = sub i64 %i.bh, %i.az                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check57 = icmp ult i64 %i.bi, 416
  br i1 %min.iters.check57, label %scalar.ph56.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %0, i64 %i.av
  %i.bl = and i64 %i.r, -8                        ; 2 uses
  %i.bm = add i64 %i.bl, %i.i
  %i.bn = add i64 %i.bm, 8
  %5 = zext nneg i32 %.v.v.i to i64               ; 3 uses
  %i.bo = sub i64 %i.bn, %5
  %umax = call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.g)
  %i.bp = add i64 %umax, %5
  %i.bq = xor i64 %i.i, -1
  %i.br = add i64 %i.bp, %i.bq
  %i.bs = sub i64 %i.br, %i.bl                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = and i64 %i.bt, 9223372036854775804
  %i.bv = getelementptr i8, ptr %0, i64 %.027
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bu
  %scevgep50 = getelementptr i8, ptr %i.bw, i64 8
  %scevgep51 = getelementptr i8, ptr %.029, i64 %i.ay
  %i.bx = and i64 %i.bs, -8
  %i.by = add i64 %bc.resume.val48, %i.bx
  %i.bz = add i64 %i.by, 4
  %i.ca = sub i64 %i.bz, %5
  %i.cb = sub i64 %.0, %bc.resume.val48
  %i.cc = getelementptr i8, ptr %.029, i64 %i.ca
  %scevgep52 = getelementptr i8, ptr %i.cc, i64 %i.cb
  %bound053 = icmp ult ptr %scevgep, %scevgep52
  %bound154 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict55 = and i1 %bound053, %bound154
  br i1 %found.conflict55, label %scalar.ph56.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck49
  %i.cd = and i64 %i.bk, 7                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 8, i64 %i.cd
  %n.vec59 = sub nsw i64 %i.bk, %i.cf             ; 3 uses
  %i.cg = shl i64 %n.vec59, 2
  %i.ch = add i64 %i.av, %i.cg
  %i.ci = shl i64 %n.vec59, 3
  %i.cj = add i64 %i.ay, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next66, %vector.body60 ] ; 3 uses
  %i.cl = shl nuw i64 %index61, 2
  %i.cm = shl nuw i64 %index61, 3
  %i.cn = add nuw i64 %i.ay, %i.cm                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.029, i64 %i.cn
  %i.cp = getelementptr i8, ptr %.029, i64 %i.cn
  %i.cq = getelementptr i8, ptr %i.cp, i64 32
  %wide.vec62 = load <8 x i32>, ptr %i.co, align 4, !alias.scope !857
  %strided.vec63 = shufflevector <8 x i32> %wide.vec62, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec64 = load <8 x i32>, ptr %i.cq, align 4, !alias.scope !857
  %strided.vec65 = shufflevector <8 x i32> %wide.vec64, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %strided.vec63, ptr %i.cr, align 4, !alias.scope !858, !noalias !857
  store <4 x i32> %strided.vec65, ptr %i.cs, align 4, !alias.scope !858, !noalias !857
  %index.next66 = add nuw i64 %index61, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.ct, label %scalar.ph56.preheader, label %vector.body60, !llvm.loop !852

scalar.ph56.preheader:                            ; preds = %vector.body60, %vector.memcheck49, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck49 ], [ %i.av, %bb.e ], [ %i.ch, %vector.body60 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck49 ], [ %i.ay, %bb.e ], [ %i.cj, %vector.body60 ]
  br label %scalar.ph56

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %.128 = phi i64 [ %i.cx, %scalar.ph56 ], [ %.128.ph, %scalar.ph56.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.cy, %scalar.ph56 ], [ %.1.ph, %scalar.ph56.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i32 %i.cv, ptr %i.cw, align 4
  %i.cx = add nuw nsw i64 %.128, 4                ; 2 uses
  %i.cy = add nuw nsw i64 %.1, 8                  ; 2 uses
  %i.cz = icmp samesign ult i64 %i.cy, %i.g
  br i1 %i.cz, label %scalar.ph56, label %bb.f, !llvm.loop !853

bb.f:                                             ; preds = %scalar.ph56
  %i.da = icmp eq i64 %i.cx, %i.g
  call void @llvm.assume(i1 %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !868
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]
  %i.o = add nsw i64 %i.i, 16
  %i.p = call i64 @llvm.smax.i64(i64 %i.o, i64 %i.g)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 4 uses
  %i.s = lshr i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 416
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = lshr i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775800
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = getelementptr i8, ptr %1, i64 %i.i
  %i.z = and i64 %i.r, -16
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %bound0 = icmp ult ptr %0, %i.ac
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 3                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 4, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = shl i64 %n.vec, 4
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 3
  %i.ak = shl i64 %index, 4
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %wide.vec = load <4 x i64>, ptr %i.am, align 8, !alias.scope !869
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec46 = load <4 x i64>, ptr %i.ao, align 8, !alias.scope !869
  %strided.vec47 = shufflevector <4 x i64> %wide.vec46, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %strided.vec, ptr %i.ap, align 8, !alias.scope !870, !noalias !869
  store <2 x i64> %strided.vec47, ptr %i.aq, align 8, !alias.scope !870, !noalias !869
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph.preheader, label %vector.body, !llvm.loop !865

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.c
  %.027.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %.0.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.027 = phi i64 [ %i.av, %scalar.ph ], [ %.027.ph, %scalar.ph.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.aw, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i64 %i.at, ptr %i.au, align 8
  %i.av = add nuw nsw i64 %.027, 8                ; 2 uses
  %i.aw = add nsw i64 %.0, 16                     ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %scalar.ph, label %bb.d, !llvm.loop !866

bb.d:                                             ; preds = %scalar.ph
  %i.ay = sub nuw nsw i64 %i.aw, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.128 = phi i64 [ %i.av, %bb.d ], [ %i.bc, %bb.e ] ; 2 uses
  %.1 = phi i64 [ %i.ay, %bb.d ], [ %i.bd, %bb.e ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = add nuw nsw i64 %.128, 8                ; 2 uses
  %i.bd = add nuw nsw i64 %.1, 16                 ; 2 uses
  %i.be = icmp samesign ult i64 %i.bd, %i.g
  br i1 %i.be, label %bb.e, label %bb.f, !llvm.loop !867

bb.f:                                             ; preds = %bb.e
  %i.bf = icmp eq i64 %i.bc, %i.g
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve2_uzp_q(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
end_hunk_0
begin_hunk_1_@helper_sve2_uqrshrnt_d:bb.a
  %i.ab = lshr i64 %i.aa, %i.i
  %i.ac = lshr i64 %i.aa, %i.k
  %i.ad = and i64 %i.ac, 1
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 4294967295)
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.015.us, 16            ; 2 uses
  %niter40.next.1 = add i64 %niter40, 2           ; 2 uses
  %niter40.ncmp.1.not = icmp eq i64 %niter40.next.1, %unroll_iter39
  br i1 %niter40.ncmp.1.not, label %.split17.us.loopexit.unr-lcssa, label %do_urshr.exit.us, !llvm.loop !2553

.split:                                           ; preds = %bb.a
  %i.ak = icmp eq i32 %i.g, 64
  br i1 %i.ak, label %do_urshr.exit.us18.preheader, label %do_urshr.exit.preheader

do_urshr.exit.preheader:                          ; preds = %.split
  %i.al = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.al, 1
  %i.am = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.am, 7                    ; 3 uses
  %i.an = icmp samesign ult i32 %.v.v.i, 56
  br i1 %i.an, label %do_urshr.exit.epil.preheader, label %do_urshr.exit.preheader.new

do_urshr.exit.preheader.new:                      ; preds = %do_urshr.exit.preheader
  %unroll_iter = and i64 %i.am, 536870904
  br label %do_urshr.exit

do_urshr.exit.us18.preheader:                     ; preds = %.split
  %i.ao = lshr exact i32 %.v.v.i, 3
  %narrow41 = add nuw nsw i32 %i.ao, 1
  %i.ap = zext nneg i32 %narrow41 to i64          ; 2 uses
  %xtraiter29 = and i64 %i.ap, 3                  ; 3 uses
  %i.aq = icmp samesign ult i32 %.v.v.i, 24
  br i1 %i.aq, label %do_urshr.exit.us18.epil.preheader, label %do_urshr.exit.us18.preheader.new

do_urshr.exit.us18.preheader.new:                 ; preds = %do_urshr.exit.us18.preheader
  %unroll_iter33 = and i64 %i.ap, 536870908
  br label %do_urshr.exit.us18

do_urshr.exit.us18:                               ; preds = %do_urshr.exit.us18, %do_urshr.exit.us18.preheader.new
  %.015.us19 = phi i64 [ 0, %do_urshr.exit.us18.preheader.new ], [ %i.bs, %do_urshr.exit.us18 ] ; 6 uses
  %niter34 = phi i64 [ 0, %do_urshr.exit.us18.preheader.new ], [ %niter34.next.3, %do_urshr.exit.us18 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.015.us19
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = lshr i64 %i.as, 63
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.015.us19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.au, ptr %i.aw, align 4
  %i.ax = or disjoint i64 %.015.us19, 8           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i64 %i.az, 63
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bb, ptr %i.bd, align 4
  %i.be = or disjoint i64 %.015.us19, 16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i64 %i.bg, 63
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bi, ptr %i.bk, align 4
  %i.bl = or disjoint i64 %.015.us19, 24          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = lshr i64 %i.bn, 63
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bp, ptr %i.br, align 4
  %i.bs = add nuw nsw i64 %.015.us19, 32          ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3.not = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3.not, label %.split17.us.loopexit26.unr-lcssa, label %do_urshr.exit.us18, !llvm.loop !2553

do_urshr.exit:                                    ; preds = %do_urshr.exit, %do_urshr.exit.preheader.new
  %.015 = phi i64 [ 0, %do_urshr.exit.preheader.new ], [ %i.cj, %do_urshr.exit ] ; 9 uses
  %niter = phi i64 [ 0, %do_urshr.exit.preheader.new ], [ %niter.next.7, %do_urshr.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store i32 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  store i32 0, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 0, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  store i32 0, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  store i32 0, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 60
  store i32 0, ptr %i.ci, align 4
  %i.cj = add nuw nsw i64 %.015, 64               ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.split17.us.loopexit27.unr-lcssa, label %do_urshr.exit, !llvm.loop !2553

.split17.us.loopexit.unr-lcssa:                   ; preds = %do_urshr.exit.us
  %lcmp.mod37.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.split17.us, label %do_urshr.exit.us.epil.preheader

do_urshr.exit.us.epil.preheader:                  ; preds = %.split17.us.loopexit.unr-lcssa, %do_urshr.exit.us.preheader
  %.015.us.epil.init = phi i64 [ 0, %do_urshr.exit.us.preheader ], [ %i.aj, %.split17.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i32 %narrow42 to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.015.us.epil.init
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = lshr i64 %i.cl, %i.i
  %i.cn = lshr i64 %i.cl, %i.k
  %i.co = and i64 %i.cn, 1
  %i.cp = add i64 %i.co, %i.cm
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 4294967295)
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.015.us.epil.init
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.cr, ptr %i.ct, align 4
  br label %.split17.us

.split17.us.loopexit26.unr-lcssa:                 ; preds = %do_urshr.exit.us18
  %lcmp.mod31.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod31.not, label %.split17.us, label %do_urshr.exit.us18.epil.preheader

do_urshr.exit.us18.epil.preheader:                ; preds = %.split17.us.loopexit26.unr-lcssa, %do_urshr.exit.us18.preheader
  %.015.us19.epil.init = phi i64 [ 0, %do_urshr.exit.us18.preheader ], [ %i.bs, %.split17.us.loopexit26.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %do_urshr.exit.us18.epil

do_urshr.exit.us18.epil:                          ; preds = %do_urshr.exit.us18.epil, %do_urshr.exit.us18.epil.preheader
  %.015.us19.epil = phi i64 [ %i.da, %do_urshr.exit.us18.epil ], [ %.015.us19.epil.init, %do_urshr.exit.us18.epil.preheader ] ; 3 uses
  %epil.iter30 = phi i64 [ %epil.iter30.next, %do_urshr.exit.us18.epil ], [ 0, %do_urshr.exit.us18.epil.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.015.us19.epil
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = lshr i64 %i.cv, 63
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.015.us19.epil
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %i.cz, align 4
  %i.da = add nuw nsw i64 %.015.us19.epil, 8
  %epil.iter30.next = add i64 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i64 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %.split17.us, label %do_urshr.exit.us18.epil, !llvm.loop !2554

.split17.us.loopexit27.unr-lcssa:                 ; preds = %do_urshr.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split17.us, label %do_urshr.exit.epil.preheader

do_urshr.exit.epil.preheader:                     ; preds = %.split17.us.loopexit27.unr-lcssa, %do_urshr.exit.preheader
  %.015.epil.init = phi i64 [ 0, %do_urshr.exit.preheader ], [ %i.cj, %.split17.us.loopexit27.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %do_urshr.exit.epil

do_urshr.exit.epil:                               ; preds = %do_urshr.exit.epil, %do_urshr.exit.epil.preheader
  %.015.epil = phi i64 [ %i.dd, %do_urshr.exit.epil ], [ %.015.epil.init, %do_urshr.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %do_urshr.exit.epil ], [ 0, %do_urshr.exit.epil.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.015.epil
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 0, ptr %i.dc, align 4
  %i.dd = add nuw nsw i64 %.015.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split17.us, label %do_urshr.exit.epil, !llvm.loop !2555

.split17.us:                                      ; preds = %.split17.us.loopexit27.unr-lcssa, %do_urshr.exit.epil, %.split17.us.loopexit26.unr-lcssa, %do_urshr.exit.us18.epil, %do_urshr.exit.us.epil.preheader, %.split17.us.loopexit.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.k
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load14 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load15 = load <8 x i16>, ptr %i.t, align 2
  %wide.load16 = load <8 x i16>, ptr %i.u, align 2
  %i.v = add <8 x i16> %wide.load15, %wide.load
  %i.w = add <8 x i16> %wide.load16, %wide.load14
  %i.x = lshr <8 x i16> %i.v, splat (i16 8)
  %i.y = lshr <8 x i16> %i.w, splat (i16 8)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index18.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index18 = phi i64 [ %index.next21, %vec.epilog.vector.body ], [ %index18.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index18, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load19 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load20 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = add <4 x i16> %wide.load20, %wide.load19
  %i.ag = lshr <4 x i16> %i.af, splat (i16 8)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next21, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2557

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i16, ptr %i.al, align 2
  %i.an = add i16 %i.am, %i.ak
  %i.ao = lshr i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2558

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load14 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load15 = load <4 x i32>, ptr %i.s, align 4
  %wide.load16 = load <4 x i32>, ptr %i.t, align 4
  %i.u = add <4 x i32> %wide.load15, %wide.load
  %i.v = add <4 x i32> %wide.load16, %wide.load14
  %i.w = lshr <4 x i32> %i.u, splat (i32 16)
  %i.x = lshr <4 x i32> %i.v, splat (i32 16)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.ai, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = lshr i32 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !2560

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
end_hunk_1
begin_hunk_2_@helper_sve2_addhnt_s:bb.a
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = add i64 %i.j, 2                          ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %diff.check = icmp ugt i64 %i.n, -16
  %i.o = sub i64 %i.l, %i.m
  %diff.check13 = icmp ugt i64 %i.o, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741820               ; 3 uses
  %i.p = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 2                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %i.t = add <4 x i32> %wide.load14, %wide.load
  %i.u = lshr <4 x i32> %i.t, splat (i32 16)
  %i.v = trunc nuw <4 x i32> %i.u to <4 x i16>    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ae = extractelement <4 x i16> %i.v, i64 0
  store i16 %i.ae, ptr %i.aa, align 2
  %i.af = extractelement <4 x i16> %i.v, i64 1
  store i16 %i.af, ptr %i.ab, align 2
  %i.ag = extractelement <4 x i16> %i.v, i64 2
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ah = extractelement <4 x i16> %i.v, i64 3
  store i16 %i.ah, ptr %i.ad, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.as, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, %i.ak
  %i.ao = lshr i32 %i.an, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  %i.as = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.g
  br i1 %i.at, label %scalar.ph, label %.loopexit, !llvm.loop !2566

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_addhnt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp samesign ult i32 %.v.v.i, 3
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.011 = phi i64 [ 0, %.new ], [ %i.at, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.h
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.m, ptr %i.o, align 4
  %i.p = or disjoint i64 %.011, 8                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.w, ptr %i.y, align 4
  %i.z = or disjoint i64 %.011, 16                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = or disjoint i64 %.011, 24               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, %i.al
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.aq, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.011, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2567

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.011.epil.init = phi i64 [ 0, %bb.a ], [ %i.at, %.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.011.epil = phi i64 [ %.011.epil.init, %.epil.preheader ], [ %i.bd, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.011.epil
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, %i.av
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.011.epil
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.ba, ptr %i.bc, align 4
  %i.bd = add nuw nsw i64 %.011.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !2568

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.k
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load14 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load15 = load <8 x i16>, ptr %i.t, align 2
  %wide.load16 = load <8 x i16>, ptr %i.u, align 2
  %i.v = add <8 x i16> %wide.load, splat (i16 128)
  %i.w = add <8 x i16> %wide.load14, splat (i16 128)
  %i.x = add <8 x i16> %i.v, %wide.load15
  %i.y = add <8 x i16> %i.w, %wide.load16
  %i.z = lshr <8 x i16> %i.x, splat (i16 8)
  %i.aa = lshr <8 x i16> %i.y, splat (i16 8)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <8 x i16> %i.z, ptr %i.ab, align 2
  store <8 x i16> %i.aa, ptr %i.ac, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index18.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index18 = phi i64 [ %index.next21, %vec.epilog.vector.body ], [ %index18.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ae = shl nuw i64 %index18, 1                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %wide.load19 = load <4 x i16>, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %wide.load20 = load <4 x i16>, ptr %i.ag, align 2
  %i.ah = add <4 x i16> %wide.load19, splat (i16 128)
  %i.ai = add <4 x i16> %i.ah, %wide.load20
  %i.aj = lshr <4 x i16> %i.ai, splat (i16 8)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store <4 x i16> %i.aj, ptr %i.ak, align 2
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next21, %i.i
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2570

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = add i16 %i.an, 128
  %i.ar = add i16 %i.aq, %i.ap
  %i.as = lshr i16 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.as, ptr %i.at, align 2
  %i.au = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %i.g
  br i1 %i.av, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2571

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load14 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load15 = load <4 x i32>, ptr %i.s, align 4
  %wide.load16 = load <4 x i32>, ptr %i.t, align 4
  %i.u = add <4 x i32> %wide.load, splat (i32 32768)
  %i.v = add <4 x i32> %wide.load14, splat (i32 32768)
  %i.w = add <4 x i32> %i.u, %wide.load15
  %i.x = add <4 x i32> %i.v, %wide.load16
  %i.y = lshr <4 x i32> %i.w, splat (i32 16)
  %i.z = lshr <4 x i32> %i.x, splat (i32 16)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4
  store <4 x i32> %i.z, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2572

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.al, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ae, 32768
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %i.g
  br i1 %i.am, label %scalar.ph, label %.loopexit, !llvm.loop !2573

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
end_hunk_2
begin_hunk_3_@helper_sve2_raddhnt_h:bb.a
  %i.az = add i16 %i.aw, 128
  %i.ba = add i16 %i.az, %i.ay
  %i.bb = lshr i16 %i.ba, 8
  %i.bc = trunc nuw i16 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.bc, ptr %i.be, align 1
  %i.bf = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, %i.g
  br i1 %i.bg, label %scalar.ph, label %.loopexit, !llvm.loop !2577

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnt_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = add i64 %i.j, 2                          ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %diff.check = icmp ugt i64 %i.n, -16
  %i.o = sub i64 %i.l, %i.m
  %diff.check13 = icmp ugt i64 %i.o, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741820               ; 3 uses
  %i.p = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 2                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %i.t = add <4 x i32> %wide.load, splat (i32 32768)
  %i.u = add <4 x i32> %i.t, %wide.load14
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i16>    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.af = extractelement <4 x i16> %i.w, i64 0
  store i16 %i.af, ptr %i.ab, align 2
  %i.ag = extractelement <4 x i16> %i.w, i64 1
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ah = extractelement <4 x i16> %i.w, i64 2
  store i16 %i.ah, ptr %i.ad, align 2
  %i.ai = extractelement <4 x i16> %i.w, i64 3
  store i16 %i.ai, ptr %i.ae, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.au, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.al, 32768
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc nuw i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i16 %i.ar, ptr %i.at, align 2
  %i.au = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %i.g
  br i1 %i.av, label %scalar.ph, label %.loopexit, !llvm.loop !2579

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_raddhnt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1            ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.011 = phi i64 [ 0, %.new ], [ %i.ab, %bb.b ]  ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.h, 2147483648
  %i.l = add i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.n, ptr %i.p, align 4
  %i.q = or disjoint i64 %.011, 8                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.s, 2147483648
  %i.w = add i64 %i.v, %i.u
  %i.x = lshr i64 %i.w, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.y, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.011, 16               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2580

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.011.epil.init = phi i64 [ 0, %bb.a ], [ %i.ab, %.unr-lcssa ] ; 3 uses
  %lcmp.mod12 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil.init
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.011.epil.init
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.ad, 2147483648
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.011.epil.init
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %i.aj, ptr %i.al, align 4
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.k
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load14 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load15 = load <8 x i16>, ptr %i.t, align 2
  %wide.load16 = load <8 x i16>, ptr %i.u, align 2
  %i.v = sub <8 x i16> %wide.load, %wide.load15
  %i.w = sub <8 x i16> %wide.load14, %wide.load16
  %i.x = lshr <8 x i16> %i.v, splat (i16 8)
  %i.y = lshr <8 x i16> %i.w, splat (i16 8)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index18.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index18 = phi i64 [ %index.next21, %vec.epilog.vector.body ], [ %index18.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index18, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load19 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load20 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = sub <4 x i16> %wide.load19, %wide.load20
  %i.ag = lshr <4 x i16> %i.af, splat (i16 8)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next21, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2582

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i16, ptr %i.al, align 2
  %i.an = sub i16 %i.ak, %i.am
  %i.ao = lshr i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load14 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load15 = load <4 x i32>, ptr %i.s, align 4
  %wide.load16 = load <4 x i32>, ptr %i.t, align 4
  %i.u = sub <4 x i32> %wide.load, %wide.load15
  %i.v = sub <4 x i32> %wide.load14, %wide.load16
  %i.w = lshr <4 x i32> %i.u, splat (i32 16)
  %i.x = lshr <4 x i32> %i.v, splat (i32 16)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.ai, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub i32 %i.ac, %i.ae
  %i.ag = lshr i32 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !2585

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
end_hunk_3
begin_hunk_4_@helper_sve2_subhnt_s:bb.a
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = add i64 %i.j, 2                          ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %diff.check = icmp ugt i64 %i.n, -16
  %i.o = sub i64 %i.l, %i.m
  %diff.check13 = icmp ugt i64 %i.o, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741820               ; 3 uses
  %i.p = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 2                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %wide.load14 = load <4 x i32>, ptr %i.s, align 4
  %i.t = sub <4 x i32> %wide.load, %wide.load14
  %i.u = lshr <4 x i32> %i.t, splat (i32 16)
  %i.v = trunc nuw <4 x i32> %i.u to <4 x i16>    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ae = extractelement <4 x i16> %i.v, i64 0
  store i16 %i.ae, ptr %i.aa, align 2
  %i.af = extractelement <4 x i16> %i.v, i64 1
  store i16 %i.af, ptr %i.ab, align 2
  %i.ag = extractelement <4 x i16> %i.v, i64 2
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ah = extractelement <4 x i16> %i.v, i64 3
  store i16 %i.ah, ptr %i.ad, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2590

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.as, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.am = load i32, ptr %i.al, align 4
  %i.an = sub i32 %i.ak, %i.am
  %i.ao = lshr i32 %i.an, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  %i.as = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.g
  br i1 %i.at, label %scalar.ph, label %.loopexit, !llvm.loop !2591

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_subhnt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp samesign ult i32 %.v.v.i, 3
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.011 = phi i64 [ 0, %.new ], [ %i.at, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.j = load i64, ptr %i.i, align 8
  %i.k = sub i64 %i.h, %i.j
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.m, ptr %i.o, align 4
  %i.p = or disjoint i64 %.011, 8                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8
  %i.u = sub i64 %i.r, %i.t
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.w, ptr %i.y, align 4
  %i.z = or disjoint i64 %.011, 16                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = or disjoint i64 %.011, 24               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.aq, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.011, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2592

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.011.epil.init = phi i64 [ 0, %bb.a ], [ %i.at, %.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.011.epil = phi i64 [ %.011.epil.init, %.epil.preheader ], [ %i.bd, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.011.epil
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.011.epil
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.ba, ptr %i.bc, align 4
  %i.bd = add nuw nsw i64 %.011.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !2593

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_rsubhnb_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.k
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load14 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load15 = load <8 x i16>, ptr %i.t, align 2
  %wide.load16 = load <8 x i16>, ptr %i.u, align 2
  %i.v = add <8 x i16> %wide.load, splat (i16 128)
  %i.w = add <8 x i16> %wide.load14, splat (i16 128)
  %i.x = sub <8 x i16> %i.v, %wide.load15
  %i.y = sub <8 x i16> %i.w, %wide.load16
  %i.z = lshr <8 x i16> %i.x, splat (i16 8)
  %i.aa = lshr <8 x i16> %i.y, splat (i16 8)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <8 x i16> %i.z, ptr %i.ab, align 2
  store <8 x i16> %i.aa, ptr %i.ac, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !83

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index18.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.011.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index18 = phi i64 [ %index.next21, %vec.epilog.vector.body ], [ %index18.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ae = shl nuw i64 %index18, 1                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %wide.load19 = load <4 x i16>, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %wide.load20 = load <4 x i16>, ptr %i.ag, align 2
  %i.ah = add <4 x i16> %wide.load19, splat (i16 128)
  %i.ai = sub <4 x i16> %i.ah, %wide.load20
  %i.aj = lshr <4 x i16> %i.ai, splat (i16 8)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store <4 x i16> %i.aj, ptr %i.ak, align 2
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next21, %i.i
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2595

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = add i16 %i.an, 128
  %i.ar = sub i16 %i.aq, %i.ap
  %i.as = lshr i16 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i16 %i.as, ptr %i.at, align 2
  %i.au = add nuw nsw i64 %.011, 2                ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %i.g
  br i1 %i.av, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !2596

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_rsubhnb_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check13 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load14 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load15 = load <4 x i32>, ptr %i.s, align 4
  %wide.load16 = load <4 x i32>, ptr %i.t, align 4
  %i.u = add <4 x i32> %wide.load, splat (i32 32768)
  %i.v = add <4 x i32> %wide.load14, splat (i32 32768)
  %i.w = sub <4 x i32> %i.u, %wide.load15
  %i.x = sub <4 x i32> %i.v, %wide.load16
  %i.y = lshr <4 x i32> %i.w, splat (i32 16)
  %i.z = lshr <4 x i32> %i.x, splat (i32 16)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4
  store <4 x i32> %i.z, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2597

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.al, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ae, 32768
  %i.ai = sub i32 %i.ah, %i.ag
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %i.g
  br i1 %i.am, label %scalar.ph, label %.loopexit, !llvm.loop !2598

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_rsubhnb_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
end_hunk_4
