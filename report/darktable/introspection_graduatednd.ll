Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_graduatednd?download=true
inline.NumInlined: 49
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@gui_post_expose:bb.a
  %spec.select = select i1 %i.ai, double 5.000000e+00, double 3.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi double [ 5.000000e+00, %bb.d ], [ %spec.select, %bb.e ]
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1432
  %i.al = load double, ptr %i.ak, align 8, !tbaa !93
  %i.am = fmul reassoc nsz arcp contract afn double %i.ac, %.sink
  %i.an = fmul reassoc nsz arcp contract afn double %i.am, %i.al
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.an) #19
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1408
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !140
  %i.ar = fmul reassoc nsz arcp contract afn double %i.aq, 5.000000e-01
  %i.as = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1384
  %i.au = load double, ptr %i.at, align 8, !tbaa !141
  %i.av = fmul reassoc nsz arcp contract afn double %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1400
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !142
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 1392
  %i.ba = load double, ptr %i.az, align 8, !tbaa !143
  %i.bb = fmul reassoc nsz arcp contract afn double %i.ba, %i.as
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.av, double noundef %i.ay, double noundef %i.bb, double noundef 8.000000e-01) #19
  %i.bc = extractelement <2 x float> %i.w, i64 0
  %i.bd = fpext reassoc nsz arcp contract afn float %i.bc to double ; 3 uses
  %i.be = extractelement <2 x float> %i.w, i64 1  ; 3 uses
  %i.bf = fpext reassoc nsz arcp contract afn float %i.be to double ; 3 uses
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bd, double noundef %i.bf) #19
  %i.bg = extractelement <2 x float> %i.x, i64 0
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bg to double ; 3 uses
  %i.bi = extractelement <2 x float> %i.x, i64 1
  %i.bj = fpext reassoc nsz arcp contract afn float %i.bi to double ; 3 uses
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.bh, double noundef %i.bj) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !86
  %i.bl = icmp eq i32 %i.bk, 3
  br i1 %i.bl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !87
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1432
  %i.br = load double, ptr %i.bq, align 8, !tbaa !93
  %i.bs = fmul reassoc nsz arcp contract afn double %i.ac, 2.000000e+00
  %i.bt = fmul reassoc nsz arcp contract afn double %i.bs, %i.br
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1432
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !93
  %i.bx = fmul reassoc nsz arcp contract afn double %i.bw, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink149 = phi double [ %i.bx, %bb.i ], [ %i.bt, %bb.h ]
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %.sink149) #19
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1408
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !140
  %i.cb = fmul reassoc nsz arcp contract afn double %i.ca, 5.000000e-01
  %i.cc = fadd reassoc nsz arcp contract afn double %i.cb, 5.000000e-01 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1384
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !141
  %i.cf = fmul reassoc nsz arcp contract afn double %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 1400
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !142
  %i.ci = fmul reassoc nsz arcp contract afn double %i.ch, %i.cc
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 1392
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !143
  %i.cl = fmul reassoc nsz arcp contract afn double %i.ck, %i.cc
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.cf, double noundef %i.ci, double noundef %i.cl, double noundef 8.000000e-01) #19
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bd, double noundef %i.bf) #19
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.bh, double noundef %i.bj) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  %i.cn = tail call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.cm) #19
  %.not144 = icmp eq i32 %i.cn, 0
  br i1 %.not144, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.co = fsub reassoc nsz arcp contract afn <2 x float> %i.x, %i.w ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.co
  %foldExtExtBinop235 = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.co
  %shift = shufflevector <2 x float> %foldExtExtBinop235, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop237 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.cp = extractelement <2 x float> %foldExtExtBinop237, i64 0
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cp)
  %i.cr = fmul reassoc nsz arcp contract afn float %2, f0x3C23D70A
  %i.cs = fdiv reassoc nsz arcp contract afn float %i.cr, %6
  %i.ct = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.cu
  %i.cw = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cx ; 5 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 0
  %foldExtExtBinop239 = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.w ; 2 uses
  %i.da = extractelement <2 x float> %foldExtExtBinop239, i64 0
  %i.db = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.be ; 2 uses
  %foldExtExtBinop241 = fadd reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop239, %i.w
  %i.dd = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, 5.000000e-01
  %i.df = fadd reassoc nsz arcp contract afn float %i.dc, %i.be
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, 5.000000e-01
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, %i.cz
  %i.di = fsub reassoc nsz arcp contract afn float %i.de, %i.db
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bd, double noundef %i.bf) #19
  %i.dj = fpext reassoc nsz arcp contract afn float %i.da to double
  %i.dk = fpext reassoc nsz arcp contract afn float %i.dc to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.dj, double noundef %i.dk) #19
  %i.dl = fpext reassoc nsz arcp contract afn float %i.di to double
  %i.dm = fpext reassoc nsz arcp contract afn float %i.dh to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.dl, double noundef %i.dm) #19
  tail call void @cairo_close_path(ptr noundef %1) #19
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1432
  %i.dp = load double, ptr %i.do, align 8, !tbaa !93
  %i.dq = fmul reassoc nsz arcp contract afn double %i.dp, %i.ac
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.dq) #19
  %i.dr = load i32, ptr %i.ad, align 8, !tbaa !86
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !87
  %i.dv = icmp eq i32 %i.du, 1
  %spec.select230 = select i1 %i.dv, double 1.000000e+00, double 5.000000e-01
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink153 = phi double [ 1.000000e+00, %bb.k ], [ %spec.select230, %bb.l ]
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1408
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !140
  %i.dz = fmul reassoc nsz arcp contract afn double %i.dy, 5.000000e-01
  %i.ea = fadd reassoc nsz arcp contract afn double %i.dz, 5.000000e-01 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1384
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !141
  %i.ed = fmul reassoc nsz arcp contract afn double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 1400
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !142
  %i.eg = fmul reassoc nsz arcp contract afn double %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 1392
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !143
  %i.ej = fmul reassoc nsz arcp contract afn double %i.ei, %i.ea
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ed, double noundef %i.eg, double noundef %i.ej, double noundef %.sink153) #19
  tail call void @cairo_fill_preserve(ptr noundef %1) #19
  %i.ek = load i32, ptr %i.ad, align 8, !tbaa !86
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.en = load i32, ptr %i.em, align 4, !tbaa !87
  %i.eo = icmp eq i32 %i.en, 1
  %spec.select231 = select i1 %i.eo, double 1.000000e+00, double 5.000000e-01
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink173 = phi double [ 1.000000e+00, %bb.m ], [ %spec.select231, %bb.n ]
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1408
  %i.er = load double, ptr %i.eq, align 8, !tbaa !140
  %i.es = fmul reassoc nsz arcp contract afn double %i.er, 5.000000e-01
  %i.et = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.es ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 1384
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !141
  %i.ew = fmul reassoc nsz arcp contract afn double %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 1400
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !142
  %i.ez = fmul reassoc nsz arcp contract afn double %i.ey, %i.et
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 1392
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !143
  %i.fc = fmul reassoc nsz arcp contract afn double %i.fb, %i.et
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ew, double noundef %i.ez, double noundef %i.fc, double noundef %.sink173) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.x, %i.cy ; 3 uses
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bh, double noundef %i.bj) #19
  %i.fe = extractelement <2 x float> %i.fd, i64 0
  %i.ff = fpext reassoc nsz arcp contract afn float %i.fe to double
  %i.fg = extractelement <2 x float> %i.fd, i64 1
  %i.fh = fpext reassoc nsz arcp contract afn float %i.fg to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.ff, double noundef %i.fh) #19
  %i.fi = fadd reassoc nsz arcp contract afn <2 x float> %i.fd, %i.x
  %i.fj = fmul reassoc nsz arcp contract afn <2 x float> %i.fi, splat (float 5.000000e-01) ; 2 uses
  %i.fk = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fl = fsub reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fk
  %i.fm = fadd reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fk
  %i.fn = shufflevector <2 x float> %i.fl, <2 x float> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.fo = fpext reassoc nsz arcp contract afn <2 x float> %i.fn to <2 x double> ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  %i.fq = extractelement <2 x double> %i.fo, i64 1
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.fp, double noundef %i.fq) #19
  tail call void @cairo_close_path(ptr noundef %1) #19
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1432
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !93
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, %i.ac
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.fu) #19
  %i.fv = load i32, ptr %i.ad, align 8, !tbaa !86
  %i.fw = icmp eq i32 %i.fv, 2
  br i1 %i.fw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !87
  %i.fz = icmp eq i32 %i.fy, 2
  %spec.select232 = select i1 %i.fz, double 1.000000e+00, double 5.000000e-01
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink193 = phi double [ 1.000000e+00, %bb.o ], [ %spec.select232, %bb.p ]
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1408
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !140
  %i.gd = fmul reassoc nsz arcp contract afn double %i.gc, 5.000000e-01
  %i.ge = fadd reassoc nsz arcp contract afn double %i.gd, 5.000000e-01 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 1384
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !141
  %i.gh = fmul reassoc nsz arcp contract afn double %i.ge, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 1400
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !142
  %i.gk = fmul reassoc nsz arcp contract afn double %i.gj, %i.ge
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 1392
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !143
  %i.gn = fmul reassoc nsz arcp contract afn double %i.gm, %i.ge
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.gh, double noundef %i.gk, double noundef %i.gn, double noundef %.sink193) #19
  tail call void @cairo_fill_preserve(ptr noundef %1) #19
  %i.go = load i32, ptr %i.ad, align 8, !tbaa !86
  %i.gp = icmp eq i32 %i.go, 2
  br i1 %i.gp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !87
  %i.gs = icmp eq i32 %i.gr, 2
  %spec.select233 = select i1 %i.gs, double 1.000000e+00, double 5.000000e-01
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink213 = phi double [ 1.000000e+00, %bb.q ], [ %spec.select233, %bb.r ]
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1408
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !140
  %i.gw = fmul reassoc nsz arcp contract afn double %i.gv, 5.000000e-01
  %i.gx = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.gw ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 1384
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !141
  %i.ha = fmul reassoc nsz arcp contract afn double %i.gx, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 1400
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !142
  %i.hd = fmul reassoc nsz arcp contract afn double %i.hc, %i.gx
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 1392
  %i.hf = load double, ptr %i.he, align 8, !tbaa !143
  %i.hg = fmul reassoc nsz arcp contract afn double %i.hf, %i.gx
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ha, double noundef %i.hd, double noundef %i.hg, double noundef %.sink213) #19
  tail call void @cairo_stroke(ptr noundef %1) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_set_points_from_grad(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 35 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = fmul reassoc nsz arcp contract afn float %5, f0xBC8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.d) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 5 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !121
  %i.i = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %0) #19 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %.sink134.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sink134.sroa.gep135 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sink134.sroa.gep136 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sink134.sroa.gep137 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sink134.sroa.gep138 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sink134.sroa.gep139 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sink134.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sink134.sroa.gep141 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 164
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !122
  %i.l = sitofp reassoc nsz arcp contract afn <2 x i32> %i.k to <2 x float> ; 8 uses
  %i.m = extractelement <2 x float> %i.l, i64 0   ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn oeq float %sin, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %5, 0.000000e+00
  %i.p = fmul reassoc nnan nsz arcp contract afn float %i.m, 1.000000e-01 ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %6, f0x3C23D70A ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.p, ptr %i.a, align 16, !tbaa !62
  %i.r = fmul reassoc nnan nsz arcp contract afn float %i.m, f0x3F666666
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.r, ptr %i.s, align 8, !tbaa !62
  %i.t = extractelement <2 x float> %i.l, i64 1
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.u, ptr %i.v, align 4, !tbaa !62
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.p, ptr %i.w, align 8, !tbaa !62
  %i.x = fmul reassoc nnan nsz arcp contract afn float %i.m, f0x3F666666
  store float %i.x, ptr %i.a, align 16, !tbaa !62
  %i.y = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.q
  %i.z = extractelement <2 x float> %i.l, i64 1
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.aa, ptr %i.ab, align 4, !tbaa !62
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %sin)
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, 1.000000e+00
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ae = fcmp reassoc nsz arcp contract afn oeq float %5, 9.000000e+01
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.scalar = fmul reassoc nsz arcp contract afn float %6, f0x3C23D70A
  %i.ag = insertelement <2 x float> <float poison, float 1.000000e-01>, float %.scalar, i64 0
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %i.l ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  store float %i.ai, ptr %i.a, align 16, !tbaa !62
  store <2 x float> %i.ah, ptr %i.af, align 8, !tbaa !62
  %i.aj = extractelement <2 x float> %i.l, i64 1
  %i.ak = fmul reassoc nnan nsz arcp contract afn float %i.aj, f0x3F666666
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.al = fpext fast float %i.m to double
  %i.am = fmul reassoc nsz arcp contract afn float %6, f0x3C23D70A
  %i.an = fpext reassoc nsz arcp contract afn float %i.am to double
  %i.ao = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn double %i.ao, %i.al
  %i.aq = fptrunc reassoc nsz arcp contract afn double %i.ap to float ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.aq, ptr %i.ar, align 8, !tbaa !62
  store float %i.aq, ptr %i.a, align 16, !tbaa !62
  %i.as = extractelement <2 x float> %i.l, i64 1  ; 2 uses
  %i.at = fmul reassoc nnan nsz arcp contract afn float %i.as, 1.000000e-01
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.at, ptr %i.au, align 4, !tbaa !62
  %i.av = fmul reassoc nnan nsz arcp contract afn float %i.as, f0x3F666666
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  %.neg = fmul reassoc nsz arcp contract afn float %6, -2.000000e-02
  %.neg125 = fadd reassoc nsz arcp contract afn float %.neg, 1.000000e+00 ; 2 uses
  %i.aw = extractelement <2 x float> %i.l, i64 1  ; 2 uses
  %i.ax = fadd reassoc nsz arcp contract afn float %.neg125, %sin
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ax, %cos
  %i.az = fadd reassoc nsz arcp contract afn float %.neg125, %cos
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %sin
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ay, i64 1
  %i.bd = fmul reassoc nsz arcp contract afn <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bf = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, %i.be
  %i.bg = insertelement <2 x float> poison, float %sin, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv reassoc nsz arcp contract afn <2 x float> %i.bf, %i.bh ; 4 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = extractelement <2 x float> %i.bi, i64 1 ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bj, %i.bk
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.aw, %i.bl ; 2 uses
  %i.bn = fneg reassoc nsz arcp contract afn float %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bm, %i.bn ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bm, %i.m
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bo ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bi, %i.be ; 3 uses
  %i.bs = extractelement <2 x i1> %i.br, i64 0
  %.0 = select nsz i1 %i.bs, float %i.bq, float %i.aw
  %i.bt = select <2 x i1> %i.br, <2 x float> %i.be, <2 x float> %i.bi ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bt, zeroinitializer ; 3 uses
  %i.bv = extractelement <2 x i1> %i.bu, i64 0
  %.1 = select nsz i1 %i.bv, float %i.bo, float %.0 ; 2 uses
  %i.bw = extractelement <2 x i1> %i.br, i64 1
  %.0104 = select nsz i1 %i.bw, float %i.bq, float 0.000000e+00
  %i.bx = select <2 x i1> %i.bu, <2 x float> zeroinitializer, <2 x float> %i.bt ; 3 uses
  %i.by = extractelement <2 x i1> %i.bu, i64 1
  %.1105 = select nsz i1 %i.by, float %i.bo, float %.0104 ; 3 uses
  %i.bz = extractelement <2 x float> %i.bx, i64 0
  %i.ca = extractelement <2 x float> %i.bx, i64 1 ; 2 uses
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bz, %i.ca
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, 1.000000e-01
  %i.ce = fpext reassoc nsz arcp contract afn <2 x float> %i.bx to <2 x double> ; 2 uses
  %i.cf = extractelement <2 x double> %i.ce, i64 0
  %i.cg = fsub reassoc nsz arcp contract afn double %i.cf, %i.cd
  %i.ch = fptrunc reassoc nsz arcp contract afn double %i.cg to float ; 7 uses
  %i.ci = fsub reassoc nsz arcp contract afn float %i.ch, %i.ca
  %i.cj = fpext reassoc nsz arcp contract afn float %i.ci to double
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cj, 1.000000e-01
  %i.cl = extractelement <2 x double> %i.ce, i64 1
  %i.cm = fadd reassoc nsz arcp contract afn double %i.ck, %i.cl
  %i.cn = fptrunc reassoc nsz arcp contract afn double %i.cm to float ; 6 uses
  %i.co = fsub reassoc nsz arcp contract afn float %.1, %.1105
  %i.cp = fpext reassoc nsz arcp contract afn float %i.co to double
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, 1.000000e-01
  %i.cr = fpext reassoc nsz arcp contract afn float %.1 to double
  %i.cs = fsub reassoc nsz arcp contract afn double %i.cr, %i.cq
  %i.ct = fptrunc reassoc nsz arcp contract afn double %i.cs to float ; 5 uses
  %i.cu = fsub reassoc nsz arcp contract afn float %i.ct, %.1105
  %i.cv = fpext reassoc nsz arcp contract afn float %i.cu to double
  %i.cw = fmul reassoc nsz arcp contract afn double %i.cv, 1.000000e-01
  %i.cx = fpext reassoc nsz arcp contract afn float %.1105 to double
  %i.cy = fadd reassoc nsz arcp contract afn double %i.cw, %i.cx
  %i.cz = fptrunc reassoc nsz arcp contract afn double %i.cy to float ; 4 uses
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %5)
  %or.cond = fcmp reassoc nsz arcp contract afn olt float %i.da, 9.000000e+01
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.db = fcmp reassoc nsz arcp contract afn olt float %i.cn, %i.ch
  br i1 %i.db, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.cn, ptr %i.a, align 16, !tbaa !62
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.cz, ptr %i.dc, align 4, !tbaa !62
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ch, ptr %i.dd, align 8, !tbaa !62
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.cn, ptr %i.de, align 8, !tbaa !62
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.cz, ptr %i.df, align 4, !tbaa !62
  store float %i.ch, ptr %i.a, align 16, !tbaa !62
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.dg = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.cn
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.cn, ptr %i.a, align 16, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.cz, ptr %i.dh, align 4, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ch, ptr %i.di, align 8, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.cn, ptr %i.dj, align 8, !tbaa !62
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.cz, ptr %i.dk, align 4, !tbaa !62
  store float %i.ch, ptr %i.a, align 16, !tbaa !62
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.p, %bb.o, %bb.i, %bb.h, %bb.d, %bb.e
  %.sink134.sroa.phi = phi ptr [ %.sink134.sroa.gep, %bb.m ], [ %.sink134.sroa.gep135, %bb.l ], [ %.sink134.sroa.gep136, %bb.p ], [ %.sink134.sroa.gep137, %bb.o ], [ %.sink134.sroa.gep138, %bb.i ], [ %.sink134.sroa.gep139, %bb.h ], [ %.sink134.sroa.gep140, %bb.d ], [ %.sink134.sroa.gep141, %bb.e ]
  %.sink = phi float [ %i.ct, %bb.m ], [ %i.ct, %bb.l ], [ %i.ct, %bb.p ], [ %i.ct, %bb.o ], [ %i.av, %bb.i ], [ %i.ak, %bb.h ], [ %i.u, %bb.d ], [ %i.aa, %bb.e ]
  store float %.sink, ptr %.sink134.sroa.phi, align 4, !tbaa !62
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !121
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dp = load i32, ptr %i.do, align 16, !tbaa !123
  %i.dq = sitofp reassoc nsz arcp contract afn i32 %i.dp to double
  %i.dr = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.dl, ptr noundef %i.dn, double noundef %i.dq, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 2) #19
  %.not124 = icmp eq i32 %i.dr, 0
  br i1 %.not124, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.dt = call i32 @dt_dev_get_preview_size(ptr noundef %i.ds, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.du = load float, ptr %i.b, align 4, !tbaa !62
  %i.dv = load float, ptr %i.c, align 4, !tbaa !62
  %i.dw = load <4 x float>, ptr %i.a, align 16, !tbaa !62
  %i.dx = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.dv, i64 1
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ea = fdiv reassoc nsz arcp contract afn <4 x float> %i.dw, %i.dz ; 4 uses
  %i.eb = extractelement <4 x float> %i.ea, i64 0
  store float %i.eb, ptr %1, align 4, !tbaa !62
  %i.ec = extractelement <4 x float> %i.ea, i64 1
  store float %i.ec, ptr %2, align 4, !tbaa !62
  %i.ed = extractelement <4 x float> %i.ea, i64 2
  store float %i.ed, ptr %3, align 4, !tbaa !62
  %i.ee = extractelement <4 x float> %i.ea, i64 3
  store float %i.ee, ptr %4, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.a
  %.1111 = phi i32 [ 0, %bb.a ], [ 1, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.1111
}

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #2

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #2

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #2

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !73  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.s [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %1, ptr %i.f, align 4, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %2, ptr %i.g, align 8, !tbaa !145
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store float %1, ptr %i.h, align 4, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %2, ptr %i.i, align 8, !tbaa !147
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !62
  %i.n = insertelement <2 x float> poison, float %1, i64 0
  %i.o = insertelement <2 x float> %i.n, float %2, i64 1
  %i.p = fsub reassoc nsz arcp contract afn <2 x float> %i.o, %i.m
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.r = load <4 x float>, ptr %i.k, align 4, !tbaa !62
  %i.s = fadd reassoc nsz arcp contract afn <4 x float> %i.r, %i.q
  store <4 x float> %i.s, ptr %i.k, align 4, !tbaa !62
  store float %1, ptr %i.j, align 4, !tbaa !124
  store float %2, ptr %i.l, align 8, !tbaa !125
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !86
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.w = load double, ptr %i.v, align 8, !tbaa !93
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, f0x3F947AE140000000
  %i.y = fpext reassoc nsz arcp contract afn float %5 to double
  %i.z = fdiv reassoc nsz arcp contract afn double %i.x, %i.y
  %i.aa = fptrunc reassoc nsz arcp contract afn double %i.z to float ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !145 ; 6 uses
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %2, %i.ad
  %i.af = fadd reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %2, %i.af
  %or.cond = and i1 %i.ae, %i.ag
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !144 ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.aa
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %1, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn float %i.ai, %i.aa
end_hunk_0
