Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/idl2wrs?download=true
inline.NumInlined: 183
inline.NumDeleted: 19
begin_hunk_0_@main:bb.a
  br i1 %.not27.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kt = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.kt, ptr noundef nonnull @.str.109)
  %i.ku = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.ku, ptr noundef nonnull @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.kv = load ptr, ptr @token_list, align 8
  %i.kw = load ptr, ptr %i.kv, align 8
  store ptr %i.kw, ptr @token_list, align 8
  %i.kx = load ptr, ptr @uuid, align 8
  %.not28.i = icmp eq ptr %i.kx, null
  br i1 %.not28.i, label %bb.bn, label %parseheader.exit

bb.bn:                                            ; preds = %bb.bm
  %i.ky = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.ky, ptr noundef nonnull @.str.110)
  %i.kz = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.kz, ptr noundef nonnull @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

parseheader.exit:                                 ; preds = %bb.bm
  %i.la = load ptr, ptr @eth_code, align 8
  %i.lb = load ptr, ptr @ifname, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.la, ptr noundef nonnull @.str.111, ptr noundef %i.lb)
  %i.lc = load ptr, ptr @eth_code, align 8
  %i.ld = load ptr, ptr @uuid, align 8            ; 16 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 1
  %i.lf = load i8, ptr %i.le, align 1
  %i.lg = sext i8 %i.lf to i32
  %i.lh = getelementptr i8, ptr %i.ld, i64 2
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = sext i8 %i.li to i32
  %i.lk = getelementptr i8, ptr %i.ld, i64 3
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = sext i8 %i.ll to i32
  %i.ln = getelementptr i8, ptr %i.ld, i64 4
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = sext i8 %i.lo to i32
  %i.lq = getelementptr i8, ptr %i.ld, i64 5
  %i.lr = load i8, ptr %i.lq, align 1
  %i.ls = sext i8 %i.lr to i32
  %i.lt = getelementptr i8, ptr %i.ld, i64 6
  %i.lu = load i8, ptr %i.lt, align 1
  %i.lv = sext i8 %i.lu to i32
  %i.lw = getelementptr i8, ptr %i.ld, i64 7
  %i.lx = load i8, ptr %i.lw, align 1
  %i.ly = sext i8 %i.lx to i32
  %i.lz = getelementptr i8, ptr %i.ld, i64 8
  %i.ma = load i8, ptr %i.lz, align 1
  %i.mb = sext i8 %i.ma to i32
  %i.mc = getelementptr i8, ptr %i.ld, i64 10
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = sext i8 %i.md to i32
  %i.mf = getelementptr i8, ptr %i.ld, i64 11
  %i.mg = load i8, ptr %i.mf, align 1
  %i.mh = sext i8 %i.mg to i32
  %i.mi = getelementptr i8, ptr %i.ld, i64 12
  %i.mj = load i8, ptr %i.mi, align 1
  %i.mk = sext i8 %i.mj to i32
  %i.ml = getelementptr i8, ptr %i.ld, i64 13
  %i.mm = load i8, ptr %i.ml, align 1
  %i.mn = sext i8 %i.mm to i32
  %i.mo = getelementptr i8, ptr %i.ld, i64 15
  %i.mp = load i8, ptr %i.mo, align 1
  %i.mq = sext i8 %i.mp to i32
  %i.mr = getelementptr i8, ptr %i.ld, i64 16
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = sext i8 %i.ms to i32
  %i.mu = getelementptr i8, ptr %i.ld, i64 17
  %i.mv = load i8, ptr %i.mu, align 1
  %i.mw = sext i8 %i.mv to i32
  %i.mx = getelementptr i8, ptr %i.ld, i64 18
  %i.my = load i8, ptr %i.mx, align 1
  %i.mz = sext i8 %i.my to i32
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.lc, ptr noundef nonnull @.str.112, i32 noundef %i.lg, i32 noundef %i.lj, i32 noundef %i.lm, i32 noundef %i.lp, i32 noundef %i.ls, i32 noundef %i.lv, i32 noundef %i.ly, i32 noundef %i.mb, i32 noundef %i.me, i32 noundef %i.mh, i32 noundef %i.mk, i32 noundef %i.mn, i32 noundef %i.mq, i32 noundef %i.mt, i32 noundef %i.mw, i32 noundef %i.mz)
  %i.na = load ptr, ptr @eth_code, align 8
  %i.nb = load ptr, ptr @uuid, align 8            ; 16 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 20
  %i.nd = load i8, ptr %i.nc, align 1
  %i.ne = sext i8 %i.nd to i32
  %i.nf = getelementptr i8, ptr %i.nb, i64 21
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = sext i8 %i.ng to i32
  %i.ni = getelementptr i8, ptr %i.nb, i64 22
  %i.nj = load i8, ptr %i.ni, align 1
  %i.nk = sext i8 %i.nj to i32
  %i.nl = getelementptr i8, ptr %i.nb, i64 23
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = sext i8 %i.nm to i32
  %i.no = getelementptr i8, ptr %i.nb, i64 25
  %i.np = load i8, ptr %i.no, align 1
  %i.nq = sext i8 %i.np to i32
  %i.nr = getelementptr i8, ptr %i.nb, i64 26
  %i.ns = load i8, ptr %i.nr, align 1
  %i.nt = sext i8 %i.ns to i32
  %i.nu = getelementptr i8, ptr %i.nb, i64 27
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = sext i8 %i.nv to i32
  %i.nx = getelementptr i8, ptr %i.nb, i64 28
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = sext i8 %i.ny to i32
  %i.oa = getelementptr i8, ptr %i.nb, i64 29
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = sext i8 %i.ob to i32
  %i.od = getelementptr i8, ptr %i.nb, i64 30
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = sext i8 %i.oe to i32
  %i.og = getelementptr i8, ptr %i.nb, i64 31
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = sext i8 %i.oh to i32
  %i.oj = getelementptr i8, ptr %i.nb, i64 32
  %i.ok = load i8, ptr %i.oj, align 1
  %i.ol = sext i8 %i.ok to i32
  %i.om = getelementptr i8, ptr %i.nb, i64 33
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = sext i8 %i.on to i32
  %i.op = getelementptr i8, ptr %i.nb, i64 34
  %i.oq = load i8, ptr %i.op, align 1
  %i.or = sext i8 %i.oq to i32
  %i.os = getelementptr i8, ptr %i.nb, i64 35
  %i.ot = load i8, ptr %i.os, align 1
  %i.ou = sext i8 %i.ot to i32
  %i.ov = getelementptr i8, ptr %i.nb, i64 36
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = sext i8 %i.ow to i32
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.na, ptr noundef nonnull @.str.113, i32 noundef %i.ne, i32 noundef %i.nh, i32 noundef %i.nk, i32 noundef %i.nn, i32 noundef %i.nq, i32 noundef %i.nt, i32 noundef %i.nw, i32 noundef %i.nz, i32 noundef %i.oc, i32 noundef %i.of, i32 noundef %i.oi, i32 noundef %i.ol, i32 noundef %i.oo, i32 noundef %i.or, i32 noundef %i.ou, i32 noundef %i.ox)
  %i.oy = load ptr, ptr @eth_code, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.oy, ptr noundef nonnull @.str.114)
  %i.oz = load ptr, ptr @eth_code, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.oz, ptr noundef nonnull @.str.72)
  %i.pa = load ptr, ptr @version, align 8
  %i.pb = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.pa, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15 ; 0 uses
  %i.pc = load ptr, ptr @eth_code, align 8
  %i.pd = load ptr, ptr @ifname, align 8
  %i.pe = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pc, ptr noundef nonnull @.str.116, ptr noundef %i.pd, i32 noundef %i.pe)
  %i.pf = load ptr, ptr @eth_code, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pf, ptr noundef nonnull @.str.72)
  %i.pg = load ptr, ptr @eth_handoff, align 8
  %i.ph = load ptr, ptr @ifname, align 8          ; 2 uses
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pg, ptr noundef nonnull @.str.117, ptr noundef %i.ph, ptr noundef %i.ph)
  %i.pi = load ptr, ptr @eth_handoff, align 8
  %i.pj = load ptr, ptr @ifname, align 8          ; 2 uses
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pi, ptr noundef nonnull @.str.118, ptr noundef %i.pj, ptr noundef %i.pj)
  %i.pk = load ptr, ptr @eth_handoff, align 8
  %i.pl = load ptr, ptr @ifname, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pk, ptr noundef nonnull @.str.119, ptr noundef %i.pl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.pm = load ptr, ptr @ifname, align 8
  %i.pn = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.af, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef nonnull @.str.24, ptr noundef %i.pm) ; 0 uses
  %i.po = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #17 ; 4 uses
  %.not.i175 = icmp eq ptr %i.po, null
  br i1 %.not.i175, label %bb.bo, label %preparetrimprefix.exit

