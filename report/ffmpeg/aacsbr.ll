Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr?download=true
inline.NumInlined: 185
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@read_sbr_grid:bb.a
  %i.jd = load i32, ptr %i.jc, align 1, !tbaa !12
  %i.je = tail call i32 @llvm.bswap.i32(i32 %i.jd)
  %i.jf = and i32 %i.ix, 7
  %i.jg = shl i32 %i.je, %i.jf
  %i.jh = add i32 %i.ix, 2
  %i.ji = tail call i32 @llvm.umin.i32(i32 %i.iy, i32 %i.jh)
  store i32 %i.ji, ptr %i.n, align 8, !tbaa !30
  %sh.diff212 = lshr i32 %i.jg, 29
  %tr.sh.diff213 = trunc nuw nsw i32 %sh.diff212 to i8
  %i.jj = and i8 %tr.sh.diff213, 6
  %i.jk = add i8 %.pre301, 2
  %i.jl = add i8 %i.jk, %i.jj                     ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 88717
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !12
  %exitcond272.not = icmp eq i32 %i.iq, 1
  br i1 %exitcond272.not, label %._crit_edge231, label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph230
  %i.jn = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.jo = load i32, ptr %i.p, align 8, !tbaa !31
  %i.jp = load ptr, ptr %2, align 8, !tbaa !42
  %i.jq = lshr i32 %i.jn, 3
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 1, !tbaa !12
  %i.ju = tail call i32 @llvm.bswap.i32(i32 %i.jt)
  %i.jv = and i32 %i.jn, 7
  %i.jw = shl i32 %i.ju, %i.jv
  %i.jx = add i32 %i.jn, 2
  %i.jy = tail call i32 @llvm.umin.i32(i32 %i.jo, i32 %i.jx)
  store i32 %i.jy, ptr %i.n, align 8, !tbaa !30
  %sh.diff212.1 = lshr i32 %i.jw, 29
  %tr.sh.diff213.1 = trunc nuw nsw i32 %sh.diff212.1 to i8
  %i.jz = and i8 %tr.sh.diff213.1, 6
  %i.ka = add i8 %i.jl, 2
  %i.kb = add i8 %i.ka, %i.jz                     ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 88718
  store i8 %i.kb, ptr %i.kc, align 2, !tbaa !12
  %exitcond272.not.1 = icmp eq i32 %i.iq, 2
  br i1 %exitcond272.not.1, label %._crit_edge231, label %.lr.ph230.2

.lr.ph230.2:                                      ; preds = %.lr.ph230.1
  %i.kd = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.ke = load i32, ptr %i.p, align 8, !tbaa !31
  %i.kf = load ptr, ptr %2, align 8, !tbaa !42
  %i.kg = lshr i32 %i.kd, 3
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 1, !tbaa !12
  %i.kk = tail call i32 @llvm.bswap.i32(i32 %i.kj)
  %i.kl = and i32 %i.kd, 7
  %i.km = shl i32 %i.kk, %i.kl
  %i.kn = add i32 %i.kd, 2
  %i.ko = tail call i32 @llvm.umin.i32(i32 %i.ke, i32 %i.kn)
  store i32 %i.ko, ptr %i.n, align 8, !tbaa !30
  %sh.diff212.2 = lshr i32 %i.km, 29
  %tr.sh.diff213.2 = trunc nuw nsw i32 %sh.diff212.2 to i8
  %i.kp = and i8 %tr.sh.diff213.2, 6
  %i.kq = add i8 %i.kb, 2
  %i.kr = add i8 %i.kq, %i.kp
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 88719
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !12
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %.lr.ph230, %.lr.ph230.1, %.lr.ph230.2, %bb.i
  %i.kt = getelementptr inbounds nuw i8, ptr @ceil_log2, i64 %i.iv
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !12
  %i.kv = sext i8 %i.ku to i32                    ; 5 uses
  %i.kw = load i32, ptr %i.n, align 8, !tbaa !30  ; 6 uses
  %i.kx = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ky = load ptr, ptr %2, align 8, !tbaa !42
  %i.kz = lshr i32 %i.kw, 3
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 1, !tbaa !12 ; 4 uses
  %i.ld = add i32 %i.kw, %i.kv
  %i.le = tail call i32 @llvm.umin.i32(i32 %i.kx, i32 %i.ld)
  store i32 %i.le, ptr %i.n, align 8, !tbaa !30
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.lg = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.lh = load ptr, ptr %2, align 8, !tbaa !42
  %i.li = lshr i32 %i.lg, 3
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !12
  %i.lm = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ln = icmp slt i32 %i.lg, %i.lm
  %i.lo = zext i1 %i.ln to i32
  %spec.select.i204 = add i32 %i.lg, %i.lo
  %i.lp = zext i8 %i.ll to i32
  %i.lq = and i32 %i.lg, 7
  %i.lr = shl nuw nsw i32 %i.lp, %i.lq
  store i32 %spec.select.i204, ptr %i.n, align 8, !tbaa !30
  %i.ls = trunc i32 %i.lr to i8
  %i.lt = lshr i8 %i.ls, 7
  store i8 %i.lt, ptr %i.lf, align 1, !tbaa !12
  %exitcond277.not = icmp eq i32 %i.iq, 0
  br i1 %exitcond277.not, label %get_bits1_vector.exit202, label %bb.j

