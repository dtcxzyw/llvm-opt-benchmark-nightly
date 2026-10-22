Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_tv?download=true
inline.NumInlined: 122
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@intel_tv_get_config:bb.a
  store i32 %i.bv, ptr %2, align 8
  %i.bw = sub nsw i16 %i.al, %i.ao                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i16 %i.bw, ptr %i.bx, align 4
  %i.by = sub nsw i16 %i.ah, %i.ao                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = and i16 %i.aj, 255
  %i.cb = add nsw i16 %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i16 %i.cb, ptr %i.cc, align 8
  %i.cd = add nuw nsw i16 %i.ah, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  store i16 %i.cd, ptr %i.ce, align 2
  %i.cf = trunc i32 %i.bc to i1                   ; 2 uses
  %i.cg = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.ch = shl nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.ci = add nuw nsw i32 %i.ch, 2
  %.0.i.i = select i1 %i.cf, i32 %i.cg, i32 %i.ci ; 2 uses
  %i.cj = trunc nuw nsw i32 %.0.i.i to i16        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  store i16 %i.cj, ptr %i.ck, align 2
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = add nuw nsw i32 %i.az, %i.cg
  %i.cm = trunc nuw nsw i32 %i.cl to i16
  %i.cn = add nuw nsw i16 %i.cm, 1                ; 2 uses
  %i.co = and i16 %i.ax, 255
  %i.cp = add nuw nsw i16 %i.cn, %i.co
  %narrow = add nuw nsw i8 %i.at, 1
  %i.cq = zext nneg i8 %narrow to i16
  br label %intel_tv_mode_to_mode.exit

bb.i:                                             ; preds = %bb.g
  %i.cr = add nuw nsw i32 %i.ch, 3
  %i.cs = add nuw nsw i32 %i.cr, %i.ba
  %i.ct = add nuw nsw i32 %i.cs, %i.az
  %i.cu = trunc nuw nsw i32 %i.ct to i16
  %i.cv = add nuw nsw i16 %i.cu, 1                ; 2 uses
  %i.cw = shl i16 %i.ax, 1
  %i.cx = and i16 %i.cw, 510
  %i.cy = add nuw nsw i16 %i.cv, %i.cx
  %i.cz = zext nneg i8 %i.at to i16
  %i.da = add nuw nsw i16 %i.av, 2
  %i.db = add nuw nsw i16 %i.da, %i.cz
  br label %intel_tv_mode_to_mode.exit

intel_tv_mode_to_mode.exit:                       ; preds = %bb.h, %bb.i
  %.sink80 = phi i16 [ %i.cn, %bb.h ], [ %i.cv, %bb.i ]
  %.sink = phi i16 [ %i.cp, %bb.h ], [ %i.cy, %bb.i ]
  %i.dc = phi i32 [ 112, %bb.h ], [ 105, %bb.i ]
  %.pn = phi i16 [ %i.cq, %bb.h ], [ %i.db, %bb.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i16 %.sink80, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 4 uses
  store i16 %.sink, ptr %i.de, align 2
  %.sink.i = add nuw nsw i16 %.pn, %i.cj
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  store i16 %.sink.i, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.di = zext i16 %i.bw to i32
  %i.dj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dh, i64 noundef 32, ptr noundef @.str.33, i32 noundef %i.di, i32 noundef %.0.i.i, i32 noundef %i.dc, ptr noundef null) #10 ; 0 uses
  %i.dk = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.dk, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.j