bb.bo:                                            ; preds = %parseheader.exit
  %i.pp = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pp, ptr noundef nonnull @.str.48)
  call void @exit(i32 noundef 10) #18
  unreachable

preparetrimprefix.exit:                           ; preds = %parseheader.exit
  %i.pq = load ptr, ptr @prefixes_to_trim, align 8
  store ptr %i.pq, ptr %i.po, align 8
  store ptr %i.po, ptr @prefixes_to_trim, align 8
  %i.pr = call noalias ptr @g_strdup(ptr noundef nonnull %i.af)
  %i.ps = getelementptr i8, ptr %i.po, i64 8
  store ptr %i.pr, ptr %i.ps, align 8
  %.015.i181 = load ptr, ptr @prefixes_to_trim, align 8 ; 2 uses
  %.not16.i = icmp eq ptr %.015.i181, null
  %i.pt = load ptr, ptr @token_list, align 8      ; 2 uses
  %i.pu = icmp eq ptr %i.pt, null
  %or.cond.i = select i1 %.not16.i, i1 true, i1 %i.pu
  br i1 %or.cond.i, label %trimprefix.exit.preheader, label %.lr.ph18.split.i

trimprefix.exit.preheader:                        ; preds = %.loopexit.i, %preparetrimprefix.exit
  br label %trimprefix.exit