bb.j:                                             ; preds = %._crit_edge231
  %i.lu = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.lv = load ptr, ptr %2, align 8, !tbaa !42
  %i.lw = lshr i32 %i.lu, 3
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !12
  %i.ma = load i32, ptr %i.p, align 8, !tbaa !31
  %i.mb = icmp slt i32 %i.lu, %i.ma
  %i.mc = zext i1 %i.mb to i32
  %spec.select.i204.1 = add i32 %i.lu, %i.mc
  %i.md = zext i8 %i.lz to i32
  %i.me = and i32 %i.lu, 7
  %i.mf = shl nuw nsw i32 %i.md, %i.me
  store i32 %spec.select.i204.1, ptr %i.n, align 8, !tbaa !30
  %i.mg = trunc i32 %i.mf to i8
  %i.mh = lshr i8 %i.mg, 7
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.mh, ptr %i.mi, align 2, !tbaa !12
  %exitcond277.not.1 = icmp eq i32 %i.it, 2
  br i1 %exitcond277.not.1, label %get_bits1_vector.exit202, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.mj = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.mk = load ptr, ptr %2, align 8, !tbaa !42
  %i.ml = lshr i32 %i.mj, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !12
  %i.mp = load i32, ptr %i.p, align 8, !tbaa !31
  %i.mq = icmp slt i32 %i.mj, %i.mp
  %i.mr = zext i1 %i.mq to i32
  %spec.select.i204.2 = add i32 %i.mj, %i.mr
  %i.ms = zext i8 %i.mo to i32
  %i.mt = and i32 %i.mj, 7
  %i.mu = shl nuw nsw i32 %i.ms, %i.mt
  store i32 %spec.select.i204.2, ptr %i.n, align 8, !tbaa !30
  %i.mv = trunc i32 %i.mu to i8
  %i.mw = lshr i8 %i.mv, 7
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !12
  %exitcond277.not.2 = icmp eq i32 %i.it, 3
  br i1 %exitcond277.not.2, label %get_bits1_vector.exit202, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.my = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.mz = load ptr, ptr %2, align 8, !tbaa !42
  %i.na = lshr i32 %i.my, 3
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !12
  %i.ne = load i32, ptr %i.p, align 8, !tbaa !31
  %i.nf = icmp slt i32 %i.my, %i.ne
  %i.ng = zext i1 %i.nf to i32
  %spec.select.i204.3 = add i32 %i.my, %i.ng
  %i.nh = zext i8 %i.nd to i32
  %i.ni = and i32 %i.my, 7
  %i.nj = shl nuw nsw i32 %i.nh, %i.ni
  store i32 %spec.select.i204.3, ptr %i.n, align 8, !tbaa !30
  %i.nk = trunc i32 %i.nj to i8
  %i.nl = lshr i8 %i.nk, 7
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.nl, ptr %i.nm, align 8, !tbaa !12
  br label %get_bits1_vector.exit202

