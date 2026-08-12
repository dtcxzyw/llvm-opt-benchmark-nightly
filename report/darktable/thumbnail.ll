inline.NumInlined: 149
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_thumb_resize_overlays:bb.a
bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  call void @gtk_widget_get_size_request(ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.u = sitofp reassoc nsz arcp contract afn i32 %.0311 to float
  %i.v = fmul reassoc nnan nsz arcp contract afn float %i.u, 5.000000e-01
  %i.w = load i32, ptr %i.a, align 4, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 23 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !188  ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !219
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !217
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.aa, %i.ad
  %i.af = sub i32 %i.w, %i.ae
  %i.ag = sitofp reassoc nsz arcp contract afn i32 %i.af to double
  %i.ah = fmul reassoc nnan nsz arcp contract afn double %i.ag, f0x3FA6C16C16C16C17
  %i.ai = fptrunc reassoc nsz arcp contract afn double %i.ah to float
  %i.aj = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float %i.ai)
  %i.ak = fpext reassoc nsz arcp contract afn float %i.aj to double ; 8 uses
  %i.al = fmul reassoc nnan nsz arcp contract afn double %i.ak, 2.500000e+00 ; 2 uses
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float
  %i.an = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.am)
  %i.ao = fptosi float %i.an to i32               ; 21 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !215
  %i.at = sext i16 %i.as to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.aq, i32 noundef %i.at) #22
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !95
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !219
  %i.ax = sext i16 %i.aw to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.au, i32 noundef %i.ax) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !103
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !219
  %i.bc = sext i16 %i.bb to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.az, i32 noundef %i.bc) #22
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !103
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !217
  %i.bh = sext i16 %i.bg to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.bd, i32 noundef %i.bh) #22
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !99
  switch i32 %i.bi, label %bb.f [
    i32 4, label %bb.e
    i32 2, label %bb.e
    i32 5, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.bj = call ptr @pango_attr_list_new() #22     ; 3 uses
  %i.bk = fmul reassoc nnan nsz arcp contract afn double %i.ak, 1.536000e+03
  %i.bl = fptosi double %i.bk to i32
  %i.bm = call ptr @pango_attr_size_new_absolute(i32 noundef %i.bl) #22
  call void @pango_attr_list_insert(ptr noundef %i.bj, ptr noundef %i.bm) #22
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !103
  call void @gtk_label_set_attributes(ptr noundef %i.bn, ptr noundef %i.bj) #22
  call void @pango_attr_list_unref(ptr noundef %i.bj) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !173
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !103
  %i.bp = call ptr @gtk_label_get_layout(ptr noundef %i.bo) #22
  call void @pango_layout_get_pixel_size(ptr noundef %i.bp, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !173
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.ao to double ; 2 uses
  %i.bu = fmul reassoc nnan nsz arcp contract afn double %i.bt, 7.500000e-01
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !173
  %i.bw = sitofp reassoc nsz arcp contract afn i32 %i.bv to double
  %i.bx = fadd reassoc nsz arcp contract afn double %i.bu, %i.bw
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !218
  %i.cb = sext i16 %i.ca to i32
  %i.cc = mul nsw i32 %i.cb, 3
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.cc to double
  %i.ce = fadd reassoc nsz arcp contract afn double %i.bx, %i.cd
  %i.cf = fptosi double %i.ce to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.br, i32 noundef %i.bs, i32 noundef %i.cf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !101
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !173
  %i.cj = sitofp reassoc nsz arcp contract afn i32 %i.ao to double ; 2 uses
  %i.ck = fmul reassoc nnan nsz arcp contract afn double %i.cj, 7.500000e-01
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !218
  %i.co = sext i16 %i.cn to i32
  %i.cp = shl nsw i32 %i.co, 1
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.cp to double
  %i.cr = fadd reassoc nsz arcp contract afn double %i.ck, %i.cq
  %i.cs = fptosi double %i.cr to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cs) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi double [ %i.cj, %bb.f ], [ %i.bt, %bb.e ] ; 2 uses
  %i.ct = load ptr, ptr %i.ay, align 8, !tbaa !103
  call void @gtk_label_set_xalign(ptr noundef %i.ct, float noundef 5.000000e-01) #22
  %i.cu = load ptr, ptr %i.ay, align 8, !tbaa !103
  call void @gtk_label_set_yalign(ptr noundef %i.cu, float noundef 0.000000e+00) #22
  %i.cv = load ptr, ptr %i.ay, align 8, !tbaa !103
  %i.cw = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !218
  %i.cz = sext i16 %i.cy to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.cv, i32 noundef %i.cz) #22
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !101
  call void @gtk_widget_set_valign(ptr noundef %i.db, i32 noundef 2) #22
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !101
  call void @gtk_widget_set_halign(ptr noundef %i.dc, i32 noundef 3) #22
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !101
  call void @gtk_widget_set_margin_start(ptr noundef %i.dd, i32 noundef 0) #22
  %i.de = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 6
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !218
  %i.dh = sitofp i16 %i.dg to double
  %i.di = fmul reassoc nnan nsz arcp contract afn double %.pre-phi, 1.250000e-01 ; 3 uses
  %i.dj = fsub reassoc nsz arcp contract afn double %i.dh, %i.di
  %i.dk = fadd reassoc nsz arcp contract afn double %i.dj, -1.000000e+00 ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn ole double %i.dk, 0.000000e+00
  %i.dl = select i1 %.inv, double 0.000000e+00, double %i.dk
  %i.dm = fptosi double %i.dl to i32              ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !104
  call void @gtk_widget_set_size_request(ptr noundef %i.do, i32 noundef %i.ao, i32 noundef %i.ao) #22
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !104
  call void @gtk_widget_set_valign(ptr noundef %i.dp, i32 noundef 2) #22
  %i.dq = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !219
  %i.ds = sitofp i16 %i.dr to double
  %i.dt = fsub reassoc nsz arcp contract afn double %i.ds, %i.di ; 2 uses
  %.inv320 = fcmp reassoc nsz arcp contract afn ole double %i.dt, 0.000000e+00
  %i.du = select i1 %.inv320, double 0.000000e+00, double %i.dt
  %i.dv = fptosi double %i.du to i32
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !104
  call void @gtk_widget_set_margin_start(ptr noundef %i.dw, i32 noundef %i.dv) #22
  %i.dx = load ptr, ptr %i.dn, align 8, !tbaa !104
  call void @gtk_widget_set_margin_bottom(ptr noundef %i.dx, i32 noundef %i.dm) #22
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.neg = mul i32 %i.ao, -5                       ; 5 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.dz, i32 noundef %i.ao, i32 noundef %i.ao) #22
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.ea, i32 noundef 2) #22
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !100
  call void @gtk_widget_set_margin_bottom(ptr noundef %i.eb, i32 noundef %i.dm) #22
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !100
  %i.ed = load ptr, ptr %i.x, align 8, !tbaa !188 ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !219 ; 2 uses
  %i.ef = sext i16 %i.ee to i32
  %i.eg = sitofp i16 %i.ee to double
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !173
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !217
  %i.ek = sext i16 %i.ej to i32
  %i.el = add i32 %.neg, %i.eh
  %i.em = add nsw i32 %i.ef, %i.ek
  %i.en = sub i32 %i.el, %i.em
  %i.eo = sitofp reassoc nsz arcp contract afn i32 %i.en to double
  %i.ep = fmul reassoc nnan nsz arcp contract afn double %i.eo, 5.000000e-01
  %i.eq = fadd reassoc nsz arcp contract afn double %i.ep, %i.eg
  %i.er = fptosi double %i.eq to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.ec, i32 noundef %i.er) #22
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.et, i32 noundef %i.ao, i32 noundef %i.ao) #22
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.eu, i32 noundef 2) #22
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !100
  call void @gtk_widget_set_margin_bottom(ptr noundef %i.ev, i32 noundef %i.dm) #22
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !100
  %i.ex = load ptr, ptr %i.x, align 8, !tbaa !188 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !219 ; 2 uses
  %i.ez = sext i16 %i.ey to i32
  %i.fa = sitofp i16 %i.ey to double
  %i.fb = load i32, ptr %i.a, align 4, !tbaa !173
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !217
  %i.fe = sext i16 %i.fd to i32
  %i.ff = add i32 %.neg, %i.fb
  %i.fg = add nsw i32 %i.ez, %i.fe
  %i.fh = sub i32 %i.ff, %i.fg
  %i.fi = sitofp reassoc nsz arcp contract afn i32 %i.fh to double
  %i.fj = fmul reassoc nnan nsz arcp contract afn double %i.fi, 5.000000e-01
  %i.fk = fadd reassoc nsz arcp contract afn double %.pre-phi, %i.fa
  %i.fl = fadd reassoc nsz arcp contract afn double %i.fk, %i.fj
  %i.fm = fptosi double %i.fl to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.ew, i32 noundef %i.fm) #22
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.fo, i32 noundef %i.ao, i32 noundef %i.ao) #22
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.fp, i32 noundef 2) #22
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !100
  call void @gtk_widget_set_margin_bottom(ptr noundef %i.fq, i32 noundef %i.dm) #22
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !100
  %i.fs = load ptr, ptr %i.x, align 8, !tbaa !188 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !219 ; 2 uses
  %i.fu = sext i16 %i.ft to i32
  %i.fv = sitofp i16 %i.ft to double
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !173
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !217
  %i.fz = sext i16 %i.fy to i32
  %i.ga = add i32 %.neg, %i.fw
  %i.gb = add nsw i32 %i.fu, %i.fz
  %i.gc = sub i32 %i.ga, %i.gb
  %i.gd = sitofp reassoc nsz arcp contract afn i32 %i.gc to double
  %i.ge = fmul reassoc nnan nsz arcp contract afn double %i.gd, 5.000000e-01
  %i.gf = shl i32 %i.ao, 1
  %i.gg = sitofp reassoc nsz arcp contract afn i32 %i.gf to double
  %1 = fadd reassoc nsz arcp contract afn double %i.fv, %i.gg
  %i.gh = fadd reassoc nsz arcp contract afn double %1, %i.ge
  %i.gi = fptosi double %i.gh to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.fr, i32 noundef %i.gi) #22
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.gk, i32 noundef %i.ao, i32 noundef %i.ao) #22
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.gl, i32 noundef 2) #22
  %i.gm = load ptr, ptr %i.gj, align 8, !tbaa !100
  call void @gtk_widget_set_margin_bottom(ptr noundef %i.gm, i32 noundef %i.dm) #22
  %i.gn = load ptr, ptr %i.gj, align 8, !tbaa !100
  %i.go = load ptr, ptr %i.x, align 8, !tbaa !188 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !219 ; 2 uses
  %i.gq = sext i16 %i.gp to i32
  %i.gr = sitofp i16 %i.gp to double
  %i.gs = load i32, ptr %i.a, align 4, !tbaa !173
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !217
  %i.gv = sext i16 %i.gu to i32
  %i.gw = add i32 %.neg, %i.gs
  %i.gx = add nsw i32 %i.gq, %i.gv
  %i.gy = sub i32 %i.gw, %i.gx
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %i.gy to double
  %i.ha = fmul reassoc nnan nsz arcp contract afn double %i.gz, 5.000000e-01
  %i.hb = mul i32 %i.ao, 3
  %i.hc = sitofp reassoc nsz arcp contract afn i32 %i.hb to double
  %2 = fadd reassoc nsz arcp contract afn double %i.gr, %i.hc
  %i.hd = fadd reassoc nsz arcp contract afn double %2, %i.ha
  %i.he = fptosi double %i.hd to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.gn, i32 noundef %i.he) #22
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.hg, i32 noundef %i.ao, i32 noundef %i.ao) #22
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.hh, i32 noundef 2) #22
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !100
  call void @gtk_widget_set_margin_bottom(ptr noundef %i.hi, i32 noundef %i.dm) #22
  %i.hj = load ptr, ptr %i.hf, align 8, !tbaa !100
  %i.hk = load ptr, ptr %i.x, align 8, !tbaa !188 ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !219 ; 2 uses
  %i.hm = sext i16 %i.hl to i32
  %i.hn = sitofp i16 %i.hl to double
  %i.ho = load i32, ptr %i.a, align 4, !tbaa !173
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !217
  %i.hr = sext i16 %i.hq to i32
  %i.hs = add i32 %.neg, %i.ho
  %i.ht = add nsw i32 %i.hm, %i.hr
  %i.hu = sub i32 %i.hs, %i.ht
  %i.hv = sitofp reassoc nsz arcp contract afn i32 %i.hu to double
  %i.hw = fmul reassoc nnan nsz arcp contract afn double %i.hv, 5.000000e-01
  %i.hx = shl i32 %i.ao, 2
  %i.hy = sitofp reassoc nsz arcp contract afn i32 %i.hx to double
  %3 = fadd reassoc nsz arcp contract afn double %i.hn, %i.hy
  %i.hz = fadd reassoc nsz arcp contract afn double %3, %i.hw
  %i.ia = fptosi double %i.hz to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.hj, i32 noundef %i.ia) #22
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !107
  call void @gtk_widget_set_size_request(ptr noundef %i.ic, i32 noundef %i.ao, i32 noundef %i.ao) #22
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !107
  call void @gtk_widget_set_valign(ptr noundef %i.id, i32 noundef 2) #22
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !107
  call void @gtk_widget_set_halign(ptr noundef %i.ie, i32 noundef 1) #22
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !107
  call void @gtk_widget_set_margin_bottom(ptr noundef %i.if, i32 noundef %i.dm) #22
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !173
  %i.ih = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !217
  %i.ik = sext i16 %i.ij to i32
  %i.il = add i32 %i.ao, %i.ik
  %i.im = sub i32 %i.ig, %i.il
  %i.in = sitofp reassoc nsz arcp contract afn i32 %i.im to double
  %i.io = fadd reassoc nsz arcp contract afn double %i.di, %i.in
  %i.ip = fptosi double %i.io to i32
  %i.iq = load ptr, ptr %i.ib, align 8, !tbaa !107
  call void @gtk_widget_set_margin_start(ptr noundef %i.iq, i32 noundef %i.ip) #22
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !108
  call void @gtk_widget_unset_state_flags(ptr noundef %i.is, i32 noundef 1) #22
  %i.it = load ptr, ptr %i.ir, align 8, !tbaa !108
  %i.iu = fmul reassoc nnan nsz arcp contract afn double %i.ak, 1.618000e+00
  %i.iv = fptosi double %i.iu to i32              ; 2 uses
  call void @gtk_widget_set_size_request(ptr noundef %i.it, i32 noundef %i.iv, i32 noundef %i.iv) #22
  %i.iw = load ptr, ptr %i.ir, align 8, !tbaa !108
  call void @gtk_widget_set_halign(ptr noundef %i.iw, i32 noundef 2) #22
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !109
  %i.iz = fmul reassoc nnan nsz arcp contract afn double %i.ak, 2.000000e+00
  %i.ja = fptosi double %i.iz to i32              ; 8 uses
  call void @gtk_widget_set_size_request(ptr noundef %i.iy, i32 noundef %i.ja, i32 noundef %i.ja) #22
  %i.jb = load ptr, ptr %i.ix, align 8, !tbaa !109
  call void @gtk_widget_set_halign(ptr noundef %i.jb, i32 noundef 2) #22
  %i.jc = load ptr, ptr %i.ix, align 8, !tbaa !109
  %i.jd = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !215
  %i.jg = sext i16 %i.jf to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.jc, i32 noundef %i.jg) #22
  %i.jh = load ptr, ptr %i.ix, align 8, !tbaa !109
  %i.ji = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !217
  %i.jl = sext i16 %i.jk to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.jh, i32 noundef %i.jl) #22
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !110
  call void @gtk_widget_set_size_request(ptr noundef %i.jn, i32 noundef %i.ja, i32 noundef %i.ja) #22
  %i.jo = load ptr, ptr %i.jm, align 8, !tbaa !110
  call void @gtk_widget_set_halign(ptr noundef %i.jo, i32 noundef 2) #22
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !110
  %i.jq = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !215
  %i.jt = sext i16 %i.js to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.jp, i32 noundef %i.jt) #22
  %i.ju = load ptr, ptr %i.jm, align 8, !tbaa !110
  %i.jv = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !217
  %i.jy = sitofp i16 %i.jx to double
  %i.jz = fadd reassoc nsz arcp contract afn double %i.al, %i.jy
  %i.ka = fptosi double %i.jz to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.ju, i32 noundef %i.ka) #22
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !111
  call void @gtk_widget_set_size_request(ptr noundef %i.kc, i32 noundef %i.ja, i32 noundef %i.ja) #22
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !111
  call void @gtk_widget_set_halign(ptr noundef %i.kd, i32 noundef 2) #22
  %i.ke = load ptr, ptr %i.kb, align 8, !tbaa !111
  %i.kf = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !215
  %i.ki = sext i16 %i.kh to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.ke, i32 noundef %i.ki) #22
  %i.kj = load ptr, ptr %i.kb, align 8, !tbaa !111
  %i.kk = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !217
  %i.kn = sitofp i16 %i.km to double
  %i.ko = fmul reassoc nnan nsz arcp contract afn double %i.ak, 5.000000e+00
  %i.kp = fadd reassoc nsz arcp contract afn double %i.ko, %i.kn
  %i.kq = fptosi double %i.kp to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.kj, i32 noundef %i.kq) #22
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !112
  call void @gtk_widget_set_size_request(ptr noundef %i.ks, i32 noundef %i.ja, i32 noundef %i.ja) #22
  %i.kt = load ptr, ptr %i.kr, align 8, !tbaa !112
  call void @gtk_widget_set_halign(ptr noundef %i.kt, i32 noundef 2) #22
  %i.ku = load ptr, ptr %i.kr, align 8, !tbaa !112
  %i.kv = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !215
  %i.ky = sext i16 %i.kx to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.ku, i32 noundef %i.ky) #22
  %i.kz = load ptr, ptr %i.kr, align 8, !tbaa !112
  %i.la = load ptr, ptr %i.x, align 8, !tbaa !188
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !217
  %i.ld = sitofp i16 %i.lc to double
  %i.le = fmul reassoc nnan nsz arcp contract afn double %i.ak, 7.500000e+00
  %i.lf = fadd reassoc nsz arcp contract afn double %i.le, %i.ld
  %i.lg = fptosi double %i.lf to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.kz, i32 noundef %i.lg) #22
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !98
  %i.lj = fmul reassoc nnan nsz arcp contract afn double %i.ak, 6.000000e+00
  %i.lk = fptosi double %i.lj to i32
  %i.ll = fmul reassoc nnan nsz arcp contract afn double %i.ak, 3.000000e+00
  %i.lm = fptosi double %i.ll to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.li, i32 noundef %i.lk, i32 noundef %i.lm) #22
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !97
  call void @gtk_widget_get_size_request(ptr noundef %i.lo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 0, ptr %i.e, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4, !tbaa !173
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !96
  call void @gtk_widget_get_size_request(ptr noundef %i.lq, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.lr = load i32, ptr %i.e, align 4, !tbaa !173
  %i.ls = load i32, ptr %i.a, align 4, !tbaa !173 ; 3 uses
  %i.lt = sub nsw i32 %i.lr, %i.ls
  %i.lu = sdiv i32 %i.lt, 2                       ; 3 uses
  %i.lv = load i32, ptr %i.f, align 4, !tbaa !173
  %i.lw = load i32, ptr %i.b, align 4, !tbaa !173
  %i.lx = sub nsw i32 %i.lv, %i.lw
  %i.ly = sdiv i32 %i.lx, 2                       ; 4 uses
  %i.lz = sitofp reassoc nsz arcp contract afn i32 %.0311 to float
  %i.ma = fmul reassoc nnan nsz arcp contract afn float %i.lz, 5.000000e-01
  %i.mb = sitofp reassoc nsz arcp contract afn i32 %i.ls to float
  %i.mc = fmul reassoc nnan nsz arcp contract afn float %i.mb, 4.000000e-02
  %i.md = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ma, float %i.mc) ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !95
  %i.mg = sitofp reassoc nsz arcp contract afn i32 %i.ls to double
  %i.mh = fmul reassoc nnan nsz arcp contract afn double %i.mg, 3.000000e-02
  %i.mi = sitofp reassoc nsz arcp contract afn i32 %i.ly to double
  %i.mj = fadd reassoc nsz arcp contract afn double %i.mh, %i.mi
  %i.mk = fptosi double %i.mj to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.mf, i32 noundef %i.mk) #22
  %i.ml = load ptr, ptr %i.me, align 8, !tbaa !95
  %i.mm = load i32, ptr %i.a, align 4, !tbaa !173
  %i.mn = sitofp reassoc nsz arcp contract afn i32 %i.mm to double
  %i.mo = fmul reassoc nnan nsz arcp contract afn double %i.mn, 3.000000e-02
  %i.mp = sitofp reassoc nsz arcp contract afn i32 %i.lu to double ; 9 uses
  %i.mq = fadd reassoc nsz arcp contract afn double %i.mo, %i.mp
  %i.mr = fptosi double %i.mq to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.ml, i32 noundef %i.mr) #22
  %i.ms = call ptr @pango_attr_list_new() #22     ; 4 uses
  %i.mt = fpext reassoc nsz arcp contract afn float %i.md to double ; 14 uses
  %i.mu = fmul reassoc nnan nsz arcp contract afn double %i.mt, 1.536000e+03
  %i.mv = fptosi double %i.mu to i32
  %i.mw = call ptr @pango_attr_size_new_absolute(i32 noundef %i.mv) #22
  call void @pango_attr_list_insert(ptr noundef %i.ms, ptr noundef %i.mw) #22
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !103
  call void @gtk_label_set_attributes(ptr noundef %i.my, ptr noundef %i.ms) #22
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !114
  call void @gtk_label_set_attributes(ptr noundef %i.na, ptr noundef %i.ms) #22
  call void @pango_attr_list_unref(ptr noundef %i.ms) #22
  store i32 0, ptr %i.e, align 4, !tbaa !173
  store i32 0, ptr %i.f, align 4, !tbaa !173
  %i.nb = load ptr, ptr %i.mx, align 8, !tbaa !103
  %i.nc = call ptr @gtk_label_get_layout(ptr noundef %i.nb) #22
  call void @pango_layout_get_pixel_size(ptr noundef %i.nc, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.nd = call noalias ptr @gtk_border_new() #22  ; 4 uses
  %i.ne = call noalias ptr @gtk_border_new() #22  ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !101
  %i.nh = call i32 @gtk_widget_get_state_flags(ptr noundef %i.ng) #22
  %i.ni = load ptr, ptr %i.nf, align 8, !tbaa !101
  %i.nj = call ptr @gtk_widget_get_style_context(ptr noundef %i.ni) #22
  %i.nk = load ptr, ptr %i.ln, align 8, !tbaa !97
  %i.nl = call i32 @gtk_widget_get_state_flags(ptr noundef %i.nk) #22
  %i.nm = load ptr, ptr %i.ln, align 8, !tbaa !97
  %i.nn = call ptr @gtk_widget_get_style_context(ptr noundef %i.nm) #22
  call void @gtk_style_context_get_margin(ptr noundef %i.nj, i32 noundef %i.nh, ptr noundef %i.nd) #22
  call void @gtk_style_context_get_border(ptr noundef %i.nn, i32 noundef %i.nl, ptr noundef %i.ne) #22
  %i.no = fptosi float %i.md to i32               ; 3 uses
  %i.np = fmul reassoc nnan nsz arcp contract afn double %i.mt, 8.000000e-01
  %i.nq = fptosi double %i.np to i32              ; 5 uses
  %i.nr = load i32, ptr %i.b, align 4, !tbaa !173
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !215
  %i.nu = sext i16 %i.nt to i32
  %i.nv = mul nsw i32 %i.nr, %i.nu
  %i.nw = sdiv i32 %i.nv, 1000                    ; 2 uses
  %i.nx = load i32, ptr %i.a, align 4, !tbaa !173
  %i.ny = load i16, ptr %i.nd, align 2, !tbaa !219
  %i.nz = sext i16 %i.ny to i32
  %i.oa = mul nsw i32 %i.nx, %i.nz
  %i.ob = sdiv i32 %i.oa, 1000
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !215 ; 2 uses
  %i.oe = sext i16 %i.od to i32
  %i.of = load i16, ptr %i.ne, align 2, !tbaa !219 ; 2 uses
  %i.og = sext i16 %i.of to i32
  %i.oh = fmul reassoc nnan nsz arcp contract afn float %i.md, 3.000000e+00 ; 3 uses
  %i.oi = fmul reassoc nnan nsz arcp contract afn double %i.mt, 2.000000e+00 ; 2 uses
  %i.oj = fptrunc reassoc nsz arcp contract afn double %i.oi to float ; 2 uses
  %i.ok = load i32, ptr %i.f, align 4, !tbaa !173
  %i.ol = add i32 %i.nq, %i.no
  %i.om = add i32 %i.ol, %i.ok
  %i.on = sitofp reassoc nsz arcp contract afn i32 %i.om to double
  %i.oo = fpext reassoc nsz arcp contract afn float %i.oh to double ; 2 uses
  %i.op = fmul reassoc nnan nsz arcp contract afn double %i.oo, 1.250000e-01 ; 2 uses
  %i.oq = sitofp reassoc nsz arcp contract afn i32 %i.nw to double
  %i.or = sitofp i16 %i.od to double
  %i.os = fsub reassoc nsz arcp contract afn double %i.oq, %i.op
  %i.ot = fadd reassoc nsz arcp contract afn double %i.os, %i.or
  %i.ou = fadd reassoc nsz arcp contract afn double %i.ot, %i.on
  %i.ov = fptosi double %i.ou to i32              ; 2 uses
  %i.ow = sitofp reassoc nsz arcp contract afn i32 %i.ov to float
  %i.ox = fadd reassoc nsz arcp contract afn float %i.oh, %i.ow
  %i.oy = fpext reassoc nsz arcp contract afn float %i.ox to double
  %i.oz = sitofp reassoc nsz arcp contract afn i32 %i.no to double ; 3 uses
  %.neg331 = fmul reassoc nnan nsz arcp contract afn double %i.oo, -2.500000e-01 ; 2 uses
  %i.pa = fadd reassoc nsz arcp contract afn double %.neg331, %i.oz
  %i.pb = fadd reassoc nsz arcp contract afn double %i.pa, %i.oy
  %i.pc = fptosi double %i.pb to i32              ; 2 uses
  call void @gtk_border_free(ptr noundef nonnull %i.nd) #22
  call void @gtk_border_free(ptr noundef nonnull %i.ne) #22
  %i.pd = load ptr, ptr %i.nf, align 8, !tbaa !101
  %i.pe = load i32, ptr %i.e, align 4, !tbaa !173
  %i.pf = sitofp reassoc nsz arcp contract afn i32 %i.pe to double
  %i.pg = sitofp reassoc nsz arcp contract afn i32 %i.nq to double
  %i.ph = fmul reassoc nnan nsz arcp contract afn double %i.pg, 2.000000e+00
  %i.pi = fadd reassoc nsz arcp contract afn double %i.ph, %i.pf ; 3 uses
  %i.pj = load i32, ptr %i.a, align 4, !tbaa !173
  %i.pk = sitofp reassoc nsz arcp contract afn i32 %i.pj to double ; 2 uses
  %i.pl = fcmp reassoc nsz arcp contract afn ogt double %i.pi, %i.pk
  br i1 %i.pl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.pm = fmul reassoc nnan nsz arcp contract afn double %i.oz, 2.000000e+00
  %i.pn = fmul reassoc nnan nsz arcp contract afn float %i.md, 2.000000e+00
  %i.po = fpext reassoc nsz arcp contract afn float %i.pn to double
  %i.pp = fmul reassoc nnan nsz arcp contract afn float %i.md, 2.100000e+01
  %i.pq = fpext reassoc nsz arcp contract afn float %i.pp to double
  %4 = fadd reassoc nsz arcp contract afn double %i.pq, %i.po
  %i.pr = fadd reassoc nsz arcp contract afn double %4, %.neg331
  %i.ps = fadd reassoc nsz arcp contract afn double %i.pr, %i.pm
  %i.pt = fptosi double %i.ps to i32
  %i.pu = sitofp reassoc nsz arcp contract afn i32 %i.pt to double ; 2 uses
  %i.pv = fcmp reassoc nsz arcp contract afn olt double %i.pi, %i.pu
  %. = select reassoc nsz arcp contract afn i1 %i.pv, double %i.pu, double %i.pi
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.pw = phi reassoc nsz arcp contract afn double [ %i.pk, %bb.h ], [ %., %bb.i ]
  %i.px = fptosi double %i.pw to i32
  %i.py = add nsw i32 %i.nw, %i.oe                ; 2 uses
  %i.pz = sub i32 %i.pc, %i.py
  %i.qa = sitofp reassoc nsz arcp contract afn i32 %i.pz to float
  %i.qb = sitofp reassoc nsz arcp contract afn i32 %i.no to float
  %i.qc = fadd reassoc nsz arcp contract afn float %i.oj, %i.qb
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qc, %i.qa
  %i.qe = fptosi float %i.qd to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.pd, i32 noundef %i.px, i32 noundef %i.qe) #22
  %i.qf = load ptr, ptr %i.mx, align 8, !tbaa !103
  call void @gtk_label_set_xalign(ptr noundef %i.qf, float noundef 0.000000e+00) #22
  %i.qg = load ptr, ptr %i.mx, align 8, !tbaa !103
  call void @gtk_label_set_yalign(ptr noundef %i.qg, float noundef 0.000000e+00) #22
  %i.qh = load ptr, ptr %i.nf, align 8, !tbaa !101
  call void @gtk_widget_set_valign(ptr noundef %i.qh, i32 noundef 1) #22
  %i.qi = load ptr, ptr %i.nf, align 8, !tbaa !101
  call void @gtk_widget_set_halign(ptr noundef %i.qi, i32 noundef 1) #22
  %i.qj = load ptr, ptr %i.nf, align 8, !tbaa !101
  %i.qk = add nsw i32 %i.py, %i.ly
  call void @gtk_widget_set_margin_top(ptr noundef %i.qj, i32 noundef %i.qk) #22
  %i.ql = load ptr, ptr %i.nf, align 8, !tbaa !101
  %i.qm = add nsw i32 %i.lu, %i.og
  %i.qn = add nsw i32 %i.qm, %i.ob
  call void @gtk_widget_set_margin_start(ptr noundef %i.ql, i32 noundef %i.qn) #22
  %i.qo = load ptr, ptr %i.mx, align 8, !tbaa !103
  call void @gtk_widget_set_margin_top(ptr noundef %i.qo, i32 noundef %i.nq) #22
  %i.qp = load ptr, ptr %i.mx, align 8, !tbaa !103
  call void @gtk_widget_set_margin_start(ptr noundef %i.qp, i32 noundef %i.nq) #22
  %i.qq = load ptr, ptr %i.mx, align 8, !tbaa !103
  call void @gtk_widget_set_margin_end(ptr noundef %i.qq, i32 noundef %i.nq) #22
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !104
  %i.qt = fptosi float %i.oh to i32               ; 14 uses
  call void @gtk_widget_set_size_request(ptr noundef %i.qs, i32 noundef %i.qt, i32 noundef %i.qt) #22
  %i.qu = load ptr, ptr %i.qr, align 8, !tbaa !104
  call void @gtk_widget_set_valign(ptr noundef %i.qu, i32 noundef 1) #22
  %i.qv = load ptr, ptr %i.qr, align 8, !tbaa !104
  %i.qw = fsub reassoc nsz arcp contract afn double %i.oz, %i.op
  %i.qx = sitofp i16 %i.of to double
  %i.qy = fadd reassoc nsz arcp contract afn double %i.qw, %i.qx ; 3 uses
  %i.qz = fadd reassoc nsz arcp contract afn double %i.qy, %i.mp
  %i.ra = fptosi double %i.qz to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.qv, i32 noundef %i.ra) #22
  %i.rb = load ptr, ptr %i.qr, align 8, !tbaa !104
  %i.rc = add nsw i32 %i.ly, %i.ov                ; 7 uses
  call void @gtk_widget_set_margin_top(ptr noundef %i.rb, i32 noundef %i.rc) #22
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.re = fadd reassoc nsz arcp contract afn double %i.mt, %i.mp
  %i.rf = fadd reassoc nsz arcp contract afn double %i.re, %i.qy ; 5 uses
  %i.rg = load ptr, ptr %i.rd, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.rg, i32 noundef %i.qt, i32 noundef %i.qt) #22
  %i.rh = load ptr, ptr %i.rd, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.rh, i32 noundef 1) #22
  %i.ri = load ptr, ptr %i.rd, align 8, !tbaa !100
  call void @gtk_widget_set_margin_top(ptr noundef %i.ri, i32 noundef %i.rc) #22
  %i.rj = load ptr, ptr %i.rd, align 8, !tbaa !100
  %i.rk = fmul reassoc nnan nsz arcp contract afn double %i.mt, 3.000000e+00
  %i.rl = fadd reassoc nsz arcp contract afn double %i.rf, %i.rk
  %i.rm = fptosi double %i.rl to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.rj, i32 noundef %i.rm) #22
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.ro, i32 noundef %i.qt, i32 noundef %i.qt) #22
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.rp, i32 noundef 1) #22
  %i.rq = load ptr, ptr %i.rn, align 8, !tbaa !100
  call void @gtk_widget_set_margin_top(ptr noundef %i.rq, i32 noundef %i.rc) #22
  %i.rr = load ptr, ptr %i.rn, align 8, !tbaa !100
  %i.rs = fmul reassoc nnan nsz arcp contract afn double %i.mt, 6.000000e+00
  %i.rt = fadd reassoc nsz arcp contract afn double %i.rf, %i.rs
  %i.ru = fptosi double %i.rt to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.rr, i32 noundef %i.ru) #22
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.rw, i32 noundef %i.qt, i32 noundef %i.qt) #22
  %i.rx = load ptr, ptr %i.rv, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.rx, i32 noundef 1) #22
  %i.ry = load ptr, ptr %i.rv, align 8, !tbaa !100
  call void @gtk_widget_set_margin_top(ptr noundef %i.ry, i32 noundef %i.rc) #22
  %i.rz = load ptr, ptr %i.rv, align 8, !tbaa !100
  %i.sa = fmul reassoc nnan nsz arcp contract afn double %i.mt, 9.000000e+00
  %i.sb = fadd reassoc nsz arcp contract afn double %i.rf, %i.sa
  %i.sc = fptosi double %i.sb to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.rz, i32 noundef %i.sc) #22
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.se, i32 noundef %i.qt, i32 noundef %i.qt) #22
  %i.sf = load ptr, ptr %i.sd, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.sf, i32 noundef 1) #22
  %i.sg = load ptr, ptr %i.sd, align 8, !tbaa !100
  call void @gtk_widget_set_margin_top(ptr noundef %i.sg, i32 noundef %i.rc) #22
  %i.sh = load ptr, ptr %i.sd, align 8, !tbaa !100
  %i.si = fmul reassoc nnan nsz arcp contract afn double %i.mt, 1.200000e+01
  %i.sj = fadd reassoc nsz arcp contract afn double %i.rf, %i.si
  %i.sk = fptosi double %i.sj to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.sh, i32 noundef %i.sk) #22
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !100
  call void @gtk_widget_set_size_request(ptr noundef %i.sm, i32 noundef %i.qt, i32 noundef %i.qt) #22
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !100
  call void @gtk_widget_set_valign(ptr noundef %i.sn, i32 noundef 1) #22
  %i.so = load ptr, ptr %i.sl, align 8, !tbaa !100
  call void @gtk_widget_set_margin_top(ptr noundef %i.so, i32 noundef %i.rc) #22
  %i.sp = load ptr, ptr %i.sl, align 8, !tbaa !100
  %i.sq = fmul reassoc nnan nsz arcp contract afn double %i.mt, 1.500000e+01
  %i.sr = fadd reassoc nsz arcp contract afn double %i.rf, %i.sq
  %i.ss = fptosi double %i.sr to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.sp, i32 noundef %i.ss) #22
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !107
  call void @gtk_widget_set_size_request(ptr noundef %i.su, i32 noundef %i.qt, i32 noundef %i.qt) #22
  %i.sv = load ptr, ptr %i.st, align 8, !tbaa !107
  call void @gtk_widget_set_valign(ptr noundef %i.sv, i32 noundef 1) #22
  %i.sw = load ptr, ptr %i.st, align 8, !tbaa !107
  call void @gtk_widget_set_halign(ptr noundef %i.sw, i32 noundef 1) #22
  %i.sx = load ptr, ptr %i.st, align 8, !tbaa !107
  call void @gtk_widget_set_margin_top(ptr noundef %i.sx, i32 noundef %i.rc) #22
  %i.sy = load ptr, ptr %i.st, align 8, !tbaa !107
  %i.sz = fmul reassoc nnan nsz arcp contract afn double %i.mt, 1.800000e+01 ; 2 uses
  %i.ta = fadd reassoc nsz arcp contract afn double %i.oi, %i.mp
  %i.tb = fadd reassoc nsz arcp contract afn double %i.ta, %i.sz
  %i.tc = fadd reassoc nsz arcp contract afn double %i.tb, %i.qy
  %i.td = fptosi double %i.tc to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.sy, i32 noundef %i.td) #22
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !108
  call void @gtk_widget_set_state_flags(ptr noundef %i.tf, i32 noundef 1, i32 noundef 0) #22
  %i.tg = load ptr, ptr %i.te, align 8, !tbaa !108
  %i.th = fptosi float %i.oj to i32               ; 10 uses
  call void @gtk_widget_set_size_request(ptr noundef %i.tg, i32 noundef %i.th, i32 noundef %i.th) #22
  %i.ti = load ptr, ptr %i.te, align 8, !tbaa !108
  call void @gtk_widget_set_halign(ptr noundef %i.ti, i32 noundef 1) #22
  %i.tj = load ptr, ptr %i.te, align 8, !tbaa !108
  %i.tk = add nsw i32 %i.ly, %i.pc                ; 6 uses
  call void @gtk_widget_set_margin_top(ptr noundef %i.tj, i32 noundef %i.tk) #22
  %i.tl = load ptr, ptr %i.te, align 8, !tbaa !108
  %i.tm = fmul reassoc nnan nsz arcp contract afn double %i.mt, 1.300000e+01
  %i.tn = fadd reassoc nsz arcp contract afn double %i.tm, %i.mp
  %i.to = fptosi double %i.tn to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.tl, i32 noundef %i.to) #22
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !109
  call void @gtk_widget_set_size_request(ptr noundef %i.tq, i32 noundef %i.th, i32 noundef %i.th) #22
  %i.tr = load ptr, ptr %i.tp, align 8, !tbaa !109
  call void @gtk_widget_set_halign(ptr noundef %i.tr, i32 noundef 1) #22
  %i.ts = load ptr, ptr %i.tp, align 8, !tbaa !109
  call void @gtk_widget_set_margin_top(ptr noundef %i.ts, i32 noundef %i.tk) #22
  %i.tt = load ptr, ptr %i.tp, align 8, !tbaa !109
  %i.tu = fmul reassoc nnan nsz arcp contract afn double %i.mt, 1.000000e+01
  %i.tv = fadd reassoc nsz arcp contract afn double %i.tu, %i.mp
  %i.tw = fptosi double %i.tv to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.tt, i32 noundef %i.tw) #22
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !110
  call void @gtk_widget_set_size_request(ptr noundef %i.ty, i32 noundef %i.th, i32 noundef %i.th) #22
  %i.tz = load ptr, ptr %i.tx, align 8, !tbaa !110
  call void @gtk_widget_set_halign(ptr noundef %i.tz, i32 noundef 1) #22
  %i.ua = load ptr, ptr %i.tx, align 8, !tbaa !110
  call void @gtk_widget_set_margin_top(ptr noundef %i.ua, i32 noundef %i.tk) #22
  %i.ub = load ptr, ptr %i.tx, align 8, !tbaa !110
  %i.uc = fmul reassoc nnan nsz arcp contract afn double %i.mt, 7.000000e+00
  %i.ud = fadd reassoc nsz arcp contract afn double %i.uc, %i.mp
  %i.ue = fptosi double %i.ud to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.ub, i32 noundef %i.ue) #22
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !111
  call void @gtk_widget_set_size_request(ptr noundef %i.ug, i32 noundef %i.th, i32 noundef %i.th) #22
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !111
  call void @gtk_widget_set_halign(ptr noundef %i.uh, i32 noundef 1) #22
  %i.ui = load ptr, ptr %i.uf, align 8, !tbaa !111
  call void @gtk_widget_set_margin_top(ptr noundef %i.ui, i32 noundef %i.tk) #22
  %i.uj = load ptr, ptr %i.uf, align 8, !tbaa !111
  %i.uk = fmul reassoc nnan nsz arcp contract afn double %i.mt, 4.000000e+00
  %i.ul = fadd reassoc nsz arcp contract afn double %i.uk, %i.mp
  %i.um = fptosi double %i.ul to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.uj, i32 noundef %i.um) #22
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !112
  call void @gtk_widget_set_size_request(ptr noundef %i.uo, i32 noundef %i.th, i32 noundef %i.th) #22
  %i.up = load ptr, ptr %i.un, align 8, !tbaa !112
  call void @gtk_widget_set_halign(ptr noundef %i.up, i32 noundef 1) #22
  %i.uq = load ptr, ptr %i.un, align 8, !tbaa !112
  call void @gtk_widget_set_margin_top(ptr noundef %i.uq, i32 noundef %i.tk) #22
  %i.ur = load ptr, ptr %i.un, align 8, !tbaa !112
  %i.us = sitofp reassoc nsz arcp contract afn i32 %i.lu to float
  %i.ut = fadd reassoc nsz arcp contract afn float %i.md, %i.us
  %i.uu = fptosi float %i.ut to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.ur, i32 noundef %i.uu) #22
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !113
  call void @gtk_widget_set_margin_top(ptr noundef %i.uw, i32 noundef %i.tk) #22
  %i.ux = load ptr, ptr %i.uv, align 8, !tbaa !113
  %i.uy = fadd reassoc nsz arcp contract afn double %i.sz, %i.mp
  %i.uz = fptosi double %i.uy to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.ux, i32 noundef %i.uz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_thumb_set_image_area(ptr nofree noundef captures(none) %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 47 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  tail call fastcc void @_thumb_retrieve_margins(ptr noundef %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.j = load i32, ptr %i.i, align 8, !tbaa !99
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !188  ; 4 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !219
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !217
  %i.s = sext i16 %i.r to i32
  %i.t = add nsw i32 %i.p, %i.s
  %i.u = sub i32 %i.l, %i.t                       ; 3 uses
  switch i32 %i.j, label %bb.g [
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !173
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  call void @gtk_widget_get_size_request(ptr noundef %i.w, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !90
  %i.z = load i32, ptr %i.d, align 4, !tbaa !173
  %i.aa = call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  call void @gtk_widget_get_size_request(ptr noundef %i.ac, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !185
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.d, align 4, !tbaa !173
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !109
  %i.ah = call i32 @gtk_widget_get_margin_top(ptr noundef %i.ag) #22
  %i.ai = add nsw i32 %i.ah, %i.af                ; 2 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !188
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !188 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !218
  %i.am = sext i16 %i.al to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = phi ptr [ %i.aj, %bb.d ], [ %.pre, %bb.c ]
  %.pn = phi i32 [ %i.am, %bb.d ], [ %i.ai, %bb.c ]
  %.067 = phi i32 [ 0, %bb.d ], [ %i.ai, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !215
  %i.aq = sext i16 %i.ap to i32                   ; 2 uses
  %i.ar = add i32 %i.aa, %.pn
  %i.as = add i32 %i.ar, %i.aq
  %i.at = sub i32 %i.y, %i.as
  %i.au = add nsw i32 %.067, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 0, ptr %i.e, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4, !tbaa !173
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104
  call void @gtk_widget_get_size_request(ptr noundef %i.aw, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !90
  %i.az = load i32, ptr %i.f, align 4, !tbaa !173
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !104
  %i.bb = call i32 @gtk_widget_get_margin_bottom(ptr noundef %i.ba) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !109
  call void @gtk_widget_get_size_request(ptr noundef %i.bd, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.be = load i32, ptr %i.f, align 4, !tbaa !173
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !109
  %i.bg = call i32 @gtk_widget_get_margin_top(ptr noundef %i.bf) #22
end_hunk_0