.loopexit.i:                                      ; preds = %bb.bq, %.lr.ph18.split.i
  %.0.i186 = load ptr, ptr %.017.i182, align 8    ; 2 uses
  %.not.i187 = icmp eq ptr %.0.i186, null
  br i1 %.not.i187, label %trimprefix.exit.preheader, label %.lr.ph18.splitthread-pre-split.i, !llvm.loop !15

.lr.ph18.splitthread-pre-split.i:                 ; preds = %.loopexit.i
  %.0912.pr.i = load ptr, ptr @token_list, align 8
  br label %.lr.ph18.split.i

.lr.ph18.split.i:                                 ; preds = %preparetrimprefix.exit, %.lr.ph18.splitthread-pre-split.i
  %.0912.i = phi ptr [ %.0912.pr.i, %.lr.ph18.splitthread-pre-split.i ], [ %i.pt, %preparetrimprefix.exit ] ; 2 uses
  %.017.i182 = phi ptr [ %.0.i186, %.lr.ph18.splitthread-pre-split.i ], [ %.015.i181, %preparetrimprefix.exit ] ; 2 uses
  %i.pv = getelementptr i8, ptr %.017.i182, i64 8 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8            ; 2 uses
  %i.px = call i64 @strlen(ptr noundef %i.pw) #19 ; 2 uses
  %.not1013.i = icmp eq ptr %.0912.i, null
  br i1 %.not1013.i, label %.loopexit.i, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph18.split.i, %bb.bq
  %.0914.i.a = phi ptr [ %3, %bb.bq ], [ %i.pw, %.lr.ph18.split.i ] ; 2 uses
  %.0914.i = phi ptr [ %.09.i185, %bb.bq ], [ %.0912.i, %.lr.ph18.split.i ] ; 2 uses
  %2 = getelementptr i8, ptr %.0914.i, i64 8      ; 2 uses
  %i.py = load ptr, ptr %2, align 8               ; 2 uses
  %i.pz = call i32 @strncmp(ptr noundef %i.py, ptr noundef %.0914.i.a, i64 noundef %i.px) #19
  %.not11.i184 = icmp eq i32 %i.pz, 0
  br i1 %.not11.i184, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i183
  %i.qa = getelementptr i8, ptr %i.py, i64 %i.px
  store ptr %i.qa, ptr %2, align 8
  %.pre.i = load ptr, ptr %i.pv, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i183
  %3 = phi ptr [ %.0914.i.a, %.lr.ph.i183 ], [ %.pre.i, %bb.bp ]
  %.09.i185 = load ptr, ptr %.0914.i, align 8     ; 2 uses
  %.not10.i = icmp eq ptr %.09.i185, null
  br i1 %.not10.i, label %.loopexit.i, label %.lr.ph.i183, !llvm.loop !16