bb.m:                                             ; preds = %bb.a
  %i.nn = trunc nuw nsw i32 %i.aj to i8
  store i8 %i.nn, ptr %i.j, align 4, !tbaa !12
  %i.no = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.np = load i32, ptr %i.p, align 8, !tbaa !31  ; 3 uses
  %i.nq = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.nr = lshr i32 %i.no, 3
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 1, !tbaa !12
  %i.nv = add i32 %i.no, 2
  %i.nw = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.nv) ; 4 uses
  store i32 %i.nw, ptr %i.n, align 8, !tbaa !30
  %i.nx = lshr i32 %i.nw, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 1, !tbaa !12
  %i.ob = tail call i32 @llvm.bswap.i32(i32 %i.oa)
  %i.oc = and i32 %i.nw, 7
  %i.od = shl i32 %i.ob, %i.oc
  %i.oe = lshr i32 %i.od, 30                      ; 4 uses
  %i.of = add i32 %i.nw, 2
  %i.og = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.of) ; 4 uses
  store i32 %i.og, ptr %i.n, align 8, !tbaa !30
  %i.oh = lshr i32 %i.og, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 1, !tbaa !12
  %i.ol = tail call i32 @llvm.bswap.i32(i32 %i.ok)
  %i.om = and i32 %i.og, 7
  %i.on = shl i32 %i.ol, %i.om
  %i.oo = lshr i32 %i.on, 30                      ; 4 uses
  %i.op = add i32 %i.og, 2
  %i.oq = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.op)
  store i32 %i.oq, ptr %i.n, align 8, !tbaa !30
  %i.or = add nuw nsw i32 %i.oo, %i.oe            ; 5 uses
  %i.os = add nuw nsw i32 %i.or, 1                ; 15 uses
  %i.ot = icmp samesign ugt i32 %i.or, 4
  br i1 %i.ot, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ov, i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %i.os) #12
  br label %bb.al

bb.o:                                             ; preds = %bb.m
  %i.ow = tail call i32 @llvm.bswap.i32(i32 %i.nu)
  %i.ox = and i32 %i.no, 7
  %i.oy = shl i32 %i.ow, %i.ox
  %i.oz = lshr i32 %i.oy, 30
  %i.pa = add nuw nsw i32 %i.oz, %4
  store i32 %i.os, ptr %i.a, align 8, !tbaa !49
  %i.pb = trunc nuw nsw i32 %i.pa to i8
  %i.pc = zext nneg i32 %i.os to i64              ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pc
  store i8 %i.pb, ptr %i.pd, align 1, !tbaa !12
  %.not249 = icmp eq i32 %i.oe, 0
  br i1 %.not249, label %.preheader223, label %.lr.ph

.preheader223:                                    ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.o
  %.not250 = icmp eq i32 %i.oo, 0
  br i1 %.not250, label %._crit_edge, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %.preheader223
  %i.pe = zext nneg i32 %i.or to i64              ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pc
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !12
  %i.ph = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.pi = load i32, ptr %i.p, align 8, !tbaa !31
  %i.pj = load ptr, ptr %2, align 8, !tbaa !42
  %i.pk = lshr i32 %i.ph, 3
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 1, !tbaa !12
  %i.po = tail call i32 @llvm.bswap.i32(i32 %i.pn)
  %i.pp = and i32 %i.ph, 7
  %i.pq = shl i32 %i.po, %i.pp
  %i.pr = add i32 %i.ph, 2
  %i.ps = tail call i32 @llvm.umin.i32(i32 %i.pi, i32 %i.pr)
  store i32 %i.ps, ptr %i.n, align 8, !tbaa !30
  %sh.diff = lshr i32 %i.pq, 29
  %tr.sh.diff = trunc nuw nsw i32 %sh.diff to i8
  %i.pt = and i8 %tr.sh.diff, 6
  %i.pu = add i8 %i.pg, -2
  %i.pv = sub i8 %i.pu, %i.pt
  %i.pw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pe
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !12
  %exitcond262.not = icmp eq i32 %i.oo, 1
  br i1 %exitcond262.not, label %._crit_edge, label %.lr.ph226.1

