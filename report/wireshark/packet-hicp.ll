Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-hicp?download=true
begin_hunk_0_@dissect_hicp:bb.a
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = load i32, ptr @hf_hicp_cmd, align 4
  %i.be = load ptr, ptr %i.s, align 8
  %i.bf = call i64 @strlen(ptr noundef %i.be) #5
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.bd, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.bg, ptr noundef nonnull @.str.55) ; 0 uses
  %i.bi = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.bi, i32 noundef 25, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.55)
  br label %bb.bb

bb.l:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.s, align 8
  %i.bk = call i32 @g_ascii_strncasecmp(ptr noundef %i.bj, ptr noundef nonnull @.str.2, i64 noundef 16)
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr @hf_hicp_cmd, align 4
  %i.bn = load ptr, ptr %i.s, align 8
  %i.bo = call i64 @strlen(ptr noundef %i.bn) #5
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.bm, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.bp, ptr noundef nonnull @.str.51) ; 0 uses
  %i.br = load i32, ptr @hf_hicp_proto_version, align 4
  %i.bs = load ptr, ptr %i.s, align 8
  %i.bt = call i64 @strlen(ptr noundef %i.bs) #5
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.br, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.bu, ptr noundef %.0277) ; 0 uses
  %i.bw = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.bw, i32 noundef 25, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51)
  br label %bb.bb

bb.n:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %i.s, align 8
  %i.by = call i32 @g_ascii_strncasecmp(ptr noundef %i.bx, ptr noundef nonnull @.str.57, i64 noundef 7)
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr @hf_hicp_fb_type, align 4
  %i.cb = load ptr, ptr %i.s, align 8
  %i.cc = call i64 @strlen(ptr noundef %i.cb) #5
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ca, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.cd, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.p:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.s, align 8
  %i.cg = call i32 @g_ascii_strncasecmp(ptr noundef %i.cf, ptr noundef nonnull @.str.6, i64 noundef 14)
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = load i32, ptr @hf_hicp_module_version, align 4
  %i.cj = load ptr, ptr %i.s, align 8
  %i.ck = call i64 @strlen(ptr noundef %i.cj) #5
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ci, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.cl, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.r:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.s, align 8
  %i.co = call i32 @g_ascii_strncasecmp(ptr noundef %i.cn, ptr noundef nonnull @.str.58, i64 noundef 3)
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = load i32, ptr @hf_hicp_mac, align 4
  %i.cr = load ptr, ptr %i.s, align 8
  %i.cs = call i64 @strlen(ptr noundef %i.cr) #5
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.cq, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.ct, ptr noundef %.0277) ; 0 uses
  %i.cv = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cv, i32 noundef 25, ptr noundef nonnull @.str.54, ptr noundef %.0277)
  br label %bb.bb

bb.t:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.s, align 8
  %i.cx = call i32 @g_ascii_strncasecmp(ptr noundef %i.cw, ptr noundef nonnull @.str.59, i64 noundef 2)
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cz = load i32, ptr @hf_hicp_ip, align 4
  %i.da = load ptr, ptr %i.s, align 8
  %i.db = call i64 @strlen(ptr noundef %i.da) #5
  %i.dc = trunc i64 %i.db to i32
  %i.dd = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.cz, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.dc, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.v:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %i.s, align 8
  %i.df = call i32 @g_ascii_strncasecmp(ptr noundef %i.de, ptr noundef nonnull @.str.60, i64 noundef 2)
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = load i32, ptr @hf_hicp_sn, align 4
  %i.di = load ptr, ptr %i.s, align 8
  %i.dj = call i64 @strlen(ptr noundef %i.di) #5
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.dh, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.dk, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.x:                                             ; preds = %bb.v
  %i.dm = load ptr, ptr %i.s, align 8
  %i.dn = call i32 @g_ascii_strncasecmp(ptr noundef %i.dm, ptr noundef nonnull @.str.61, i64 noundef 2)
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = load i32, ptr @hf_hicp_gw, align 4
  %i.dq = load ptr, ptr %i.s, align 8
  %i.dr = call i64 @strlen(ptr noundef %i.dq) #5
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.dp, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.ds, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.z:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %i.s, align 8
  %i.dv = call i32 @g_ascii_strncasecmp(ptr noundef %i.du, ptr noundef nonnull @.str.16, i64 noundef 4)
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dx = load i32, ptr @hf_hicp_dhcp, align 4
  %i.dy = load ptr, ptr %i.s, align 8
  %i.dz = call i64 @strlen(ptr noundef %i.dy) #5
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = call i32 @g_ascii_strcasecmp(ptr noundef %.0277, ptr noundef nonnull @.str.62)
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = select i1 %i.ec, ptr @.str.63, ptr @.str.64
  %i.ee = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.dx, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.ea, ptr noundef nonnull %i.ed) ; 0 uses
  br label %bb.bb