bb.j:                                             ; preds = %intel_tv_mode_to_mode.exit
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %intel_tv_mode_to_mode.exit, %bb.j
  %i.dn = phi ptr [ %i.dm, %bb.j ], [ null, %intel_tv_mode_to_mode.exit ]
  %i.do = call i32 @drm_mode_vrefresh(ptr noundef nonnull %2) #10
  %i.dp = load i32, ptr %2, align 8
  %i.dq = load i16, ptr %i.bx, align 4
  %i.dr = zext i16 %i.dq to i32
  %i.ds = load i16, ptr %i.bz, align 2
  %i.dt = zext i16 %i.ds to i32
  %i.du = load i16, ptr %i.cc, align 8
  %i.dv = zext i16 %i.du to i32
  %i.dw = load i16, ptr %i.ce, align 2
  %i.dx = zext i16 %i.dw to i32
  %i.dy = load i16, ptr %i.ck, align 2
  %i.dz = zext i16 %i.dy to i32
  %i.ea = load i16, ptr %i.dd, align 8
  %i.eb = zext i16 %i.ea to i32
  %i.ec = load i16, ptr %i.de, align 2
  %i.ed = zext i16 %i.ec to i32
  %i.ee = load i16, ptr %i.df, align 4
  %i.ef = zext i16 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.eh = load i8, ptr %i.eg, align 2
  %i.ei = zext i8 %i.eh to i32
  %i.ej = load i32, ptr %i.dg, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dn, i32 noundef 2, ptr noundef @.str.6, ptr noundef nonnull %i.dh, i32 noundef %i.do, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.ef, i32 noundef %i.ei, i32 noundef %i.ej) #10
  %i.ek = add nuw nsw i32 %i.bq, %i.bk            ; 2 uses
  %i.el = load i16, ptr %i.bz, align 2
  %i.em = zext i16 %i.el to i32
  %i.en = sub nsw i32 %i.em, %i.ek
  %i.eo = load i16, ptr %i.cc, align 8
  %i.ep = zext i16 %i.eo to i32
  %i.eq = sub nsw i32 %i.ep, %i.ek
  %i.er = load i16, ptr %i.ce, align 2
  %i.es = zext i16 %i.er to i32                   ; 4 uses
  %i.et = mul nuw i32 %i.es, %i.f
  %i.eu = sdiv i32 %i.et, %i.bq                   ; 4 uses
  %i.ev = load i32, ptr %2, align 8
  %i.ew = mul i32 %i.ev, %i.eu
  %i.ex = sdiv i32 %i.ew, %i.es
  store i16 %i.e, ptr %i.bx, align 4
  %i.ey = mul i32 %i.eu, %i.en
  %i.ez = sdiv i32 %i.ey, %i.es
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = add i16 %i.e, %i.fa
  store i16 %i.fb, ptr %i.bz, align 2
  %i.fc = mul i32 %i.eq, %i.eu
  %i.fd = sdiv i32 %i.fc, %i.es
  %i.fe = trunc i32 %i.fd to i16
  %i.ff = add i16 %i.e, %i.fe
  store i16 %i.ff, ptr %i.cc, align 8
  %i.fg = trunc i32 %i.eu to i16
  store i16 %i.fg, ptr %i.ce, align 2
  %i.fh = add nuw nsw i32 %i.br, %i.bl            ; 2 uses
  %i.fi = load i16, ptr %i.dd, align 8
  %i.fj = zext i16 %i.fi to i32
  %i.fk = sub nsw i32 %i.fj, %i.fh
  %i.fl = load i16, ptr %i.de, align 2
  %i.fm = zext i16 %i.fl to i32
  %i.fn = sub nsw i32 %i.fm, %i.fh
  %i.fo = load i16, ptr %i.df, align 4
  %i.fp = zext i16 %i.fo to i32                   ; 4 uses
  %i.fq = mul nuw i32 %i.fp, %i.i
  %i.fr = sdiv i32 %i.fq, %i.br                   ; 4 uses
  %i.fs = mul i32 %i.fr, %i.ex
  %i.ft = sdiv i32 %i.fs, %i.fp                   ; 3 uses
  store i32 %i.ft, ptr %2, align 8
  store i16 %i.h, ptr %i.ck, align 2
  %i.fu = mul i32 %i.fr, %i.fk
  %i.fv = sdiv i32 %i.fu, %i.fp
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = add i16 %i.h, %i.fw
  store i16 %i.fx, ptr %i.dd, align 8
  %i.fy = mul i32 %i.fn, %i.fr
  %i.fz = sdiv i32 %i.fy, %i.fp
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = add i16 %i.h, %i.ga
  store i16 %i.gb, ptr %i.de, align 2
  %i.gc = trunc i32 %i.fr to i16
  store i16 %i.gc, ptr %i.df, align 4
  %i.gd = getelementptr i8, ptr %1, i64 644       ; 2 uses
  store i32 %i.ft, ptr %i.gd, align 4
  %i.ge = getelementptr i8, ptr %1, i64 640
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = and i32 %i.gf, 16
  %.not50 = icmp eq i32 %i.gg, 0
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit
  %i.gh = sdiv i32 %i.ft, 2
  store i32 %i.gh, ptr %i.gd, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %__drm_to_dev.exit
  %i.gi = getelementptr i8, ptr %i.c, i64 8
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = and i64 %i.gj, 16384
  %.not51 = icmp eq i64 %i.gk, 0
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gl = getelementptr i8, ptr %1, i64 1328      ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 8
  %i.gn = or i8 %i.gm, 4
  store i8 %i.gn, ptr %i.gl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_tv_pre_enable(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 99 uses
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr i8, ptr %3, i64 72
  %.val = load i32, ptr %i.e, align 8
  %i.f = sext i32 %.val to i64
  %i.g = getelementptr [112 x i8], ptr @tv_modes, i64 %i.f ; 41 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 range(i32 425984, 426101) 425984, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  %i.l = and i32 %i.k, 4047                       ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 504
  %i.n = load i32, ptr %i.m, align 8
  switch i32 %i.n, label %bb.d [
    i32 6, label %bb.f
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.g, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.g, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.g, i64 34
  %i.t = load i8, ptr %i.s, align 2
  %i.u = and i8 %i.t, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.v = or disjoint i32 %i.l, 536870912
  %i.w = getelementptr i8, ptr %i.g, i64 34
  %i.x = load i8, ptr %i.w, align 2
  %i.y = trunc i8 %i.x to i1
  %sdtv_csc_yprpb.hdtv_csc_yprpb = select i1 %i.y, ptr @sdtv_csc_yprpb, ptr @hdtv_csc_yprpb
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.z = or disjoint i32 %i.l, 268435456
  %i.aa = getelementptr i8, ptr %i.g, i64 80
  %i.ab = load ptr, ptr %i.aa, align 16
  %i.ac = getelementptr i8, ptr %i.g, i64 96
  %i.ad = load ptr, ptr %i.ac, align 16
  %i.ae = getelementptr i8, ptr %i.g, i64 34
  %i.af = load i8, ptr %i.ae, align 2
  %i.ag = and i8 %i.af, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0155 = phi i8 [ %i.u, %bb.d ], [ %i.ag, %bb.f ], [ 0, %bb.e ]
  %.1154 = phi ptr [ %i.r, %bb.d ], [ %i.ad, %bb.f ], [ %sdtv_csc_yprpb.hdtv_csc_yprpb, %bb.e ] ; 12 uses
  %.0152 = phi ptr [ %i.p, %bb.d ], [ %i.ab, %bb.f ], [ @component_levels, %bb.e ] ; 3 uses
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.z, %bb.f ], [ %i.v, %bb.e ]
  %i.ah = getelementptr i8, ptr %i.d, i64 1664
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl i32 %i.ai, 30
  %i.ak = or i32 %i.aj, %.0                       ; 4 uses
  %i.al = getelementptr i8, ptr %i.g, i64 14
  %i.am = load i8, ptr %i.al, align 2
  switch i8 %i.am, label %bb.j [
    i8 8, label %bb.h
    i8 4, label %bb.k
    i8 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.an = or i32 %i.ak, 786432
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ao = or i32 %i.ak, 262144
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = or i32 %i.ak, 524288
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.h
  %.1 = phi i32 [ %i.ap, %bb.j ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %i.ak, %bb.g ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.g, i64 22
  %i.ar = load i8, ptr %i.aq, align 2             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = getelementptr i8, ptr %i.g, i64 68
  %i.au = load i8, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %i.g, i64 56
  %i.aw = load i8, ptr %i.av, align 8             ; 2 uses
  %.not159 = icmp eq i8 %i.aw, 0
  %.0140 = select i1 %.not159, i32 0, i32 -2147483648 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.g, i64 58
  %i.ay = load i16, ptr %i.ax, align 2            ; 2 uses
  %.not160 = icmp eq i16 %i.ay, 0
  %4 = or disjoint i32 %.0140, 1073741824
  %.1141 = select i1 %.not160, i32 %.0140, i32 %4 ; 2 uses
  %5 = getelementptr i8, ptr %i.g, i64 60
  %6 = load i16, ptr %5, align 4                  ; 2 uses
  %.not161.not = icmp eq i16 %6, 0
  %i.az = or disjoint i32 %.1141, 536870912
  %.2142 = select i1 %.not161.not, i32 %.1141, i32 %i.az
  %i.ba = getelementptr i8, ptr %i.g, i64 64
  %i.bb = load i32, ptr %i.ba, align 16
  %i.bc = or i32 %.2142, %i.bb                    ; 2 uses
  %.not162 = icmp eq ptr %.0152, null             ; 2 uses
  br i1 %.not162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr i8, ptr %.0152, i64 4
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %i.bh = or i32 %i.bg, %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3143 = phi i32 [ %i.bh, %bb.l ], [ %i.bc, %bb.k ]
  %i.bi = zext i8 %i.aw to i32
  %i.bj = or i32 %.3143, %i.bi
  %i.bk = getelementptr i8, ptr %i.g, i64 52
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 16
  %i.bo = zext i16 %i.ay to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  %i.bq = getelementptr i8, ptr %i.g, i64 54
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 16
  %i.bu = zext i16 %6 to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = getelementptr i8, ptr %i.c, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.g, i64 15
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr i8, ptr %i.g, i64 20
  %i.cb = load i16, ptr %i.ca, align 4
  %i.cc = getelementptr i8, ptr %i.g, i64 35
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = getelementptr i8, ptr %i.g, i64 36
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cf, %i.ci
  %i.ck = zext nneg i8 %.0155 to i32
  %i.cl = shl nuw i32 %i.ck, 31
  %spec.select.i = or disjoint i32 %i.cj, %i.cl
  %i.cm = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = getelementptr i8, ptr %i.g, i64 32
  %i.cp = load i16, ptr %i.co, align 16
  %i.cq = getelementptr i8, ptr %i.g, i64 30
  %i.cr = load i8, ptr %i.cq, align 2
  %i.cs = getelementptr i8, ptr %i.g, i64 31
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = getelementptr i8, ptr %i.g, i64 25
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr i8, ptr %i.g, i64 23
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr i8, ptr %i.g, i64 24
  %i.cz = load i8, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %i.g, i64 29
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 16
  %i.de = getelementptr i8, ptr %i.g, i64 27
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 8
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = getelementptr i8, ptr %i.g, i64 28
  %i.dk = load i8, ptr %i.dj, align 4
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl
  %i.dn = getelementptr i8, ptr %i.g, i64 26
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl i32 %i.dp, 31
  %.055.i = or disjoint i32 %i.dm, %i.dq
  %i.dr = zext i8 %i.cv to i32
  %i.ds = shl nuw nsw i32 %i.dr, 16
  %i.dt = zext i8 %i.cx to i32
  %i.du = shl nuw nsw i32 %i.dt, 8
  %i.dv = or disjoint i32 %i.du, %i.ds
  %i.dw = zext i8 %i.cz to i32
  %i.dx = or disjoint i32 %i.dv, %i.dw
  %i.dy = zext i16 %i.cp to i32                   ; 3 uses
  %i.dz = shl nuw i32 %i.dy, 16
  %i.ea = zext i8 %i.cr to i32
  %i.eb = shl nuw nsw i32 %i.ea, 8
  %i.ec = or disjoint i32 %i.eb, %i.dz
  %i.ed = zext i8 %i.ct to i32
  %i.ee = or disjoint i32 %i.ec, %i.ed
  %i.ef = zext i8 %i.bz to i32
  %i.eg = shl nuw nsw i32 %i.ef, 16
  %i.eh = zext i16 %i.cb to i32
  %i.ei = or disjoint i32 %i.eg, %i.eh
  %i.ej = getelementptr i8, ptr %i.g, i64 37
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 16
  %i.en = getelementptr i8, ptr %i.g, i64 38
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = or disjoint i32 %i.em, %i.ep
  %i.er = getelementptr i8, ptr %i.g, i64 40
  %i.es = load i8, ptr %i.er, align 8
  %i.et = zext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 16
  %i.ev = getelementptr i8, ptr %i.g, i64 42
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = zext i16 %i.ew to i32
  %i.ey = or disjoint i32 %i.eu, %i.ex
  %i.ez = getelementptr i8, ptr %i.g, i64 44
  %i.fa = load i8, ptr %i.ez, align 4
  %i.fb = zext i8 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 16
  %i.fd = getelementptr i8, ptr %i.g, i64 46
  %i.fe = load i16, ptr %i.fd, align 2
  %i.ff = zext i16 %i.fe to i32
  %i.fg = or disjoint i32 %i.fc, %i.ff
  %i.fh = getelementptr i8, ptr %i.g, i64 48
  %i.fi = load i8, ptr %i.fh, align 16
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 16
  %i.fl = getelementptr i8, ptr %i.g, i64 50
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = zext i16 %i.fm to i32
  %i.fo = or disjoint i32 %i.fk, %i.fn
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426032) #10
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.fp = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 176
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef %i.fp, i32 426032, i32 noundef %i.ei, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426032) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426036) #10
  %.val.i56.i = load ptr, ptr %i.c, align 8
  %i.fs = tail call ptr @to_intel_uncore(ptr noundef %.val.i56.i) #10 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 176
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef %i.fs, i32 426036, i32 noundef %spec.select.i, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426036) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426040) #10
  %.val.i57.i = load ptr, ptr %i.c, align 8
  %i.fv = tail call ptr @to_intel_uncore(ptr noundef %.val.i57.i) #10 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 176
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void %i.fx(ptr noundef %i.fv, i32 426040, i32 noundef %i.cn, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426040) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426044) #10
  %.val.i58.i = load ptr, ptr %i.c, align 8
  %i.fy = tail call ptr @to_intel_uncore(ptr noundef %.val.i58.i) #10 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 176
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void %i.ga(ptr noundef %i.fy, i32 426044, i32 noundef %i.ee, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426044) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426048) #10
  %.val.i59.i = load ptr, ptr %i.c, align 8
  %i.gb = tail call ptr @to_intel_uncore(ptr noundef %.val.i59.i) #10 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 176
  %i.gd = load ptr, ptr %i.gc, align 8
  tail call void %i.gd(ptr noundef %i.gb, i32 426048, i32 noundef %i.dx, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426048) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426052) #10
  %.val.i60.i = load ptr, ptr %i.c, align 8
  %i.ge = tail call ptr @to_intel_uncore(ptr noundef %.val.i60.i) #10 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 176
  %i.gg = load ptr, ptr %i.gf, align 8
  tail call void %i.gg(ptr noundef %i.ge, i32 426052, i32 noundef %.055.i, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426052) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426056) #10
  %.val.i61.i = load ptr, ptr %i.c, align 8
  %i.gh = tail call ptr @to_intel_uncore(ptr noundef %.val.i61.i) #10 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 176
  %i.gj = load ptr, ptr %i.gi, align 8
  tail call void %i.gj(ptr noundef %i.gh, i32 426056, i32 noundef %i.eq, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426056) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426060) #10
  %.val.i62.i = load ptr, ptr %i.c, align 8
  %i.gk = tail call ptr @to_intel_uncore(ptr noundef %.val.i62.i) #10 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 176
  %i.gm = load ptr, ptr %i.gl, align 8
  tail call void %i.gm(ptr noundef %i.gk, i32 426060, i32 noundef %i.ey, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426060) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426064) #10
  %.val.i63.i = load ptr, ptr %i.c, align 8
  %i.gn = tail call ptr @to_intel_uncore(ptr noundef %.val.i63.i) #10 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 176
  %i.gp = load ptr, ptr %i.go, align 8
  tail call void %i.gp(ptr noundef %i.gn, i32 426064, i32 noundef %i.fg, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426064) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426068) #10
  %.val.i64.i = load ptr, ptr %i.c, align 8
  %i.gq = tail call ptr @to_intel_uncore(ptr noundef %.val.i64.i) #10 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 176
  %i.gs = load ptr, ptr %i.gr, align 8
  tail call void %i.gs(ptr noundef %i.gq, i32 426068, i32 noundef %i.fo, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426068) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426080) #10
  %.val.i165 = load ptr, ptr %i.c, align 8
  %i.gt = tail call ptr @to_intel_uncore(ptr noundef %.val.i165) #10 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 176
  %i.gv = load ptr, ptr %i.gu, align 8
  tail call void %i.gv(ptr noundef %i.gt, i32 426080, i32 noundef %i.bj, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426080) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426084) #10
  %.val.i166 = load ptr, ptr %i.c, align 8
  %i.gw = tail call ptr @to_intel_uncore(ptr noundef %.val.i166) #10 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 176
  %i.gy = load ptr, ptr %i.gx, align 8
  tail call void %i.gy(ptr noundef %i.gw, i32 426084, i32 noundef %i.bp, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426084) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426088) #10
  %.val.i167 = load ptr, ptr %i.c, align 8
  %i.gz = tail call ptr @to_intel_uncore(ptr noundef %.val.i167) #10 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 176
  %i.hb = load ptr, ptr %i.ha, align 8
  tail call void %i.hb(ptr noundef %i.gz, i32 426088, i32 noundef %i.bv, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426088) #10
  %i.hc = load i16, ptr %.1154, align 2
  %i.hd = zext i16 %i.hc to i32
  %i.he = shl nuw i32 %i.hd, 16
  %i.hf = getelementptr i8, ptr %.1154, i64 2
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = zext i16 %i.hg to i32
  %i.hi = or disjoint i32 %i.he, %i.hh
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426000) #10
  %.val.i.i168 = load ptr, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@intel_tv_pre_enable:bb.a
  %.val.i25.i = load ptr, ptr %i.c, align 8
  %i.iq = tail call ptr @to_intel_uncore(ptr noundef %.val.i25.i) #10 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 176
  %i.is = load ptr, ptr %i.ir, align 8
  tail call void %i.is(ptr noundef %i.iq, i32 426012, i32 noundef %i.ip, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426012) #10
  %i.it = getelementptr i8, ptr %.1154, i64 16
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = zext i16 %i.iu to i32
  %i.iw = shl nuw i32 %i.iv, 16
  %i.ix = getelementptr i8, ptr %.1154, i64 18
  %i.iy = load i16, ptr %i.ix, align 2
  %i.iz = zext i16 %i.iy to i32
  %i.ja = or disjoint i32 %i.iw, %i.iz
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426016) #10
  %.val.i26.i = load ptr, ptr %i.c, align 8
  %i.jb = tail call ptr @to_intel_uncore(ptr noundef %.val.i26.i) #10 ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 176
  %i.jd = load ptr, ptr %i.jc, align 8
  tail call void %i.jd(ptr noundef %i.jb, i32 426016, i32 noundef %i.ja, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426016) #10
  %i.je = getelementptr i8, ptr %.1154, i64 20
  %i.jf = load i16, ptr %i.je, align 2
  %i.jg = zext i16 %i.jf to i32
  %i.jh = shl nuw i32 %i.jg, 16
  %i.ji = getelementptr i8, ptr %.1154, i64 22
  %i.jj = load i16, ptr %i.ji, align 2
  %i.jk = zext i16 %i.jj to i32
  %i.jl = or disjoint i32 %i.jh, %i.jk
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426020) #10
  %.val.i27.i = load ptr, ptr %i.c, align 8
  %i.jm = tail call ptr @to_intel_uncore(ptr noundef %.val.i27.i) #10 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 176
  %i.jo = load ptr, ptr %i.jn, align 8
  tail call void %i.jo(ptr noundef %i.jm, i32 426020, i32 noundef %i.jl, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426020) #10
  %i.jp = getelementptr i8, ptr %i.c, i64 1168
  %i.jq = load i16, ptr %i.jp, align 8
  %i.jr = icmp ugt i16 %i.jq, 3
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426024) #10
  %.val.i169 = load ptr, ptr %i.c, align 8
  %i.js = tail call ptr @to_intel_uncore(ptr noundef %.val.i169) #10 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 176
  %i.ju = load ptr, ptr %i.jt, align 8
  %. = select i1 %i.jr, i32 4210688, i32 6316032
  tail call void %i.ju(ptr noundef %i.js, i32 426024, i32 noundef %., i1 noundef zeroext true) #10
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426024) #10
  br i1 %.not162, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jv = load i32, ptr %.0152, align 2
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426028) #10
  %.val.i171 = load ptr, ptr %i.c, align 8
  %i.jw = tail call ptr @to_intel_uncore(ptr noundef %.val.i171) #10 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 176
  %i.jy = load ptr, ptr %i.jx, align 8
  tail call void %i.jy(ptr noundef %i.jw, i32 426028, i32 noundef %i.jv, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426028) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.jz = getelementptr i8, ptr %2, i64 880
  %i.ka = load i32, ptr %i.jz, align 8
  tail call void @assert_transcoder(ptr noundef %i.c, i32 noundef %i.ka, i1 noundef zeroext false) #10
  %i.kb = getelementptr i8, ptr %3, i64 444
  %i.kc = load i8, ptr %i.kb, align 4, !range !23, !noundef !24
  %i.kd = trunc nuw i8 %i.kc to i1
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426112) #10
  %.val.i173 = load ptr, ptr %i.c, align 8
  %i.ke = tail call ptr @to_intel_uncore(ptr noundef %.val.i173) #10 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 176
  %i.kg = load ptr, ptr %i.kf, align 8
  %.219 = select i1 %i.kd, i32 -1610612736, i32 -2147483648
  tail call void %i.kg(ptr noundef %i.ke, i32 426112, i32 noundef %.219, i1 noundef zeroext true) #10
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426112) #10
  %i.kh = load i16, ptr %i.cm, align 16
  %i.ki = zext i16 %i.kh to i32
  %i.kj = getelementptr i8, ptr %i.g, i64 18
  %i.kk = load i16, ptr %i.kj, align 2
  %i.kl = zext i16 %i.kk to i32
  %i.km = add nuw nsw i32 %i.dy, 1
  %i.kn = shl nuw nsw i32 %i.dy, 1
  %i.ko = add nuw nsw i32 %i.kn, 2
  %.0.i = select i1 %i.as, i32 %i.km, i32 %i.ko
  %i.kp = getelementptr i8, ptr %3, i64 60
  %i.kq = load i32, ptr %i.kp, align 4            ; 2 uses
  %i.kr = getelementptr i8, ptr %3, i64 440
  %i.ks = load i16, ptr %i.kr, align 8
  %i.kt = zext i16 %i.ks to i32                   ; 2 uses
  %i.ku = getelementptr i8, ptr %3, i64 64
  %i.kv = load i32, ptr %i.ku, align 8
  %i.kw = add i32 %i.kq, %i.kl
  %i.kx = add i32 %i.kw, %i.kv
  %i.ky = sub i32 %i.ki, %i.kx
  %i.kz = getelementptr i8, ptr %3, i64 442
  %i.la = load i16, ptr %i.kz, align 2
  %i.lb = zext i16 %i.la to i32
  %i.lc = add nuw nsw i32 %i.kt, %i.lb
  %i.ld = sub nsw i32 %.0.i, %i.lc
  %i.le = shl i32 %i.kq, 16
  %i.lf = or disjoint i32 %i.le, %i.kt
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426096) #10
  %.val.i174 = load ptr, ptr %i.c, align 8
  %i.lg = tail call ptr @to_intel_uncore(ptr noundef %.val.i174) #10 ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 176
  %i.li = load ptr, ptr %i.lh, align 8
  tail call void %i.li(ptr noundef %i.lg, i32 426096, i32 noundef %i.lf, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426096) #10
  %i.lj = shl i32 %i.ky, 16
  %i.lk = or i32 %i.lj, %i.ld
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426100) #10
  %.val.i175 = load ptr, ptr %i.c, align 8
  %i.ll = tail call ptr @to_intel_uncore(ptr noundef %.val.i175) #10 ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 176
  %i.ln = load ptr, ptr %i.lm, align 8
  tail call void %i.ln(ptr noundef %i.ll, i32 426100, i32 noundef %i.lk, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426100) #10
  %i.lo = getelementptr i8, ptr %i.g, i64 104
  %i.lp = load ptr, ptr %i.lo, align 8            ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.o ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %indvars202 = trunc i64 %indvars.iv to i32
  %i.lq = shl nuw nsw i32 %indvars202, 2
  %i.lr = add nuw nsw i32 %i.lq, 426240           ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ls = getelementptr [4 x i8], ptr %i.lp, i64 %indvars.iv
  %i.lt = load i32, ptr %i.ls, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.lr) #10
  %.val.i176 = load ptr, ptr %i.c, align 8
  %i.lu = tail call ptr @to_intel_uncore(ptr noundef %.val.i176) #10 ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 176
  %i.lw = load ptr, ptr %i.lv, align 8
  tail call void %i.lw(ptr noundef %i.lu, i32 %i.lr, i32 noundef %i.lt, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.lr) #10
  %exitcond.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond.not, label %.preheader191, label %bb.p, !llvm.loop !19