.lr.ph:                                           ; preds = %bb.o
  %.pre = load i8, ptr %i.j, align 4, !tbaa !12
  %i.px = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.py = load i32, ptr %i.p, align 8, !tbaa !31
  %i.pz = load ptr, ptr %2, align 8, !tbaa !42
  %i.qa = lshr i32 %i.px, 3
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 1, !tbaa !12
  %i.qe = tail call i32 @llvm.bswap.i32(i32 %i.qd)
  %i.qf = and i32 %i.px, 7
  %i.qg = shl i32 %i.qe, %i.qf
  %i.qh = add i32 %i.px, 2
  %i.qi = tail call i32 @llvm.umin.i32(i32 %i.py, i32 %i.qh)
  store i32 %i.qi, ptr %i.n, align 8, !tbaa !30
  %sh.diff209 = lshr i32 %i.qg, 29
  %tr.sh.diff210 = trunc nuw nsw i32 %sh.diff209 to i8
  %i.qj = and i8 %tr.sh.diff210, 6
  %i.qk = add i8 %.pre, 2
  %i.ql = add i8 %i.qk, %i.qj                     ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 88717
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !12
  %exitcond.not = icmp eq i32 %i.oe, 1
  br i1 %exitcond.not, label %.preheader223, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.qn = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.qo = load i32, ptr %i.p, align 8, !tbaa !31
  %i.qp = load ptr, ptr %2, align 8, !tbaa !42
  %i.qq = lshr i32 %i.qn, 3
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 1, !tbaa !12
  %i.qu = tail call i32 @llvm.bswap.i32(i32 %i.qt)
  %i.qv = and i32 %i.qn, 7
  %i.qw = shl i32 %i.qu, %i.qv
  %i.qx = add i32 %i.qn, 2
  %i.qy = tail call i32 @llvm.umin.i32(i32 %i.qo, i32 %i.qx)
  store i32 %i.qy, ptr %i.n, align 8, !tbaa !30
  %sh.diff209.1 = lshr i32 %i.qw, 29
  %tr.sh.diff210.1 = trunc nuw nsw i32 %sh.diff209.1 to i8
  %i.qz = and i8 %tr.sh.diff210.1, 6
  %i.ra = add i8 %i.ql, 2
  %i.rb = add i8 %i.ra, %i.qz                     ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 88718
  store i8 %i.rb, ptr %i.rc, align 2, !tbaa !12
  %exitcond.not.1 = icmp eq i32 %i.oe, 2
  br i1 %exitcond.not.1, label %.preheader223, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.rd = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.re = load i32, ptr %i.p, align 8, !tbaa !31
  %i.rf = load ptr, ptr %2, align 8, !tbaa !42
  %i.rg = lshr i32 %i.rd, 3
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 1, !tbaa !12
  %i.rk = tail call i32 @llvm.bswap.i32(i32 %i.rj)
  %i.rl = and i32 %i.rd, 7
  %i.rm = shl i32 %i.rk, %i.rl
  %i.rn = add i32 %i.rd, 2
  %i.ro = tail call i32 @llvm.umin.i32(i32 %i.re, i32 %i.rn)
  store i32 %i.ro, ptr %i.n, align 8, !tbaa !30
  %sh.diff209.2 = lshr i32 %i.rm, 29
  %tr.sh.diff210.2 = trunc nuw nsw i32 %sh.diff209.2 to i8
  %i.rp = and i8 %tr.sh.diff210.2, 6
  %i.rq = add i8 %i.rb, 2
  %i.rr = add i8 %i.rq, %i.rp
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 88719
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !12
  br label %.preheader223

.lr.ph226.1:                                      ; preds = %.lr.ph226.preheader
  %i.rt = zext nneg i32 %i.or to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !12
  %i.rw = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.rx = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ry = load ptr, ptr %2, align 8, !tbaa !42
  %i.rz = lshr i32 %i.rw, 3
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 1, !tbaa !12
  %i.sd = tail call i32 @llvm.bswap.i32(i32 %i.sc)
  %i.se = and i32 %i.rw, 7
  %i.sf = shl i32 %i.sd, %i.se
  %i.sg = add i32 %i.rw, 2
  %i.sh = tail call i32 @llvm.umin.i32(i32 %i.rx, i32 %i.sg)
  store i32 %i.sh, ptr %i.n, align 8, !tbaa !30
  %sh.diff.1 = lshr i32 %i.sf, 29
  %tr.sh.diff.1 = trunc nuw nsw i32 %sh.diff.1 to i8
  %i.si = and i8 %tr.sh.diff.1, 6
  %i.sj = add i8 %i.rv, -2
  %i.sk = sub i8 %i.sj, %i.si
  %i.sl = getelementptr i8, ptr %i.j, i64 %i.pe
  %i.sm = getelementptr i8, ptr %i.sl, i64 -1
  store i8 %i.sk, ptr %i.sm, align 1, !tbaa !12
  %exitcond262.not.1 = icmp eq i32 %i.oo, 2
  br i1 %exitcond262.not.1, label %._crit_edge, label %.lr.ph226.2

