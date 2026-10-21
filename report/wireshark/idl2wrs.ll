Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/idl2wrs?download=true
inline.NumInlined: 183
inline.NumDeleted: 19
begin_hunk_0_@main:bb.a
  store ptr %i.kb, ptr @token_list, align 8
  %i.kc = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef @hf_status, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef @.str.92, ptr noundef %i.ka) ; 0 uses
  %i.kd = load ptr, ptr @ifname, align 8
  %i.ke = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef @.str.93, ptr noundef %i.kd) ; 0 uses
  %i.kf = call fastcc ptr @register_hf_field(ptr noundef @hf_status, ptr noundef @.str.94, ptr noundef nonnull %i.a, ptr noundef @.str.95, ptr noundef @.str.96, ptr noundef @.str.97, ptr noundef @.str.98, ptr noundef @.str.99) ; 0 uses
  %i.kg = load ptr, ptr @ifname, align 8
  %i.kh = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef @hf_status, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef @.str.100, ptr noundef %i.kg) ; 0 uses
  %i.ki = load ptr, ptr @ifname, align 8
  %i.kj = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef @.str.101, ptr noundef %i.ki) ; 0 uses
  %i.kk = call fastcc ptr @register_hf_field(ptr noundef @hf_status, ptr noundef @.str.102, ptr noundef nonnull %i.a, ptr noundef @.str.103, ptr noundef @.str.104, ptr noundef @.str.105, ptr noundef @.str.98, ptr noundef @.str.99) ; 0 uses
  %i.kl = load ptr, ptr @eth_ett, align 8
  %i.km = load ptr, ptr @ifname, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.kl, ptr noundef @.str.106, ptr noundef %i.km)
  %i.kn = load ptr, ptr @eth_ettarr, align 8
  %i.ko = load ptr, ptr @ifname, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.kn, ptr noundef @.str.107, ptr noundef %i.ko)
  %i.kp = load ptr, ptr @token_list, align 8
  %i.kq = getelementptr i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = call i32 @g_strcmp0(ptr noundef %i.kr, ptr noundef @.str.108)
  %.not27.i = icmp eq i32 %i.ks, 0
  br i1 %.not27.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kt = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.kt, ptr noundef @.str.109)
  %i.ku = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.ku, ptr noundef @.str.74)
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
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.ky, ptr noundef @.str.110)
  %i.kz = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.kz, ptr noundef @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

parseheader.exit:                                 ; preds = %bb.bm
  %i.la = load ptr, ptr @eth_code, align 8
  %i.lb = load ptr, ptr @ifname, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.la, ptr noundef @.str.111, ptr noundef %i.lb)
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
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.lc, ptr noundef @.str.112, i32 noundef %i.lg, i32 noundef %i.lj, i32 noundef %i.lm, i32 noundef %i.lp, i32 noundef %i.ls, i32 noundef %i.lv, i32 noundef %i.ly, i32 noundef %i.mb, i32 noundef %i.me, i32 noundef %i.mh, i32 noundef %i.mk, i32 noundef %i.mn, i32 noundef %i.mq, i32 noundef %i.mt, i32 noundef %i.mw, i32 noundef %i.mz)
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
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.na, ptr noundef @.str.113, i32 noundef %i.ne, i32 noundef %i.nh, i32 noundef %i.nk, i32 noundef %i.nn, i32 noundef %i.nq, i32 noundef %i.nt, i32 noundef %i.nw, i32 noundef %i.nz, i32 noundef %i.oc, i32 noundef %i.of, i32 noundef %i.oi, i32 noundef %i.ol, i32 noundef %i.oo, i32 noundef %i.or, i32 noundef %i.ou, i32 noundef %i.ox)
  %i.oy = load ptr, ptr @eth_code, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.oy, ptr noundef @.str.114)
  %i.oz = load ptr, ptr @eth_code, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.oz, ptr noundef @.str.72)
  %i.pa = load ptr, ptr @version, align 8
  %i.pb = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.pa, ptr noundef @.str.115, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15 ; 0 uses
  %i.pc = load ptr, ptr @eth_code, align 8
  %i.pd = load ptr, ptr @ifname, align 8
  %i.pe = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pc, ptr noundef @.str.116, ptr noundef %i.pd, i32 noundef %i.pe)
  %i.pf = load ptr, ptr @eth_code, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pf, ptr noundef @.str.72)
  %i.pg = load ptr, ptr @eth_handoff, align 8
  %i.ph = load ptr, ptr @ifname, align 8          ; 2 uses
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pg, ptr noundef @.str.117, ptr noundef %i.ph, ptr noundef %i.ph)
  %i.pi = load ptr, ptr @eth_handoff, align 8
  %i.pj = load ptr, ptr @ifname, align 8          ; 2 uses
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pi, ptr noundef @.str.118, ptr noundef %i.pj, ptr noundef %i.pj)
  %i.pk = load ptr, ptr @eth_handoff, align 8
  %i.pl = load ptr, ptr @ifname, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pk, ptr noundef @.str.119, ptr noundef %i.pl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.pm = load ptr, ptr @ifname, align 8
  %i.pn = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.af, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef @.str.24, ptr noundef %i.pm) ; 0 uses
  %i.po = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #17 ; 4 uses
  %.not.i175 = icmp eq ptr %i.po, null
  br i1 %.not.i175, label %bb.bo, label %preparetrimprefix.exit