.preheader191:                                    ; preds = %bb.p, %.preheader191
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %.preheader191 ], [ 60, %bb.p ] ; 2 uses
  %.1145195 = phi i32 [ %i.me, %.preheader191 ], [ 0, %bb.p ] ; 2 uses
  %i.lx = shl nuw nsw i32 %.1145195, 2
  %i.ly = add nuw nsw i32 %i.lx, 426496           ; 3 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  %i.lz = getelementptr [4 x i8], ptr %i.lp, i64 %indvars.iv205
  %i.ma = load i32, ptr %i.lz, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ly) #10
  %.val.i177 = load ptr, ptr %i.c, align 8
  %i.mb = tail call ptr @to_intel_uncore(ptr noundef %.val.i177) #10 ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 176
  %i.md = load ptr, ptr %i.mc, align 8
  tail call void %i.md(ptr noundef %i.mb, i32 %i.ly, i32 noundef %i.ma, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ly) #10
  %i.me = add nuw nsw i32 %.1145195, 1            ; 2 uses
  %exitcond208.not = icmp eq i32 %i.me, 60
  br i1 %exitcond208.not, label %.preheader190, label %.preheader191, !llvm.loop !20

.preheader190:                                    ; preds = %.preheader191, %.preheader190
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.preheader190 ], [ 120, %.preheader191 ] ; 2 uses
  %.2146197 = phi i32 [ %i.mm, %.preheader190 ], [ 0, %.preheader191 ] ; 2 uses
  %i.mf = shl nuw nsw i32 %.2146197, 2
  %i.mg = add nuw nsw i32 %i.mf, 426752           ; 3 uses
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %i.mh = getelementptr [4 x i8], ptr %i.lp, i64 %indvars.iv209
  %i.mi = load i32, ptr %i.mh, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.mg) #10
  %.val.i178 = load ptr, ptr %i.c, align 8
  %i.mj = tail call ptr @to_intel_uncore(ptr noundef %.val.i178) #10 ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 176
  %i.ml = load ptr, ptr %i.mk, align 8
  tail call void %i.ml(ptr noundef %i.mj, i32 %i.mg, i32 noundef %i.mi, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.mg) #10
  %i.mm = add nuw nsw i32 %.2146197, 1            ; 2 uses
  %exitcond212.not = icmp eq i32 %i.mm, 43
  br i1 %exitcond212.not, label %.preheader, label %.preheader190, !llvm.loop !21