.lr.ph226.2:                                      ; preds = %.lr.ph226.1
  %i.sn = getelementptr i8, ptr %i.j, i64 %i.pc
  %i.so = getelementptr i8, ptr %i.sn, i64 -2
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !12
  %i.sq = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.sr = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ss = load ptr, ptr %2, align 8, !tbaa !42
  %i.st = lshr i32 %i.sq, 3
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 1, !tbaa !12
  %i.sx = tail call i32 @llvm.bswap.i32(i32 %i.sw)
  %i.sy = and i32 %i.sq, 7
  %i.sz = shl i32 %i.sx, %i.sy
  %i.ta = add i32 %i.sq, 2
  %i.tb = tail call i32 @llvm.umin.i32(i32 %i.sr, i32 %i.ta)
  store i32 %i.tb, ptr %i.n, align 8, !tbaa !30
  %sh.diff.2 = lshr i32 %i.sz, 29
  %tr.sh.diff.2 = trunc nuw nsw i32 %sh.diff.2 to i8
  %i.tc = and i8 %tr.sh.diff.2, 6
  %i.td = add i8 %i.sp, -2
  %i.te = sub i8 %i.td, %i.tc
  %i.tf = getelementptr i8, ptr %i.j, i64 %i.pe
  %i.tg = getelementptr i8, ptr %i.tf, i64 -2
  store i8 %i.te, ptr %i.tg, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph226.preheader, %.lr.ph226.1, %.lr.ph226.2, %.preheader223
  %i.th = getelementptr inbounds nuw i8, ptr @ceil_log2, i64 %i.pc
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !12
  %i.tj = sext i8 %i.ti to i32                    ; 8 uses
  %i.tk = load i32, ptr %i.n, align 8, !tbaa !30  ; 9 uses
  %i.tl = load i32, ptr %i.p, align 8, !tbaa !31
  %i.tm = load ptr, ptr %2, align 8, !tbaa !42
  %i.tn = lshr i32 %i.tk, 3
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 1, !tbaa !12 ; 7 uses
  %i.tr = add i32 %i.tk, %i.tj
  %i.ts = tail call i32 @llvm.umin.i32(i32 %i.tl, i32 %i.tr)
  store i32 %i.ts, ptr %i.n, align 8, !tbaa !30
  %i.tt = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.tu = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.tv = load ptr, ptr %2, align 8, !tbaa !42
  %i.tw = lshr i32 %i.tu, 3
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !12
  %i.ua = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ub = icmp slt i32 %i.tu, %i.ua
  %i.uc = zext i1 %i.ub to i32
  %spec.select.i205 = add i32 %i.tu, %i.uc
  %i.ud = zext i8 %i.tz to i32
  %i.ue = and i32 %i.tu, 7
  %i.uf = shl nuw nsw i32 %i.ud, %i.ue
  store i32 %spec.select.i205, ptr %i.n, align 8, !tbaa !30
  %i.ug = trunc i32 %i.uf to i8
  %i.uh = lshr i8 %i.ug, 7
  store i8 %i.uh, ptr %i.tt, align 1, !tbaa !12
  %exitcond267.not = icmp eq i32 %i.or, 0
  br i1 %exitcond267.not, label %get_bits1_vector.exit202, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ui = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.uj = load ptr, ptr %2, align 8, !tbaa !42
  %i.uk = lshr i32 %i.ui, 3
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !12
  %i.uo = load i32, ptr %i.p, align 8, !tbaa !31
  %i.up = icmp slt i32 %i.ui, %i.uo
  %i.uq = zext i1 %i.up to i32
  %spec.select.i205.1 = add i32 %i.ui, %i.uq
  %i.ur = zext i8 %i.un to i32
  %i.us = and i32 %i.ui, 7
  %i.ut = shl nuw nsw i32 %i.ur, %i.us
  store i32 %spec.select.i205.1, ptr %i.n, align 8, !tbaa !30
  %i.uu = trunc i32 %i.ut to i8
  %i.uv = lshr i8 %i.uu, 7
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.uv, ptr %i.uw, align 2, !tbaa !12
  %exitcond267.not.1 = icmp eq i32 %i.os, 2
  br i1 %exitcond267.not.1, label %get_bits1_vector.exit202, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ux = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.uy = load ptr, ptr %2, align 8, !tbaa !42
  %i.uz = lshr i32 %i.ux, 3
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !12
  %i.vd = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ve = icmp slt i32 %i.ux, %i.vd
  %i.vf = zext i1 %i.ve to i32
  %spec.select.i205.2 = add i32 %i.ux, %i.vf
  %i.vg = zext i8 %i.vc to i32
  %i.vh = and i32 %i.ux, 7
  %i.vi = shl nuw nsw i32 %i.vg, %i.vh
  store i32 %spec.select.i205.2, ptr %i.n, align 8, !tbaa !30
  %i.vj = trunc i32 %i.vi to i8
  %i.vk = lshr i8 %i.vj, 7
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !12
  %exitcond267.not.2 = icmp eq i32 %i.os, 3
  br i1 %exitcond267.not.2, label %get_bits1_vector.exit202, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.vm = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.vn = load ptr, ptr %2, align 8, !tbaa !42
  %i.vo = lshr i32 %i.vm, 3
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !12
  %i.vs = load i32, ptr %i.p, align 8, !tbaa !31
  %i.vt = icmp slt i32 %i.vm, %i.vs
  %i.vu = zext i1 %i.vt to i32
  %spec.select.i205.3 = add i32 %i.vm, %i.vu
  %i.vv = zext i8 %i.vr to i32
  %i.vw = and i32 %i.vm, 7
  %i.vx = shl nuw nsw i32 %i.vv, %i.vw
  store i32 %spec.select.i205.3, ptr %i.n, align 8, !tbaa !30
  %i.vy = trunc i32 %i.vx to i8
  %i.vz = lshr i8 %i.vy, 7
  %i.wa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.vz, ptr %i.wa, align 8, !tbaa !12
  %exitcond267.not.3 = icmp eq i32 %i.os, 4
  br i1 %exitcond267.not.3, label %get_bits1_vector.exit202, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.wb = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.wc = load ptr, ptr %2, align 8, !tbaa !42
  %i.wd = lshr i32 %i.wb, 3
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !12
  %i.wh = load i32, ptr %i.p, align 8, !tbaa !31
  %i.wi = icmp slt i32 %i.wb, %i.wh
  %i.wj = zext i1 %i.wi to i32
  %spec.select.i205.4 = add i32 %i.wb, %i.wj
  %i.wk = zext i8 %i.wg to i32
  %i.wl = and i32 %i.wb, 7
  %i.wm = shl nuw nsw i32 %i.wk, %i.wl
  store i32 %spec.select.i205.4, ptr %i.n, align 8, !tbaa !30
  %i.wn = trunc i32 %i.wm to i8
  %i.wo = lshr i8 %i.wn, 7
  %i.wp = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !12
  %exitcond267.not.4 = icmp eq i32 %i.os, 5
  br i1 %exitcond267.not.4, label %get_bits1_vector.exit202, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.wq = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.wr = load ptr, ptr %2, align 8, !tbaa !42
  %i.ws = lshr i32 %i.wq, 3
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !12
  %i.ww = load i32, ptr %i.p, align 8, !tbaa !31
  %i.wx = icmp slt i32 %i.wq, %i.ww
  %i.wy = zext i1 %i.wx to i32
  %spec.select.i205.5 = add i32 %i.wq, %i.wy
  %i.wz = zext i8 %i.wv to i32
  %i.xa = and i32 %i.wq, 7
  %i.xb = shl nuw nsw i32 %i.wz, %i.xa
  store i32 %spec.select.i205.5, ptr %i.n, align 8, !tbaa !30
  %i.xc = trunc i32 %i.xb to i8
  %i.xd = lshr i8 %i.xc, 7
  %i.xe = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %i.xd, ptr %i.xe, align 2, !tbaa !12
  %exitcond267.not.5 = icmp eq i32 %i.os, 6
  br i1 %exitcond267.not.5, label %get_bits1_vector.exit202, label %5

