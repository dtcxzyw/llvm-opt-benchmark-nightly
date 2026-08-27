Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/htmltable?download=true
inline.NumInlined: 100
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@size_html_tbl:bb.a
  %i.wc = load <2 x i16>, ptr %i.wa, align 2, !tbaa !232
  %i.wd = uitofp <2 x i16> %i.wc to <2 x double>
  %i.we = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.vz, <2 x double> %i.wd)
  store <2 x double> %i.we, ptr %i.wb, align 8, !tbaa !28
  %i.wf = load ptr, ptr %i.a, align 8, !tbaa !86
  %.not61 = icmp eq ptr %i.wf, null
  br i1 %.not61, label %popFontInfo.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.wg = load ptr, ptr @size_html_tbl.savef.0, align 8, !tbaa !88 ; 2 uses
  %.not.i116 = icmp eq ptr %i.wg, null
  br i1 %.not.i116, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.wg, ptr %i.wh, align 8, !tbaa !87
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.wi = load ptr, ptr @size_html_tbl.savef.1, align 8, !tbaa !90 ; 2 uses
  %.not11.i = icmp eq ptr %i.wi, null
  br i1 %.not11.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.wi, ptr %i.wj, align 8, !tbaa !89
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.wk = load double, ptr @size_html_tbl.savef.2, align 8, !tbaa !91 ; 2 uses
  %i.wl = fcmp ult double %i.wk, 0.000000e+00
  br i1 %i.wl, label %popFontInfo.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %i.wk, ptr %i.wm, align 8, !tbaa !38
  br label %popFontInfo.exit

popFontInfo.exit:                                 ; preds = %bb.cf, %bb.ce, %bb.bz
  ret i32 %.152
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @pos_html_tbl(ptr nofree noundef captures(none) %0, ptr nofree noundef byval(%struct.boxf) align 8 captures(none) %1, i8 noundef zeroext range(i8 0, 16) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.boxf, align 8               ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !269  ; 3 uses
  %.not131 = icmp eq ptr %i.f, null
  br i1 %.not131, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %.not132 = icmp eq ptr %i.h, null
  br i1 %.not132, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.f) #22 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %gv_strdup.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.f) #25
  %i.m = add i64 %i.l, 1
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.8, i64 noundef %i.m) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #26
  unreachable