.preheader:                                       ; preds = %.preheader190, %.preheader
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %.preheader ], [ 163, %.preheader190 ] ; 2 uses
  %.3147199 = phi i32 [ %i.mu, %.preheader ], [ 0, %.preheader190 ] ; 2 uses
  %i.mn = shl nuw nsw i32 %.3147199, 2
  %i.mo = add nuw nsw i32 %i.mn, 427008           ; 3 uses
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  %i.mp = getelementptr [4 x i8], ptr %i.lp, i64 %indvars.iv213
  %i.mq = load i32, ptr %i.mp, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.mo) #10
  %.val.i179 = load ptr, ptr %i.c, align 8
  %i.mr = tail call ptr @to_intel_uncore(ptr noundef %.val.i179) #10 ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 176
  %i.mt = load ptr, ptr %i.ms, align 8
  tail call void %i.mt(ptr noundef %i.mr, i32 %i.mo, i32 noundef %i.mq, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.mo) #10
  %i.mu = add nuw nsw i32 %.3147199, 1            ; 2 uses
  %exitcond216.not = icmp eq i32 %i.mu, 43
  br i1 %exitcond216.not, label %bb.q, label %.preheader, !llvm.loop !22

bb.q:                                             ; preds = %.preheader
  %i.mv = and i64 %i.bx, 256
  %.not163 = icmp eq i64 %i.mv, 0
  %i.mw = trunc i8 %i.au to i1
  %i.mx = or i32 %.1, 131072
  %spec.select = select i1 %i.as, i32 %i.mx, i32 %.1
  %7 = and i8 %i.ar, 2
  %8 = zext nneg i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 20
  %.3 = or i32 %9, %spec.select                   ; 2 uses
  %i.my = or i32 %.3, 65536
  %.4 = select i1 %i.mw, i32 %i.my, i32 %.3       ; 2 uses
  %i.mz = or i32 %.4, 3072
  %spec.select164 = select i1 %.not163, i32 %.4, i32 %i.mz
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425988) #10
  %.val.i180 = load ptr, ptr %i.c, align 8
  %i.na = tail call ptr @to_intel_uncore(ptr noundef %.val.i180) #10 ; 2 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 144
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = tail call i32 %i.nc(ptr noundef %i.na, i32 range(i32 425984, 426101) 425988, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425988) #10
  %i.ne = and i32 %i.nd, 16776960
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425988) #10
  %.val.i181 = load ptr, ptr %i.c, align 8
  %i.nf = tail call ptr @to_intel_uncore(ptr noundef %.val.i181) #10 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 176
  %i.nh = load ptr, ptr %i.ng, align 8
  tail call void %i.nh(ptr noundef %i.nf, i32 425988, i32 noundef %i.ne, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425988) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i182 = load ptr, ptr %i.c, align 8
  %i.ni = tail call ptr @to_intel_uncore(ptr noundef %.val.i182) #10 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 176
  %i.nk = load ptr, ptr %i.nj, align 8
  tail call void %i.nk(ptr noundef %i.ni, i32 425984, i32 noundef %spec.select164, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_enable_tv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %2, align 8
  tail call void @intel_crtc_wait_for_next_vblank(ptr noundef %i.d) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef %i.e, i32 425984, i1 noundef zeroext true) #10, !inline_history !2
  %i.i = or i32 %i.h, -2147483648
  %i.j = getelementptr i8, ptr %i.e, i64 176
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef %i.e, i32 425984, i32 noundef %i.i, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_disable_tv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.d, i32 425984, i1 noundef zeroext true) #10, !inline_history !2
  %i.h = and i32 %i.g, 2147483647
  %i.i = getelementptr i8, ptr %i.d, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef %i.d, i32 425984, i32 noundef %i.h, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @intel_tv_get_hw_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.d, i32 range(i32 425984, 426101) 425984, i1 noundef zeroext true) #10, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  %i.h = lshr i32 %i.g, 30
  %i.i = and i32 %i.h, 1
  store i32 %i.i, ptr %1, align 4
  %i.j = icmp slt i32 %i.g, 0
  ret i1 %i.j
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_connector_get_hw_state(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_connector_register(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_destroy(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef ptr @intel_tv_connector_duplicate_state(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1960
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call dereferenceable_or_null(448) ptr @kmemdup_noprof(ptr noundef %i.b, i64 noundef 448, i32 noundef 3264) #14 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %0, ptr noundef nonnull %i.c) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_encoder_destroy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dpll_crtc_compute_clock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_tv_mode_to_mode(ptr nofree noundef writeonly captures(none) initializes((0, 12), (14, 22), (24, 28)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14
  %i.b = load i8, ptr %i.a, align 2
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr i8, ptr %1, i64 22         ; 4 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = and i8 %i.e, 1
  %i.g = xor i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i32 %i.c, %i.h
  %i.j = sdiv i32 %2, %i.i
  store i32 %i.j, ptr %0, align 8
  %i.k = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 18
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sub i16 %i.l, %i.n                       ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 4
  store i16 %i.o, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.r = load i16, ptr %i.q, align 4
  %i.s = add i16 %i.r, %i.o
  %i.t = load i16, ptr %i.k, align 8
  %i.u = sub i16 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 6
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr i8, ptr %1, i64 15
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = add i16 %i.u, %i.y
  %i.aa = getelementptr i8, ptr %0, i64 8
  store i16 %i.z, ptr %i.aa, align 8
  %i.ab = load i16, ptr %i.q, align 4
  %i.ac = add i16 %i.ab, 1
  %i.ad = getelementptr i8, ptr %0, i64 10
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = load i8, ptr %i.d, align 2
  %i.af = trunc i8 %i.ae to i1
  %i.ag = getelementptr i8, ptr %1, i64 32
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = add nuw nsw i32 %i.ak, 2
  %.0.i = select i1 %i.af, i32 %i.aj, i32 %i.al   ; 4 uses
  %i.am = trunc i32 %.0.i to i16                  ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 14
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = load i8, ptr %i.d, align 2
  %i.ap = trunc i8 %i.ao to i1
  %i.aq = getelementptr i8, ptr %1, i64 23
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = add nuw nsw i32 %.0.i, %i.as
  %i.au = trunc i32 %i.at to i16
  %i.av = add i16 %i.au, 1                        ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 16
  store i16 %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %1, i64 25
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i16
  %i.ba = add i16 %i.av, %i.az
  %i.bb = getelementptr i8, ptr %0, i64 18
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr i8, ptr %1, i64 30
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = zext i8 %i.bd to i16
  %i.bf = add i16 %i.am, 1
  %i.bg = add i16 %i.bf, %i.be
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bh = getelementptr i8, ptr %1, i64 24
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %.0.i, 1
  %i.bl = add nuw nsw i32 %i.bk, %i.as
  %i.bm = add nuw nsw i32 %i.bl, %i.bj
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = add i16 %i.bn, 1                        ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 16
  store i16 %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %1, i64 25
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i16
  %i.bt = shl nuw nsw i16 %i.bs, 1
  %i.bu = add i16 %i.bo, %i.bt
  %i.bv = getelementptr i8, ptr %0, i64 18
  store i16 %i.bu, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %1, i64 30
  %i.bx = load i8, ptr %i.bw, align 2
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr i8, ptr %1, i64 31
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  %i.cc = add i16 %i.am, 2
  %i.cd = add i16 %i.cc, %i.by
  %i.ce = add i16 %i.cd, %i.cb
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i16 [ %i.bg, %bb.b ], [ %i.ce, %bb.c ]
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i16 %.sink, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr i8, ptr %0, i64 80
  %i.ci = zext i16 %i.o to i32
  %i.cj = and i32 %.0.i, 65535
  %i.ck = load i8, ptr %i.d, align 2
  %i.cl = trunc i8 %i.ck to i1
  %i.cm = select i1 %i.cl, i32 112, i32 105
  %i.cn = load ptr, ptr %1, align 8
  %i.co = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ch, i64 noundef 32, ptr noundef @.str.33, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.cm, ptr noundef %i.cn) #10 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @assert_transcoder(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_crtc_wait_for_next_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_tv_get_modes(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 1960
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 72
  %.val = load i32, ptr %i.f, align 8
  %i.g = sext i32 %.val to i64
  %i.h = getelementptr [112 x i8], ptr @tv_modes, i64 %i.g ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 22       ; 2 uses
  %i.j = getelementptr i8, ptr %i.c, i64 1168
  %i.k = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.m
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.054 = phi i32 [ 0, %bb.c ], [ %.1, %bb.m ]    ; 5 uses
  %i.m = getelementptr [4 x i8], ptr @input_res_table, i64 %indvars.iv ; 3 uses
  %i.n = shl nuw nsw i64 1, %indvars.iv
  %i.o = and i64 %i.n, 104
  %.not47 = icmp eq i64 %i.o, 0
  br i1 %.not47, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.i, align 2               ; 2 uses
  %1 = and i8 %i.p, 5
  %or.cond = icmp eq i8 %1, 0
  br i1 %or.cond, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.e
  %i.q = load i16, ptr %i.j, align 8
  %i.r = icmp eq i16 %i.q, 3
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.s = getelementptr i8, ptr %i.m, i64 2
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %2 = trunc i8 %i.p to i1
  %i.v = load i16, ptr %i.k, align 16
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = add nuw nsw i32 %i.w, 1
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = add nuw nsw i32 %i.y, 2
  %.0.i = select i1 %2, i32 %i.x, i32 %i.z
  %i.aa = icmp samesign ult i32 %.0.i, %i.u
  br i1 %i.aa, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.d, %.thread, %bb.f
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = tail call ptr @drm_mode_create(ptr noundef %i.ab) #10 ; 28 uses
  %.not50 = icmp eq ptr %i.ac, null
  br i1 %.not50, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.l, align 8
  tail call fastcc void @intel_tv_mode_to_mode(ptr noundef nonnull %i.ac, ptr noundef %i.h, i32 noundef %i.ad) #13, !srcloc !26
  %i.ae = icmp eq i32 %.054, 0
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.i, %bb.j
  %i.ai = phi ptr [ %i.ah, %bb.j ], [ null, %bb.i ]
  %i.aj = getelementptr i8, ptr %i.ac, i64 80
  %i.ak = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull %i.ac) #10
  %i.al = load i32, ptr %i.ac, align 8
  %i.am = getelementptr i8, ptr %i.ac, i64 4
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = zext i16 %i.an to i32
  %i.ap = getelementptr i8, ptr %i.ac, i64 6
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = zext i16 %i.aq to i32
  %i.as = getelementptr i8, ptr %i.ac, i64 8
  %i.at = load i16, ptr %i.as, align 8
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr i8, ptr %i.ac, i64 10
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr i8, ptr %i.ac, i64 14
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr i8, ptr %i.ac, i64 16
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = zext i16 %i.bc to i32
  %i.be = getelementptr i8, ptr %i.ac, i64 18
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr i8, ptr %i.ac, i64 20
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr i8, ptr %i.ac, i64 62
  %i.bl = load i8, ptr %i.bk, align 2
  %i.bm = zext i8 %i.bl to i32
  %i.bn = getelementptr i8, ptr %i.ac, i64 24
  %i.bo = load i32, ptr %i.bn, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ai, i32 noundef 2, ptr noundef @.str.6, ptr noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.bd, i32 noundef %i.bg, i32 noundef %i.bj, i32 noundef %i.bm, i32 noundef %i.bo) #10
  br label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit, %bb.h
  %i.bp = load i16, ptr %i.m, align 4             ; 4 uses
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr i8, ptr %i.ac, i64 6      ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = zext i16 %i.bv to i32                   ; 3 uses
  %i.bx = sub nsw i32 %i.bt, %i.bw
  %i.by = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8
  %i.ca = zext i16 %i.bz to i32
  %i.cb = sub nsw i32 %i.ca, %i.bw
  %i.cc = getelementptr i8, ptr %i.ac, i64 10     ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32                   ; 4 uses
  %i.cf = mul nuw i32 %i.ce, %i.bq
  %i.cg = sdiv i32 %i.cf, %i.bw                   ; 4 uses
  %i.ch = load i32, ptr %i.ac, align 8
  %i.ci = mul i32 %i.ch, %i.cg
  %i.cj = sdiv i32 %i.ci, %i.ce
  store i16 %i.bp, ptr %i.bu, align 4
  %i.ck = mul i32 %i.cg, %i.bx
  %i.cl = sdiv i32 %i.ck, %i.ce
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = add i16 %i.bp, %i.cm
  store i16 %i.cn, ptr %i.br, align 2
  %i.co = mul i32 %i.cb, %i.cg
  %i.cp = sdiv i32 %i.co, %i.ce
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = add i16 %i.bp, %i.cq
  store i16 %i.cr, ptr %i.by, align 8
  %i.cs = trunc i32 %i.cg to i16
  store i16 %i.cs, ptr %i.cc, align 2
  %i.ct = getelementptr i8, ptr %i.m, i64 2
  %i.cu = load i16, ptr %i.ct, align 2            ; 4 uses
  %i.cv = zext i16 %i.cu to i32                   ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr i8, ptr %i.ac, i64 14     ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i32                   ; 3 uses
  %i.dc = sub nsw i32 %i.cy, %i.db
  %i.dd = getelementptr i8, ptr %i.ac, i64 18     ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = zext i16 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.db
  %i.dh = getelementptr i8, ptr %i.ac, i64 20     ; 2 uses
  %i.di = load i16, ptr %i.dh, align 4
  %i.dj = zext i16 %i.di to i32                   ; 4 uses
  %i.dk = mul nuw i32 %i.dj, %i.cv
  %i.dl = sdiv i32 %i.dk, %i.db                   ; 4 uses
  %i.dm = mul i32 %i.dl, %i.cj
  %i.dn = sdiv i32 %i.dm, %i.dj
  store i32 %i.dn, ptr %i.ac, align 8
  store i16 %i.cu, ptr %i.cz, align 2
  %i.do = mul i32 %i.dl, %i.dc
  %i.dp = sdiv i32 %i.do, %i.dj
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = add i16 %i.cu, %i.dq
  store i16 %i.dr, ptr %i.cw, align 8
  %i.ds = mul i32 %i.dg, %i.dl
  %i.dt = sdiv i32 %i.ds, %i.dj
  %i.du = trunc i32 %i.dt to i16
  %i.dv = add i16 %i.cu, %i.du
  store i16 %i.dv, ptr %i.dd, align 2
  %i.dw = trunc i32 %i.dl to i16
  store i16 %i.dw, ptr %i.dh, align 4
  %i.dx = getelementptr i8, ptr %i.ac, i64 62     ; 2 uses
  store i8 64, ptr %i.dx, align 2
  %.val4.i = load i8, ptr %i.i, align 2
  %.val5.i = load i16, ptr %i.k, align 16
  %i.dy = trunc i8 %.val4.i to i1
  %i.dz = zext i16 %.val5.i to i32                ; 2 uses
  %i.ea = add nuw nsw i32 %i.dz, 1
  %i.eb = shl nuw nsw i32 %i.dz, 1
  %i.ec = add nuw nsw i32 %i.eb, 2
  %.0.i.i.i = select i1 %i.dy, i32 %i.ea, i32 %i.ec ; 2 uses
  %i.ed = icmp samesign ult i32 %.0.i.i.i, 577
  %spec.store.select.i.i = select i1 %i.ed, i32 480, i32 %.0.i.i.i
  %i.ee = icmp eq i32 %spec.store.select.i.i, %i.cv
  br i1 %i.ee, label %bb.l, label %intel_tv_set_mode_type.exit

bb.l:                                             ; preds = %bb.k
  store i8 72, ptr %i.dx, align 2
  br label %intel_tv_set_mode_type.exit

intel_tv_set_mode_type.exit:                      ; preds = %bb.k, %bb.l
  tail call void @drm_mode_set_name(ptr noundef nonnull %i.ac) #10
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %i.ac) #10
  %i.ef = add i32 %.054, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %intel_tv_set_mode_type.exit
  %.1 = phi i32 [ %.054, %bb.e ], [ %i.ef, %intel_tv_set_mode_type.exit ], [ %.054, %bb.f ], [ %.054, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.n, label %bb.d, !llvm.loop !25

bb.n:                                             ; preds = %bb.m
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_tv_detect(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 2248       ; 2 uses
  %.val = load ptr, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ]
  %i.i = getelementptr i8, ptr %0, i64 64
end_hunk_1
begin_hunk_2_@intel_tv_detect:bb.a
  tail call void @i915_disable_pipestat(ptr noundef %i.x, i32 noundef 0, i32 noundef 1028) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.af) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i.i = load ptr, ptr %i.x, align 8
  %i.ag = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 %i.ai(ptr noundef %i.ag, i32 range(i32 425984, 426101) 425988, i1 noundef zeroext true) #10, !inline_history !27 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425984) #10
  %.val.i60.i = load ptr, ptr %i.x, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i60.i) #10 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 %i.am(ptr noundef %i.ak, i32 range(i32 425984, 426101) 425984, i1 noundef zeroext true) #10, !inline_history !27 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425984) #10
  %i.ao = and i32 %i.an, 1073741816
  %i.ap = getelementptr i8, ptr %i.ab, i64 1664
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = shl i32 %i.aq, 30
  %i.as = or disjoint i32 %i.ar, %i.ao
  %i.at = or disjoint i32 %i.as, 7                ; 2 uses
  %i.au = and i32 %i.aj, -2130706624
  %i.av = getelementptr i8, ptr %i.x, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 65536
  %.not58.i = icmp eq i64 %i.ax, 0
  %spec.select.v.i = select i1 %.not58.i, i32 251658410, i32 170
  %spec.select.i = or disjoint i32 %spec.select.v.i, %i.au
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425984) #10
  %.val.i61.i = load ptr, ptr %i.x, align 8
  %i.ay = tail call ptr @to_intel_uncore(ptr noundef %.val.i61.i) #10 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 176
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef %i.ay, i32 425984, i32 noundef %i.at, i1 noundef zeroext true) #10, !inline_history !28
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425984) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i62.i = load ptr, ptr %i.x, align 8
  %i.bb = tail call ptr @to_intel_uncore(ptr noundef %.val.i62.i) #10 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef %i.bb, i32 425988, i32 noundef %spec.select.i, i1 noundef zeroext true) #10, !inline_history !28
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i63.i = load ptr, ptr %i.x, align 8
  %i.be = tail call ptr @to_intel_uncore(ptr noundef %.val.i63.i) #10 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i32 %i.bg(ptr noundef %i.be, i32 range(i32 425984, 425989) 425988, i1 noundef zeroext false) #10, !inline_history !29 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  tail call void @intel_crtc_wait_for_next_vblank(ptr noundef %i.ab) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i64.i = load ptr, ptr %i.x, align 8
  %i.bi = tail call ptr @to_intel_uncore(ptr noundef %.val.i64.i) #10 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i32 %i.bk(ptr noundef %i.bi, i32 range(i32 425984, 426101) 425988, i1 noundef zeroext true) #10, !inline_history !27 ; 3 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  %i.bm = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.p, %bb.o
  %i.bp = phi ptr [ %i.bo, %bb.p ], [ null, %bb.o ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bp, i32 noundef 2, ptr noundef @.str.36, i32 noundef %i.at, i32 noundef %i.bl) #10
  %i.bq = and i32 %i.bl, 1879048192               ; 2 uses
  %i.br = icmp eq i32 %i.bq, 805306368
  br i1 %i.br, label %bb.q, label %bb.s