5:                                                ; preds = %bb.t
  %6 = load i32, ptr %i.n, align 8, !tbaa !30     ; 4 uses
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = lshr i32 %6, 3
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %12 = load i32, ptr %i.p, align 8, !tbaa !31
  %13 = icmp slt i32 %6, %12
  %14 = zext i1 %13 to i32
  %spec.select.i205.6 = add i32 %6, %14
  %15 = zext i8 %11 to i32
  %16 = and i32 %6, 7
  %17 = shl nuw nsw i32 %15, %16
  store i32 %spec.select.i205.6, ptr %i.n, align 8, !tbaa !30
  %18 = trunc i32 %17 to i8
  %19 = lshr i8 %18, 7
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 %19, ptr %20, align 1, !tbaa !12
  br label %get_bits1_vector.exit202

default.unreachable310:                           ; preds = %bb.a
  unreachable

.thread312:                                       ; preds = %._crit_edge241, %.lr.ph244.preheader
  store i32 0, ptr %3, align 16, !tbaa !53
  %i.xf = add nuw nsw i32 %i.am, 1
  br label %.lr.ph247.preheader

get_bits1_vector.exit202:                         ; preds = %._crit_edge, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %5, %._crit_edge231, %bb.j, %bb.k, %bb.l, %._crit_edge236, %bb.f, %bb.g, %bb.h
  %.sink319 = phi i32 [ %i.lc, %._crit_edge231 ], [ %i.fr, %._crit_edge236 ], [ %i.fr, %bb.h ], [ %i.fr, %bb.g ], [ %i.fr, %bb.f ], [ %i.lc, %bb.l ], [ %i.lc, %bb.k ], [ %i.lc, %bb.j ], [ %i.tq, %5 ], [ %i.tq, %bb.t ], [ %i.tq, %bb.s ], [ %i.tq, %bb.r ], [ %i.tq, %bb.q ], [ %i.tq, %bb.p ], [ %i.tq, %._crit_edge ]
  %.sink = phi i32 [ %i.kw, %._crit_edge231 ], [ %i.fl, %._crit_edge236 ], [ %i.fl, %bb.h ], [ %i.fl, %bb.g ], [ %i.fl, %bb.f ], [ %i.kw, %bb.l ], [ %i.kw, %bb.k ], [ %i.kw, %bb.j ], [ %i.tk, %5 ], [ %i.tk, %bb.t ], [ %i.tk, %bb.s ], [ %i.tk, %bb.r ], [ %i.tk, %bb.q ], [ %i.tk, %bb.p ], [ %i.tk, %._crit_edge ]
  %.sink316 = phi i32 [ %i.kv, %._crit_edge231 ], [ %i.fk, %._crit_edge236 ], [ %i.fk, %bb.h ], [ %i.fk, %bb.g ], [ %i.fk, %bb.f ], [ %i.kv, %bb.l ], [ %i.kv, %bb.k ], [ %i.kv, %bb.j ], [ %i.tj, %5 ], [ %i.tj, %bb.t ], [ %i.tj, %bb.s ], [ %i.tj, %bb.r ], [ %i.tj, %bb.q ], [ %i.tj, %bb.p ], [ %i.tj, %._crit_edge ]
  %21 = phi i32 [ %i.it, %._crit_edge231 ], [ %i.cx, %._crit_edge236 ], [ %i.cx, %bb.h ], [ %i.cx, %bb.g ], [ %i.cx, %bb.f ], [ %i.it, %bb.l ], [ %i.it, %bb.k ], [ %i.it, %bb.j ], [ %i.os, %5 ], [ %i.os, %bb.t ], [ %i.os, %bb.s ], [ %i.os, %bb.r ], [ %i.os, %bb.q ], [ %i.os, %bb.p ], [ %i.os, %._crit_edge ] ; 2 uses
  %i.xg = tail call i32 @llvm.bswap.i32(i32 %.sink319)
  %i.xh = and i32 %.sink, 7
  %i.xi = shl i32 %i.xg, %i.xh
  %i.xj = sub nsw i32 32, %.sink316
  %i.xk = lshr i32 %i.xi, %i.xj                   ; 4 uses
  store i32 %i.z, ptr %3, align 16, !tbaa !53
  %i.xl = icmp sgt i32 %i.xk, -1
  br i1 %i.xl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %get_bits1_vector.exit202
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.5, i32 noundef 738) #12
  tail call void @abort() #13
  unreachable

