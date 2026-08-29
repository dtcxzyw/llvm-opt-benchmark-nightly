Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_tv?download=true
inline.NumInlined: 122
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@intel_tv_get_config:bb.a
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
  %.val = load i32, ptr %i.e, align 8             ; 2 uses
  %i.f = sext i32 %.val to i64                    ; 2 uses
  %i.g = getelementptr [112 x i8], ptr @tv_modes, i64 %i.f ; 41 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 range(i32 425984, 426101) 425984, i1 noundef zeroext true) #10, !inline_history !10
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
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = getelementptr i8, ptr %i.g, i64 68
  %i.au = load i8, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %i.g, i64 56
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = and i64 %i.f, 1152921504606846975       ; 2 uses
  %i.ay = add nsw i64 %i.ax, -6
  %.not159 = icmp ult i64 %i.ay, 9
  %i.az = getelementptr i8, ptr %i.g, i64 58
  %i.ba = load i16, ptr %i.az, align 2
  %.1141 = select i1 %.not159, i32 0, i32 -1073741824 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.g, i64 60
  %i.bc = load i16, ptr %i.bb, align 4
  %i.bd = shl nuw i64 1, %i.ax
  %i.be = and i64 %i.bd, 32717
  %.not161.not = icmp eq i64 %i.be, 0
  %i.bf = or disjoint i32 %.1141, 536870912
  %.2142 = select i1 %.not161.not, i32 %i.bf, i32 %.1141
  %i.bg = getelementptr i8, ptr %i.g, i64 64
  %i.bh = load i32, ptr %i.bg, align 16
  %i.bi = or i32 %i.bh, %.2142                    ; 2 uses
  %.not162 = icmp eq ptr %.0152, null             ; 2 uses
  br i1 %.not162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %.0152, i64 4
  %i.bk = load i8, ptr %i.bj, align 2
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 16
  %i.bn = or i32 %i.bm, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3143 = phi i32 [ %i.bn, %bb.l ], [ %i.bi, %bb.k ]
  %i.bo = zext i8 %i.aw to i32
  %i.bp = or i32 %.3143, %i.bo
  %i.bq = getelementptr i8, ptr %i.g, i64 52
  %i.br = load i16, ptr %i.bq, align 4
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 16
  %i.bu = zext i16 %i.ba to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 54
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i32
  %i.bz = shl nuw i32 %i.by, 16
  %i.ca = zext i16 %i.bc to i32
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = getelementptr i8, ptr %i.c, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %i.g, i64 15
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr i8, ptr %i.g, i64 20
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = getelementptr i8, ptr %i.g, i64 35
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 16
  %i.cm = getelementptr i8, ptr %i.g, i64 36
  %i.cn = load i8, ptr %i.cm, align 4
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co
  %i.cq = zext nneg i8 %.0155 to i32
  %i.cr = shl nuw i32 %i.cq, 31
  %spec.select.i = or disjoint i32 %i.cp, %i.cr
  %i.cs = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 16
  %i.cu = getelementptr i8, ptr %i.g, i64 32
  %i.cv = load i16, ptr %i.cu, align 16
  %i.cw = getelementptr i8, ptr %i.g, i64 30
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = getelementptr i8, ptr %i.g, i64 31
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = getelementptr i8, ptr %i.g, i64 25
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr i8, ptr %i.g, i64 23
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr i8, ptr %i.g, i64 24
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = getelementptr i8, ptr %i.g, i64 29
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 16
  %i.dk = getelementptr i8, ptr %i.g, i64 27
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 8
  %i.do = or disjoint i32 %i.dn, %i.dj
  %i.dp = getelementptr i8, ptr %i.g, i64 28
  %i.dq = load i8, ptr %i.dp, align 4
  %i.dr = zext i8 %i.dq to i32
  %i.ds = or disjoint i32 %i.do, %i.dr            ; 2 uses
  %i.dt = getelementptr i8, ptr %i.g, i64 26
  %i.du = load i8, ptr %i.dt, align 2
  %4 = trunc i8 %i.du to i1
  %5 = or disjoint i32 %i.ds, -2147483648
  %.055.i = select i1 %4, i32 %5, i32 %i.ds
  %i.dv = zext i8 %i.db to i32
  %i.dw = shl nuw nsw i32 %i.dv, 16
  %i.dx = zext i8 %i.dd to i32
  %i.dy = shl nuw nsw i32 %i.dx, 8
  %i.dz = or disjoint i32 %i.dy, %i.dw
  %i.ea = zext i8 %i.df to i32
  %i.eb = or disjoint i32 %i.dz, %i.ea
  %i.ec = zext i16 %i.cv to i32                   ; 3 uses
  %i.ed = shl nuw i32 %i.ec, 16
  %i.ee = zext i8 %i.cx to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.ef, %i.ed
  %i.eh = zext i8 %i.cz to i32
  %i.ei = or disjoint i32 %i.eg, %i.eh
  %i.ej = zext i8 %i.cf to i32
  %i.ek = shl nuw nsw i32 %i.ej, 16
  %i.el = zext i16 %i.ch to i32
  %i.em = or disjoint i32 %i.ek, %i.el
  %i.en = getelementptr i8, ptr %i.g, i64 37
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = getelementptr i8, ptr %i.g, i64 38
  %i.es = load i16, ptr %i.er, align 2
  %i.et = zext i16 %i.es to i32
  %i.eu = or disjoint i32 %i.eq, %i.et
  %i.ev = getelementptr i8, ptr %i.g, i64 40
  %i.ew = load i8, ptr %i.ev, align 8
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 16
  %i.ez = getelementptr i8, ptr %i.g, i64 42
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = zext i16 %i.fa to i32
  %i.fc = or disjoint i32 %i.ey, %i.fb
  %i.fd = getelementptr i8, ptr %i.g, i64 44
  %i.fe = load i8, ptr %i.fd, align 4
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 16
  %i.fh = getelementptr i8, ptr %i.g, i64 46
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = zext i16 %i.fi to i32
  %i.fk = or disjoint i32 %i.fg, %i.fj
  %i.fl = getelementptr i8, ptr %i.g, i64 48
  %i.fm = load i8, ptr %i.fl, align 16
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 16
  %i.fp = getelementptr i8, ptr %i.g, i64 50
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = zext i16 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426032) #10
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.ft = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 176
  %i.fv = load ptr, ptr %i.fu, align 8
  tail call void %i.fv(ptr noundef %i.ft, i32 426032, i32 noundef %i.em, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426032) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426036) #10
  %.val.i56.i = load ptr, ptr %i.c, align 8
  %i.fw = tail call ptr @to_intel_uncore(ptr noundef %.val.i56.i) #10 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 176
  %i.fy = load ptr, ptr %i.fx, align 8
  tail call void %i.fy(ptr noundef %i.fw, i32 426036, i32 noundef %spec.select.i, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426036) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426040) #10
  %.val.i57.i = load ptr, ptr %i.c, align 8
  %i.fz = tail call ptr @to_intel_uncore(ptr noundef %.val.i57.i) #10 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 176
  %i.gb = load ptr, ptr %i.ga, align 8
  tail call void %i.gb(ptr noundef %i.fz, i32 426040, i32 noundef %i.ct, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426040) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426044) #10
  %.val.i58.i = load ptr, ptr %i.c, align 8
  %i.gc = tail call ptr @to_intel_uncore(ptr noundef %.val.i58.i) #10 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 176
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef %i.gc, i32 426044, i32 noundef %i.ei, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426044) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426048) #10
  %.val.i59.i = load ptr, ptr %i.c, align 8
  %i.gf = tail call ptr @to_intel_uncore(ptr noundef %.val.i59.i) #10 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 176
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef %i.gf, i32 426048, i32 noundef %i.eb, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426048) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426052) #10
  %.val.i60.i = load ptr, ptr %i.c, align 8
  %i.gi = tail call ptr @to_intel_uncore(ptr noundef %.val.i60.i) #10 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 176
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef %i.gi, i32 426052, i32 noundef %.055.i, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426052) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426056) #10
  %.val.i61.i = load ptr, ptr %i.c, align 8
  %i.gl = tail call ptr @to_intel_uncore(ptr noundef %.val.i61.i) #10 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 176
  %i.gn = load ptr, ptr %i.gm, align 8
  tail call void %i.gn(ptr noundef %i.gl, i32 426056, i32 noundef %i.eu, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426056) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426060) #10
  %.val.i62.i = load ptr, ptr %i.c, align 8
  %i.go = tail call ptr @to_intel_uncore(ptr noundef %.val.i62.i) #10 ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 176
  %i.gq = load ptr, ptr %i.gp, align 8
  tail call void %i.gq(ptr noundef %i.go, i32 426060, i32 noundef %i.fc, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426060) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426064) #10
  %.val.i63.i = load ptr, ptr %i.c, align 8
  %i.gr = tail call ptr @to_intel_uncore(ptr noundef %.val.i63.i) #10 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 176
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void %i.gt(ptr noundef %i.gr, i32 426064, i32 noundef %i.fk, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426064) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426068) #10
  %.val.i64.i = load ptr, ptr %i.c, align 8
  %i.gu = tail call ptr @to_intel_uncore(ptr noundef %.val.i64.i) #10 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 176
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef %i.gu, i32 426068, i32 noundef %i.fs, i1 noundef zeroext true) #10, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426068) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426080) #10
  %.val.i165 = load ptr, ptr %i.c, align 8
  %i.gx = tail call ptr @to_intel_uncore(ptr noundef %.val.i165) #10 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 176
  %i.gz = load ptr, ptr %i.gy, align 8
  tail call void %i.gz(ptr noundef %i.gx, i32 426080, i32 noundef %i.bp, i1 noundef zeroext true) #10, !inline_history !11
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426080) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426084) #10
  %.val.i166 = load ptr, ptr %i.c, align 8
  %i.ha = tail call ptr @to_intel_uncore(ptr noundef %.val.i166) #10 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 176
  %i.hc = load ptr, ptr %i.hb, align 8
  tail call void %i.hc(ptr noundef %i.ha, i32 426084, i32 noundef %i.bv, i1 noundef zeroext true) #10, !inline_history !11
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426084) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426088) #10
  %.val.i167 = load ptr, ptr %i.c, align 8
  %i.hd = tail call ptr @to_intel_uncore(ptr noundef %.val.i167) #10 ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 176
  %i.hf = load ptr, ptr %i.he, align 8
  tail call void %i.hf(ptr noundef %i.hd, i32 426088, i32 noundef %i.cb, i1 noundef zeroext true) #10, !inline_history !11
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426088) #10
  %i.hg = load i16, ptr %.1154, align 2
  %i.hh = zext i16 %i.hg to i32
  %i.hi = shl nuw i32 %i.hh, 16
  %i.hj = getelementptr i8, ptr %.1154, i64 2
  %i.hk = load i16, ptr %i.hj, align 2
  %i.hl = zext i16 %i.hk to i32
  %i.hm = or disjoint i32 %i.hi, %i.hl
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426000) #10
  %.val.i.i168 = load ptr, ptr %i.c, align 8
  %i.hn = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i168) #10 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 176
  %i.hp = load ptr, ptr %i.ho, align 8
  tail call void %i.hp(ptr noundef %i.hn, i32 426000, i32 noundef %i.hm, i1 noundef zeroext true) #10, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426000) #10
  %i.hq = getelementptr i8, ptr %.1154, i64 4
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = zext i16 %i.hr to i32
  %i.ht = shl nuw i32 %i.hs, 16
  %i.hu = getelementptr i8, ptr %.1154, i64 6
  %i.hv = load i16, ptr %i.hu, align 2
  %i.hw = zext i16 %i.hv to i32
  %i.hx = or disjoint i32 %i.ht, %i.hw
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426004) #10
  %.val.i23.i = load ptr, ptr %i.c, align 8
  %i.hy = tail call ptr @to_intel_uncore(ptr noundef %.val.i23.i) #10 ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 176
  %i.ia = load ptr, ptr %i.hz, align 8
  tail call void %i.ia(ptr noundef %i.hy, i32 426004, i32 noundef %i.hx, i1 noundef zeroext true) #10, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426004) #10
  %i.ib = getelementptr i8, ptr %.1154, i64 8
  %i.ic = load i16, ptr %i.ib, align 2
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw i32 %i.id, 16
  %i.if = getelementptr i8, ptr %.1154, i64 10
  %i.ig = load i16, ptr %i.if, align 2
  %i.ih = zext i16 %i.ig to i32
  %i.ii = or disjoint i32 %i.ie, %i.ih
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426008) #10
  %.val.i24.i = load ptr, ptr %i.c, align 8
  %i.ij = tail call ptr @to_intel_uncore(ptr noundef %.val.i24.i) #10 ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 176
  %i.il = load ptr, ptr %i.ik, align 8
  tail call void %i.il(ptr noundef %i.ij, i32 426008, i32 noundef %i.ii, i1 noundef zeroext true) #10, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426008) #10
  %i.im = getelementptr i8, ptr %.1154, i64 12
  %i.in = load i16, ptr %i.im, align 2
  %i.io = zext i16 %i.in to i32
  %i.ip = shl nuw i32 %i.io, 16
  %i.iq = getelementptr i8, ptr %.1154, i64 14
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = zext i16 %i.ir to i32
  %i.it = or disjoint i32 %i.ip, %i.is
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426012) #10
  %.val.i25.i = load ptr, ptr %i.c, align 8
  %i.iu = tail call ptr @to_intel_uncore(ptr noundef %.val.i25.i) #10 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 176
  %i.iw = load ptr, ptr %i.iv, align 8
  tail call void %i.iw(ptr noundef %i.iu, i32 426012, i32 noundef %i.it, i1 noundef zeroext true) #10, !inline_history !15
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426012) #10
end_hunk_0
