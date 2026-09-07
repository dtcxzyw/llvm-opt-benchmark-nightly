Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bftest?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@setup_tests:bb.a
  %i.bl = zext i8 %i.bk to i32
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.bl) ; 0 uses
  %putchar64.i = tail call i32 @putchar(i32 9)    ; 0 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @cipher_data, i64 %indvars.iv.i ; 8 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !18
  %i.bp = zext i8 %i.bo to i32
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.bp) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = zext i8 %i.bs to i32
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.bt) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !18
  %i.bx = zext i8 %i.bw to i32
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.bx) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.cb = zext i8 %i.ca to i32
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cb) ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !18
  %i.cf = zext i8 %i.ce to i32
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cf) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.cj = zext i8 %i.ci to i32
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cj) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !18
  %i.cn = zext i8 %i.cm to i32
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cn) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.cr = zext i8 %i.cq to i32
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cr) ; 0 uses
  %putchar65.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 34
  br i1 %exitcond.not.i, label %bb.d, label %.preheader.i, !llvm.loop !11

bb.d:                                             ; preds = %.preheader.i
  %puts53.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28) ; 0 uses
  %i.cu = load i8, ptr @key_data, align 1, !tbaa !18
  %i.cv = zext i8 %i.cu to i32
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cv) ; 0 uses
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @key_data, i64 1), align 1, !tbaa !18
  %i.cy = zext i8 %i.cx to i32
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.cy) ; 0 uses
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @key_data, i64 2), align 1, !tbaa !18
  %i.db = zext i8 %i.da to i32
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.db) ; 0 uses
  %i.dd = load i8, ptr getelementptr inbounds nuw (i8, ptr @key_data, i64 3), align 1, !tbaa !18
  %i.de = zext i8 %i.dd to i32
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.de) ; 0 uses
  %i.dg = load i8, ptr getelementptr inbounds nuw (i8, ptr @key_data, i64 4), align 1, !tbaa !18
  %i.dh = zext i8 %i.dg to i32
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.dh) ; 0 uses
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @key_data, i64 5), align 1, !tbaa !18
  %i.dk = zext i8 %i.dj to i32
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.dk) ; 0 uses
  %i.dm = load i8, ptr getelementptr inbounds nuw (i8, ptr @key_data, i64 6), align 1, !tbaa !18
  %i.dn = zext i8 %i.dm to i32
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.dn) ; 0 uses
  %i.dp = load i8, ptr getelementptr inbounds nuw (i8, ptr @key_data, i64 7), align 1, !tbaa !18
  %i.dq = zext i8 %i.dp to i32
  %i.dr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.dq) ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv108.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next109.i, %bb.g ] ; 2 uses
  %indvars.iv106.i = phi i64 [ 1, %bb.d ], [ %indvars.iv.next107.i, %bb.g ] ; 2 uses
  %i.ds = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29) ; 0 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr @key_out, i64 %indvars.iv108.i ; 8 uses
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !18
  %i.dv = zext i8 %i.du to i32
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.dv) ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !18
  %i.dz = zext i8 %i.dy to i32
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.dz) ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !18
  %i.ed = zext i8 %i.ec to i32
  %i.ee = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ed) ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !18
  %i.eh = zext i8 %i.eg to i32
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.eh) ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !18
  %i.el = zext i8 %i.ek to i32
  %i.em = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.el) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 5
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !18
  %i.ep = zext i8 %i.eo to i32
  %i.eq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ep) ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  %i.es = load i8, ptr %i.er, align 2, !tbaa !18
  %i.et = zext i8 %i.es to i32
  %i.eu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.et) ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dt, i64 7
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !18
  %i.ex = zext i8 %i.ew to i32
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ex) ; 0 uses
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 3 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv.next109.i to i32
  %i.fa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.ez) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv100.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next101.i, %bb.f ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr @key_test, i64 %indvars.iv100.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fd = zext i8 %i.fc to i32
  %i.fe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fd) ; 0 uses
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next101.i, %indvars.iv106.i
  br i1 %exitcond105.not.i, label %bb.g, label %bb.f, !llvm.loop !12

bb.g:                                             ; preds = %bb.f
  %putchar62.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next109.i, 24
  br i1 %exitcond113.not.i, label %bb.h, label %bb.e, !llvm.loop !13

