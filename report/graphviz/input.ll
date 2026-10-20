Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/input?download=true
inline.NumInlined: 77
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@graph_init:bb.a
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !46
  %.val.i6.pr.i = load i8, ptr %i.l, align 1, !tbaa !46
  br label %agxbputc.exit.i

agxbputc.exit.i:                                  ; preds = %bb.h, %bb.g
  %.val.i8.pr.i = phi i8 [ %.val.i6.pr.i, %bb.h ], [ %i.u, %bb.g ]
  %.not.i7.i = icmp eq i8 %.val.i8.pr.i, -1
  br i1 %.not.i7.i, label %bb.i, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i, %bb.c
  store i8 0, ptr %i.l, align 1, !tbaa !46
  br label %agxbuse.exit

bb.i:                                             ; preds = %agxbputc.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !46
  %i.ac = load ptr, ptr %2, align 8, !tbaa !46
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.thread.i, %bb.i
  %i.ad = phi ptr [ %i.ac, %bb.i ], [ %2, %agxbclear.exit.thread.i ]
  %i.ae = call ptr @agmemconcat(ptr noundef nonnull %0, ptr noundef %i.ad) #23 ; 0 uses
  %.val163 = load i8, ptr %i.l, align 1, !tbaa !46
  %i.af = icmp eq i8 %.val163, -1
  br i1 %i.af, label %bb.j, label %agxbfree.exit

bb.j:                                             ; preds = %agxbuse.exit
  %.val = load ptr, ptr %2, align 8
  call void @free(ptr noundef %.val) #23
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %agxbuse.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.k

bb.k:                                             ; preds = %agxbfree.exit, %gv_alloc.exit
  %i.ag = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #23 ; 2 uses
  %.not149 = icmp eq ptr %i.ag, null
  br i1 %.not149, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = call ptr @getenv(ptr noundef nonnull @.str.51) #23 ; 2 uses
  %.not150 = icmp eq ptr %i.ah, null
  br i1 %.not150, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi ptr [ %i.ag, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = call i32 @setenv(ptr noundef nonnull @.str.52, ptr noundef nonnull %.0, i32 noundef 1) #23 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.138, ptr noundef null) #23
  %i.ak = call ptr @late_nnstring(ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef nonnull @.str.139) #23 ; 12 uses
  %i.al = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.140) #29
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %findCharset.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.141) #29
  %.not14.i = icmp eq i32 %i.am, 0
  br i1 %.not14.i, label %findCharset.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.142) #29
  %.not15.i = icmp eq i32 %i.an, 0
  br i1 %.not15.i, label %findCharset.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.120) #29
  %.not16.i = icmp eq i32 %i.ao, 0
  br i1 %.not16.i, label %findCharset.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.143) #29
  %.not17.i = icmp eq i32 %i.ap, 0
  br i1 %.not17.i, label %findCharset.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.144) #29
  %.not18.i = icmp eq i32 %i.aq, 0
  br i1 %.not18.i, label %findCharset.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.145) #29
  %.not19.i = icmp eq i32 %i.ar, 0
  br i1 %.not19.i, label %findCharset.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.146) #29
  %.not20.i = icmp eq i32 %i.as, 0
  br i1 %.not20.i, label %findCharset.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.147) #29
  %.not21.i = icmp eq i32 %i.at, 0
  br i1 %.not21.i, label %findCharset.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.139) #29
  %.not22.i = icmp eq i32 %i.au, 0
  br i1 %.not22.i, label %findCharset.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.148) #29
  %.not23.i = icmp eq i32 %i.av, 0
  br i1 %.not23.i, label %findCharset.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.149, ptr noundef %i.ak) #23
  br label %findCharset.exit

findCharset.exit:                                 ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i = phi i8 [ 0, %bb.y ], [ 2, %bb.u ], [ 1, %bb.n ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.o ], [ 2, %bb.v ], [ 0, %bb.x ], [ 0, %bb.w ]
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 131
  store i8 %.0.i, ptr %i.ax, align 1, !tbaa !113
  %i.ay = load ptr, ptr @HTTPServerEnVar, align 8, !tbaa !45
  %.not151 = icmp eq ptr %i.ay, null
  br i1 %.not151, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %findCharset.exit
  %i.az = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #23 ; 2 uses
  store ptr %i.az, ptr @Gvimagepath, align 8, !tbaa !45
  %.not152 = icmp eq ptr %i.az, null
  br i1 %.not152, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ba = load ptr, ptr @Gvfilepath, align 8, !tbaa !45
  store ptr %i.ba, ptr @Gvimagepath, align 8, !tbaa !45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %findCharset.exit
  %i.bb = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef null) #23
  %i.bc = call double @late_double(ptr noundef nonnull %0, ptr noundef %i.bb, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !72
  store double %i.bc, ptr %i.bf, align 8, !tbaa !114
  %i.bg = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.55) #23 ; 8 uses
  %.not153 = icmp eq ptr %i.bg, null
  br i1 %.not153, label %.tail170, label %sub_0