bb.bo:                                            ; preds = %parseheader.exit
  %i.pp = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.pp, ptr noundef @.str.48)
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
  %i.pt = load ptr, ptr @token_list, align 8      ; 4 uses
  %i.pu = icmp eq ptr %i.pt, null
  %or.cond.i = select i1 %.not16.i, i1 true, i1 %i.pu
  br i1 %or.cond.i, label %trimprefix.exit.preheader, label %.lr.ph18.split.i

trimprefix.exit.preheader:                        ; preds = %.lr.ph18.splitthread-pre-split.i, %preparetrimprefix.exit
  %.ph = phi ptr [ %i.pt, %preparetrimprefix.exit ], [ %2, %.lr.ph18.splitthread-pre-split.i ]
  br label %trimprefix.exit

.loopexit.i.a:                                    ; preds = %bb.bq
  %.0.i186.a = load ptr, ptr @token_list, align 8 ; 2 uses
  br label %.lr.ph18.splitthread-pre-split.i

.lr.ph18.splitthread-pre-split.i:                 ; preds = %.lr.ph18.split.i, %.loopexit.i.a
  %2 = phi ptr [ %.0.i186.a, %.loopexit.i.a ], [ %3, %.lr.ph18.split.i ] ; 2 uses
  %.091221.i = phi ptr [ %.0.i186.a, %.loopexit.i.a ], [ null, %.lr.ph18.split.i ]
  %.0912.pr.i = load ptr, ptr %.017.i182, align 8 ; 2 uses
  %.not.i187 = icmp eq ptr %.0912.pr.i, null
  br i1 %.not.i187, label %trimprefix.exit.preheader, label %.lr.ph18.split.i, !llvm.loop !15

.lr.ph18.split.i:                                 ; preds = %preparetrimprefix.exit, %.lr.ph18.splitthread-pre-split.i
  %3 = phi ptr [ %2, %.lr.ph18.splitthread-pre-split.i ], [ %i.pt, %preparetrimprefix.exit ]
  %.0912.i = phi ptr [ %.091221.i, %.lr.ph18.splitthread-pre-split.i ], [ %i.pt, %preparetrimprefix.exit ] ; 2 uses
  %.017.i182 = phi ptr [ %.0912.pr.i, %.lr.ph18.splitthread-pre-split.i ], [ %.015.i181, %preparetrimprefix.exit ] ; 2 uses
  %i.pv = getelementptr i8, ptr %.017.i182, i64 8 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8            ; 2 uses
  %i.px = call i64 @strlen(ptr noundef %i.pw) #19 ; 2 uses
  %.not1013.i = icmp eq ptr %.0912.i, null
  br i1 %.not1013.i, label %.lr.ph18.splitthread-pre-split.i, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph18.split.i, %bb.bq
  %i.py = phi ptr [ %i.qd, %bb.bq ], [ %i.pw, %.lr.ph18.split.i ] ; 2 uses
  %.0914.i = phi ptr [ %.09.i185, %bb.bq ], [ %.0912.i, %.lr.ph18.split.i ] ; 2 uses
  %i.pz = getelementptr i8, ptr %.0914.i, i64 8   ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8            ; 2 uses
  %i.qb = call i32 @strncmp(ptr noundef %i.qa, ptr noundef %i.py, i64 noundef %i.px) #19
  %.not11.i184 = icmp eq i32 %i.qb, 0
  br i1 %.not11.i184, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i183
  %i.qc = getelementptr i8, ptr %i.qa, i64 %i.px
  store ptr %i.qc, ptr %i.pz, align 8
  %.pre.i = load ptr, ptr %i.pv, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i183
  %i.qd = phi ptr [ %i.py, %.lr.ph.i183 ], [ %.pre.i, %bb.bp ]
  %.09.i185 = load ptr, ptr %.0914.i, align 8     ; 2 uses
  %.not10.i = icmp eq ptr %.09.i185, null
  br i1 %.not10.i, label %.loopexit.i.a, label %.lr.ph.i183, !llvm.loop !16