bb.h:                                             ; preds = %bb.g
  %puts54.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.ff = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32) ; 0 uses
  %i.fg = load i8, ptr @cbc_key, align 16, !tbaa !18
  %i.fh = zext i8 %i.fg to i32
  %i.fi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fh) ; 0 uses
  %i.fj = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 1), align 1, !tbaa !18
  %i.fk = zext i8 %i.fj to i32
  %i.fl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fk) ; 0 uses
  %i.fm = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 2), align 2, !tbaa !18
  %i.fn = zext i8 %i.fm to i32
  %i.fo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fn) ; 0 uses
  %i.fp = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 3), align 1, !tbaa !18
  %i.fq = zext i8 %i.fp to i32
  %i.fr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fq) ; 0 uses
  %i.fs = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 4), align 4, !tbaa !18
  %i.ft = zext i8 %i.fs to i32
  %i.fu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ft) ; 0 uses
  %i.fv = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 5), align 1, !tbaa !18
  %i.fw = zext i8 %i.fv to i32
  %i.fx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fw) ; 0 uses
  %i.fy = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 6), align 2, !tbaa !18
  %i.fz = zext i8 %i.fy to i32
  %i.ga = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.fz) ; 0 uses
  %i.gb = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 7), align 1, !tbaa !18
  %i.gc = zext i8 %i.gb to i32
  %i.gd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gc) ; 0 uses
  %i.ge = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 8), align 8, !tbaa !18
  %i.gf = zext i8 %i.ge to i32
  %i.gg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gf) ; 0 uses
  %i.gh = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 9), align 1, !tbaa !18
  %i.gi = zext i8 %i.gh to i32
  %i.gj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gi) ; 0 uses
  %i.gk = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 10), align 2, !tbaa !18
  %i.gl = zext i8 %i.gk to i32
  %i.gm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gl) ; 0 uses
  %i.gn = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 11), align 1, !tbaa !18
  %i.go = zext i8 %i.gn to i32
  %i.gp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.go) ; 0 uses
  %i.gq = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 12), align 4, !tbaa !18
  %i.gr = zext i8 %i.gq to i32
  %i.gs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gr) ; 0 uses
  %i.gt = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 13), align 1, !tbaa !18
  %i.gu = zext i8 %i.gt to i32
  %i.gv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gu) ; 0 uses
  %i.gw = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 14), align 2, !tbaa !18
  %i.gx = zext i8 %i.gw to i32
  %i.gy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.gx) ; 0 uses
  %i.gz = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_key, i64 15), align 1, !tbaa !18
  %i.ha = zext i8 %i.gz to i32
  %i.hb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ha) ; 0 uses
  %i.hc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33) ; 0 uses
  %i.hd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 254) ; 0 uses
  %i.he = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 220) ; 0 uses
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 186) ; 0 uses
  %i.hg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 152) ; 0 uses
  %i.hh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 118) ; 0 uses
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 84) ; 0 uses
  %i.hj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 50) ; 0 uses
  %i.hk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 16) ; 0 uses
  %i.hl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, 1
  %i.ho = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %i.hn, ptr noundef nonnull @cbc_data) ; 0 uses
  %i.hp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, 1
  %i.hs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %i.hr) ; 0 uses
  %i.ht = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %.not.i = icmp eq i64 %i.ht, -1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.hu = phi i64 [ %indvars.iv.next123.i, %.lr.ph.i ], [ 0, %bb.h ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr @cbc_data, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !18
  %i.hx = sext i8 %i.hw to i32
  %i.hy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.hx) ; 0 uses
  %indvars.iv.next123.i = add nuw nsw i64 %i.hu, 1 ; 2 uses
  %i.hz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.ia = add i64 %i.hz, 1
  %i.ib = icmp ugt i64 %i.ia, %indvars.iv.next123.i
  br i1 %i.ib, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %putchar55.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %puts56.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ic = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef 32) ; 0 uses
  %i.id = load i8, ptr @cbc_ok, align 16, !tbaa !18
  %i.ie = zext i8 %i.id to i32
  %i.if = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ie) ; 0 uses
  %i.ig = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 1), align 1, !tbaa !18
  %i.ih = zext i8 %i.ig to i32
  %i.ii = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ih) ; 0 uses
  %i.ij = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 2), align 2, !tbaa !18
  %i.ik = zext i8 %i.ij to i32
  %i.il = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ik) ; 0 uses
  %i.im = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 3), align 1, !tbaa !18
  %i.in = zext i8 %i.im to i32
  %i.io = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.in) ; 0 uses
  %i.ip = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 4), align 4, !tbaa !18
  %i.iq = zext i8 %i.ip to i32
  %i.ir = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.iq) ; 0 uses
  %i.is = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 5), align 1, !tbaa !18
  %i.it = zext i8 %i.is to i32
  %i.iu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.it) ; 0 uses
  %i.iv = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 6), align 2, !tbaa !18
  %i.iw = zext i8 %i.iv to i32
  %i.ix = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.iw) ; 0 uses
  %i.iy = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 7), align 1, !tbaa !18
  %i.iz = zext i8 %i.iy to i32
  %i.ja = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.iz) ; 0 uses
  %i.jb = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 8), align 8, !tbaa !18
  %i.jc = zext i8 %i.jb to i32
  %i.jd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.jc) ; 0 uses
  %i.je = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 9), align 1, !tbaa !18
  %i.jf = zext i8 %i.je to i32
  %i.jg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.jf) ; 0 uses
  %i.jh = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 10), align 2, !tbaa !18
  %i.ji = zext i8 %i.jh to i32
  %i.jj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ji) ; 0 uses
  %i.jk = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 11), align 1, !tbaa !18
  %i.jl = zext i8 %i.jk to i32
  %i.jm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.jl) ; 0 uses
  %i.jn = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 12), align 4, !tbaa !18
  %i.jo = zext i8 %i.jn to i32
  %i.jp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.jo) ; 0 uses
  %i.jq = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 13), align 1, !tbaa !18
  %i.jr = zext i8 %i.jq to i32
  %i.js = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.jr) ; 0 uses
  %i.jt = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 14), align 2, !tbaa !18
  %i.ju = zext i8 %i.jt to i32
  %i.jv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ju) ; 0 uses
  %i.jw = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 15), align 1, !tbaa !18
  %i.jx = zext i8 %i.jw to i32
  %i.jy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.jx) ; 0 uses
  %i.jz = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 16), align 16, !tbaa !18
  %i.ka = zext i8 %i.jz to i32
  %i.kb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ka) ; 0 uses
  %i.kc = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 17), align 1, !tbaa !18
  %i.kd = zext i8 %i.kc to i32
  %i.ke = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.kd) ; 0 uses
  %i.kf = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 18), align 2, !tbaa !18
  %i.kg = zext i8 %i.kf to i32
  %i.kh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.kg) ; 0 uses
  %i.ki = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 19), align 1, !tbaa !18
  %i.kj = zext i8 %i.ki to i32
  %i.kk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.kj) ; 0 uses
  %i.kl = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 20), align 4, !tbaa !18
  %i.km = zext i8 %i.kl to i32
  %i.kn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.km) ; 0 uses
  %i.ko = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 21), align 1, !tbaa !18
  %i.kp = zext i8 %i.ko to i32
  %i.kq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.kp) ; 0 uses
  %i.kr = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 22), align 2, !tbaa !18
  %i.ks = zext i8 %i.kr to i32
  %i.kt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ks) ; 0 uses
  %i.ku = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 23), align 1, !tbaa !18
  %i.kv = zext i8 %i.ku to i32
  %i.kw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.kv) ; 0 uses
  %i.kx = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 24), align 8, !tbaa !18
  %i.ky = zext i8 %i.kx to i32
  %i.kz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ky) ; 0 uses
  %i.la = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 25), align 1, !tbaa !18
  %i.lb = zext i8 %i.la to i32
  %i.lc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.lb) ; 0 uses
  %i.ld = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 26), align 2, !tbaa !18
  %i.le = zext i8 %i.ld to i32
  %i.lf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.le) ; 0 uses
  %i.lg = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 27), align 1, !tbaa !18
  %i.lh = zext i8 %i.lg to i32
  %i.li = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.lh) ; 0 uses
  %i.lj = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 28), align 4, !tbaa !18
  %i.lk = zext i8 %i.lj to i32
  %i.ll = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.lk) ; 0 uses
  %i.lm = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 29), align 1, !tbaa !18
  %i.ln = zext i8 %i.lm to i32
  %i.lo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ln) ; 0 uses
  %i.lp = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 30), align 2, !tbaa !18
  %i.lq = zext i8 %i.lp to i32
  %i.lr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.lq) ; 0 uses
  %i.ls = load i8, ptr getelementptr inbounds nuw (i8, ptr @cbc_ok, i64 31), align 1, !tbaa !18
  %i.lt = zext i8 %i.ls to i32
  %i.lu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.lt) ; 0 uses
  %putchar57.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %puts58.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.lv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = add nsw i32 %i.lw, 1
  %i.ly = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.lx) ; 0 uses
  %i.lz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %.not86.i = icmp eq i64 %i.lz, -1
  br i1 %.not86.i, label %._crit_edge81.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %._crit_edge.i, %.lr.ph80.i
  %i.ma = phi i64 [ %indvars.iv.next130.i, %.lr.ph80.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr @cfb64_ok, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !18
  %i.md = zext i8 %i.mc to i32
  %i.me = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.md) ; 0 uses
  %indvars.iv.next130.i = add nuw nsw i64 %i.ma, 1 ; 2 uses
  %i.mf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.mg = add i64 %i.mf, 1
  %i.mh = icmp ugt i64 %i.mg, %indvars.iv.next130.i
  br i1 %i.mh, label %.lr.ph80.i, label %._crit_edge81.i, !llvm.loop !15