sub_0:                                            ; preds = %bb.ab
  %i.bh = load i8, ptr %i.bg, align 1
  switch i8 %i.bh, label %.tail170 [
    i8 76, label %sub_1
    i8 66, label %sub_1167
    i8 82, label %sub_1172
  ]

sub_1:                                            ; preds = %sub_0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %.not176 = icmp eq i8 %i.bj, 82
  br i1 %.not176, label %.tail, label %sub_0171.thread201

.tail:                                            ; preds = %sub_1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %.tail170, label %sub_0171.thread201

sub_1167:                                         ; preds = %sub_0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bo = load i8, ptr %i.bn, align 1
  %.not178 = icmp eq i8 %i.bo, 84
  br i1 %.not178, label %.tail165, label %sub_0171.thread201

.tail165:                                         ; preds = %sub_1167
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 0
  %spec.select = select i1 %i.br, i32 2, i32 0
  br label %.tail170

sub_0171.thread201:                               ; preds = %sub_1167, %sub_1, %.tail
  br label %.tail170

sub_1172:                                         ; preds = %sub_0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %.not180 = icmp eq i8 %i.bt, 76
  br i1 %.not180, label %sub_2173, label %.tail170

sub_2173:                                         ; preds = %sub_1172
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = icmp eq i8 %i.bv, 0
  %i.bx = select i1 %i.bw, i32 3, i32 0
  br label %.tail170

.tail170:                                         ; preds = %.tail165, %sub_0, %sub_2173, %sub_1172, %sub_0171.thread201, %.tail, %bb.ab
  %.0137 = phi i32 [ 0, %bb.ab ], [ 1, %.tail ], [ %spec.select, %.tail165 ], [ 0, %sub_0 ], [ 0, %sub_1172 ], [ %i.bx, %sub_2173 ], [ 0, %sub_0171.thread201 ] ; 2 uses
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 132
  %i.ca = shl nuw nsw i32 %.0137, 2
  %i.cb = mul nuw nsw i32 %.0137, 5
  %.sink = select i1 %1, i32 %i.cb, i32 %i.ca
  store i32 %.sink, ptr %i.bz, align 4, !tbaa !74
  %i.cc = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.59, ptr noundef null) #23
  %i.cd = call double @late_double(ptr noundef nonnull %0, ptr noundef %i.cc, double noundef 2.500000e-01, double noundef 2.000000e-02) #23 ; 3 uses
  store double %i.cd, ptr %i.a, align 8, !tbaa !51
  %i.ce = fmul double %i.cd, 7.200000e+01
  %i.cf = fcmp ult double %i.ce, 0.000000e+00
  %3 = insertelement <2 x double> poison, double %i.cd, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> splat (double 7.200000e+01), <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  %.in = select i1 %i.cf, double %7, double %6
  %i.cg = fptosi double %.in to i32
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 352
  store i32 %i.cg, ptr %i.ci, align 8, !tbaa !115
  %i.cj = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef null) #23
  %i.ck = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.cj, ptr noundef null) #23 ; 3 uses
  %.not154 = icmp eq ptr %i.ck, null
  br i1 %.not154, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %.tail170
  %i.cl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ck, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.a) #23
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load double, ptr %i.a, align 8, !tbaa !51 ; 2 uses
  %i.co = fcmp olt double %i.cn, 2.000000e-02
  br i1 %i.co, label %.sink.split, label %bb.ae

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  %.sink203 = phi double [ 5.000000e-01, %bb.ac ], [ 2.000000e-02, %bb.ad ] ; 2 uses
  store double %.sink203, ptr %i.a, align 8, !tbaa !51
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %i.cp = phi double [ %i.cn, %bb.ad ], [ %.sink203, %.sink.split ] ; 2 uses
  %i.cq = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) @.str.61) #29
  %.not155 = icmp eq ptr %i.cq, null
  %.pre181 = load ptr, ptr %i.f, align 8, !tbaa !58 ; 3 uses
  br i1 %.not155, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre181, i64 396
  store i8 1, ptr %i.cr, align 4, !tbaa !116
  br label %bb.ah