bb.ab:                                            ; preds = %bb.z
  %i.ef = load ptr, ptr %i.s, align 8
  %i.eg = call i32 @g_ascii_strncasecmp(ptr noundef %i.ef, ptr noundef nonnull @.str.65, i64 noundef 4)
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load i32, ptr @hf_hicp_pswd_required, align 4
  %i.ej = load ptr, ptr %i.s, align 8
  %i.ek = call i64 @strlen(ptr noundef %i.ej) #5
  %i.el = trunc i64 %i.ek to i32
  %i.em = call i32 @g_ascii_strcasecmp(ptr noundef %.0277, ptr noundef nonnull @.str.62)
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = select i1 %i.en, ptr @.str.66, ptr @.str.67
  %i.ep = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ei, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.el, ptr noundef nonnull %i.eo) ; 0 uses
  br label %bb.bb

bb.ad:                                            ; preds = %bb.ab
  %i.eq = load ptr, ptr %i.s, align 8
  %i.er = call i32 @g_ascii_strncasecmp(ptr noundef %i.eq, ptr noundef nonnull @.str.68, i64 noundef 2)
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.et = load i32, ptr @hf_hicp_hn, align 4
  %i.eu = load ptr, ptr %i.s, align 8
  %i.ev = call i64 @strlen(ptr noundef %i.eu) #5
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.et, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.ew, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.af:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %i.s, align 8
  %i.ez = call i32 @g_ascii_strncasecmp(ptr noundef %i.ey, ptr noundef nonnull @.str.69, i64 noundef 4)
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fb = load i32, ptr @hf_hicp_dns1, align 4
  %i.fc = load ptr, ptr %i.s, align 8
  %i.fd = call i64 @strlen(ptr noundef %i.fc) #5
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.fb, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.fe, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.ah:                                            ; preds = %bb.af
  %i.fg = load ptr, ptr %i.s, align 8
  %i.fh = call i32 @g_ascii_strncasecmp(ptr noundef %i.fg, ptr noundef nonnull @.str.70, i64 noundef 4)
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fj = load i32, ptr @hf_hicp_dns2, align 4
  %i.fk = load ptr, ptr %i.s, align 8
  %i.fl = call i64 @strlen(ptr noundef %i.fk) #5
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.fj, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.fm, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.aj:                                            ; preds = %bb.ah
  %i.fo = load ptr, ptr %i.s, align 8
  %i.fp = call i32 @g_ascii_strncasecmp(ptr noundef %i.fo, ptr noundef nonnull @.str.71, i64 noundef 3)
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %4, label %bb.al

4:                                                ; preds = %bb.aj
  %5 = call double @g_ascii_strtod(ptr noundef %.0277, ptr noundef null) ; 2 uses
  %6 = fcmp oeq double %5, 1.000000e+00
  br i1 %6, label %bb.ak, label %7

7:                                                ; preds = %4
  %8 = fcmp oeq double %5, 0.000000e+00
  br i1 %8, label %9, label %bb.ak

9:                                                ; preds = %7
  br label %bb.ak