._crit_edge81.i:                                  ; preds = %.lr.ph80.i, %._crit_edge.i
  %putchar59.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %puts60.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.mi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = add nsw i32 %i.mj, 1
  %i.ml = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.mk) ; 0 uses
  %i.mm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %.not87.i = icmp eq i64 %i.mm, -1
  br i1 %.not87.i, label %print_test_data.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %._crit_edge81.i, %.lr.ph84.i
  %i.mn = phi i64 [ %indvars.iv.next133.i, %.lr.ph84.i ], [ 0, %._crit_edge81.i ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr @ofb64_ok, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !18
  %i.mq = zext i8 %i.mp to i32
  %i.mr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.mq) ; 0 uses
  %indvars.iv.next133.i = add nuw nsw i64 %i.mn, 1 ; 2 uses
  %i.ms = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.mt = add i64 %i.ms, 1
  %i.mu = icmp ugt i64 %i.mt, %indvars.iv.next133.i
  br i1 %i.mu, label %.lr.ph84.i, label %print_test_data.exit, !llvm.loop !16

print_test_data.exit:                             ; preds = %.lr.ph84.i, %._crit_edge81.i
  %putchar61.i = tail call i32 @putchar(i32 10)   ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.b
  tail call void @add_all_tests(ptr noundef nonnull @.str.16, ptr noundef nonnull @test_bf_ecb_raw, i32 noundef 2, i32 noundef 1) #8
  tail call void @add_all_tests(ptr noundef nonnull @.str.17, ptr noundef nonnull @test_bf_ecb, i32 noundef 34, i32 noundef 1) #8
  tail call void @add_all_tests(ptr noundef nonnull @.str.18, ptr noundef nonnull @test_bf_set_key, i32 noundef 24, i32 noundef 1) #8
  tail call void @add_test(ptr noundef nonnull @.str.19, ptr noundef nonnull @test_bf_cbc) #8
  tail call void @add_test(ptr noundef nonnull @.str.20, ptr noundef nonnull @test_bf_cfb64) #8
  tail call void @add_test(ptr noundef nonnull @.str.21, ptr noundef nonnull @test_bf_ofb64) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.i, %print_test_data.exit
  %.0 = phi i32 [ 1, %bb.i ], [ 1, %print_test_data.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @opt_next() local_unnamed_addr #3

declare void @add_all_tests(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bf_ecb_raw(i32 noundef %0) #1 {
bb.a:
  %1 = alloca %struct.bf_key_st, align 4          ; 5 uses
  %i.a = alloca [2 x i32], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [30 x i8], ptr @bf_key, i64 %i.b ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #9
  %i.e = trunc i64 %i.d to i32
  call void @BF_set_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef nonnull %i.c) #8
  %i.f = getelementptr inbounds [8 x i8], ptr @bf_plain, i64 %i.b ; 2 uses
  %i.g = load <2 x i32>, ptr %i.f, align 8, !tbaa !9
  store <2 x i32> %i.g, ptr %i.a, align 8, !tbaa !9
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #8
  %i.h = getelementptr inbounds [8 x i8], ptr @bf_cipher, i64 %i.b
  %i.i = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 306, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.h, i64 noundef 8, ptr noundef nonnull %i.a, i64 noundef 8) #8
  %.not = icmp ne i32 %i.i, 0
  call void @BF_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #8
  %i.j = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 310, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.f, i64 noundef 8, ptr noundef nonnull %i.a, i64 noundef 8) #8
  %.not7 = icmp ne i32 %i.j, 0
  %narrow = select i1 %.not7, i1 %.not, i1 false
  %.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bf_ecb(i32 noundef %0) #1 {