bb.ag:                                            ; preds = %.tail170
  store double 5.000000e-01, ptr %i.a, align 8, !tbaa !51
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !58
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %i.cs = phi ptr [ %.pre181, %bb.ae ], [ %.pre181, %bb.af ], [ %.pre, %bb.ag ]
  %i.ct = phi double [ %i.cp, %bb.ae ], [ %i.cp, %bb.af ], [ 5.000000e-01, %bb.ag ] ; 2 uses
  %i.cu = fmul double %i.ct, 7.200000e+01
  %i.cv = fcmp ult double %i.cu, 0.000000e+00
  %8 = insertelement <2 x double> poison, double %i.ct, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> splat (double 7.200000e+01), <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %12 = extractelement <2 x double> %10, i64 1
  %.in156 = select i1 %i.cv, double %12, double %11
  %i.cw = fptosi double %.in156 to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 356
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !117
  %i.cy = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef null) #23
  %i.cz = call i32 @late_int(ptr noundef nonnull %0, ptr noundef %i.cy, i32 noundef 0, i32 noundef 0) #23
  %spec.store.select = call i32 @llvm.smin.i32(i32 %i.cz, i32 255)
  %i.da = trunc i32 %spec.store.select to i8
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 345
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !118
  %i.dd = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.63, ptr noundef null) #23
  %i.de = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.dd, ptr noundef null) #23
  %i.df = call i32 @maptoken(ptr noundef %i.de, ptr noundef nonnull @graph_init.fontnamenames, ptr noundef nonnull @graph_init.fontnamecodes) #23
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 348
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !119
  %i.di = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.150) #23 ; 6 uses
  %.not.i164 = icmp eq ptr %i.di, null
  br i1 %.not.i164, label %.setRatio.exit_crit_edge, label %bb.ai

.setRatio.exit_crit_edge:                         ; preds = %bb.ah
  %.pre182 = load ptr, ptr %i.f, align 8, !tbaa !58
  br label %setRatio.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.di, ptr noundef nonnull dereferenceable(5) @.str.151) #29
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !72
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 84
  store i32 4, ptr %i.do, align 4, !tbaa !120
  br label %setRatio.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.di, ptr noundef nonnull dereferenceable(9) @.str.152) #29
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !72
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 84
  store i32 3, ptr %i.du, align 4, !tbaa !120
  br label %setRatio.exit

bb.am:                                            ; preds = %bb.ak
  %i.dv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.di, ptr noundef nonnull dereferenceable(7) @.str.153) #29
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !72
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 84
  store i32 5, ptr %i.ea, align 4, !tbaa !120
  br label %setRatio.exit

bb.ao:                                            ; preds = %bb.am
  %i.eb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.di, ptr noundef nonnull dereferenceable(5) @.str.154) #29
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !72
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 84
  store i32 2, ptr %i.eg, align 4, !tbaa !120
  br label %setRatio.exit

bb.aq:                                            ; preds = %bb.ao
  %i.eh = call double @strtod(ptr noundef nonnull captures(none) %i.di, ptr noundef null) #23, !inline_history !1 ; 2 uses
  %i.ei = fcmp ogt double %i.eh, 0.000000e+00
  %.pre183 = load ptr, ptr %i.f, align 8, !tbaa !58 ; 3 uses
  br i1 %i.ei, label %bb.ar, label %setRatio.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre183, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !72 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 84
  store i32 1, ptr %i.el, align 4, !tbaa !120
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store double %i.eh, ptr %i.em, align 8, !tbaa !121
  br label %setRatio.exit