bb.v:                                             ; preds = %get_bits1_vector.exit202
  %i.xm = add nuw nsw i32 %21, 1                  ; 2 uses
  %i.xn = icmp samesign ugt i32 %i.xk, %i.xm
  br i1 %i.xn, label %bb.w, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.v, %.thread312
  %i.xo = phi i32 [ %i.xf, %.thread312 ], [ %i.xm, %bb.v ] ; 2 uses
  %.0185207314 = phi i32 [ 0, %.thread312 ], [ %i.xk, %bb.v ] ; 7 uses
  %i.xp = phi i32 [ %i.am, %.thread312 ], [ %21, %bb.v ] ; 5 uses
  %wide.trip.count299 = zext nneg i32 %i.xo to i64
  br label %.lr.ph247

bb.w:                                             ; preds = %bb.v
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xr, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.xk) #12
  br label %bb.al

bb.x:                                             ; preds = %.lr.ph247
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge248, label %.lr.ph247, !llvm.loop !178

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %bb.x
  %indvars.iv296 = phi i64 [ 1, %.lr.ph247.preheader ], [ %indvars.iv.next297, %bb.x ] ; 2 uses
  %i.xs = getelementptr i8, ptr %i.j, i64 %indvars.iv296 ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 -1
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !12
  %i.xv = load i8, ptr %i.xs, align 1, !tbaa !12
  %.not200 = icmp ult i8 %i.xu, %i.xv
  br i1 %.not200, label %bb.x, label %bb.y

bb.y:                                             ; preds = %.lr.ph247
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xx, i32 noundef 16, ptr noundef nonnull @.str.29) #12
  br label %bb.al