gv_strdup.exit:                                   ; preds = %bb.d
  store ptr %i.i, ptr %i.g, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %gv_strdup.exit, %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load double, ptr %i.q, align 8, !tbaa !270 ; 3 uses
  %i.u = load <2 x double>, ptr %i.o, align 8, !tbaa !28
  %i.v = load <2 x double>, ptr %i.p, align 8, !tbaa !28 ; 4 uses
  %i.w = load <2 x double>, ptr %1, align 8, !tbaa !28 ; 6 uses
  %i.x = fsub nsz <2 x double> %i.v, %i.w
  %i.y = fsub nsz <2 x double> %i.x, %i.u
  %i.z = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.y, <2 x double> zeroinitializer) ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !222 ; 2 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 1
  %.not133 = icmp eq i32 %i.ad, 0
  %i.ae = extractelement <2 x double> %i.z, i64 0 ; 4 uses
  %i.af = extractelement <2 x double> %i.z, i64 1 ; 4 uses
  %i.ag = extractelement <2 x double> %i.v, i64 1 ; 3 uses
  %i.ah = extractelement <2 x double> %i.w, i64 0 ; 5 uses
  br i1 %.not133, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = fcmp ogt double %i.ae, 0.000000e+00
  br i1 %i.ai, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aj = and i32 %i.ac, 6
  switch i32 %i.aj, label %bb.k [
    i32 4, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = fadd double %i.ah, %i.t
  store double %i.ak, ptr %i.p, align 8, !tbaa !123
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %foldExtExtBinop = fadd <2 x double> %i.v, %i.z
  %i.al = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.al, ptr %i.p, align 8, !tbaa !123
  %foldExtExtBinop243 = fadd <2 x double> %i.w, %i.z
  %i.am = extractelement <2 x double> %foldExtExtBinop243, i64 0 ; 2 uses
  store double %i.am, ptr %1, align 8, !tbaa !271
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.an = fmul nnan double %i.ae, 5.000000e-01    ; 2 uses
  %i.ao = fadd double %i.ah, %i.an                ; 2 uses
  store double %i.ao, ptr %1, align 8, !tbaa !271
  %i.ap = extractelement <2 x double> %i.v, i64 0
  %i.aq = fsub double %i.ap, %i.an
  store double %i.aq, ptr %i.p, align 8, !tbaa !123
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g
  %i.ar = phi double [ %i.ah, %bb.g ], [ %i.ao, %bb.k ], [ %i.am, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  %.0117 = phi double [ %i.ae, %bb.g ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.as = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.as, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.at = and i16 %i.ab, 24
  switch i16 %i.at, label %bb.p [
    i16 16, label %bb.n
    i16 8, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.au = extractelement <2 x double> %i.w, i64 1
  %i.av = fadd double %i.t, %i.au
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %foldExtExtBinop245 = fadd <2 x double> %i.w, %i.z
  %i.aw = extractelement <2 x double> %foldExtExtBinop245, i64 1 ; 2 uses
  store double %i.aw, ptr %i.s, align 8, !tbaa !272
  %i.ax = fadd double %i.t, %i.aw
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ay = fmul nnan double %i.af, 5.000000e-01    ; 2 uses
  %i.az = extractelement <2 x double> %i.w, i64 1
  %i.ba = fadd double %i.az, %i.ay
  store double %i.ba, ptr %i.s, align 8, !tbaa !272
  %i.bb = fsub double %i.ag, %i.ay
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o, %bb.n
  %.sink = phi double [ %i.av, %bb.n ], [ %i.ax, %bb.o ], [ %i.bb, %bb.p ] ; 2 uses
  store double %.sink, ptr %i.r, align 8, !tbaa !124
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.l, %bb.f
  %i.bc = phi double [ %i.ag, %bb.f ], [ %i.ag, %bb.l ], [ %.sink, %.sink.split ]
  %i.bd = phi double [ %i.ah, %bb.f ], [ %i.ar, %bb.l ], [ %i.ar, %.sink.split ]
  %.1118 = phi double [ %i.ae, %bb.f ], [ %.0117, %bb.l ], [ %.0117, %.sink.split ] ; 2 uses
  %.0116 = phi double [ %i.af, %bb.f ], [ %i.af, %bb.l ], [ 0.000000e+00, %.sink.split ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !95
  %i.bg = uitofp i8 %i.bf to double               ; 2 uses
  %i.bh = fadd double %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !120
  %i.bk = sitofp i8 %i.bj to double               ; 6 uses
  %i.bl = fadd double %i.bh, %i.bk                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %i.bo = uitofp i64 %i.bn to double              ; 2 uses
  %i.bp = fdiv double %.1118, %i.bo               ; 3 uses
  %i.bq = fneg double %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bo, double %.1118) ; 2 uses
  %i.bs = fcmp ult double %i.br, 0.000000e+00
  %.in.v = select i1 %i.bs, double -5.000000e-01, double 5.000000e-01
  %.in = fadd double %i.br, %.in.v
  %i.bt = fptosi double %.in to i32               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !165 ; 3 uses
  %i.bw = add i64 %i.bn, 1                        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.bx = icmp ult i64 %i.bw, 2
  br i1 %i.bx, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.q
  %unroll_iter = and i64 %umax, -2
  br label %bb.s

.unr-lcssa:                                       ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.r, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.q
  %.0114152.epil.init = phi i64 [ 0, %bb.q ], [ %i.di, %.unr-lcssa ]
  %.0115151.epil.init = phi double [ %i.bl, %bb.q ], [ %i.dh, %.unr-lcssa ]
  %lcmp.mod247 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0114152.epil.init
  store double %.0115151.epil.init, ptr %i.by, align 8, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.bz = fsub double %i.bc, %i.bg
  %i.ca = fsub double %i.bz, %i.bk                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !122 ; 2 uses
  %i.cd = uitofp i64 %i.cc to double              ; 2 uses
  %i.ce = fdiv double %.0116, %i.cd               ; 3 uses
  %i.cf = fneg double %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cd, double %.0116) ; 2 uses
  %i.ch = fcmp ult double %i.cg, 0.000000e+00
  %.in135.v = select i1 %i.ch, double -5.000000e-01, double 5.000000e-01
  %.in135 = fadd double %i.cg, %.in135.v
  %i.ci = fptosi double %.in135 to i32            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !164 ; 3 uses
  %i.cl = add i64 %i.cc, 1                        ; 2 uses
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1) ; 3 uses
  %xtraiter250 = and i64 %umax156, 1
  %i.cm = icmp ult i64 %i.cl, 2
  br i1 %i.cm, label %.epil.preheader249, label %.new248

.new248:                                          ; preds = %bb.r
  %unroll_iter253 = and i64 %umax156, -2
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.new
  %.0114152 = phi i64 [ 0, %.new ], [ %i.di, %bb.s ] ; 6 uses
  %.0115151 = phi double [ %i.bl, %.new ], [ %i.dh, %bb.s ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0114152 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !28
  %i.cp = fadd double %i.bp, %i.co
  %i.cq = icmp ult i64 %.0114152, 2147483648
  %4 = trunc i64 %.0114152 to i32
  %i.cr = icmp slt i32 %4, %i.bt
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  %i.ct = uitofp i1 %i.cs to double
  %i.cu = fadd double %i.cp, %i.ct
  store double %.0115151, ptr %i.cn, align 8, !tbaa !28
  %i.cv = fadd double %i.cu, %i.bk
  %i.cw = fadd double %.0115151, %i.cv            ; 2 uses
  %i.cx = or disjoint i64 %.0114152, 1            ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cx ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !28
  %i.da = fadd double %i.bp, %i.cz
  %i.db = icmp ult i64 %.0114152, 2147483648
  %5 = trunc i64 %i.cx to i32
  %i.dc = icmp slt i32 %5, %i.bt
  %i.dd = select i1 %i.db, i1 %i.dc, i1 false
  %i.de = uitofp i1 %i.dd to double
  %i.df = fadd double %i.da, %i.de
  store double %i.cw, ptr %i.cy, align 8, !tbaa !28
  %i.dg = fadd double %i.df, %i.bk
  %i.dh = fadd double %i.cw, %i.dg                ; 2 uses
  %i.di = add nuw i64 %.0114152, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.s, !llvm.loop !273

.preheader.unr-lcssa:                             ; preds = %bb.t
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.preheader, label %.epil.preheader249

.epil.preheader249:                               ; preds = %.preheader.unr-lcssa, %bb.r
  %.0112154.epil.init = phi i64 [ 0, %bb.r ], [ %i.ej, %.preheader.unr-lcssa ]
  %.0113153.epil.init = phi double [ %i.ca, %bb.r ], [ %i.ei, %.preheader.unr-lcssa ]
  %lcmp.mod252 = trunc i64 %umax156 to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.0112154.epil.init
  store double %.0113153.epil.init, ptr %i.dj, align 8, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader249
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !98  ; 2 uses
  %.not137155 = icmp eq ptr %i.dk, null
  br i1 %.not137155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not138 = icmp eq i8 %2, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.new248
  %.0112154 = phi i64 [ 0, %.new248 ], [ %i.ej, %bb.t ] ; 6 uses
  %.0113153 = phi double [ %i.ca, %.new248 ], [ %i.ei, %bb.t ] ; 2 uses
  %niter254 = phi i64 [ 0, %.new248 ], [ %niter254.next.1, %bb.t ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.0112154 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !28
  %i.dq = fadd double %i.ce, %i.dp
  %i.dr = icmp ult i64 %.0112154, 2147483648
  %6 = trunc i64 %.0112154 to i32
  %i.ds = icmp slt i32 %6, %i.ci
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  %i.du = uitofp i1 %i.dt to double
  %i.dv = fadd double %i.dq, %i.du
  store double %.0113153, ptr %i.do, align 8, !tbaa !28
  %i.dw = fadd double %i.dv, %i.bk
  %i.dx = fsub double %.0113153, %i.dw            ; 2 uses
  %i.dy = or disjoint i64 %.0112154, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dy ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !28
  %i.eb = fadd double %i.ce, %i.ea
  %i.ec = icmp ult i64 %.0112154, 2147483648
  %7 = trunc i64 %i.dy to i32
  %i.ed = icmp slt i32 %7, %i.ci
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  %i.ef = uitofp i1 %i.ee to double
  %i.eg = fadd double %i.eb, %i.ef
  store double %i.dx, ptr %i.dz, align 8, !tbaa !28
  %i.eh = fadd double %i.eg, %i.bk
  %i.ei = fsub double %i.dx, %i.eh                ; 2 uses
  %i.ej = add nuw i64 %.0112154, 2                ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %.preheader.unr-lcssa, label %bb.t, !llvm.loop !274

bb.u:                                             ; preds = %.lr.ph, %pos_html_cell.exit
  %i.ek = phi ptr [ %i.dk, %.lr.ph ], [ %i.om, %pos_html_cell.exit ] ; 20 uses
  %.pn = phi ptr [ %i.c, %.lr.ph ], [ %i.el, %pos_html_cell.exit ]
  %i.el = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ek, i64 108
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !115 ; 3 uses
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %i.ek, i64 110
  %.pre162 = load i16, ptr %.phi.trans.insert161, align 2, !tbaa !119 ; 3 uses
  br i1 %.not138, label %._crit_edge158, label %bb.v

._crit_edge158:                                   ; preds = %bb.u
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %i.ek, i64 104
  %.pre160 = load i16, ptr %.phi.trans.insert159, align 8, !tbaa !116
  %.phi.trans.insert163 = getelementptr inbounds nuw i8, ptr %i.ek, i64 106
  %.pre164 = load i16, ptr %.phi.trans.insert163, align 2, !tbaa !121
  %.pre165 = zext i16 %.pre to i64
  %.pre166 = zext i16 %.pre160 to i64
  %.pre168 = zext i16 %.pre162 to i64
  %.pre170 = zext i16 %.pre164 to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.em = icmp eq i16 %.pre, 0
  %spec.select = select i1 %i.em, i8 8, i8 0      ; 2 uses
  %i.en = icmp eq i16 %.pre162, 0
  %i.eo = or disjoint i8 %spec.select, 4
  %.1 = select i1 %i.en, i8 %i.eo, i8 %spec.select ; 2 uses
  %i.ep = zext i16 %.pre to i64                   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 104
  %i.er = load i16, ptr %i.eq, align 8, !tbaa !116
  %i.es = zext i16 %i.er to i64                   ; 2 uses
  %i.et = add nuw nsw i64 %i.es, %i.ep
  %i.eu = load i64, ptr %i.bm, align 8, !tbaa !118
  %i.ev = icmp eq i64 %i.et, %i.eu
  %i.ew = or disjoint i8 %.1, 2
  %.2 = select i1 %i.ev, i8 %i.ew, i8 %.1
  %i.ex = zext i16 %.pre162 to i64                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 106
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !121
  %i.fa = zext i16 %i.ez to i64                   ; 2 uses
  %i.fb = add nuw nsw i64 %i.fa, %i.ex
  %i.fc = load i64, ptr %i.cb, align 8, !tbaa !122
  %i.fd = icmp eq i64 %i.fb, %i.fc
  %i.fe = zext i1 %i.fd to i8
  %spec.select139 = or disjoint i8 %.2, %i.fe
  %i.ff = and i8 %spec.select139, %2
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge158, %bb.v
  %.pre-phi171 = phi i64 [ %.pre170, %._crit_edge158 ], [ %i.fa, %bb.v ]
  %.pre-phi169 = phi i64 [ %.pre168, %._crit_edge158 ], [ %i.ex, %bb.v ]
  %.pre-phi167 = phi i64 [ %.pre166, %._crit_edge158 ], [ %i.es, %bb.v ]
  %.pre-phi = phi i64 [ %.pre165, %._crit_edge158 ], [ %i.ep, %bb.v ]
  %.3 = phi i8 [ 0, %._crit_edge158 ], [ %i.ff, %bb.v ] ; 2 uses
  %i.fg = load ptr, ptr %i.bu, align 8, !tbaa !165
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.pre-phi ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !28 ; 7 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.pre-phi167
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !28
  %i.fl = load i8, ptr %i.bi, align 4, !tbaa !120
  %i.fm = sitofp i8 %i.fl to double               ; 2 uses
  %i.fn = fsub double %i.fk, %i.fm                ; 5 uses
  %i.fo = load ptr, ptr %i.cj, align 8, !tbaa !164
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.pre-phi169 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !28 ; 5 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.pre-phi171
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !28
  %i.ft = fadd double %i.fs, %i.fm                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ek, i64 48 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.fv, null
  br i1 %.not.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ek, i64 128
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !117
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !76 ; 3 uses
  %.not81.i = icmp eq ptr %i.fz, null
  br i1 %.not81.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.fz) #22 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.z, label %gv_strdup.exit141

bb.z:                                             ; preds = %bb.y
  %i.gc = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gd = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fz) #25
  %i.ge = add i64 %i.gd, 1
  %i.gf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gc, ptr noundef nonnull @.str.8, i64 noundef %i.ge) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #26
  unreachable

gv_strdup.exit141:                                ; preds = %bb.y
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !269
  br label %bb.aa

bb.aa:                                            ; preds = %gv_strdup.exit141, %bb.x, %bb.w
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ek, i64 64 ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 8, !tbaa !221 ; 6 uses
  %i.gi = zext i16 %i.gh to i32                   ; 2 uses
  %i.gj = and i32 %i.gi, 1
  %.not82.i = icmp eq i32 %i.gj, 0
  br i1 %.not82.i, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %.sroa.0.0.copyload.i = load double, ptr %i.gk, align 8, !tbaa !28 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %.sroa.9.0.copyload.i = load double, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !28 ; 2 uses
  %i.gl = fsub double %i.fn, %i.fi
  %i.gm = fsub double %i.gl, %.sroa.0.0.copyload.i ; 4 uses
  %i.gn = fcmp ogt double %i.gm, 0.000000e+00
  br i1 %i.gn, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.go = and i32 %i.gi, 6
  switch i32 %i.go, label %bb.af [
    i32 4, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gp = fadd double %i.fi, %.sroa.0.0.copyload.i
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.gq = fadd double %i.fn, %i.gm
  %i.gr = fadd double %i.fi, %i.gm
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.gs = fmul nnan double %i.gm, 5.000000e-01    ; 2 uses
  %i.gt = fadd double %i.fi, %i.gs
  %i.gu = fsub double %i.fn, %i.gs
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sroa.15.0 = phi double [ %i.gu, %bb.af ], [ %i.gp, %bb.ad ], [ %i.gq, %bb.ae ], [ %i.fn, %bb.ab ] ; 4 uses
  %.sroa.0142.0 = phi double [ %i.gt, %bb.af ], [ %i.fi, %bb.ad ], [ %i.gr, %bb.ae ], [ %i.fi, %bb.ab ] ; 4 uses
  %i.gv = fsub double %i.fq, %i.ft
  %i.gw = fsub double %i.gv, %.sroa.9.0.copyload.i ; 4 uses
  %i.gx = fcmp ogt double %i.gw, 0.000000e+00
  br i1 %i.gx, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.gy = and i16 %i.gh, 24
  switch i16 %i.gy, label %bb.ak [
    i16 16, label %bb.ai
    i16 8, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gz = fadd double %i.ft, %.sroa.9.0.copyload.i
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ha = fadd double %i.fq, %i.gw
  %i.hb = fadd double %i.ft, %i.gw
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.hc = fmul nnan double %i.gw, 5.000000e-01    ; 2 uses
  %i.hd = fadd double %i.ft, %i.hc
  %i.he = fsub double %i.fq, %i.hc
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.aa
  %.sroa.22.0 = phi double [ %i.fq, %bb.aa ], [ %i.he, %bb.ak ], [ %i.gz, %bb.ai ], [ %i.ha, %bb.aj ], [ %i.fq, %bb.ag ] ; 2 uses
  %.sroa.15.1 = phi double [ %i.fn, %bb.aa ], [ %.sroa.15.0, %bb.ak ], [ %.sroa.15.0, %bb.ai ], [ %.sroa.15.0, %bb.aj ], [ %.sroa.15.0, %bb.ag ] ; 2 uses
  %.sroa.9.0 = phi double [ %i.ft, %bb.aa ], [ %i.hd, %bb.ak ], [ %i.ft, %bb.ai ], [ %i.hb, %bb.aj ], [ %i.ft, %bb.ag ] ; 2 uses
  %.sroa.0142.1 = phi double [ %i.fi, %bb.aa ], [ %.sroa.0142.0, %bb.ak ], [ %.sroa.0142.0, %bb.ai ], [ %.sroa.0142.0, %bb.aj ], [ %.sroa.0142.0, %bb.ag ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  store double %.sroa.0142.1, ptr %i.hf, align 8, !tbaa !28
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !28
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  store double %.sroa.15.1, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !28
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  store double %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !28
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ek, i64 63
  store i8 %.3, ptr %i.hg, align 1, !tbaa !275
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ek, i64 61
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !108
  %i.hj = uitofp i8 %i.hi to double               ; 4 uses
  %i.hk = fadd double %.sroa.0142.1, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ek, i64 62
end_hunk_0