bb.ak:                                            ; preds = %4, %7, %9
  %.1 = phi ptr [ %.0277, %7 ], [ @.str.72, %9 ], [ @.str.55, %4 ]
  %i.fr = load i32, ptr @hf_hicp_ext, align 4
  %i.fs = load ptr, ptr %i.s, align 8
  %i.ft = call i64 @strlen(ptr noundef %i.fs) #5
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.fr, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.fu, ptr noundef %.1) ; 0 uses
  br label %bb.bb

bb.al:                                            ; preds = %bb.aj
  %i.fw = load ptr, ptr %i.s, align 8
  %i.fx = call i32 @g_ascii_strncasecmp(ptr noundef %i.fw, ptr noundef nonnull @.str.18, i64 noundef 8)
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fz = load i32, ptr @hf_hicp_pswd, align 4
  %i.ga = load ptr, ptr %i.s, align 8
  %i.gb = call i64 @strlen(ptr noundef %i.ga) #5
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.fz, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.gc, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.an:                                            ; preds = %bb.al
  %i.ge = load ptr, ptr %i.s, align 8
  %i.gf = call i32 @g_ascii_strncasecmp(ptr noundef %i.ge, ptr noundef nonnull @.str.73, i64 noundef 12)
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gh = load i32, ptr @hf_hicp_new_pswd, align 4
  %i.gi = load ptr, ptr %i.s, align 8
  %i.gj = call i64 @strlen(ptr noundef %i.gi) #5
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.gh, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.gk, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.ap:                                            ; preds = %bb.an
  %i.gm = load ptr, ptr %i.s, align 8
  %i.gn = call i32 @g_ascii_strncasecmp(ptr noundef %i.gm, ptr noundef nonnull @.str.74, i64 noundef 7)
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gp = load i32, ptr @hf_hicp_new_mac, align 4
  %i.gq = load ptr, ptr %i.s, align 8
  %i.gr = call i64 @strlen(ptr noundef %i.gq) #5
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.gp, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.gs, ptr noundef %.0277) ; 0 uses
  br label %bb.bb

bb.ar:                                            ; preds = %bb.ap
  %i.gu = load ptr, ptr %i.s, align 8
  %i.gv = call i32 @g_ascii_strncasecmp(ptr noundef %i.gu, ptr noundef nonnull @.str.75, i64 noundef 12)
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gx = load i32, ptr @hf_hicp_status, align 4
  %i.gy = load ptr, ptr %i.s, align 8
  %i.gz = call i64 @strlen(ptr noundef %i.gy) #5
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.gx, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.ha, ptr noundef nonnull @.str.75) ; 0 uses
  %i.hc = load i32, ptr @hf_hicp_src, align 4
  %i.hd = load ptr, ptr %i.s, align 8
  %i.he = call i64 @strlen(ptr noundef %i.hd) #5
  %i.hf = trunc i64 %i.he to i32
  %i.hg = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.hc, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.hf, ptr noundef %.0277) ; 0 uses
  %i.hh = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.hh, i32 noundef 25, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.53)
  %i.hi = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.hi, i32 noundef 25, ptr noundef nonnull @.str.54, ptr noundef %.0277)
  br label %bb.bb

bb.at:                                            ; preds = %bb.ar
  %i.hj = load ptr, ptr %i.s, align 8
  %i.hk = call i32 @g_ascii_strncasecmp(ptr noundef %i.hj, ptr noundef nonnull @.str.77, i64 noundef 16)
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hm = load i32, ptr @hf_hicp_src, align 4
  %i.hn = load ptr, ptr %i.s, align 8
  %i.ho = call i64 @strlen(ptr noundef %i.hn) #5
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.hm, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.hp, ptr noundef %.0277) ; 0 uses
  %i.hr = load i32, ptr @hf_hicp_error, align 4
  %i.hs = load ptr, ptr %i.s, align 8
  %i.ht = call i64 @strlen(ptr noundef %i.hs) #5
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.hr, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.hu, ptr noundef nonnull @.str.77)
  %i.hw = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.hv, ptr noundef nonnull @ei_hicp_error) ; 0 uses
  %i.hx = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.hx, i32 noundef 25, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77)
  %i.hy = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.hy, i32 noundef 25, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.53, ptr noundef %.0277)
  br label %bb.bb