bb.q:                                             ; preds = %__drm_to_dev.exit.i
  %i.bs = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i65.i = icmp eq ptr %i.bs, null
  br i1 %.not.i65.i, label %__drm_to_dev.exit66.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  br label %__drm_to_dev.exit66.i

__drm_to_dev.exit66.i:                            ; preds = %bb.r, %bb.q
  %i.bv = phi ptr [ %i.bu, %bb.r ], [ null, %bb.q ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bv, i32 noundef 2, ptr noundef @.str.37) #10
  br label %bb.aa

bb.s:                                             ; preds = %__drm_to_dev.exit.i
  %i.bw = and i32 %i.bl, 1610612736
  %i.bx = icmp eq i32 %i.bw, 1073741824
  br i1 %i.bx, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i67.i = icmp eq ptr %i.by, null
  br i1 %.not.i67.i, label %__drm_to_dev.exit68.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  br label %__drm_to_dev.exit68.i

__drm_to_dev.exit68.i:                            ; preds = %bb.u, %bb.t
  %i.cb = phi ptr [ %i.ca, %bb.u ], [ null, %bb.t ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cb, i32 noundef 2, ptr noundef @.str.38) #10
  br label %bb.aa

bb.v:                                             ; preds = %bb.s
  %i.cc = icmp eq i32 %i.bq, 0
  %i.cd = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not.i69.i = icmp eq ptr %i.cd, null           ; 2 uses
  br i1 %i.cc, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i69.i, label %__drm_to_dev.exit70.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  br label %__drm_to_dev.exit70.i