setRatio.exit:                                    ; preds = %.setRatio.exit_crit_edge, %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.aq, %bb.ar
  %i.en = phi ptr [ %.pre182, %.setRatio.exit_crit_edge ], [ %i.dl, %bb.aj ], [ %i.dr, %bb.al ], [ %i.dx, %bb.an ], [ %i.ed, %bb.ap ], [ %.pre183, %bb.aq ], [ %.pre183, %bb.ar ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !72
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.er = call fastcc zeroext i1 @getdoubles2ptf(ptr noundef nonnull %0, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.eq)
  %i.es = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !72 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  %i.ew = zext i1 %i.er to i8
  store i8 %i.ew, ptr %i.ev, align 8, !tbaa !122
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ey = call fastcc zeroext i1 @getdoubles2ptf(ptr noundef nonnull %0, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.ex) ; 0 uses
  %i.ez = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.66) #23
  %i.fa = call zeroext i1 @mapbool(ptr noundef %i.ez) #23
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !72
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 82
  %i.ff = zext i1 %i.fa to i8
  store i8 %i.ff, ptr %i.fe, align 2, !tbaa !123
  %i.fg = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.67) #23 ; 2 uses
  %.not157 = icmp eq ptr %i.fg, null
  br i1 %.not157, label %bb.at, label %bb.as

bb.as:                                            ; preds = %setRatio.exit
  %i.fh = call i64 @strtol(ptr noundef nonnull captures(none) %i.fg, ptr noundef null, i32 noundef 10) #23, !inline_history !0
  %i.fi = and i64 %i.fh, 4294967295
  %i.fj = icmp eq i64 %i.fi, 90
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !72
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 81
  %i.fo = zext i1 %i.fj to i8
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !124
  br label %bb.ax

bb.at:                                            ; preds = %setRatio.exit
  %i.fp = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.68) #23 ; 2 uses
  %.not158 = icmp eq ptr %i.fp, null
  br i1 %.not158, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !46
  %i.fr = and i8 %i.fq, -33
  %narrow = icmp eq i8 %i.fr, 76
  %i.fs = zext i1 %narrow to i8
  %i.ft = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !72
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 81
  store i8 %i.fs, ptr %i.fw, align 1, !tbaa !124
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.fx = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.69) #23 ; 2 uses
  %.not159 = icmp eq ptr %i.fx, null
  br i1 %.not159, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fy = call zeroext i1 @mapbool(ptr noundef nonnull %i.fx) #23
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !72
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 81
  %i.gd = zext i1 %i.fy to i8
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !124
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.aw, %bb.av, %bb.as
  %i.ge = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #23
  %i.gf = call i32 @maptoken(ptr noundef %i.ge, ptr noundef nonnull @graph_init.rankname, ptr noundef nonnull @graph_init.rankcode) #23
  store i32 %i.gf, ptr @CL_type, align 4, !tbaa !10
  %i.gg = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.71) #23
  %i.gh = call zeroext i1 @mapbool(ptr noundef %i.gg) #23
  %i.gi = zext i1 %i.gh to i8
  store i8 %i.gi, ptr @Concentrate, align 1, !tbaa !52
  store i32 0, ptr @State, align 4, !tbaa !10
  store i32 0, ptr @EdgeLabelsDone, align 4, !tbaa !10
  %i.gj = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef null) #23
  %i.gk = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef null) #23
  %i.gl = call double @late_double(ptr noundef nonnull %0, ptr noundef %i.gk, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  %i.gm = call double @late_double(ptr noundef nonnull %0, ptr noundef %i.gj, double noundef %i.gl, double noundef 0.000000e+00) #23
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !72
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store double %i.gm, ptr %i.gq, align 8, !tbaa !125
  call void @do_graph_label(ptr noundef nonnull %0)
  store double f0x479E17B84357691B, ptr @Initial_dist, align 8, !tbaa !51
  %i.gr = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef null) #23
  store ptr %i.gr, ptr @G_ordering, align 8, !tbaa !127
  %i.gs = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef null) #23
  store ptr %i.gs, ptr @G_gradientangle, align 8, !tbaa !127
  %i.gt = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef null) #23
  store ptr %i.gt, ptr @G_margin, align 8, !tbaa !127
  %i.gu = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.77, ptr noundef null) #23
  store ptr %i.gu, ptr @N_height, align 8, !tbaa !127
  %i.gv = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef null) #23
  store ptr %i.gv, ptr @N_width, align 8, !tbaa !127
  %i.gw = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef null) #23
  store ptr %i.gw, ptr @N_shape, align 8, !tbaa !127
  %i.gx = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef null) #23
  store ptr %i.gx, ptr @N_color, align 8, !tbaa !127
  %i.gy = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef null) #23
  store ptr %i.gy, ptr @N_fillcolor, align 8, !tbaa !127
  %i.gz = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef null) #23
  store ptr %i.gz, ptr @N_style, align 8, !tbaa !127
end_hunk_0