trimprefix.exit:                                  ; preds = %trimprefix.exit.preheader, %trimprefix.exit.backedge
  %4 = phi ptr [ %.pre, %trimprefix.exit.backedge ], [ %.ph, %trimprefix.exit.preheader ]
  %i.qe = getelementptr i8, ptr %4, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = call i32 @g_strcmp0(ptr noundef %i.qf, ptr noundef @.str.25)
  %.not54 = icmp eq i32 %i.qg, 0
  %i.qh = load ptr, ptr @token_list, align 8      ; 2 uses
  br i1 %.not54, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %trimprefix.exit
  %i.qi = call fastcc ptr @parsebrackets(ptr noundef %i.qh, ptr noundef nonnull %i.ag)
  store ptr %i.qi, ptr @token_list, align 8
  br label %trimprefix.exit.backedge

trimprefix.exit.backedge:                         ; preds = %bb.br, %bb.bu, %bb.ca, %parseconst.exit, %bb.cy, %skipdeclare.exit, %bb.co, %bb.cs, %bb.cw
  %.pre = load ptr, ptr @token_list, align 8
  br label %trimprefix.exit

bb.bs:                                            ; preds = %trimprefix.exit
  %i.qj = getelementptr i8, ptr %i.qh, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = call i32 @g_strcmp0(ptr noundef %i.qk, ptr noundef @.str.26)
  %.not55 = icmp eq i32 %i.ql, 0
  br i1 %.not55, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.qm = load ptr, ptr @token_list, align 8
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = getelementptr i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = call i32 @g_strcmp0(ptr noundef %i.qp, ptr noundef @.str.27)
  %.not56 = icmp eq i32 %i.qq, 0
  br i1 %.not56, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call fastcc void @parsetypedefenum()
  br label %trimprefix.exit.backedge

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %i.qr = load ptr, ptr @token_list, align 8
  %i.qs = getelementptr i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = call i32 @g_strcmp0(ptr noundef %i.qt, ptr noundef @.str.26)
  %.not57 = icmp eq i32 %i.qu, 0
  br i1 %.not57, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.qv = load ptr, ptr @token_list, align 8
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = getelementptr i8, ptr %i.qw, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = call i32 @g_strcmp0(ptr noundef %i.qy, ptr noundef @.str.25)
  %.not58 = icmp eq i32 %i.qz, 0
  br i1 %.not58, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.ra = load ptr, ptr @token_list, align 8
  %i.rb = load ptr, ptr %i.ra, align 8
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = getelementptr i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = call i32 @g_strcmp0(ptr noundef %i.re, ptr noundef @.str.28)
  %.not59 = icmp eq i32 %i.rf, 0
  br i1 %.not59, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.rg = load ptr, ptr @token_list, align 8
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = getelementptr i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = call i32 @g_strcmp0(ptr noundef %i.rl, ptr noundef @.str.29)
  %.not60 = icmp eq i32 %i.rm, 0
  br i1 %.not60, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.rn = load ptr, ptr @token_list, align 8
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = getelementptr i8, ptr %i.rr, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = call i32 @g_strcmp0(ptr noundef %i.rt, ptr noundef @.str.27)
  %.not61 = icmp eq i32 %i.ru, 0
  br i1 %.not61, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call fastcc void @parsetypedefenum()
  br label %trimprefix.exit.backedge

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %i.rv = load ptr, ptr @token_list, align 8
  %i.rw = getelementptr i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = call i32 @g_strcmp0(ptr noundef %i.rx, ptr noundef @.str.30)
  %.not62 = icmp eq i32 %i.ry, 0
  %i.rz = load ptr, ptr @token_list, align 8      ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8            ; 2 uses
  br i1 %.not62, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  %i.sc = call i32 @strncmp(ptr noundef %i.sb, ptr noundef dereferenceable(6) @.str.30, i64 noundef 5) #19
  %.not.i189 = icmp eq i32 %i.sc, 0
  br i1 %.not.i189, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sd = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sd, ptr noundef @.str.230)
  %i.se = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.se, ptr noundef @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.sf = load ptr, ptr %i.rz, align 8
  %i.sg = load ptr, ptr %i.sf, align 8            ; 2 uses
  %i.sh = getelementptr i8, ptr %i.sg, i64 8      ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = call fastcc ptr @find_type(ptr noundef %i.si)
  %.not18.i = icmp eq ptr %i.sj, null
  br i1 %.not18.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sk = load ptr, ptr @stderr, align 8
  %i.sl = load ptr, ptr %i.sh, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sk, ptr noundef @.str.231, ptr noundef %i.sl)
  %i.sm = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sm, ptr noundef @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.sn = load ptr, ptr %i.sh, align 8
  %i.so = load ptr, ptr %i.sg, align 8            ; 2 uses
  %i.sp = getelementptr i8, ptr %i.so, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = load i8, ptr %i.sq, align 1
  %.not19.i190 = icmp eq i8 %i.sr, 61
  br i1 %.not19.i190, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ss = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.ss, ptr noundef @.str.232)
  %i.st = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.st, ptr noundef @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.su = load ptr, ptr %i.so, align 8            ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8            ; 2 uses
  %i.sw = getelementptr i8, ptr %i.sv, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = load i8, ptr %i.sx, align 1
  %.not20.i191 = icmp eq i8 %i.sy, 59
  br i1 %.not20.i191, label %parseconst.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.sz = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.sz, ptr noundef @.str.233)
  %i.ta = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.ta, ptr noundef @.str.74)
  call fastcc void @printtokenlist()
  call void @exit(i32 noundef 10) #18
  unreachable