bb.a:
  %1 = alloca %struct.bf_key_st, align 4          ; 5 uses
  %i.a = alloca [8 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr @ecb_data, i64 %i.b
  call void @BF_set_key(ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds [8 x i8], ptr @plain_data, i64 %i.b ; 2 uses
  call void @BF_ecb_encrypt(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef 1) #8
  %i.e = getelementptr inbounds [8 x i8], ptr @cipher_data, i64 %i.b
  %i.f = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 325, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.e, i64 noundef 8, ptr noundef nonnull %i.a, i64 noundef 8) #8
  %.not = icmp ne i32 %i.f, 0
  call void @BF_ecb_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef 0) #8
  %i.g = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 329, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.d, i64 noundef 8, ptr noundef nonnull %i.a, i64 noundef 8) #8
  %.not5 = icmp ne i32 %i.g, 0
  %narrow = select i1 %.not5, i1 %.not, i1 false
  %.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bf_set_key(i32 noundef %0) #1 {
bb.a:
  %1 = alloca %struct.bf_key_st, align 4          ; 4 uses
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = add nsw i32 %0, 1
  call void @BF_set_key(ptr noundef nonnull %1, i32 noundef %i.b, ptr noundef nonnull @key_test) #8
  call void @BF_ecb_encrypt(ptr noundef nonnull @key_data, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef 1) #8
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @key_out, i64 %i.c
  %i.e = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 344, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull %i.d, i64 noundef 8) #8
  %.not = icmp ne i32 %i.e, 0
  %spec.select = zext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %spec.select
}