__drm_to_dev.exit70.i:                            ; preds = %bb.x, %bb.w
  %i.cg = phi ptr [ %i.cf, %bb.x ], [ null, %bb.w ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cg, i32 noundef 2, ptr noundef @.str.39) #10
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  br i1 %.not.i69.i, label %__drm_to_dev.exit72.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr i8, ptr %i.cd, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %__drm_to_dev.exit72.i

__drm_to_dev.exit72.i:                            ; preds = %bb.z, %bb.y
  %i.cj = phi ptr [ %i.ci, %bb.z ], [ null, %bb.y ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cj, i32 noundef 2, ptr noundef @.str.40) #10
  br label %bb.aa

bb.aa:                                            ; preds = %__drm_to_dev.exit72.i, %__drm_to_dev.exit70.i, %__drm_to_dev.exit68.i, %__drm_to_dev.exit66.i
  %i.ck = phi i1 [ false, %__drm_to_dev.exit66.i ], [ false, %__drm_to_dev.exit68.i ], [ false, %__drm_to_dev.exit70.i ], [ true, %__drm_to_dev.exit72.i ]
  %.054.i = phi i32 [ 5, %__drm_to_dev.exit66.i ], [ 6, %__drm_to_dev.exit68.i ], [ 8, %__drm_to_dev.exit70.i ], [ -1, %__drm_to_dev.exit72.i ]
  %i.cl = and i32 %i.aj, -134217729
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i73.i = load ptr, ptr %i.x, align 8
  %i.cm = tail call ptr @to_intel_uncore(ptr noundef %.val.i73.i) #10 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 176
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef %i.cm, i32 425988, i32 noundef %i.cl, i1 noundef zeroext true) #10, !inline_history !28
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425984) #10
  %.val.i74.i = load ptr, ptr %i.x, align 8
  %i.cp = tail call ptr @to_intel_uncore(ptr noundef %.val.i74.i) #10 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 176
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef %i.cp, i32 425984, i32 noundef %i.an, i1 noundef zeroext true) #10, !inline_history !28
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425984) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425984) #10
  %.val.i75.i = load ptr, ptr %i.x, align 8
  %i.cs = tail call ptr @to_intel_uncore(ptr noundef %.val.i75.i) #10 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call i32 %i.cu(ptr noundef %i.cs, i32 range(i32 425984, 425989) 425984, i1 noundef zeroext false) #10, !inline_history !29 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425984) #10
  tail call void @intel_crtc_wait_for_next_vblank(ptr noundef %i.ab) #10
  %i.cw = load i8, ptr %i.ac, align 8
  %i.cx = and i8 %i.cw, 1
  %.not59.i = icmp eq i8 %i.cx, 0
  br i1 %.not59.i, label %intel_tv_detect_type.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr i8, ptr %i.x, i64 1224    ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.cy) #10
  tail call void @i915_enable_pipestat(ptr noundef %i.x, i32 noundef 0, i32 noundef 1028) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.cy) #10
  br label %intel_tv_detect_type.exit