._crit_edge248:                                   ; preds = %bb.x
  %i.xy = icmp ugt i32 %i.xp, 1                   ; 2 uses
  %i.xz = select i1 %i.xy, i32 2, i32 1           ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.xz, ptr %i.ya, align 8, !tbaa !52
  %i.yb = load i8, ptr %i.j, align 4, !tbaa !12
  %i.yc = getelementptr inbounds nuw i8, ptr %3, i64 88726 ; 2 uses
  store i8 %i.yb, ptr %i.yc, align 2, !tbaa !12
  %i.yd = zext nneg i32 %i.xp to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !12
  %i.yg = zext nneg i32 %i.xz to i64
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.yg
  store i8 %i.yf, ptr %i.yh, align 1, !tbaa !12
  br i1 %i.xy, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %._crit_edge248
  %i.yi = icmp eq i32 %i.z, 0
  br i1 %i.yi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.yj = lshr i32 %i.xp, 1
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.yk = and i32 %i.y, 1073741824
  %.not198 = icmp eq i32 %i.yk, 0
  br i1 %.not198, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.yl = tail call i32 @llvm.smax.i32(i32 %.0185207314, i32 2)
  %reass.sub = sub nsw i32 %i.xp, %i.yl
  %i.ym = add nsw i32 %reass.sub, 1
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  switch i32 %.0185207314, label %bb.af [
    i32 0, label %bb.ag
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.yn = add nsw i32 %i.xp, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.yo = add nsw i32 %.0185207314, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %bb.ae, %bb.af, %bb.aa
  %.0 = phi i32 [ %i.yj, %bb.aa ], [ %i.ym, %bb.ac ], [ %i.yn, %bb.ae ], [ %i.yo, %bb.af ], [ 1, %bb.ad ]
  %i.yp = sext i32 %.0 to i64
  %i.yq = getelementptr inbounds i8, ptr %i.j, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !12
  %i.ys = getelementptr inbounds nuw i8, ptr %3, i64 88727
  store i8 %i.yr, ptr %i.ys, align 1, !tbaa !12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge248
  %i.yt = getelementptr inbounds nuw i8, ptr %3, i64 14580
  %i.yu = getelementptr inbounds nuw i8, ptr %3, i64 14584 ; 4 uses
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !13
  %i.yw = icmp ne i32 %i.yv, %i.b
  %.neg = sext i1 %i.yw to i32
  store i32 %.neg, ptr %i.yt, align 4, !tbaa !13
  store i32 -1, ptr %i.yu, align 8, !tbaa !13
  %i.yx = trunc i32 %i.z to i1
  %i.yy = icmp ne i32 %.0185207314, 0
  %or.cond = and i1 %i.yy, %i.yx
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.yz = sub nuw nsw i32 %i.xo, %.0185207314
  store i32 %i.yz, ptr %i.yu, align 8, !tbaa !13
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.za = icmp eq i32 %i.z, 2
  %i.zb = icmp samesign ugt i32 %.0185207314, 1
  %or.cond3 = and i1 %i.za, %i.zb
  br i1 %or.cond3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.zc = add nsw i32 %.0185207314, -1
  store i32 %i.zc, ptr %i.yu, align 8, !tbaa !13
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj, %bb.y, %bb.w, %bb.n, %bb.c
  %.0187 = phi i32 [ -1, %bb.w ], [ -1, %bb.y ], [ -1, %bb.n ], [ -1, %bb.c ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.ai ]
  ret i32 %.0187
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @read_sbr_dtdf(i32 %.16.val, ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %.16.val, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %get_bits1_vector.exit32

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !30   ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !42
  %i.k = lshr i32 %i.i, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = load i32, ptr %i.h, align 8, !tbaa !31
  %i.p = icmp slt i32 %i.i, %i.o
  %i.q = zext i1 %i.p to i32
  %spec.select.i = add i32 %i.i, %i.q
  %i.r = zext i8 %i.n to i32
  %i.s = and i32 %i.i, 7
  %i.t = shl nuw nsw i32 %i.r, %i.s
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !30
  %i.u = trunc i32 %i.t to i8
  %i.v = lshr i8 %i.u, 7
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.v, ptr %i.w, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %get_bits1_vector.exit32, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count22 = zext nneg i32 %i.y to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph6, %bb.f
  %indvars.iv19 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next20, %bb.f ] ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !30 ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !42
  %i.ae = lshr i32 %i.ac, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.aj = icmp slt i32 %i.ac, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %spec.select.i33 = add i32 %i.ac, %i.ak
  %i.al = zext i8 %i.ah to i32
  %i.am = and i32 %i.ac, 7
  %i.an = shl nuw nsw i32 %i.al, %i.am
  store i32 %spec.select.i33, ptr %i.aa, align 8, !tbaa !30
  %i.ao = trunc i32 %i.an to i8
end_hunk_0