parseconst.exit:                                  ; preds = %bb.ci
  %i.tb = getelementptr i8, ptr %i.su, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  %i.td = load ptr, ptr %i.sv, align 8
  %i.te = load ptr, ptr @eth_hdr, align 8
  call void (ptr, ptr, ...) @FPRINTF(ptr noundef %i.te, ptr noundef @.str.235, ptr noundef %i.sn, ptr noundef %i.tc)
  store ptr %i.td, ptr @token_list, align 8
  br label %trimprefix.exit.backedge

bb.ck:                                            ; preds = %bb.cb
  %i.tf = call i32 @g_strcmp0(ptr noundef %i.sb, ptr noundef @.str.26)
  %.not63 = icmp eq i32 %i.tf, 0
  br i1 %.not63, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %bb.ck
  %i.tg = load ptr, ptr @token_list, align 8
  %i.th = load ptr, ptr %i.tg, align 8            ; 3 uses
  %i.ti = getelementptr i8, ptr %i.th, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = call i32 @g_strcmp0(ptr noundef %i.tj, ptr noundef @.str.25)
  %.not64 = icmp eq i32 %i.tk, 0
  br i1 %.not64, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.tl = call fastcc ptr @parsebrackets(ptr noundef %i.th, ptr noundef nonnull %i.ag)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.047 = phi ptr [ %i.th, %bb.cl ], [ %i.tl, %bb.cm ]
  %i.tm = getelementptr i8, ptr %.047, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = call i32 @g_strcmp0(ptr noundef %i.tn, ptr noundef @.str.31)
  %.not65 = icmp eq i32 %i.to, 0
  br i1 %.not65, label %bb.co, label %.thread

bb.co:                                            ; preds = %bb.cn
  call fastcc void @parsetypedefstruct(i32 noundef 0)
  call fastcc void @parsetypedefstruct(i32 noundef 1)
  br label %trimprefix.exit.backedge

.thread:                                          ; preds = %bb.cn, %bb.ck
  %i.tp = load ptr, ptr @token_list, align 8
  %i.tq = getelementptr i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
end_hunk_0