intel_tv_detect_type.exit:                        ; preds = %bb.aa, %bb.ab
  tail call void @intel_load_detect_release_pipe(ptr noundef %0, ptr noundef nonnull %i.r, ptr noundef %1) #10
  br i1 %i.ck, label %intel_tv_find_better_format.exit, label %bb.ac

bb.ac:                                            ; preds = %intel_tv_detect_type.exit
  %i.cz = getelementptr i8, ptr %.val, i64 504
  store i32 %.054.i, ptr %i.cz, align 8
  %.val35 = load ptr, ptr %i.y, align 8
  %.val36 = load ptr, ptr %i.d, align 8
  %i.da = getelementptr i8, ptr %.val36, i64 504
  %.val36.val = load i32, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %.val35, i64 72   ; 2 uses
  %i.dc = icmp eq i32 %.val36.val, 8
  br i1 %i.dc, label %intel_tv_find_better_format.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val.i = load i32, ptr %i.db, align 8
  %i.dd = sext i32 %.val.i to i64
  %3 = getelementptr [112 x i8], ptr @tv_modes, i64 %i.dd
  %4 = getelementptr i8, ptr %3, i64 22
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 4
  %.not.i38 = icmp eq i8 %6, 0
  br i1 %.not.i38, label %intel_tv_find_better_format.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.db, align 8
  br label %intel_tv_find_better_format.exit