bb.av:                                            ; preds = %bb.at
  %i.hz = load ptr, ptr %i.s, align 8
  %i.ia = call i32 @g_ascii_strncasecmp(ptr noundef %i.hz, ptr noundef nonnull @.str.80, i64 noundef 21)
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ic = load i32, ptr @hf_hicp_src, align 4
  %i.id = load ptr, ptr %i.s, align 8
  %i.ie = call i64 @strlen(ptr noundef %i.id) #5
  %i.if = trunc i64 %i.ie to i32
  %i.ig = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ic, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.if, ptr noundef %.0277) ; 0 uses
  %i.ih = load i32, ptr @hf_hicp_error, align 4
  %i.ii = load ptr, ptr %i.s, align 8
  %i.ij = call i64 @strlen(ptr noundef %i.ii) #5
  %i.ik = trunc i64 %i.ij to i32
  %i.il = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ih, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.ik, ptr noundef nonnull @.str.80)
  %i.im = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.il, ptr noundef nonnull @ei_hicp_error) ; 0 uses
  %i.in = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.in, i32 noundef 25, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.80)
  %i.io = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.io, i32 noundef 25, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.53, ptr noundef %.0277)
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %i.ip = load ptr, ptr %i.s, align 8
  %i.iq = call i32 @g_ascii_strncasecmp(ptr noundef %i.ip, ptr noundef nonnull @.str.81, i64 noundef 8)
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.is = load i32, ptr @hf_hicp_status, align 4
  %i.it = load ptr, ptr %i.s, align 8
  %i.iu = call i64 @strlen(ptr noundef %i.it) #5
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.is, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.iv, ptr noundef nonnull @.str.81) ; 0 uses
  %i.ix = load i32, ptr @hf_hicp_src, align 4
  %i.iy = load ptr, ptr %i.s, align 8
  %i.iz = call i64 @strlen(ptr noundef %i.iy) #5
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.ix, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.ja, ptr noundef %.0277) ; 0 uses
  %i.jc = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.jc, i32 noundef 25, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.55)
  %i.jd = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.jd, i32 noundef 25, ptr noundef nonnull @.str.54, ptr noundef %.0277)
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.je = load ptr, ptr %i.s, align 8
  %i.jf = call i32 @g_ascii_strncasecmp(ptr noundef %i.je, ptr noundef nonnull @.str.82, i64 noundef 2)
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jh = load i32, ptr @hf_hicp_target, align 4
  %i.ji = load ptr, ptr %i.s, align 8
  %i.jj = call i64 @strlen(ptr noundef %i.ji) #5
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = call ptr @proto_tree_add_string(ptr noundef %i.k, i32 noundef %i.jh, ptr noundef %0, i32 noundef %.0278282, i32 noundef %i.jk, ptr noundef %.0277) ; 0 uses
  %i.jm = load ptr, ptr %i.e, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.jm, i32 noundef 25, ptr noundef nonnull @.str.54, ptr noundef %.0277)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.i, %bb.m, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.ag, %bb.ak, %bb.ao, %bb.as, %bb.aw, %bb.az, %bb.ba, %bb.ay, %bb.au, %bb.aq, %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o, %bb.k, %bb.g
  %i.jn = load ptr, ptr %i.s, align 8
  %i.jo = call i64 @strlen(ptr noundef %i.jn) #5
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = add i32 %.0278282, 1
  %i.jr = add i32 %i.jq, %i.jp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.js = call i32 @g_strv_length(ptr noundef %i.p)
  %i.jt = zext i32 %i.js to i64
  %i.ju = icmp samesign ult i64 %indvars.iv.next, %i.jt
  br i1 %i.ju, label %.lr.ph, label %._crit_edge, !llvm.loop !6

bb.bc:                                            ; preds = %bb.a, %._crit_edge
  %.0279 = phi i32 [ %i.r, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0279
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_hicp() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @hicp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.46, i32 noundef 3250, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