trimprefix.exit:                                  ; preds = %trimprefix.exit.backedge, %trimprefix.exit.preheader
  %i.qb = load ptr, ptr @token_list, align 8
  %i.qc = getelementptr i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = call i32 @g_strcmp0(ptr noundef %i.qd, ptr noundef nonnull @.str.25)
  %.not54 = icmp eq i32 %i.qe, 0
  %i.qf = load ptr, ptr @token_list, align 8      ; 2 uses
  br i1 %.not54, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %trimprefix.exit
  %i.qg = call fastcc ptr @parsebrackets(ptr noundef %i.qf, ptr noundef nonnull %i.ag)
  store ptr %i.qg, ptr @token_list, align 8
  br label %trimprefix.exit.backedge

trimprefix.exit.backedge:                         ; preds = %bb.br, %bb.bu, %bb.ca, %parseconst.exit, %bb.cy, %skipdeclare.exit, %bb.co, %bb.cs, %bb.cw
  br label %trimprefix.exit

bb.bs:                                            ; preds = %trimprefix.exit
  %i.qh = getelementptr i8, ptr %i.qf, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = call i32 @g_strcmp0(ptr noundef %i.qi, ptr noundef nonnull @.str.26)
  %.not55 = icmp eq i32 %i.qj, 0
  br i1 %.not55, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.qk = load ptr, ptr @token_list, align 8
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = getelementptr i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = call i32 @g_strcmp0(ptr noundef %i.qn, ptr noundef nonnull @.str.27)
  %.not56 = icmp eq i32 %i.qo, 0
  br i1 %.not56, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call fastcc void @parsetypedefenum()
  br label %trimprefix.exit.backedge

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %i.qp = load ptr, ptr @token_list, align 8
  %i.qq = getelementptr i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = call i32 @g_strcmp0(ptr noundef %i.qr, ptr noundef nonnull @.str.26)
  %.not57 = icmp eq i32 %i.qs, 0
  br i1 %.not57, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.qt = load ptr, ptr @token_list, align 8
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = getelementptr i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = call i32 @g_strcmp0(ptr noundef %i.qw, ptr noundef nonnull @.str.25)
  %.not58 = icmp eq i32 %i.qx, 0
  br i1 %.not58, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.qy = load ptr, ptr @token_list, align 8
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = getelementptr i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = call i32 @g_strcmp0(ptr noundef %i.rc, ptr noundef nonnull @.str.28)
  %.not59 = icmp eq i32 %i.rd, 0
  br i1 %.not59, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.re = load ptr, ptr @token_list, align 8
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = load ptr, ptr %i.rf, align 8
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = getelementptr i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = call i32 @g_strcmp0(ptr noundef %i.rj, ptr noundef nonnull @.str.29)
  %.not60 = icmp eq i32 %i.rk, 0
  br i1 %.not60, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.rl = load ptr, ptr @token_list, align 8
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = getelementptr i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = call i32 @g_strcmp0(ptr noundef %i.rr, ptr noundef nonnull @.str.27)
  %.not61 = icmp eq i32 %i.rs, 0
  br i1 %.not61, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call fastcc void @parsetypedefenum()
  br label %trimprefix.exit.backedge

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %i.rt = load ptr, ptr @token_list, align 8
  %i.ru = getelementptr i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = call i32 @g_strcmp0(ptr noundef %i.rv, ptr noundef nonnull @.str.30)
  %.not62 = icmp eq i32 %i.rw, 0
  %i.rx = load ptr, ptr @token_list, align 8      ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8            ; 2 uses
  br i1 %.not62, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  %i.sa = call i32 @strncmp(ptr noundef %i.rz, ptr noundef nonnull dereferenceable(6) @.str.30, i64 noundef 5) #19
  %.not.i189 = icmp eq i32 %i.sa, 0
  br i1 %.not.i189, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sb = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sb, ptr noundef nonnull @.str.230)
  %i.sc = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sc, ptr noundef nonnull @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.sd = load ptr, ptr %i.rx, align 8
  %i.se = load ptr, ptr %i.sd, align 8            ; 2 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 8      ; 3 uses
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = call fastcc ptr @find_type(ptr noundef %i.sg)
  %.not18.i = icmp eq ptr %i.sh, null
  br i1 %.not18.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.si = load ptr, ptr @stderr, align 8
  %i.sj = load ptr, ptr %i.sf, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.si, ptr noundef nonnull @.str.231, ptr noundef %i.sj)
  %i.sk = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sk, ptr noundef nonnull @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.sl = load ptr, ptr %i.sf, align 8
  %i.sm = load ptr, ptr %i.se, align 8            ; 2 uses
  %i.sn = getelementptr i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = load i8, ptr %i.so, align 1
  %.not19.i190 = icmp eq i8 %i.sp, 61
  br i1 %.not19.i190, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sq = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sq, ptr noundef nonnull @.str.232)
  %i.sr = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sr, ptr noundef nonnull @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.ss = load ptr, ptr %i.sm, align 8            ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8            ; 2 uses
  %i.su = getelementptr i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = load i8, ptr %i.sv, align 1
  %.not20.i191 = icmp eq i8 %i.sw, 59
  br i1 %.not20.i191, label %parseconst.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.sx = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sx, ptr noundef nonnull @.str.233)
  %i.sy = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sy, ptr noundef nonnull @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

parseconst.exit:                                  ; preds = %bb.ci
  %i.sz = getelementptr i8, ptr %i.ss, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = load ptr, ptr %i.st, align 8
  %i.tc = load ptr, ptr @eth_hdr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.tc, ptr noundef nonnull @.str.235, ptr noundef %i.sl, ptr noundef %i.ta)
  store ptr %i.tb, ptr @token_list, align 8
  br label %trimprefix.exit.backedge

bb.ck:                                            ; preds = %bb.cb
  %i.td = call i32 @g_strcmp0(ptr noundef %i.rz, ptr noundef nonnull @.str.26)
  %.not63 = icmp eq i32 %i.td, 0
  br i1 %.not63, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %bb.ck
  %i.te = load ptr, ptr @token_list, align 8
  %i.tf = load ptr, ptr %i.te, align 8            ; 3 uses
  %i.tg = getelementptr i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8
  %i.ti = call i32 @g_strcmp0(ptr noundef %i.th, ptr noundef nonnull @.str.25)
  %.not64 = icmp eq i32 %i.ti, 0
  br i1 %.not64, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.tj = call fastcc ptr @parsebrackets(ptr noundef %i.tf, ptr noundef nonnull %i.ag)
  br label %bb.cn
end_hunk_0