bb.af:                                            ; preds = %bb.g
  %i.de = getelementptr i8, ptr %0, i64 168
  %i.df = load i32, ptr %i.de, align 8
  br label %intel_tv_find_better_format.exit

intel_tv_find_better_format.exit:                 ; preds = %intel_tv_detect_type.exit, %bb.j, %bb.ae, %bb.ad, %bb.ac, %bb.i, %__drm_to_dev.exit, %bb.af, %bb.f
  %.1 = phi i32 [ 2, %__drm_to_dev.exit ], [ %i.df, %bb.af ], [ %i.q, %bb.f ], [ %i.u, %bb.i ], [ 1, %bb.ae ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 3, %bb.j ], [ 2, %intel_tv_detect_type.exit ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_tv_mode_valid(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 1960
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 72
  %.val = load i32, ptr %i.f, align 8
  %i.g = sext i32 %.val to i64
  %i.h = getelementptr [112 x i8], ptr @tv_modes, i64 %i.g
  %i.i = getelementptr i8, ptr %i.c, i64 684
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @intel_cpu_transcoder_mode_valid(ptr noundef %i.c, ptr noundef %1) #10 ; 2 uses
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %1, align 8
  %i.m = icmp sgt i32 %i.l, %i.j
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.h, i64 12
  %i.o = load i16, ptr %i.n, align 4
  %i.p = zext i16 %i.o to i32
  %i.q = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #10
  %.neg = mul i32 %i.q, -1000
  %i.r = add i32 %.neg, %i.p
  %i.s = tail call i32 @llvm.abs.i32(i32 %i.r, i1 false)
  %i.t = icmp sgt i32 %i.s, 999
  %. = select i1 %i.t, i32 17, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 15, %bb.d ], [ %i.k, %bb.c ], [ %., %bb.e ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @intel_tv_atomic_check(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 48
  %i.c = load i32, ptr %i.b, align 8
  %.not.i = icmp slt i32 %.val, %i.c
  br i1 %.not.i, label %drm_atomic_get_new_connector_state.exit, label %drm_atomic_get_new_connector_state.exit.thread

drm_atomic_get_new_connector_state.exit:          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %.val to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.b

drm_atomic_get_new_connector_state.exit.thread:   ; preds = %bb.a
  %i.l = load ptr, ptr inttoptr (i64 8 to ptr), align 8 ; 2 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %bb.h, label %drm_atomic_get_old_connector_state.exit

bb.b:                                             ; preds = %drm_atomic_get_new_connector_state.exit
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  br label %drm_atomic_get_old_connector_state.exit

drm_atomic_get_old_connector_state.exit:          ; preds = %drm_atomic_get_new_connector_state.exit.thread, %bb.b
  %.0.i3032 = phi ptr [ %i.i, %bb.b ], [ null, %drm_atomic_get_new_connector_state.exit.thread ] ; 5 uses
  %i.o = phi ptr [ %i.k, %bb.b ], [ %i.l, %drm_atomic_get_new_connector_state.exit.thread ]
  %.0.i27 = phi ptr [ %i.n, %bb.b ], [ null, %drm_atomic_get_new_connector_state.exit.thread ] ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 40
  %.val24 = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 136
  %.val25 = load i32, ptr %i.q, align 8
  %i.r = zext i32 %.val25 to i64
  %i.s = getelementptr [56 x i8], ptr %.val24, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %.0.i27, i64 72
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %.0.i3032, i64 72
  %i.y = load i32, ptr %i.x, align 8
  %.not18 = icmp eq i32 %i.w, %i.y
  br i1 %.not18, label %bb.c, label %bb.g

bb.c:                                             ; preds = %drm_atomic_get_old_connector_state.exit
  %i.z = getelementptr i8, ptr %.0.i27, i64 56
  %i.aa = getelementptr i8, ptr %.0.i27, i64 60
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr i8, ptr %.0.i3032, i64 56
  %i.ad = getelementptr i8, ptr %.0.i3032, i64 60
  %i.ae = load i32, ptr %i.ad, align 4
  %.not19 = icmp eq i32 %i.ab, %i.ae
  br i1 %.not19, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %.0.i27, i64 64
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %.0.i3032, i64 64
  %i.ai = load i32, ptr %i.ah, align 8
  %.not20 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not20, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %.0.i27, i64 68
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr i8, ptr %.0.i3032, i64 68
  %i.am = load i32, ptr %i.al, align 4
  %.not21 = icmp eq i32 %i.ak, %i.am
  br i1 %.not21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %i.z, align 8
  %i.ao = load i32, ptr %i.ac, align 8
  %.not22 = icmp eq i32 %i.an, %i.ao
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %drm_atomic_get_old_connector_state.exit
  %i.ap = getelementptr i8, ptr %i.u, i64 10      ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = or i8 %i.aq, 8
  store i8 %i.ar, ptr %i.ap, align 2
  br label %bb.h

bb.h:                                             ; preds = %drm_atomic_get_new_connector_state.exit.thread, %bb.f, %bb.g, %drm_atomic_get_new_connector_state.exit
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_display_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_display_driver_check_access(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_load_detect_get_pipe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_load_detect_release_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_disable_pipestat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_enable_pipestat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_cpu_transcoder_mode_valid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_properties_legacy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