declare void @add_test(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bf_cbc() #1 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  %i.b = alloca [40 x i8], align 16               ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %0 = alloca %struct.bf_key_st, align 4          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.e = add i64 %i.d, 1
  call void @BF_set_key(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @cbc_key) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i64 1167088121787636990, ptr %i.c, align 8
  %i.f = and i64 %i.e, 4294967295                 ; 3 uses
  call void @BF_cbc_encrypt(ptr noundef nonnull @cbc_data, ptr noundef nonnull %i.b, i64 noundef %i.f, ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 1) #8
  %i.g = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 365, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @cbc_ok, i64 noundef 32) #8
  %.not = icmp ne i32 %i.g, 0
  store i64 1167088121787636990, ptr %i.c, align 8
  call void @BF_cbc_encrypt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef %i.f, ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 0) #8
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9
  %i.i = add i64 %i.h, 1
  %i.j = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 370, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.a, i64 noundef %i.f, ptr noundef nonnull @cbc_data, i64 noundef %i.i) #8
  %.not4 = icmp ne i32 %i.j, 0
  %narrow = select i1 %.not4, i1 %.not, i1 false
  %.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bf_cfb64() #1 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %0 = alloca %struct.bf_key_st, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #9 ; 3 uses
  call void @BF_set_key(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @cbc_key) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i64 1167088121787636990, ptr %i.c, align 8
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @BF_cfb64_encrypt(ptr noundef nonnull @cbc_data, ptr noundef nonnull %i.b, i64 noundef 13, ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.g = add i64 %i.e, 4294967284
  %i.h = and i64 %i.g, 4294967295
  call void @BF_cfb64_encrypt(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cbc_data, i64 13), ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #8
  %i.i = shl i64 %i.e, 32
  %sext = add i64 %i.i, 4294967296
  %i.j = ashr exact i64 %sext, 32                 ; 4 uses
  %i.k = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 394, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.b, i64 noundef %i.j, ptr noundef nonnull @cfb64_ok, i64 noundef %i.j) #8
  %.not = icmp ne i32 %i.k, 0
  store i32 0, ptr %i.d, align 4, !tbaa !9
  store i64 1167088121787636990, ptr %i.c, align 8
  call void @BF_cfb64_encrypt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 17, ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.n = add i64 %i.e, 4294967280
  %i.o = and i64 %i.n, 4294967295
  call void @BF_cfb64_encrypt(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %i.o, ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #8
  %i.p = call i32 @test_mem_eq(ptr noundef nonnull @.str.40, i32 noundef 402, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.a, i64 noundef %i.j, ptr noundef nonnull @cbc_data, i64 noundef %i.j) #8
  %.not7 = icmp ne i32 %i.p, 0
  %narrow = select i1 %.not7, i1 %.not, i1 false
  %.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bf_ofb64() #1 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %0 = alloca %struct.bf_key_st, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
end_hunk_0
