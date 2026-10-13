Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@xdotBB:bb.a
  %i.fn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fm, ptr noundef nonnull @.str.45, i64 noundef 72) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_alloc.exit:                                    ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %.0118, i64 120 ; 3 uses
  store ptr %i.fg, ptr %i.fo, align 8, !tbaa !138
  %i.fp = getelementptr inbounds nuw i8, ptr %.0118, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !14 ; 2 uses
  %i.fr = call noalias ptr @strdup(ptr noundef readonly %i.fq) #27 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.y, label %gv_strdup.exit

bb.y:                                             ; preds = %gv_alloc.exit
  %i.ft = extractelement <2 x double> %i.af, i64 1
  store double %i.ft, ptr %i.y, align 8
  %i.fu = extractelement <2 x double> %i.ag, i64 1
  store double %i.fu, ptr %i.z, align 8
  %i.fv = extractelement <2 x double> %i.af, i64 0
  store double %i.fv, ptr %i.k, align 8
  %i.fw = extractelement <2 x double> %i.ag, i64 0
  store double %i.fw, ptr %0, align 8
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fy = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fq) #31
  %i.fz = add i64 %i.fy, 1
  %i.ga = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.45, i64 noundef %i.fz) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit:                                   ; preds = %gv_alloc.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  store ptr %i.fr, ptr %i.fg, align 8, !tbaa !240
  %i.gc = getelementptr inbounds nuw i8, ptr %.0118, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !14
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr @adjust, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  store i8 %i.gg, ptr %i.gh, align 8, !tbaa !241
  store ptr %.063115, ptr %2, align 8, !tbaa !244
  store double %.065114, ptr %i.v, align 8, !tbaa !245
  %i.gi = load i32, ptr %i.w, align 8
  %i.gj = and i32 %.062116, 127
  %i.gk = and i32 %i.gi, -128
  %i.gl = or disjoint i32 %i.gk, %i.gj
  store i32 %i.gl, ptr %i.w, align 8
  %i.gm = load ptr, ptr %i.x, align 8, !tbaa !246 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !143
  %i.go = call ptr %i.gn(ptr noundef nonnull %i.gm, ptr noundef nonnull %2, i32 noundef 1) #27
  %i.gp = load ptr, ptr %i.fo, align 8, !tbaa !138 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.go, ptr %i.gq, align 8, !tbaa !247
  %i.gr = call { double, double } @textspan_size(ptr noundef %i.d, ptr noundef %i.gp) #27 ; 0 uses
  %i.gs = load double, ptr %i.gb, align 8, !tbaa !14 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !14
  %i.gv = load ptr, ptr %i.fo, align 8, !tbaa !138 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %.sroa.0.0.copyload.i = load double, ptr %i.gw, align 8, !tbaa !110, !noalias !248 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %.sroa.7.0.copyload.i = load double, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !110, !noalias !248
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !241, !noalias !248
  switch i8 %i.gy, label %bb.ac [
    i8 108, label %bb.z
    i8 110, label %bb.aa
    i8 114, label %bb.ab
  ]

bb.z:                                             ; preds = %gv_strdup.exit
  %i.gz = fadd double %i.gs, %.sroa.0.0.copyload.i
  br label %textBB.exit

bb.aa:                                            ; preds = %gv_strdup.exit
  %i.ha = fmul double %.sroa.0.0.copyload.i, 5.000000e-01 ; 2 uses
  %i.hb = fsub double %i.gs, %i.ha
  %i.hc = fadd double %i.gs, %i.ha
  br label %textBB.exit

bb.ab:                                            ; preds = %gv_strdup.exit
  %i.hd = fsub double %i.gs, %.sroa.0.0.copyload.i
  br label %textBB.exit

bb.ac:                                            ; preds = %gv_strdup.exit
  %i.he = extractelement <2 x double> %i.af, i64 1
  store double %i.he, ptr %i.y, align 8
  %i.hf = extractelement <2 x double> %i.ag, i64 1
  store double %i.hf, ptr %i.z, align 8
  %i.hg = extractelement <2 x double> %i.af, i64 0
  store double %i.hg, ptr %i.k, align 8
  %i.hh = extractelement <2 x double> %i.ag, i64 0
  store double %i.hh, ptr %0, align 8
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !17, !noalias !248
  %i.hj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.38, i32 noundef 3131) #29, !noalias !248 ; 0 uses
  call void @abort() #33, !noalias !248
  unreachable

textBB.exit:                                      ; preds = %bb.z, %bb.aa, %bb.ab
  %.sroa.8.0 = phi double [ %i.gz, %bb.z ], [ %i.hc, %bb.aa ], [ %i.gs, %bb.ab ] ; 2 uses
  %.sroa.0.0 = phi double [ %i.gs, %bb.z ], [ %i.hb, %bb.aa ], [ %i.hd, %bb.ab ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !249, !noalias !248
  %i.hm = fadd double %i.gu, %i.hl                ; 3 uses
  %i.hn = fsub double %i.hm, %.sroa.7.0.copyload.i ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0118, i64 88
  store double %.sroa.0.0, ptr %i.ho, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %.0118, i64 96
  store double %i.hn, ptr %.sroa.5.0..sroa_idx9, align 8, !tbaa !110
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.0118, i64 104
  store double %.sroa.8.0, ptr %.sroa.6.0..sroa_idx11, align 8, !tbaa !110
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %.0118, i64 112
  store double %i.hm, ptr %.sroa.7.0..sroa_idx13, align 8, !tbaa !110
  %i.hp = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.hn, i64 1 ; 2 uses
  %i.hr = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.af, <2 x double> %i.hq)
  %i.hs = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ag, <2 x double> %i.hq)
  %i.ht = insertelement <2 x double> poison, double %.sroa.8.0, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hm, i64 1 ; 2 uses
  %i.hv = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.hr, <2 x double> %i.hu) ; 2 uses
  %i.hw = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.hs, <2 x double> %i.hu) ; 2 uses
  %i.hx = load ptr, ptr %i.aa, align 8, !tbaa !250
  %.not68 = icmp eq ptr %i.hx, null
  br i1 %.not68, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %textBB.exit
  store ptr @freePara, ptr %i.aa, align 8, !tbaa !250
  br label %bb.ag

bb.ae:                                            ; preds = %bb.f
  %i.hy = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !14
  %i.ia = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !14
  br label %bb.ag

bb.af:                                            ; preds = %bb.f
  %i.ic = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %textBB.exit, %bb.ad, %bb.af, %bb.ae, %ptsBB.exit82, %ptsBB.exit75, %ptsBB.exit, %bb.g
  %.166 = phi double [ %.065114, %bb.f ], [ %.065114, %bb.g ], [ %.065114, %ptsBB.exit ], [ %.065114, %ptsBB.exit75 ], [ %.065114, %ptsBB.exit82 ], [ %.065114, %textBB.exit ], [ %.065114, %bb.ad ], [ %i.hz, %bb.ae ], [ %.065114, %bb.af ]
  %.164 = phi ptr [ %.063115, %bb.f ], [ %.063115, %bb.g ], [ %.063115, %ptsBB.exit ], [ %.063115, %ptsBB.exit75 ], [ %.063115, %ptsBB.exit82 ], [ %.063115, %textBB.exit ], [ %.063115, %bb.ad ], [ %i.ib, %bb.ae ], [ %.063115, %bb.af ]
  %.1 = phi i32 [ %.062116, %bb.f ], [ %.062116, %bb.g ], [ %.062116, %ptsBB.exit ], [ %.062116, %ptsBB.exit75 ], [ %.062116, %ptsBB.exit82 ], [ %.062116, %textBB.exit ], [ %.062116, %bb.ad ], [ %.062116, %bb.ae ], [ %i.id, %bb.af ]
  %i.ie = phi <2 x double> [ %i.af, %bb.f ], [ %i.au, %bb.g ], [ %i.cg, %ptsBB.exit ], [ %i.ds, %ptsBB.exit75 ], [ %i.fe, %ptsBB.exit82 ], [ %i.hv, %textBB.exit ], [ %i.hv, %bb.ad ], [ %i.af, %bb.ae ], [ %i.af, %bb.af ] ; 3 uses
  %i.if = phi <2 x double> [ %i.ag, %bb.f ], [ %i.av, %bb.g ], [ %i.ch, %ptsBB.exit ], [ %i.dt, %ptsBB.exit75 ], [ %i.ff, %ptsBB.exit82 ], [ %i.hw, %textBB.exit ], [ %i.hw, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ag, %bb.af ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0118, i64 128
  %i.ih = add nuw i64 %.061117, 1                 ; 2 uses
  %i.ii = load i64, ptr %i.i, align 8, !tbaa !133
  %i.ij = icmp ult i64 %i.ih, %i.ii
  br i1 %i.ij, label %bb.f, label %..loopexit_crit_edge, !llvm.loop !231

..loopexit_crit_edge:                             ; preds = %bb.ag
  %i.ik = extractelement <2 x double> %i.ie, i64 1
  store double %i.ik, ptr %i.y, align 8
  %i.il = extractelement <2 x double> %i.if, i64 1
  store double %i.il, ptr %i.z, align 8
  %i.im = extractelement <2 x double> %i.ie, i64 0
  %i.in = extractelement <2 x double> %i.if, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.e
  %.lcssa110 = phi double [ %i.in, %..loopexit_crit_edge ], [ %.promoted109, %bb.e ]
  %.lcssa105 = phi double [ %i.im, %..loopexit_crit_edge ], [ %.promoted, %bb.e ]
  store double %.lcssa105, ptr %i.k, align 8
  store double %.lcssa110, ptr %0, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare { double, double } @textspan_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @freePara(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !137
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  tail call void @free_textspan(ptr noundef %i.d, i64 noundef 1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @emit_graph(ptr noundef initializes((616, 632), (648, 664)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.boxf, align 8               ; 5 uses
  %3 = alloca [2 x %struct.pointf_s], align 16    ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %4 = alloca %struct.agxbuf, align 8             ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !110 ; 2 uses
  %i.j = insertelement <2 x double> poison, double %i.f, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i
  %i.m = fdiv <2 x double> %i.l, splat (double 7.200000e+01) ; 2 uses
  store <2 x double> %i.m, ptr %i.h, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.o = fdiv <2 x double> %i.i, splat (double 7.200000e+01) ; 2 uses
  store <2 x double> %i.o, ptr %i.n, align 8, !tbaa !110
  %i.p = and i32 %i.d, 4096
  %i.q = icmp ne i32 %i.p, 0
  %i.r = load i8, ptr @Y_invert, align 1, !range !145
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.u = extractelement <2 x double> %i.o, i64 1
  %i.v = fneg double %i.u
  store double %i.v, ptr %i.t, align 8, !tbaa !277
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !146
  %.not = icmp eq i32 %i.x, 0                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %. = select i1 %.not, ptr %i.y, ptr %i.z
  %.757 = select i1 %.not, ptr %i.z, ptr %i.y
  %.pn564.in = load i32, ptr %.757, align 4, !tbaa !47
  %.pn.in = load i32, ptr %., align 4, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.pn564 = uitofp i32 %.pn564.in to double
  %.pn = uitofp i32 %.pn.in to double
  %i.ab = insertelement <2 x double> poison, double %.pn, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %.pn564, i64 1
  %i.ad = fdiv <2 x double> %i.ac, %i.m
  store <2 x double> %i.ad, ptr %i.aa, align 8, !tbaa !110
  %i.ae = tail call ptr @agattr_text(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef null) #27
  %i.af = tail call ptr @late_string(ptr noundef %1, ptr noundef %i.ae, ptr noundef nonnull @.str.13) #27
  tail call void @gvrender_comment(ptr noundef nonnull %0, ptr noundef %i.af) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !103
  %i.ah = tail call noalias dereferenceable_or_null(432) ptr @calloc(i64 noundef 1, i64 noundef 432) #28 ; 14 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.d, label %gv_alloc.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.45, i64 noundef 432) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_alloc.exit.i.i:                                ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 8 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !46
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %gv_alloc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !tbaa.struct !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !tbaa.struct !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.at = load <2 x i32>, ptr %i.ar, align 8, !tbaa !47
  store <2 x i32> %i.at, ptr %i.as, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %i.av = load double, ptr %i.au, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  store double %i.av, ptr %i.aw, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !tbaa.struct !48
  br label %emit_begin_graph.exit

bb.f:                                             ; preds = %gv_alloc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  store i32 3, ptr %i.bc, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  store double 1.000000e+00, ptr %i.bd, align 8, !tbaa !49
  br label %emit_begin_graph.exit

emit_begin_graph.exit:                            ; preds = %bb.e, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 0, ptr %i.be, align 8, !tbaa !147
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %1, ptr %i.bf, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 0, ptr %i.bg, align 8, !tbaa !148
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !149
  tail call fastcc void @initObjMapData(ptr noundef nonnull %0, ptr noundef %i.bk, ptr noundef %1)
  tail call void @gvrender_begin_graph(ptr noundef nonnull %0) #27
  %i.bl = and i32 %i.d, 2
  %.not54 = icmp eq i32 %i.bl, 0
  br i1 %.not54, label %emit_colors.exit, label %bb.g

bb.g:                                             ; preds = %emit_begin_graph.exit
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #27
  %i.bm = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.26) #27 ; 3 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14
  %.not70.i = icmp eq i8 %i.bn, 0
  br i1 %.not70.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull %i.bm) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bo = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.56) #27 ; 3 uses
  %.not71.i = icmp eq ptr %i.bo, null
  br i1 %.not71.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %.not72.i = icmp eq i8 %i.bp, 0
  br i1 %.not72.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull %i.bo) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  tail call fastcc void @emit_cluster_colors(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.bq = tail call ptr @agfstnode(ptr noundef nonnull %1) #27 ; 2 uses
  %.not73107.i = icmp eq ptr %i.bq, null
  br i1 %.not73107.i, label %emit_colors.exit, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.m, %._crit_edge106.i
  %.061108.i = phi ptr [ %i.cz, %._crit_edge106.i ], [ %i.bq, %bb.m ] ; 6 uses
  %i.br = tail call ptr @agget(ptr noundef nonnull %.061108.i, ptr noundef nonnull @.str.23) #27 ; 3 uses
  %.not74.i = icmp eq ptr %i.br, null
  br i1 %.not74.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph110.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %.not75.i = icmp eq i8 %i.bs, 0
  br i1 %.not75.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %i.br) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph110.i
  %i.bt = tail call ptr @agget(ptr noundef nonnull %.061108.i, ptr noundef nonnull @.str.24) #27 ; 3 uses
  %.not76.i = icmp eq ptr %i.bt, null
  br i1 %.not76.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %.not77.i = icmp eq i8 %i.bu, 0
  br i1 %.not77.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %i.bt) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bv = tail call ptr @agget(ptr noundef nonnull %.061108.i, ptr noundef nonnull @.str.25) #27 ; 6 uses
  %.not78.i = icmp eq ptr %i.bv, null
  br i1 %.not78.i, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %.not79.i = icmp eq i8 %i.bw, 0
  br i1 %.not79.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bv, i32 noundef 58) #31
  %.not80.i = icmp eq ptr %i.bx, null
  br i1 %.not80.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.bv) #27 ; 3 uses
end_hunk_0
begin_hunk_1_@emit_graph:bb.a
  br i1 %i.mu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.split.i
  %i.mv = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.mw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mv, ptr noundef nonnull @.str.45, i64 noundef 64) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i:                                 ; preds = %.split72.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !tbaa.struct !120
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !120
  br label %bb.cv

bb.cu:                                            ; preds = %.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mt, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !tbaa.struct !120
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !120
  call void @rect2poly(ptr noundef nonnull %i.mt) #27
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %gv_calloc.exit.i, %bb.cq
  %.1.i = phi i64 [ 2, %gv_calloc.exit.i ], [ 4, %bb.cu ], [ 0, %bb.cq ] ; 2 uses
  %.069.i = phi ptr [ %i.mp, %gv_calloc.exit.i ], [ %i.mt, %bb.cu ], [ null, %bb.cq ] ; 3 uses
  %i.mz = and i32 %i.fu, 8192
  %.not79.i64 = icmp eq i32 %i.mz, 0
  br i1 %.not79.i64, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.na = call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef %.069.i, ptr noundef %.069.i, i64 noundef %.1.i) #27 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ft, i64 368
  store ptr %.069.i, ptr %i.nb, align 8, !tbaa !65
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ft, i64 360
  store i64 %.1.i, ptr %i.nc, align 8, !tbaa !123
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cp, %setup_page.exit.i
  %i.nd = and i32 %i.fu, 32768
  %.not80.i65 = icmp eq i32 %i.nd, 0
  br i1 %.not80.i65, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ne = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !149 ; 2 uses
  %.not81.i66 = icmp eq ptr %i.ng, null
  br i1 %.not81.i66, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !165
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ft, i64 216
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !69
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.nj = and i32 %i.fu, 4
  %.not82.i67 = icmp eq i32 %i.nj, 0              ; 3 uses
  br i1 %.not82.i67, label %bb.dc, label %bb.dn

bb.dc:                                            ; preds = %bb.db
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ft, i64 248 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !53
  %.not83.i71 = icmp eq ptr %i.nl, null
  br i1 %.not83.i71, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ft, i64 352
  %i.nn = load i16, ptr %i.nm, align 8
  %i.no = and i16 %i.nn, 1
  %.not84.i72 = icmp eq i16 %i.no, 0
  br i1 %.not84.i72, label %bb.dn, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false)
  %i.np = load i32, ptr %i.c, align 8, !tbaa !68  ; 3 uses
  %i.nq = and i32 %i.np, 4259840
  %.not.i102 = icmp eq i32 %i.nq, 0
  br i1 %.not.i102, label %emit_map_rect.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nr = load ptr, ptr %i.al, align 8, !tbaa !39 ; 3 uses
  %i.ns = and i32 %i.np, 131072
  %.not18.i = icmp eq i32 %i.ns, 0                ; 3 uses
  %spec.select.i = select i1 %.not18.i, i32 2, i32 0
  %spec.select24.i = select i1 %.not18.i, i64 4, i64 2
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 356
  store i32 %spec.select.i, ptr %i.nt, align 4, !tbaa !122
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 360 ; 2 uses
  store i64 %spec.select24.i, ptr %i.nu, align 8, !tbaa !123
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 368 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !65
  call void @free(ptr noundef %i.nw) #27
  %i.nx = load i64, ptr %i.nu, align 8, !tbaa !123 ; 5 uses
  %.not21.i = icmp eq i64 %i.nx, 0
  br i1 %.not21.i, label %.thread.i106, label %bb.dg

.thread.i106:                                     ; preds = %bb.df
  %i.ny = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit.i104

bb.dg:                                            ; preds = %bb.df
  %mul.ov.i.i103 = icmp ugt i64 %i.nx, 1152921504606846975
  br i1 %mul.ov.i.i103, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.nz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.oa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nz, ptr noundef nonnull @.str.47, i64 noundef %i.nx, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.ob = call noalias ptr @calloc(i64 noundef %i.nx, i64 noundef 16) #28 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.dj, label %gv_calloc.exit.i104

bb.dj:                                            ; preds = %bb.di
  %i.od = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.oe = shl nuw i64 %i.nx, 4
  %i.of = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.od, ptr noundef nonnull @.str.45, i64 noundef %i.oe) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i104:                              ; preds = %bb.di, %.thread.i106
  %i.og = phi ptr [ %i.ny, %.thread.i106 ], [ %i.ob, %bb.di ] ; 6 uses
  store ptr %i.og, ptr %i.nv, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.og, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !120
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !120
  %i.oi = and i32 %i.np, 8192
  %.not19.i105 = icmp eq i32 %i.oi, 0
  br i1 %.not19.i105, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %gv_calloc.exit.i104
  %i.oj = call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef nonnull %i.og, ptr noundef nonnull %i.og, i64 noundef 2) #27 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %gv_calloc.exit.i104
  br i1 %.not18.i, label %bb.dm, label %emit_map_rect.exit

bb.dm:                                            ; preds = %bb.dl
  call void @rect2poly(ptr noundef nonnull %i.og) #27
  br label %emit_map_rect.exit

emit_map_rect.exit:                               ; preds = %bb.de, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ok = load ptr, ptr %i.nk, align 8, !tbaa !53
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ft, i64 288
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !57
  %i.on = getelementptr inbounds nuw i8, ptr %i.ft, i64 320
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !61
  %i.op = getelementptr inbounds nuw i8, ptr %i.ft, i64 256
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.ok, ptr noundef %i.om, ptr noundef %i.oo, ptr noundef %i.oq) #27
  br label %bb.dn

bb.dn:                                            ; preds = %emit_map_rect.exit, %bb.dd, %bb.db
  %i.or = call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.26) #27 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.or, null
  br i1 %.not.i95.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.os = load i8, ptr %i.or, align 1, !tbaa !14
  %.not33.i.i = icmp eq i8 %i.os, 0               ; 2 uses
  %spec.select40.i.i = select i1 %.not33.i.i, ptr @.str.59, ptr %i.or
  %spec.select41.i.i = zext i1 %.not33.i.i to i32
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.028.i.i = phi ptr [ @.str.59, %bb.dn ], [ %spec.select40.i.i, %bb.do ] ; 3 uses
  %.027.i.i = phi i32 [ 1, %bb.dn ], [ %spec.select41.i.i, %bb.do ] ; 2 uses
  %i.ot = load i32, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %i.ou = and i32 %i.ot, 256
  %.not34.i.i = icmp eq i32 %i.ou, 0
  %i.ov = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.028.i.i, ptr noundef nonnull dereferenceable(12) @.str.29) #31
  %i.ow = icmp eq i32 %i.ov, 0                    ; 3 uses
  br i1 %.not34.i.i, label %.thread.i.i, label %bb.dq

.thread.i.i:                                      ; preds = %bb.dp
  %spec.select.i.i = select i1 %i.ow, ptr @.str.59, ptr %.028.i.i
  %spec.select39.i.i = select i1 %i.ow, i32 1, i32 %.027.i.i
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.ow, label %bb.ed, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.thread.i.i
  %.145.i.i = phi i32 [ %spec.select39.i.i, %.thread.i.i ], [ %.027.i.i, %bb.dq ]
  %.12944.i.i = phi ptr [ %spec.select.i.i, %.thread.i.i ], [ %.028.i.i, %bb.dq ] ; 2 uses
  %i.ox = and i32 %i.ot, 33554432
  %i.oy = icmp ne i32 %i.ox, 0
  %i.oz = icmp ne i32 %.145.i.i, 0
  %or.cond.i96.i = and i1 %i.oy, %i.oz
  br i1 %or.cond.i96.i, label %bb.ed, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.pa = call zeroext i1 @findStopColor(ptr noundef %.12944.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.pa, label %bb.dt, label %bb.eb

bb.dt:                                            ; preds = %bb.ds
  %i.pb = load ptr, ptr %i.a, align 16, !tbaa !105 ; 2 uses
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %i.pb) #27
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #27
  %i.pc = call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.64) #27 ; 3 uses
  %.not.i98 = icmp eq ptr %i.pc, null
  br i1 %.not.i98, label %checkClusterStyle.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !14
  %.not36.i = icmp eq i8 %i.pd, 0
  br i1 %.not36.i, label %checkClusterStyle.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pe = call ptr @parse_style(ptr noundef nonnull %i.pc) ; 0 uses
  %i.pf = load ptr, ptr @parse_style.parse, align 16, !tbaa !105 ; 2 uses
  %.not3744.i = icmp eq ptr %i.pf, null
  br i1 %.not3744.i, label %checkClusterStyle.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.dv, %.loopexit.i
  %i.pg = phi ptr [ %i.px, %.loopexit.i ], [ %i.pf, %bb.dv ] ; 4 uses
  %.03146.i = phi ptr [ %.132.i, %.loopexit.i ], [ @parse_style.parse, %bb.dv ] ; 8 uses
  %.sroa.0.045.i = phi i32 [ %.sroa.0.1.i, %.loopexit.i ], [ 0, %bb.dv ] ; 4 uses
  %i.ph = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(7) @.str.65) #31
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph.i99
  %i.pj = getelementptr inbounds nuw i8, ptr %.03146.i, i64 8
  br label %.loopexit.i

bb.dx:                                            ; preds = %.lr.ph.i99
  %i.pk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(7) @.str.66) #31
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %.preheader, label %bb.dy

.preheader:                                       ; preds = %bb.dx, %.preheader
  %.0.i101 = phi ptr [ %i.pm, %.preheader ], [ %.03146.i, %bb.dx ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i101, i64 8 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !105 ; 2 uses
  store ptr %i.pn, ptr %.0.i101, align 8, !tbaa !105
  %.not40.i = icmp eq ptr %i.pn, null
  br i1 %.not40.i, label %.loopexit.i, label %.preheader, !llvm.loop !0

bb.dy:                                            ; preds = %bb.dx
  %i.po = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(8) @.str.67) #31
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %.preheader140, label %bb.dz

.preheader140:                                    ; preds = %bb.dy, %.preheader140
  %.1.i100 = phi ptr [ %i.pq, %.preheader140 ], [ %.03146.i, %bb.dy ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i100, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !105 ; 2 uses
  store ptr %i.pr, ptr %.1.i100, align 8, !tbaa !105
  %.not39.i = icmp eq ptr %i.pr, null
  br i1 %.not39.i, label %.loopexit.i, label %.preheader140, !llvm.loop !1

bb.dz:                                            ; preds = %bb.dy
  %i.ps = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(8) @.str.68) #31
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %.preheader141, label %bb.ea

.preheader141:                                    ; preds = %bb.dz, %.preheader141
  %.2.i = phi ptr [ %i.pu, %.preheader141 ], [ %.03146.i, %bb.dz ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !105 ; 2 uses
  store ptr %i.pv, ptr %.2.i, align 8, !tbaa !105
  %.not38.i = icmp eq ptr %i.pv, null
  br i1 %.not38.i, label %.loopexit.i, label %.preheader141, !llvm.loop !2

bb.ea:                                            ; preds = %bb.dz
  %i.pw = getelementptr inbounds nuw i8, ptr %.03146.i, i64 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader141, %.preheader140, %.preheader, %bb.ea, %bb.dw
  %.sroa.0.1.i = phi i32 [ %.sroa.0.045.i, %bb.dw ], [ %.sroa.0.045.i, %bb.ea ], [ %.sroa.0.045.i, %.preheader140 ], [ 3, %.preheader ], [ %.sroa.0.045.i, %.preheader141 ] ; 2 uses
  %.132.i = phi ptr [ %i.pj, %bb.dw ], [ %i.pw, %bb.ea ], [ %.03146.i, %.preheader140 ], [ %.03146.i, %.preheader ], [ %.03146.i, %.preheader141 ] ; 2 uses
  %i.px = load ptr, ptr %.132.i, align 8, !tbaa !105 ; 2 uses
  %.not37.i = icmp eq ptr %i.px, null
  br i1 %.not37.i, label %checkClusterStyle.exit.loopexit, label %.lr.ph.i99, !llvm.loop !3

checkClusterStyle.exit.loopexit:                  ; preds = %.loopexit.i
  %i.py = icmp samesign ult i32 %.sroa.0.1.i, 2
  %i.pz = select i1 %i.py, i32 2, i32 3
  br label %checkClusterStyle.exit

checkClusterStyle.exit:                           ; preds = %checkClusterStyle.exit.loopexit, %bb.dt, %bb.du, %bb.dv
  %.sroa.0.2.i = phi i32 [ 2, %bb.dt ], [ 2, %bb.du ], [ 2, %bb.dv ], [ %i.pz, %checkClusterStyle.exit.loopexit ]
  %i.qa = load ptr, ptr %i.fa, align 8, !tbaa !105 ; 3 uses
  %.not36.i.i = icmp eq ptr %i.qa, null
  %i.qb = load ptr, ptr @G_gradientangle, align 8, !tbaa !167
  %i.qc = call i32 @late_int(ptr noundef %1, ptr noundef %i.qb, i32 noundef 0, i32 noundef 0) #27
  %i.qd = load double, ptr %i.b, align 8, !tbaa !110
  %.str.27..i.i = select i1 %.not36.i.i, ptr @.str.27, ptr %i.qa
  call void @gvrender_set_gradient_vals(ptr noundef nonnull %0, ptr noundef nonnull %.str.27..i.i, i32 noundef %i.qc, double noundef %i.qd) #27
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.et, i32 noundef %.sroa.0.2.i) #27
  call void @free(ptr noundef %i.pb) #27
  call void @free(ptr noundef %i.qa) #27
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ds
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %.12944.i.i) #27
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #27
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.et, i32 noundef 1) #27
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %checkClusterStyle.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dr, %bb.dq
  %i.qe = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !101
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 88
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !130 ; 6 uses
  %.not38.i.i = icmp eq ptr %i.qi, null
  br i1 %.not38.i.i, label %emit_background.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !133
  %.not188.i.i.i = icmp eq i64 %i.qj, 0
  br i1 %.not188.i.i.i, label %emit_background.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ee
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !134
  br label %.outer.i.i.outer.i

._crit_edge.i.i.i:                                ; preds = %boxf_overlap.exit.thread.i.i.i
  %i.qm = icmp eq ptr %.096186.i147.i.i, null
  br i1 %i.qm, label %emit_background.exit.i, label %._crit_edge.thread194.i.i.i

.peel.next.i.i:                                   ; preds = %boxf_overlap.exit.thread.thread.i.peel.i.i, %boxf_overlap.exit.thread.thread.i.i.i
  %i.qn = phi i64 [ %i.zx, %boxf_overlap.exit.thread.thread.i.i.i ], [ %i.zr, %boxf_overlap.exit.thread.thread.i.peel.i.i ]
  %.0100184.i.pn.i.i = phi ptr [ %.0100184.i.i.i, %boxf_overlap.exit.thread.thread.i.i.i ], [ %.0100184.ph.i.i.i, %boxf_overlap.exit.thread.thread.i.peel.i.i ] ; 3 uses
  %.0101183.i.i.i = phi i64 [ %i.zw, %boxf_overlap.exit.thread.thread.i.i.i ], [ %i.zq, %boxf_overlap.exit.thread.thread.i.peel.i.i ] ; 15 uses
  %.0100184.i.i.i = getelementptr inbounds nuw i8, ptr %.0100184.i.pn.i.i, i64 128 ; 15 uses
  %i.qo = load i32, ptr %.0100184.i.i.i, align 8, !tbaa !137 ; 7 uses
  switch i32 %i.qo, label %.loopexit.i.i [
    i32 0, label %.loopexit149.i.i
    i32 1, label %.loopexit149.i.i
    i32 2, label %.loopexit150.i.i
    i32 3, label %.loopexit150.i.i
    i32 4, label %.loopexit151.i.i
    i32 5, label %.loopexit151.i.i
    i32 6, label %.loopexit152.i.i
    i32 7, label %.loopexit153.i.i
    i32 8, label %.loopexit154.i.i
    i32 9, label %.loopexit155.i.i
    i32 13, label %.loopexit156.i.i
    i32 14, label %.loopexit157.i.i
    i32 10, label %boxf_overlap.exit.thread.i.i.thread.i
    i32 11, label %boxf_overlap.exit.thread.thread.i.i.i
    i32 15, label %boxf_overlap.exit.thread.i.i.thread.i
    i32 12, label %.loopexit158.i.i
  ]

.loopexit149.i.i:                                 ; preds = %.outer.i.i.i, %.outer.i.i.i, %.peel.next.i.i, %.peel.next.i.i
  %.096186.i.lcssa135.i.i = phi ptr [ @parse_style.parse, %.peel.next.i.i ], [ @parse_style.parse, %.peel.next.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
  %.0100184.i.lcssa122.i.i = phi ptr [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ] ; 5 uses
  %.0101183.i.lcssa109.i.i = phi i64 [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
  %.lcssa97.i.i = phi i32 [ %i.qo, %.peel.next.i.i ], [ %i.qo, %.peel.next.i.i ], [ %i.zm, %.outer.i.i.i ], [ %i.zm, %.outer.i.i.i ]
  %i.qp = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa122.i.i, i64 88
  %i.qq = load <4 x double>, ptr %i.et, align 8   ; 2 uses
  %i.qr = load <4 x double>, ptr %i.qp, align 8   ; 2 uses
  %i.qs = shufflevector <4 x double> %i.qr, <4 x double> %i.qq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.qt = shufflevector <4 x double> %i.qq, <4 x double> %i.qr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qu = fcmp oge <4 x double> %i.qs, %i.qt
  %i.qv = freeze <4 x i1> %i.qu
  %i.qw = bitcast <4 x i1> %i.qv to i4
  %i.qx = icmp eq i4 %i.qw, -1
  br i1 %i.qx, label %bb.ef, label %boxf_overlap.exit.thread.i.i.i

bb.ef:                                            ; preds = %.loopexit149.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.qy = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa122.i.i, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa122.i.i, i64 24
  %i.ra = load <2 x double>, ptr %i.qy, align 8, !tbaa !14 ; 2 uses
  %i.rb = load <2 x double>, ptr %i.qz, align 8, !tbaa !14 ; 2 uses
  %i.rc = fsub <2 x double> %i.ra, %i.rb
  store <2 x double> %i.rc, ptr %3, align 16, !tbaa !110
  %i.rd = fadd <2 x double> %i.ra, %i.rb
  store <2 x double> %i.rd, ptr %i.fb, align 16, !tbaa !110
  %i.re = icmp eq i32 %.lcssa97.i.i, 0
  %i.rf = select i1 %i.re, i32 %.098185.ph.i.i.ph.i, i32 0
  call void @gvrender_ellipse(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %i.rf) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %boxf_overlap.exit.thread.i.i.i

.loopexit150.i.i:                                 ; preds = %.outer.i.i.i, %.outer.i.i.i, %.peel.next.i.i, %.peel.next.i.i
  %i.rg = phi i32 [ %i.qo, %.peel.next.i.i ], [ %i.qo, %.peel.next.i.i ], [ %i.zm, %.outer.i.i.i ], [ %i.zm, %.outer.i.i.i ]
  %.096186.i.lcssa136.i.i = phi ptr [ @parse_style.parse, %.peel.next.i.i ], [ @parse_style.parse, %.peel.next.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
  %.0100184.i.lcssa123.i.i = phi ptr [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ] ; 5 uses
  %.0101183.i.lcssa110.i.i = phi i64 [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@emit_node:bb.a
  store <2 x double> %i.hh, ptr %i.hf, align 8, !tbaa !110
  %i.hi = add i64 %i.hd, %i.gr                    ; 2 uses
  %i.hj = add nuw i64 %.0163207.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit79.unr-lcssa, label %gv_calloc.exit192.i, !llvm.loop !312

bb.ao:                                            ; preds = %bb.aj
  %mul.ov.i195.i = icmp ugt i64 %spec.select190.i, 1152921504606846975
  br i1 %mul.ov.i195.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.47, i64 noundef %spec.select190.i, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hm = tail call noalias ptr @calloc(i64 noundef %spec.select190.i, i64 noundef 16) #28 ; 6 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.ar, label %gv_calloc.exit196.preheader.i

gv_calloc.exit196.preheader.i:                    ; preds = %bb.aq
  %invariant.gep208.i = getelementptr [16 x i8], ptr %i.eg, i64 %i.gp ; 3 uses
  %min.iters.check = icmp ult i64 %spec.select190.i, 4
  br i1 %min.iters.check, label %gv_calloc.exit196.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %gv_calloc.exit196.preheader.i
  %n.vec = and i64 %spec.select190.i, 1152921504606846974 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ho = or disjoint i64 %index, 1               ; 2 uses
  %i.hp = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %index
  %i.hq = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.ho
  %wide.load = load <2 x double>, ptr %i.hp, align 8
  %wide.load64 = load <2 x double>, ptr %i.hq, align 8
  %i.hr = fadd <2 x double> %i.ct, %wide.load
  %i.hs = fadd <2 x double> %i.ct, %wide.load64
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %index
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.ho
  store <2 x double> %i.hr, ptr %i.ht, align 8
  store <2 x double> %i.hs, ptr %i.hu, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select190.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %gv_calloc.exit196.i.preheader

gv_calloc.exit196.i.preheader:                    ; preds = %gv_calloc.exit196.preheader.i, %middle.block
  %.0210.i.ph = phi i64 [ 0, %gv_calloc.exit196.preheader.i ], [ %n.vec, %middle.block ]
  br label %gv_calloc.exit196.i

bb.ar:                                            ; preds = %bb.aq
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hx = shl nuw i64 %spec.select190.i, 4
  %i.hy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hw, ptr noundef nonnull @.str.45, i64 noundef %i.hx) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit196.i:                              ; preds = %gv_calloc.exit196.i.preheader, %gv_calloc.exit196.i
  %.0210.i = phi i64 [ %i.ic, %gv_calloc.exit196.i ], [ %.0210.i.ph, %gv_calloc.exit196.i.preheader ] ; 3 uses
  %gep209.i = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %.0210.i
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0210.i
  %i.ia = load <2 x double>, ptr %gep209.i, align 8, !tbaa !110
  %i.ib = fadd <2 x double> %i.ct, %i.ia
  store <2 x double> %i.ib, ptr %i.hz, align 8, !tbaa !110
  %i.ic = add nuw nsw i64 %.0210.i, 1             ; 2 uses
  %exitcond215.not.i = icmp eq i64 %i.ic, %spec.select190.i
  br i1 %exitcond215.not.i, label %.loopexit.i, label %gv_calloc.exit196.i, !llvm.loop !314

.thread.i:                                        ; preds = %isRect.exit.thread.i, %isFilled.exit.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.id, align 4, !tbaa !122
  %i.ie = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.as, label %gv_calloc.exit198.i

bb.as:                                            ; preds = %.thread.i
  %i.ig = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ih = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ig, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit198.i:                              ; preds = %.thread.i
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %i.ik = load <2 x double>, ptr %i.ij, align 8, !tbaa !110
  %i.il = fmul <2 x double> %i.ik, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.in = fsub <2 x double> %i.ct, %i.im
  store <2 x double> %i.in, ptr %i.ie, align 8, !tbaa !110
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 112
  %i.ip = load double, ptr %i.io, align 8, !tbaa !186
  %i.iq = fadd double %i.cu, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store double %i.iq, ptr %i.ir, align 8, !tbaa !121
  %i.is = extractelement <2 x double> %i.il, i64 0
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %gv_calloc.exit198.i, %bb.ah, %gv_calloc.exit.i
  %.sink232.i = phi double [ %i.fd, %gv_calloc.exit.i ], [ %i.fx, %bb.ah ], [ %i.is, %gv_calloc.exit198.i ]
  %.sink231.i = phi ptr [ %i.ep, %gv_calloc.exit.i ], [ %i.fo, %bb.ah ], [ %i.ie, %gv_calloc.exit198.i ] ; 2 uses
  %i.it = extractelement <2 x double> %i.ct, i64 1
  %i.iu = fadd double %i.it, %.sink232.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sink231.i, i64 24
  store double %i.iu, ptr %i.iv, align 8, !tbaa !126
  br label %.loopexit.i

.loopexit.i.loopexit79.unr-lcssa:                 ; preds = %gv_calloc.exit192.i
  %i.iw = and i32 %narrow.i, 1
  %lcmp.mod.not = icmp eq i32 %i.iw, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %gv_calloc.exit192.i.epil.preheader

gv_calloc.exit192.i.epil.preheader:               ; preds = %.loopexit.i.loopexit79.unr-lcssa, %gv_calloc.exit192.preheader.i
  %.0163207.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hj, %.loopexit.i.loopexit79.unr-lcssa ]
  %.0164206.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hi, %.loopexit.i.loopexit79.unr-lcssa ]
  %lcmp.mod80 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %gep.i.epil = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i.epil.init
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i.epil.init
  %i.iy = load <2 x double>, ptr %gep.i.epil, align 8, !tbaa !110
  %i.iz = fadd <2 x double> %i.ct, %i.iy
  store <2 x double> %i.iz, ptr %i.ix, align 8, !tbaa !110
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %gv_calloc.exit192.i.epil.preheader, %.loopexit.i.loopexit79.unr-lcssa, %gv_calloc.exit196.i, %.lr.ph.i, %middle.block, %middle.block74, %.loopexit.sink.split.i, %bb.ai
  %.2172.i = phi i64 [ 0, %bb.ai ], [ 2, %.loopexit.sink.split.i ], [ %i.el, %middle.block74 ], [ %spec.select190.i, %middle.block ], [ %i.el, %.lr.ph.i ], [ %spec.select190.i, %gv_calloc.exit196.i ], [ %i.el, %.loopexit.i.loopexit79.unr-lcssa ], [ %i.el, %gv_calloc.exit192.i.epil.preheader ] ; 2 uses
  %.2.i = phi ptr [ %i.gd, %bb.ai ], [ %.sink231.i, %.loopexit.sink.split.i ], [ %i.gd, %middle.block74 ], [ %i.hm, %middle.block ], [ %i.gd, %.lr.ph.i ], [ %i.hm, %gv_calloc.exit196.i ], [ %i.gu, %.loopexit.i.loopexit79.unr-lcssa ], [ %i.gu, %gv_calloc.exit192.i.epil.preheader ] ; 3 uses
  %i.ja = and i32 %i.ak, 8192
  %.not188.i = icmp eq i32 %i.ja, 0
  br i1 %.not188.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit.i
  %i.jb = tail call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef %.2.i, ptr noundef %.2.i, i64 noundef %.2172.i) #27 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store ptr %.2.i, ptr %i.jc, align 8, !tbaa !65
  %i.jd = getelementptr inbounds nuw i8, ptr %i.al, i64 360
  store i64 %.2172.i, ptr %i.jd, align 8, !tbaa !123
  br label %emit_begin_node.exit

emit_begin_node.exit:                             ; preds = %bb.p, %bb.r, %bb.au
  %i.je = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #27
  %i.jf = tail call ptr @setColorScheme(ptr noundef %i.je) #27
  store ptr %i.jf, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @gvrender_begin_node(ptr noundef nonnull %0) #27
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !315
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !332
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !334
  tail call void %i.jm(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 144
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !335 ; 3 uses
  %.not40 = icmp eq ptr %i.jp, null
  br i1 %.not40, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %emit_begin_node.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 105
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !187, !range !145, !noundef !181
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @emit_label(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %i.jp) #27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %emit_begin_node.exit
  tail call void @gvrender_end_node(ptr noundef nonnull %0) #27
  %i.jt = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  %i.ju = tail call ptr @setColorScheme(ptr noundef %i.jt) #27
  tail call void @free(ptr noundef %i.ju) #27
  %i.jv = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.jv) #27
  store ptr null, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @pop_obj_state(ptr noundef nonnull %0)
  br label %.loopexit44

.loopexit44:                                      ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.d, %bb.ax
  ret void
}

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_edge(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.anon.14, align 8            ; 15 uses
  %3 = alloca %struct.bezier, align 8             ; 10 uses
  %4 = alloca %struct.bezier, align 8             ; 9 uses
  %5 = alloca %struct.colorsegs_t, align 8        ; 16 uses
  %6 = alloca %struct.bezier, align 8             ; 36 uses
  %7 = alloca %struct.agxbuf, align 8             ; 17 uses
  %8 = alloca %struct.corners_t, align 8          ; 32 uses
  %9 = alloca %struct.anon.12, align 8            ; 18 uses
  %10 = alloca %struct.points_t, align 8          ; 16 uses
  %11 = alloca [4 x %struct.pointf_s], align 16   ; 7 uses
  %12 = alloca [50 x %struct.pointf_s], align 16  ; 5 uses
  %13 = alloca [50 x %struct.pointf_s], align 16  ; 5 uses
  %14 = alloca %struct.agxbuf, align 8            ; 6 uses
  %15 = alloca %struct.points_t, align 8          ; 15 uses
  %16 = alloca %struct.pbs_size_t, align 8        ; 12 uses
  %17 = alloca %struct.boxf, align 8              ; 6 uses
  %18 = alloca %struct.agxbuf, align 8            ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 19 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %boxf_overlap.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load <4 x double>, ptr %i.f, align 8     ; 2 uses
  %i.h = load <4 x double>, ptr %17, align 8      ; 2 uses
  %i.i = shufflevector <4 x double> %i.g, <4 x double> %i.h, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.j = shufflevector <4 x double> %i.h, <4 x double> %i.g, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.k = fcmp oge <4 x double> %i.i, %i.j
  %i.l = freeze <4 x i1> %i.k
  %i.m = bitcast <4 x i1> %i.l to i4
  %i.n = icmp eq i4 %i.m, -1
  br i1 %i.n, label %bb.g, label %boxf_overlap.exit.thread.i

boxf_overlap.exit.thread.i:                       ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !378  ; 2 uses
  %.not14.i = icmp eq ptr %i.p, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %boxf_overlap.exit.thread.i
  %i.q = tail call zeroext i1 @overlap_label(ptr noundef nonnull %i.p, ptr noundef nonnull byval(%struct.boxf) align 8 %i.a) #27
  br i1 %i.q, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %boxf_overlap.exit.thread.i
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.c, %boxf_overlap.exit.thread.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !379  ; 3 uses
  %.not15.i = icmp eq ptr %i.t, null
  br i1 %.not15.i, label %edge_in_box.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 105
  %i.v = load i8, ptr %i.u, align 1, !tbaa !187, !range !145, !noundef !181
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %edge_in_box.exit

bb.f:                                             ; preds = %bb.e
  %i.x = tail call zeroext i1 @overlap_label(ptr noundef nonnull %i.t, ptr noundef nonnull byval(%struct.boxf) align 8 %17) #27
  br i1 %i.x, label %bb.g, label %edge_in_box.exit

edge_in_box.exit:                                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %edge_in_layer.exit.thread123

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !158
  %i.aa = icmp slt i32 %i.z, 2
  br i1 %i.aa, label %edge_in_layer.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @E_layer, align 8, !tbaa !167
  %i.ac = tail call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.ab, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !158
  %i.ah = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef readonly %i.ac)
  br i1 %i.ah, label %edge_in_layer.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %strcmpload.i = load i8, ptr %i.ac, align 1
  %i.ai = icmp eq i8 %strcmpload.i, 0
  br i1 %i.ai, label %.preheader.preheader.i, label %edge_in_layer.exit.thread123

.preheader.1.i:                                   ; preds = %.critedge.i
  %i.aj = load i32, ptr %1, align 8
  %i.ak = and i32 %i.aj, 3
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = select i1 %i.al, i64 56, i64 -8
  %.in.1.i = getelementptr inbounds i8, ptr %1, i64 %i.am
  %i.an = load ptr, ptr %.in.1.i, align 8, !tbaa !176
  %i.ao = load ptr, ptr @N_layer, align 8, !tbaa !167
  %i.ap = tail call ptr @late_string(ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %strcmpload23.1.i = load i8, ptr %i.ap, align 1
  %i.aq = icmp eq i8 %strcmpload23.1.i, 0
  br i1 %i.aq, label %edge_in_layer.exit.thread, label %edge_in_layer.exit

.preheader.preheader.i:                           ; preds = %bb.i
  %i.ar = load i32, ptr %1, align 8
  %i.as = and i32 %i.ar, 3
  %i.at = icmp eq i32 %i.as, 3
  %i.au = select i1 %i.at, i64 56, i64 120
  %.in.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.av = load ptr, ptr %.in.i, align 8, !tbaa !176
  %i.aw = load ptr, ptr @N_layer, align 8, !tbaa !167
  %i.ax = tail call ptr @late_string(ptr noundef %i.av, ptr noundef %i.aw, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %strcmpload23.i = load i8, ptr %i.ax, align 1
  %i.ay = icmp eq i8 %strcmpload23.i, 0
  br i1 %i.ay, label %edge_in_layer.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %.preheader.preheader.i
  %i.az = load ptr, ptr %0, align 8, !tbaa !70
  %i.ba = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.bb = load i32, ptr %i.y, align 4, !tbaa !158
  %i.bc = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull readonly %i.ax)
  br i1 %i.bc, label %edge_in_layer.exit.thread, label %.preheader.1.i

edge_in_layer.exit:                               ; preds = %.preheader.1.i
  %i.bd = load ptr, ptr %0, align 8, !tbaa !70
  %i.be = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.bf = load i32, ptr %i.y, align 4, !tbaa !158
  %i.bg = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull readonly %i.ap)
  br i1 %i.bg, label %edge_in_layer.exit.thread, label %edge_in_layer.exit.thread123

edge_in_layer.exit.thread:                        ; preds = %.preheader.1.i, %.preheader.preheader.i, %.critedge.i, %bb.h, %bb.g, %edge_in_layer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  %i.bh = load i32, ptr %1, align 8
  %i.bi = and i32 %i.bh, 3
  %i.bj = icmp eq i32 %i.bi, 3
  %i.bk = select i1 %i.bj, i64 56, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !176
  %i.bn = tail call ptr @agnameof(ptr noundef %i.bm) #27 ; 3 uses
  %i.bo = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bn) #31 ; 7 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %agxbput.exit, label %agxblen.exit.i.i

agxblen.exit.i.i:                                 ; preds = %edge_in_layer.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 31 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bs = icmp ugt i64 %i.bo, 31
  br i1 %i.bs, label %bb.j, label %.thread

bb.j:                                             ; preds = %agxblen.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %18, i64 noundef %i.bo)
  %.val.i25.pre.i.i = load i8, ptr %i.bq, align 1, !tbaa !14 ; 2 uses
  %.not.i26.i.i = icmp eq i8 %.val.i25.pre.i.i, -1
  br i1 %.not.i26.i.i, label %bb.k, label %.thread

.thread:                                          ; preds = %agxblen.exit.i.i, %bb.j
  %.val.i25.i.i289 = phi i8 [ %.val.i25.pre.i.i, %bb.j ], [ 0, %agxblen.exit.i.i ]
  %i.bt = zext i8 %.val.i25.i.i289 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %18, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.bn, i64 %i.bo, i1 false)
  %i.bv = trunc i64 %i.bo to i8
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !14
  %i.bx = add i8 %i.bw, %i.bv                     ; 2 uses
  store i8 %i.bx, ptr %i.bq, align 1, !tbaa !14
  br label %agxbput.exit

bb.k:                                             ; preds = %bb.j
  %i.by = load i64, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.bz = load ptr, ptr %18, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr nonnull readonly align 1 %i.bn, i64 %i.bo, i1 false)
  %i.cb = add i64 %i.by, %i.bo
  store i64 %i.cb, ptr %i.br, align 8, !tbaa !14
  br label %agxbput.exit

agxbput.exit:                                     ; preds = %edge_in_layer.exit.thread, %.thread, %bb.k
  %.val.i.i.i52 = phi i8 [ 0, %edge_in_layer.exit.thread ], [ %i.bx, %.thread ], [ -1, %bb.k ] ; 4 uses
  %i.cc = load i32, ptr %1, align 8
  %i.cd = and i32 %i.cc, 3
  %i.ce = icmp eq i32 %i.cd, 2
  %i.cf = getelementptr inbounds i8, ptr %1, i64 -64 ; 2 uses
  %i.cg = select i1 %i.ce, ptr %1, ptr %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !176
  %i.cj = tail call ptr @agraphof(ptr noundef %i.ci) #27
  %i.ck = tail call i32 @agisdirected(ptr noundef %i.cj) #27
  %.not = icmp eq i32 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 31 ; 6 uses
  %.not.i.i.i53 = icmp eq i8 %.val.i.i.i52, -1    ; 2 uses
  %i.cm = zext i8 %.val.i.i.i52 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 7 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %.0.i30.i.i56 = select i1 %.not.i.i.i53, i64 %i.co, i64 31
  %.0.i24.i.i57 = select i1 %.not.i.i.i53, i64 %i.cq, i64 %i.cm
  %i.cr = sub i64 %.0.i30.i.i56, %.0.i24.i.i57
  %i.cs = icmp ult i64 %i.cr, 2                   ; 2 uses
end_hunk_2
begin_hunk_3_@emit_edge:bb.a

bb.ji:                                            ; preds = %bb.jh, %agxbput.exit.i
  %i.afu = getelementptr inbounds nuw i8, ptr %.0.i119, i64 1
  br label %agxbput.exit.i, !llvm.loop !351

default_pencolor.exit:                            ; preds = %agxbclear.exit.thread.i.i, %bb.jg
  %i.afv = phi ptr [ %i.aft, %bb.jg ], [ %7, %agxbclear.exit.thread.i.i ] ; 4 uses
  %.not440.i = icmp eq ptr %i.afv, %.0379.i
  br i1 %.not440.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %default_pencolor.exit
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef %i.afv) #27
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %default_pencolor.exit, %.thread.i
  %.0399524.i = phi ptr [ %.0379.i, %.thread.i ], [ %i.afv, %bb.jj ], [ %i.afv, %default_pencolor.exit ] ; 14 uses
  %.0400523.i = phi ptr [ %i.aeo, %.thread.i ], [ %.0400.i, %bb.jj ], [ %.0400.i, %default_pencolor.exit ] ; 7 uses
  %.not441.i = icmp eq ptr %.0400523.i, %.0379.i
  br i1 %.not441.i, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef %.0400523.i) #27
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  br i1 %.1414.i, label %bb.jn, label %bb.jz

bb.jn:                                            ; preds = %bb.jm
  %i.afw = load i8, ptr %.0399524.i, align 1, !tbaa !14
  %i.afx = icmp eq i8 %i.afw, 0
  %spec.store.select.i = select i1 %i.afx, ptr @.str.27, ptr %.0399524.i ; 3 uses
  %i.afy = load i8, ptr %.0400523.i, align 1, !tbaa !14
  %i.afz = icmp eq i8 %i.afy, 0
  %spec.store.select15.i = select i1 %i.afz, ptr @.str.27, ptr %.0400523.i ; 2 uses
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull @.str.29) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select.i) #27
  %i.aga = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !191
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.agd, i64 56, i1 false), !tbaa.struct !393
  %i.age = load ptr, ptr @E_dir, align 8, !tbaa !167 ; 2 uses
  %.not.i480.i = icmp eq ptr %i.age, null
  br i1 %.not.i480.i, label %bb.jt, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.agf = call ptr @agxget(ptr noundef nonnull %1, ptr noundef nonnull %i.age) #27 ; 5 uses
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !14
  %.not10.i.i = icmp eq i8 %i.agg, 0
  br i1 %.not10.i.i, label %bb.jt, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.agh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.agf, ptr noundef nonnull dereferenceable(8) @.str.98) #31
  %i.agi = icmp eq i32 %i.agh, 0
  br i1 %i.agi, label %taperfun.exit.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.agj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.agf, ptr noundef nonnull dereferenceable(5) @.str.99) #31
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %taperfun.exit.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.agl = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.agf, ptr noundef nonnull dereferenceable(5) @.str.100) #31
  %i.agm = icmp eq i32 %i.agl, 0
  br i1 %i.agm, label %taperfun.exit.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.agn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.agf, ptr noundef nonnull dereferenceable(5) @.str.101) #31
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %taperfun.exit.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jo, %bb.jn
  %i.agp = load i32, ptr %1, align 8
  %i.agq = and i32 %i.agp, 3
  %i.agr = icmp eq i32 %i.agq, 2
  %i.ags = select i1 %i.agr, i64 56, i64 -8
  %i.agt = getelementptr inbounds i8, ptr %1, i64 %i.ags
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !176
  %i.agv = call ptr @agraphof(ptr noundef %i.agu) #27
  %i.agw = call i32 @agisdirected(ptr noundef %i.agv) #27
  %.not11.i.i = icmp eq i32 %i.agw, 0
  %i.agx = select i1 %.not11.i.i, ptr @nonefunc, ptr @forfunc
  br label %taperfun.exit.i

taperfun.exit.i:                                  ; preds = %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp
  %.0.i.i101 = phi ptr [ %i.agx, %bb.jt ], [ @forfunc, %bb.jp ], [ @revfunc, %bb.jq ], [ @bothfunc, %bb.jr ], [ @nonefunc, %bb.js ]
  %i.agy = call { i64, ptr } @taper(ptr noundef nonnull %6, ptr noundef nonnull %.0.i.i101, double noundef %i.zx) #27 ; 2 uses
  %i.agz = extractvalue { i64, ptr } %i.agy, 0
  %i.aha = extractvalue { i64, ptr } %i.agy, 1    ; 2 uses
  call void @gvrender_polygon(ptr noundef %0, ptr noundef %i.aha, i64 noundef %i.agz, i32 noundef 1) #27
  call void @free(ptr noundef %i.aha) #27
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select.i) #27
  %.not465.i = icmp eq ptr %spec.store.select15.i, %spec.store.select.i
  br i1 %.not465.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %taperfun.exit.i
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select15.i) #27
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %taperfun.exit.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ahc = load i32, ptr %i.ahb, align 8, !tbaa !394 ; 2 uses
  %.not466.i = icmp eq i32 %i.ahc, 0
  br i1 %.not466.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.ahd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ahe = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.ahf = load double, ptr %i.ahd, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ahh = load double, ptr %i.ahg, align 8
  %i.ahi = load double, ptr %i.ahe, align 8
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ahk = load double, ptr %i.ahj, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.ahf, double %i.ahh, double %i.ahi, double %i.ahk, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.ahc) #27
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.ahl = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !395 ; 2 uses
  %.not467.i = icmp eq i32 %i.ahm, 0
  br i1 %.not467.i, label %.loopexit543.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ahn = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aho = load ptr, ptr %6, align 8, !tbaa !199
  %i.ahp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ahq = load i64, ptr %i.ahp, align 8, !tbaa !198
  %i.ahr = getelementptr [16 x i8], ptr %i.aho, i64 %i.ahq ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 -16
  %i.aht = load double, ptr %i.ahn, align 8
  %i.ahu = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ahv = load double, ptr %i.ahu, align 8
  %i.ahw = load double, ptr %i.ahs, align 8
  %i.ahx = getelementptr i8, ptr %i.ahr, i64 -8
  %i.ahy = load double, ptr %i.ahx, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.aht, double %i.ahv, double %i.ahw, double %i.ahy, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.ahm) #27
  br label %.loopexit543.i

bb.jz:                                            ; preds = %bb.jm
  %i.ahz = load ptr, ptr %i.b, align 8, !tbaa !87 ; 3 uses
  br i1 %i.aao, label %bb.ka, label %bb.lh

bb.ka:                                            ; preds = %bb.jz
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16 ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !191
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load i64, ptr %i.aic, align 8, !tbaa !195 ; 10 uses
  %.not535.i = icmp eq i64 %i.aid, 0              ; 3 uses
  br i1 %.not535.i, label %gv_calloc.exit484.thread.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %mul.ov.i.i = icmp ugt i64 %i.aid, 329406144173384850
  br i1 %mul.ov.i.i, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.aie = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aif = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aie, ptr noundef nonnull @.str.47, i64 noundef %i.aid, i64 noundef 56) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kd:                                            ; preds = %bb.kb
  %i.aig = call noalias ptr @calloc(i64 noundef %i.aid, i64 noundef 56) #28 ; 3 uses
  %i.aih = icmp eq ptr %i.aig, null
  br i1 %i.aih, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.aii = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aij = mul nuw i64 %i.aid, 56
  %i.aik = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aii, ptr noundef nonnull @.str.45, i64 noundef %i.aij) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit484.thread.i:                       ; preds = %bb.ka
  %i.ail = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  %i.aim = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  br label %._crit_edge608.i

bb.kf:                                            ; preds = %bb.kd
  %i.ain = call noalias ptr @calloc(i64 noundef %i.aid, i64 noundef 56) #28 ; 3 uses
  %i.aio = icmp eq ptr %i.ain, null
  br i1 %i.aio, label %bb.kg, label %.lr.ph607.i

bb.kg:                                            ; preds = %bb.kf
  %i.aip = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aiq = mul nuw i64 %i.aid, 56
  %i.air = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aip, ptr noundef nonnull @.str.45, i64 noundef %i.aiq) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph607.i:                                      ; preds = %bb.kf
  %i.ais = uitofp i64 %.0410.i to double
  %i.ait = fadd nnan double %i.ais, 2.000000e+00
  %i.aiu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aiv = fmul nnan double %i.ait, -5.000000e-01
  %i.aiw = insertelement <2 x double> poison, double %i.aiv, i64 0
  %i.aix = shufflevector <2 x double> %i.aiw, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.ki

._crit_edge608.i:                                 ; preds = %._crit_edge599.i, %gv_calloc.exit484.thread.i
  %19 = phi ptr [ undef, %gv_calloc.exit484.thread.i ], [ %20, %._crit_edge599.i ] ; 3 uses
  %i.aiy = phi ptr [ %i.ail, %gv_calloc.exit484.thread.i ], [ %i.aig, %._crit_edge599.i ] ; 3 uses
  %i.aiz = phi ptr [ %i.aim, %gv_calloc.exit484.thread.i ], [ %i.ain, %._crit_edge599.i ] ; 3 uses
  %i.aja = call noalias ptr @strdup(ptr noundef readonly %.0399524.i) #27 ; 3 uses
  %i.ajb = icmp eq ptr %i.aja, null
  br i1 %i.ajb, label %bb.kh, label %gv_strdup.exit.i

bb.kh:                                            ; preds = %._crit_edge608.i
  %i.ajc = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajd = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0399524.i) #31
  %i.aje = add i64 %i.ajd, 1
  %i.ajf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajc, ptr noundef nonnull @.str.45, i64 noundef %i.aje) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit.i:                                 ; preds = %._crit_edge608.i
  %i.ajg = call ptr @strtok(ptr noundef nonnull %i.aja, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455618.i = icmp eq ptr %i.ajg, null
  br i1 %.not455618.i, label %._crit_edge625.i, label %.lr.ph624.i

bb.ki:                                            ; preds = %._crit_edge599.i, %.lr.ph607.i
  %.0409606.i = phi i64 [ 0, %.lr.ph607.i ], [ %i.anv, %._crit_edge599.i ] ; 4 uses
  %.sroa.8214.0605.i = phi double [ 0.000000e+00, %.lr.ph607.i ], [ %.sroa.8214.1.lcssa.i, %._crit_edge599.i ] ; 2 uses
  %.sroa.0210.0604.i = phi double [ 0.000000e+00, %.lr.ph607.i ], [ %.sroa.0210.1.lcssa.i, %._crit_edge599.i ] ; 2 uses
  %i.ajh = load ptr, ptr %i.aia, align 8, !tbaa !191
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !196
  %i.ajj = getelementptr inbounds nuw [56 x i8], ptr %i.aji, i64 %.0409606.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ajj, i64 56, i1 false), !tbaa.struct !393
  %i.ajk = load i64, ptr %i.aiu, align 8, !tbaa !198 ; 10 uses
  %i.ajl = getelementptr inbounds nuw [56 x i8], ptr %i.aig, i64 %.0409606.i ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  store i64 %i.ajk, ptr %i.ajm, align 8, !tbaa !198
  %i.ajn = getelementptr inbounds nuw [56 x i8], ptr %i.ain, i64 %.0409606.i ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store i64 %i.ajk, ptr %i.ajo, align 8, !tbaa !198
  %.not536.i = icmp eq i64 %i.ajk, 0
  br i1 %.not536.i, label %gv_calloc.exit492.thread.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %mul.ov.i487.i = icmp ugt i64 %i.ajk, 1152921504606846975
  br i1 %mul.ov.i487.i, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.ajp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajp, ptr noundef nonnull @.str.47, i64 noundef %i.ajk, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kl:                                            ; preds = %bb.kj
  %i.ajr = call noalias ptr @calloc(i64 noundef %i.ajk, i64 noundef 16) #28 ; 4 uses
  %i.ajs = icmp eq ptr %i.ajr, null
  br i1 %i.ajs, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ajt = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aju = shl nuw i64 %i.ajk, 4
  %i.ajv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajt, ptr noundef nonnull @.str.45, i64 noundef %i.aju) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.thread.i:                       ; preds = %bb.ki
  %i.ajw = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajw, ptr %i.ajl, align 8, !tbaa !199
  %i.ajx = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajx, ptr %i.ajn, align 8, !tbaa !199
  %i.ajy = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.ajz = load <2 x double>, ptr %i.ajy, align 8, !tbaa !110
  br label %.lr.ph598.i

bb.kn:                                            ; preds = %bb.kl
  store ptr %i.ajr, ptr %i.ajl, align 8, !tbaa !199
  %i.aka = call noalias ptr @calloc(i64 noundef %i.ajk, i64 noundef 16) #28 ; 4 uses
  %i.akb = icmp eq ptr %i.aka, null
  br i1 %i.akb, label %bb.ko, label %gv_calloc.exit492.i

bb.ko:                                            ; preds = %bb.kn
  %i.akc = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.akd = shl nuw i64 %i.ajk, 4
  %i.ake = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akc, ptr noundef nonnull @.str.45, i64 noundef %i.akd) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.i:                              ; preds = %bb.kn
  store ptr %i.aka, ptr %i.ajn, align 8, !tbaa !199
  %i.akf = load ptr, ptr %6, align 8, !tbaa !199  ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !110
  %i.akg = load <2 x double>, ptr %i.akf, align 8, !tbaa !110 ; 2 uses
  %i.akh = add nsw i64 %i.ajk, -1                 ; 2 uses
  %.not638.i = icmp eq i64 %i.akh, 0
  %i.aki = insertelement <2 x double> %i.akg, double %.sroa.8.0.copyload.i, i64 1
  br i1 %.not638.i, label %._crit_edge599.i, label %.lr.ph598.i

.lr.ph598.i:                                      ; preds = %gv_calloc.exit492.i, %gv_calloc.exit492.thread.i
  %i.akj = phi i64 [ -1, %gv_calloc.exit492.thread.i ], [ %i.akh, %gv_calloc.exit492.i ]
  %i.akk = phi ptr [ %i.ajy, %gv_calloc.exit492.thread.i ], [ %i.akf, %gv_calloc.exit492.i ] ; 4 uses
  %i.akl = phi ptr [ %i.ajw, %gv_calloc.exit492.thread.i ], [ %i.ajr, %gv_calloc.exit492.i ] ; 7 uses
  %i.akm = phi ptr [ %i.ajx, %gv_calloc.exit492.thread.i ], [ %i.aka, %gv_calloc.exit492.i ] ; 4 uses
  %i.akn = phi <2 x double> [ %i.ajz, %gv_calloc.exit492.thread.i ], [ %i.aki, %gv_calloc.exit492.i ]
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  br label %bb.kp

bb.kp:                                            ; preds = %computeoffset_qr.exit.i, %.lr.ph598.i
  %.0408597.i = phi i64 [ 0, %.lr.ph598.i ], [ %i.alr, %computeoffset_qr.exit.i ] ; 7 uses
  %.sroa.8214.1594.i = phi double [ %.sroa.8214.0605.i, %.lr.ph598.i ], [ %i.amy, %computeoffset_qr.exit.i ]
  %.sroa.0210.1593.i = phi double [ %.sroa.0210.0604.i, %.lr.ph598.i ], [ %i.amx, %computeoffset_qr.exit.i ]
  %i.ako = phi <2 x double> [ %i.akn, %.lr.ph598.i ], [ %i.alt, %computeoffset_qr.exit.i ] ; 4 uses
  %i.akp = add nuw i64 %.0408597.i, 1             ; 3 uses
  %i.akq = getelementptr inbounds nuw [16 x i8], ptr %i.akk, i64 %i.akp
  %i.akr = load <2 x double>, ptr %i.akq, align 8, !tbaa !110 ; 6 uses
  %i.aks = icmp eq i64 %.0408597.i, 0
  br i1 %i.aks, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %foldExtExtBinop344 = fsub <2 x double> %i.ako, %i.akr
  %i.akt = extractelement <2 x double> %foldExtExtBinop344, i64 0 ; 3 uses
  %foldExtExtBinop346 = fsub <2 x double> %i.ako, %i.akr
  %i.aku = extractelement <2 x double> %foldExtExtBinop346, i64 1 ; 3 uses
  %i.akv = fmul double %i.aku, %i.aku
  %i.akw = call double @llvm.fmuladd.f64(double %i.akt, double %i.akt, double %i.akv)
  %i.akx = fadd double %i.akw, 1.000000e-04
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.akx)
  %i.aky = fdiv double 2.000000e+00, %sqrt.i.i    ; 2 uses
  %i.akz = fmul double %i.aku, %i.aky
  %i.ala = fneg double %i.akt
  %i.alb = fmul double %i.aky, %i.ala
  store double %i.akz, ptr %i.akl, align 8, !tbaa !110
  store double %i.alb, ptr %.sroa.4100.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %.0408597.i ; 2 uses
  %i.ald = extractelement <2 x double> %i.akr, i64 0
  %i.ale = fsub double %.sroa.0210.1593.i, %i.ald ; 3 uses
  %i.alf = extractelement <2 x double> %i.akr, i64 1
  %i.alg = fsub double %.sroa.8214.1594.i, %i.alf ; 3 uses
  %i.alh = fmul double %i.alg, %i.alg
  %i.ali = call double @llvm.fmuladd.f64(double %i.ale, double %i.ale, double %i.alh)
  %i.alj = fadd double %i.ali, 1.000000e-04
  %sqrt.i493.i = call double @llvm.sqrt.f64(double %i.alj)
  %i.alk = fdiv double 2.000000e+00, %sqrt.i493.i ; 2 uses
  %i.all = fmul double %i.alg, %i.alk
  %i.alm = fneg double %i.ale
  %i.aln = fmul double %i.alk, %i.alm
  store double %i.all, ptr %i.alc, align 8, !tbaa !110
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  store double %i.aln, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.alo = add i64 %.0408597.i, 2                 ; 3 uses
  %i.alp = getelementptr inbounds nuw [16 x i8], ptr %i.akk, i64 %i.alo
  %i.alq = load <2 x double>, ptr %i.alp, align 8, !tbaa !110 ; 4 uses
  %i.alr = add i64 %.0408597.i, 3                 ; 4 uses
  %i.als = getelementptr inbounds nuw [16 x i8], ptr %i.akk, i64 %i.alr
  %i.alt = load <2 x double>, ptr %i.als, align 8, !tbaa !110 ; 3 uses
  %i.alu = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %i.akp ; 2 uses
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %i.alo ; 2 uses
  %i.alw = fsub <2 x double> %i.akr, %i.alq       ; 3 uses
  %i.alx = extractelement <2 x double> %i.alw, i64 0
  %i.aly = extractelement <2 x double> %i.alw, i64 1
  %i.alz = call double @hypot(double noundef %i.alx, double noundef %i.aly) #27 ; 2 uses
  %i.ama = fcmp olt double %i.alz, 1.000000e-04
  br i1 %i.ama, label %bb.kt, label %computeoffset_qr.exit.i

bb.kt:                                            ; preds = %bb.ks
  %i.amb = fsub <2 x double> %i.ako, %i.alt       ; 4 uses
  %foldExtExtBinop348 = fmul <2 x double> %i.amb, %i.amb
  %i.amc = extractelement <2 x double> %foldExtExtBinop348, i64 1
  %i.amd = extractelement <2 x double> %i.amb, i64 0 ; 2 uses
  %i.ame = call double @llvm.fmuladd.f64(double %i.amd, double %i.amd, double %i.amc)
  %i.amf = fadd double %i.ame, 1.000000e-04
  %sqrt.i499.i = call double @llvm.sqrt.f64(double %i.amf)
  br label %computeoffset_qr.exit.i

computeoffset_qr.exit.i:                          ; preds = %bb.kt, %bb.ks
  %.022.i.i = phi double [ %sqrt.i499.i, %bb.kt ], [ %i.alz, %bb.ks ]
  %i.amg = phi <2 x double> [ %i.amb, %bb.kt ], [ %i.alw, %bb.ks ] ; 2 uses
  %i.amh = fdiv double 2.000000e+00, %.022.i.i
  %i.ami = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %.0408597.i
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %.0408597.i
  %i.amk = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.akp
  %i.aml = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.alo
  %i.amm = insertelement <2 x double> poison, double %i.amh, i64 0
  %i.amn = shufflevector <2 x double> %i.amm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amo = fneg <2 x double> %i.amg
  %i.amp = shufflevector <2 x double> %i.amg, <2 x double> %i.amo, <2 x i32> <i32 1, i32 2>
  %i.amq = fmul <2 x double> %i.amn, %i.amp       ; 2 uses
  store <2 x double> %i.amq, ptr %i.alv, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alu, ptr noundef nonnull align 8 dereferenceable(16) %i.alv, i64 16, i1 false), !tbaa.struct !120
  %i.amr = load <2 x double>, ptr %i.ami, align 8, !tbaa !110
  %i.ams = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.amr, <2 x double> %i.ako)
  store <2 x double> %i.ams, ptr %i.amj, align 8, !tbaa !110
  %i.amt = load <2 x double>, ptr %i.alu, align 8, !tbaa !110
  %i.amu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.amt, <2 x double> %i.akr)
  store <2 x double> %i.amu, ptr %i.amk, align 8, !tbaa !110
  %i.amv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.amq, <2 x double> %i.alq)
  store <2 x double> %i.amv, ptr %i.aml, align 8, !tbaa !110
  %i.amw = icmp ult i64 %i.alr, %i.akj
  %i.amx = extractelement <2 x double> %i.alq, i64 0 ; 2 uses
  %i.amy = extractelement <2 x double> %i.alq, i64 1 ; 2 uses
  br i1 %i.amw, label %bb.kp, label %._crit_edge599.i, !llvm.loop !352

._crit_edge599.i:                                 ; preds = %computeoffset_qr.exit.i, %gv_calloc.exit492.i
  %20 = phi ptr [ %i.akf, %gv_calloc.exit492.i ], [ %i.akk, %computeoffset_qr.exit.i ]
  %i.amz = phi ptr [ %i.ajr, %gv_calloc.exit492.i ], [ %i.akl, %computeoffset_qr.exit.i ]
  %i.ana = phi ptr [ %i.aka, %gv_calloc.exit492.i ], [ %i.akm, %computeoffset_qr.exit.i ]
  %.sroa.0210.1.lcssa.i = phi double [ %.sroa.0210.0604.i, %gv_calloc.exit492.i ], [ %i.amx, %computeoffset_qr.exit.i ] ; 2 uses
  %.sroa.8214.1.lcssa.i = phi double [ %.sroa.8214.0605.i, %gv_calloc.exit492.i ], [ %i.amy, %computeoffset_qr.exit.i ] ; 2 uses
  %.0408.lcssa.i = phi i64 [ 0, %gv_calloc.exit492.i ], [ %i.alr, %computeoffset_qr.exit.i ] ; 2 uses
  %i.anb = phi <2 x double> [ %i.akg, %gv_calloc.exit492.i ], [ %i.alt, %computeoffset_qr.exit.i ] ; 3 uses
  %i.anc = getelementptr inbounds nuw [16 x i8], ptr %i.amz, i64 %.0408.lcssa.i ; 2 uses
  %i.and = extractelement <2 x double> %i.anb, i64 0
  %i.ane = fsub double %.sroa.0210.1.lcssa.i, %i.and ; 3 uses
  %i.anf = extractelement <2 x double> %i.anb, i64 1
  %i.ang = fsub double %.sroa.8214.1.lcssa.i, %i.anf ; 3 uses
  %i.anh = fmul double %i.ang, %i.ang
  %i.ani = call double @llvm.fmuladd.f64(double %i.ane, double %i.ane, double %i.anh)
  %i.anj = fadd double %i.ani, 1.000000e-04
  %sqrt.i500.i = call double @llvm.sqrt.f64(double %i.anj)
  %i.ank = fdiv double 2.000000e+00, %sqrt.i500.i
  %i.anl = fneg double %i.ane
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  %i.anm = getelementptr inbounds nuw [16 x i8], ptr %i.ana, i64 %.0408.lcssa.i
  %i.ann = insertelement <2 x double> poison, double %i.ank, i64 0
  %i.ano = shufflevector <2 x double> %i.ann, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anp = insertelement <2 x double> poison, double %i.ang, i64 0
  %i.anq = insertelement <2 x double> %i.anp, double %i.anl, i64 1
  %i.anr = fmul <2 x double> %i.ano, %i.anq       ; 3 uses
  %i.ans = extractelement <2 x double> %i.anr, i64 0
  store double %i.ans, ptr %i.anc, align 8, !tbaa !110
  %i.ant = extractelement <2 x double> %i.anr, i64 1
  store double %i.ant, ptr %.sroa.494.0..sroa_idx.i, align 8, !tbaa !110
  %i.anu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.anr, <2 x double> %i.anb)
  store <2 x double> %i.anu, ptr %i.anm, align 8, !tbaa !110
  %i.anv = add nuw nsw i64 %.0409606.i, 1         ; 2 uses
  %exitcond667.not.i = icmp eq i64 %i.anv, %i.aid
  br i1 %exitcond667.not.i, label %._crit_edge608.i, label %bb.ki, !llvm.loop !353

.lr.ph624.i:                                      ; preds = %gv_strdup.exit.i, %._crit_edge617.i
  %.0371623.i = phi i32 [ %i.aod, %._crit_edge617.i ], [ 0, %gv_strdup.exit.i ] ; 3 uses
  %.1380622.i = phi ptr [ %i.aoe, %._crit_edge617.i ], [ %i.ajg, %gv_strdup.exit.i ] ; 2 uses
  %.0401621.i = phi ptr [ %spec.select468.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0403620.i = phi ptr [ %.2405.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0406619.i = phi ptr [ %.1407.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ] ; 2 uses
  %i.anw = load i8, ptr %.1380622.i, align 1, !tbaa !14
  %.not462.i = icmp eq i8 %i.anw, 0
  %spec.store.select3.i = select i1 %.not462.i, ptr @.str.27, ptr %.1380622.i ; 7 uses
  %.not463.i = icmp eq ptr %spec.store.select3.i, %.0406619.i
  br i1 %.not463.i, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph624.i
  %i.anx = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 156
  %i.anz = load i8, ptr %i.any, align 4, !tbaa !392
  %i.aoa = and i8 %i.anz, 3
  %.not464.i = icmp eq i8 %i.aoa, 0
  br i1 %.not464.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %.lr.ph624.i
  %.1407.i = phi ptr [ %.0406619.i, %.lr.ph624.i ], [ %spec.store.select3.i, %bb.kv ], [ %spec.store.select3.i, %bb.ku ]
  %i.aob = icmp eq i32 %.0371623.i, 0
  %spec.select468.i = select i1 %i.aob, ptr %spec.store.select3.i, ptr %.0401621.i ; 2 uses
  %i.aoc = icmp samesign ult i32 %.0371623.i, 2
  %.2405.i = select i1 %i.aoc, ptr %spec.store.select3.i, ptr %.0403620.i ; 2 uses
  br i1 %.not535.i, label %._crit_edge617.i, label %.lr.ph616.i

._crit_edge617.i:                                 ; preds = %._crit_edge612.i, %bb.kw
  %i.aod = add nuw nsw i32 %.0371623.i, 1
  %i.aoe = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455.i = icmp eq ptr %i.aoe, null
  br i1 %.not455.i, label %._crit_edge625.i, label %.lr.ph624.i, !llvm.loop !354

.lr.ph616.i:                                      ; preds = %bb.kw, %._crit_edge612.i
  %.0398614.i = phi i64 [ %i.apb, %._crit_edge612.i ], [ 0, %bb.kw ] ; 3 uses
  %i.aof = getelementptr inbounds nuw [56 x i8], ptr %i.aiz, i64 %.0398614.i ; 2 uses
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !199 ; 10 uses
  %i.aoh = getelementptr inbounds nuw [56 x i8], ptr %i.aiy, i64 %.0398614.i
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !199 ; 9 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !198 ; 9 uses
  %.not640.i = icmp eq i64 %i.aok, 0
  br i1 %.not640.i, label %._crit_edge612.i, label %.lr.ph611.i.preheader

.lr.ph611.i.preheader:                            ; preds = %.lr.ph616.i
  %min.iters.check = icmp ult i64 %i.aok, 4
  br i1 %min.iters.check, label %.lr.ph611.i.preheader350, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph611.i.preheader
  %scevgep = getelementptr i8, ptr %i.aog, i64 -8
  %i.aol = shl i64 %i.aok, 4                      ; 4 uses
  %scevgep328 = getelementptr i8, ptr %scevgep, i64 %i.aol
  %scevgep329 = getelementptr i8, ptr %i.aoi, i64 -8
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.aol
  %scevgep331 = getelementptr i8, ptr %i.aog, i64 8
  %scevgep332 = getelementptr i8, ptr %i.aog, i64 %i.aol
  %scevgep333 = getelementptr i8, ptr %i.aoi, i64 8
  %scevgep334 = getelementptr i8, ptr %i.aoi, i64 %i.aol
  %bound0 = icmp ult ptr %i.aog, %scevgep330
  %bound1 = icmp ult ptr %i.aoi, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  %bound0335 = icmp ult ptr %scevgep331, %scevgep334
  %bound1336 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict, %found.conflict337
  br i1 %conflict.rdx, label %.lr.ph611.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aok, -2                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aom = or disjoint i64 %index, 1              ; 2 uses
  %i.aon = getelementptr inbounds nuw [16 x i8], ptr %i.aoi, i64 %index
  %i.aoo = getelementptr inbounds nuw [16 x i8], ptr %i.aoi, i64 %i.aom
  %wide.load = load <2 x double>, ptr %i.aon, align 8
  %wide.load338 = load <2 x double>, ptr %i.aoo, align 8
  %i.aop = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %index ; 2 uses
  %i.aoq = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %i.aom ; 2 uses
  %wide.load339 = load <2 x double>, ptr %i.aop, align 8
  %wide.load340 = load <2 x double>, ptr %i.aoq, align 8
  %i.aor = fadd <2 x double> %wide.load, %wide.load339
  %i.aos = fadd <2 x double> %wide.load338, %wide.load340
  store <2 x double> %i.aor, ptr %i.aop, align 8
  store <2 x double> %i.aos, ptr %i.aoq, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aot = icmp eq i64 %index.next, %n.vec
  br i1 %i.aot, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aok, %n.vec
  br i1 %cmp.n, label %._crit_edge612.i, label %.lr.ph611.i.preheader350

.lr.ph611.i.preheader350:                         ; preds = %vector.memcheck, %.lr.ph611.i.preheader, %middle.block
  %.0394609.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph611.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0394609.i.ph, 1
  %xtraiter = and i64 %i.aok, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph611.i.prol.loopexit, label %.lr.ph611.i.prol

.lr.ph611.i.prol:                                 ; preds = %.lr.ph611.i.preheader350
  %i.aou = getelementptr inbounds nuw [16 x i8], ptr %i.aoi, i64 %.0394609.i.ph
  %i.aov = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %.0394609.i.ph ; 2 uses
  %i.aow = load <2 x double>, ptr %i.aou, align 8, !tbaa !110
  %i.aox = load <2 x double>, ptr %i.aov, align 8, !tbaa !110
  %i.aoy = fadd <2 x double> %i.aow, %i.aox
  store <2 x double> %i.aoy, ptr %i.aov, align 8, !tbaa !110
  %i.aoz = or disjoint i64 %.0394609.i.ph, 1
  br label %.lr.ph611.i.prol.loopexit

.lr.ph611.i.prol.loopexit:                        ; preds = %.lr.ph611.i.prol, %.lr.ph611.i.preheader350
  %.0394609.i.unr = phi i64 [ %.0394609.i.ph, %.lr.ph611.i.preheader350 ], [ %i.aoz, %.lr.ph611.i.prol ]
  %i.apa = icmp eq i64 %i.aok, %.neg
  br i1 %i.apa, label %._crit_edge612.i, label %.lr.ph611.i

._crit_edge612.i:                                 ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i, %middle.block, %.lr.ph616.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.aog, i64 noundef %i.aok, i32 noundef 0) #27
  %i.apb = add nuw i64 %.0398614.i, 1             ; 2 uses
  %exitcond669.not.i = icmp eq i64 %i.apb, %i.aid
  br i1 %exitcond669.not.i, label %._crit_edge617.i, label %.lr.ph616.i, !llvm.loop !356

.lr.ph611.i:                                      ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i
  %.0394609.i = phi i64 [ %i.apn, %.lr.ph611.i ], [ %.0394609.i.unr, %.lr.ph611.i.prol.loopexit ] ; 4 uses
  %i.apc = getelementptr inbounds nuw [16 x i8], ptr %i.aoi, i64 %.0394609.i
  %i.apd = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %.0394609.i ; 2 uses
  %i.ape = load <2 x double>, ptr %i.apc, align 8, !tbaa !110
  %i.apf = load <2 x double>, ptr %i.apd, align 8, !tbaa !110
  %i.apg = fadd <2 x double> %i.ape, %i.apf
  store <2 x double> %i.apg, ptr %i.apd, align 8, !tbaa !110
  %i.aph = add nuw i64 %.0394609.i, 1             ; 2 uses
  %i.api = getelementptr inbounds nuw [16 x i8], ptr %i.aoi, i64 %i.aph
  %i.apj = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %i.aph ; 2 uses
  %i.apk = load <2 x double>, ptr %i.api, align 8, !tbaa !110
  %i.apl = load <2 x double>, ptr %i.apj, align 8, !tbaa !110
  %i.apm = fadd <2 x double> %i.apk, %i.apl
  store <2 x double> %i.apm, ptr %i.apj, align 8, !tbaa !110
  %i.apn = add nuw i64 %.0394609.i, 2             ; 2 uses
  %exitcond668.not.i.1 = icmp eq i64 %i.apn, %i.aok
  br i1 %exitcond668.not.i.1, label %._crit_edge612.i, label %.lr.ph611.i, !llvm.loop !357

._crit_edge625.i:                                 ; preds = %._crit_edge617.i, %gv_strdup.exit.i
  %.0403.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %.2405.i, %._crit_edge617.i ] ; 4 uses
  %.0401.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %spec.select468.i, %._crit_edge617.i ] ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.app = load i32, ptr %i.apo, align 8, !tbaa !394 ; 3 uses
  %.not456.i = icmp eq i32 %i.app, 0
  br i1 %.not456.i, label %bb.lb, label %bb.kx

bb.kx:                                            ; preds = %._crit_edge625.i
  %.not457.i = icmp eq ptr %.0403.lcssa.i, null
  br i1 %.not457.i, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.apq = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 156
  %i.aps = load i8, ptr %i.apr, align 4, !tbaa !392
  %i.apt = and i8 %i.aps, 3
  %.not458.i = icmp eq i8 %i.apt, 0
  br i1 %.not458.i, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  %.pre678.i = load i32, ptr %i.apo, align 8, !tbaa !394
  %.pre160 = load ptr, ptr %6, align 8, !tbaa !199
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky, %bb.kx
  %21 = phi ptr [ %19, %bb.ky ], [ %.pre160, %bb.kz ], [ %19, %bb.kx ] ; 3 uses
  %i.apu = phi i32 [ %i.app, %bb.ky ], [ %.pre678.i, %bb.kz ], [ %i.app, %bb.kx ]
  %i.apv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.apw = load double, ptr %i.apv, align 8
  %i.apx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.apy = load double, ptr %i.apx, align 8
  %i.apz = load double, ptr %21, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aqb = load double, ptr %i.aqa, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.apw, double %i.apy, double %i.apz, double %i.aqb, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.apu) #27
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %._crit_edge625.i
  %22 = phi ptr [ %21, %bb.la ], [ %19, %._crit_edge625.i ] ; 2 uses
  %.3.i100 = phi ptr [ %.0403.lcssa.i, %bb.la ], [ null, %._crit_edge625.i ]
  %i.aqc = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !395 ; 3 uses
  %.not459.i = icmp eq i32 %i.aqd, 0
  br i1 %.not459.i, label %bb.lg, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %.not460.i = icmp eq ptr %.3.i100, %.0401.lcssa.i
  br i1 %.not460.i, label %bb.lf, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.aqe = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 156
  %i.aqg = load i8, ptr %i.aqf, align 4, !tbaa !392
  %i.aqh = and i8 %i.aqg, 3
  %.not461.i = icmp eq i8 %i.aqh, 0
  br i1 %.not461.i, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef %.0401.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef %.0401.lcssa.i) #27
  %.pre679.i = load i32, ptr %i.aqc, align 4, !tbaa !395
  %.pre161 = load ptr, ptr %6, align 8, !tbaa !199
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld, %bb.lc
  %23 = phi ptr [ %22, %bb.ld ], [ %.pre161, %bb.le ], [ %22, %bb.lc ]
  %i.aqi = phi i32 [ %i.aqd, %bb.ld ], [ %.pre679.i, %bb.le ], [ %i.aqd, %bb.lc ]
  %i.aqj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aqk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !198
  %i.aqm = getelementptr [16 x i8], ptr %23, i64 %i.aql ; 2 uses
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 -16
  %i.aqo = load double, ptr %i.aqj, align 8
  %i.aqp = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aqq = load double, ptr %i.aqp, align 8
  %i.aqr = load double, ptr %i.aqn, align 8
  %i.aqs = getelementptr i8, ptr %i.aqm, i64 -8
  %i.aqt = load double, ptr %i.aqs, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.aqo, double %i.aqq, double %i.aqr, double %i.aqt, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.aqi) #27
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.lb
  call void @free(ptr noundef %i.aja) #27
  br i1 %.not535.i, label %._crit_edge631.i, label %.lr.ph630.i

._crit_edge631.i:                                 ; preds = %.lr.ph630.i, %bb.lg
  call void @free(ptr noundef %i.aiy) #27
  call void @free(ptr noundef %i.aiz) #27
  br label %.loopexit543.i

.lr.ph630.i:                                      ; preds = %bb.lg, %.lr.ph630.i
  %.0393628.i = phi i64 [ %i.aqy, %.lr.ph630.i ], [ 0, %bb.lg ] ; 3 uses
  %i.aqu = getelementptr inbounds nuw [56 x i8], ptr %i.aiy, i64 %.0393628.i
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !199
  call void @free(ptr noundef %i.aqv) #27
  %i.aqw = getelementptr inbounds nuw [56 x i8], ptr %i.aiz, i64 %.0393628.i
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !199
  call void @free(ptr noundef %i.aqx) #27
  %i.aqy = add nuw i64 %.0393628.i, 1             ; 2 uses
  %exitcond670.not.i = icmp eq i64 %i.aqy, %i.aid
  br i1 %exitcond670.not.i, label %._crit_edge631.i, label %.lr.ph630.i, !llvm.loop !358

bb.lh:                                            ; preds = %bb.jz
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.ahz, i64 156
  %i.ara = load i8, ptr %i.aqz, align 4, !tbaa !392
  %i.arb = and i8 %i.ara, 3
  %.not442.i = icmp eq i8 %i.arb, 0
  br i1 %.not442.i, label %bb.li, label %bb.ll

bb.li:                                            ; preds = %bb.lh
  %i.arc = load i8, ptr %.0399524.i, align 1, !tbaa !14
  %.not443.i = icmp eq i8 %i.arc, 0
  br i1 %.not443.i, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0399524.i) #27
  br label %.sink.split.i99

bb.lk:                                            ; preds = %bb.li
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull @.str.27) #27
  %i.ard = load i8, ptr %.0400523.i, align 1, !tbaa !14
  %.not444.i = icmp eq i8 %i.ard, 0
  %.str.27..0400523.i = select i1 %.not444.i, ptr @.str.27, ptr %.0400523.i
  br label %.sink.split.i99

.sink.split.i99:                                  ; preds = %bb.lk, %bb.lj
  %.0400523.sink.i = phi ptr [ %.0400523.i, %bb.lj ], [ %.str.27..0400523.i, %bb.lk ]
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef %.0400523.sink.i) #27
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %bb.ll

bb.ll:                                            ; preds = %.sink.split.i99, %bb.lh
  %i.are = phi ptr [ %.pre, %.sink.split.i99 ], [ %i.ahz, %bb.lh ]
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !191 ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !195
  %.not633.i = icmp eq i64 %i.ari, 0
  br i1 %.not633.i, label %.loopexit543.i, label %.lr.ph592.i

.lr.ph592.i:                                      ; preds = %bb.ll
  %i.arj = fmul nsz double %i.zx, 8.000000e+00
  %i.ark = call nsz double @llvm.maxnum.f64(double %i.arj, double 1.200000e+01)
  %i.arl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 15 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.arr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not.i.i508.i = icmp eq ptr %.0399524.i, null
  %i.ars = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aru = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.arv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.arw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.arx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ary = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.arz = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.asa = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.lm

bb.lm:                                            ; preds = %bb.nx, %.lr.ph592.i
  %i.asb = phi ptr [ %i.arg, %.lr.ph592.i ], [ %i.bcx, %bb.nx ]
  %.0392590.i = phi i64 [ 0, %.lr.ph592.i ], [ %i.bcy, %bb.nx ] ; 2 uses
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !196
  %i.asd = getelementptr inbounds nuw [56 x i8], ptr %i.asc, i64 %.0392590.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.asd, i64 56, i1 false), !tbaa.struct !393
  %i.ase = load i32, ptr %1, align 8
  %i.asf = and i32 %i.ase, 3
  %i.asg = icmp eq i32 %i.asf, 2
  %i.ash = select i1 %i.asg, i64 56, i64 -8
  %i.asi = getelementptr inbounds i8, ptr %1, i64 %i.ash
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !176
  %i.ask = call ptr @agraphof(ptr noundef %i.asj) #27
  %i.asl = call ptr @agget(ptr noundef %i.ask, ptr noundef nonnull @.str.91) #27 ; 2 uses
  %.not445.i = icmp eq ptr %i.asl, null
  br i1 %.not445.i, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.asm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.asl, ptr noundef nonnull dereferenceable(6) @.str.92) #31
  %i.asn = icmp eq i32 %i.asm, 0
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %i.aso = phi i1 [ false, %bb.lm ], [ %i.asn, %bb.ln ]
  br i1 %.not39, label %.preheader542.i, label %.loopexit.i

.preheader542.i:                                  ; preds = %bb.lo
  %i.asp = load ptr, ptr %.036, align 16, !tbaa !105 ; 2 uses
  %.not446.not562.i = icmp eq ptr %i.asp, null
  br i1 %.not446.not562.i, label %.loopexit.i, label %.lr.ph.i98

bb.lp:                                            ; preds = %.lr.ph.i98
  %i.asq = getelementptr inbounds nuw i8, ptr %.0386563.i, i64 8 ; 2 uses
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !105 ; 2 uses
  %.not446.not.i = icmp eq ptr %i.asr, null
  br i1 %.not446.not.i, label %.loopexit.i, label %.lr.ph.i98, !llvm.loop !359

.lr.ph.i98:                                       ; preds = %.preheader542.i, %bb.lp
  %i.ass = phi ptr [ %i.asr, %bb.lp ], [ %i.asp, %.preheader542.i ]
  %.0386563.i = phi ptr [ %i.asq, %bb.lp ], [ %.036, %.preheader542.i ]
  %i.ast = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ass, ptr noundef nonnull dereferenceable(8) @.str.68) #31
  %i.asu = icmp eq i32 %i.ast, 0                  ; 3 uses
  br i1 %i.asu, label %.loopexit.i, label %bb.lp

.loopexit.i:                                      ; preds = %.lr.ph.i98, %bb.lp, %.preheader542.i, %bb.lo
  %.1390.i = phi i1 [ false, %bb.lo ], [ false, %.preheader542.i ], [ %i.asu, %bb.lp ], [ %i.asu, %.lr.ph.i98 ] ; 2 uses
  %i.asv = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.93) #27 ; 3 uses
  %.not447.i = icmp eq ptr %i.asv, null
  br i1 %.not447.i, label %bb.ls, label %bb.lq

bb.lq:                                            ; preds = %.loopexit.i
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !14
  %.not448.i = icmp eq i8 %i.asw, 0
  br i1 %.not448.i, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.asx = call double @strtod(ptr noundef nonnull captures(none) %i.asv, ptr noundef null) #27, !inline_history !360 ; 2 uses
  %i.asy = fcmp ogt double %i.asx, 0.000000e+00
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq, %.loopexit.i
  %.2391.i = phi i1 [ %i.asy, %bb.lr ], [ %.1390.i, %bb.lq ], [ %.1390.i, %.loopexit.i ] ; 2 uses
  %.0387.i = phi double [ %i.asx, %bb.lr ], [ 0.000000e+00, %bb.lq ], [ 0.000000e+00, %.loopexit.i ] ; 2 uses
  %i.asz = fcmp oeq double %.0387.i, 0.000000e+00
  %or.cond5.i = select i1 %.2391.i, i1 %i.asz, i1 false
  %.1388.i = select i1 %or.cond5.i, double %i.ark, double %.0387.i ; 14 uses
  %or.cond7.i = and i1 %i.aso, %.2391.i
  %i.ata = fcmp ogt double %.1388.i, 0.000000e+00
  %or.cond9.i = select i1 %or.cond7.i, i1 %i.ata, i1 false
  br i1 %or.cond9.i, label %bb.lt, label %bb.np

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %8, i8 0, i64 112, i1 false)
  %i.atb = load i64, ptr %i.arl, align 8, !tbaa !198 ; 9 uses
  call void @gv_list_reserve_(ptr noundef nonnull %8, i64 noundef %i.atb, i64 noundef 72) #27
  %i.atc = load ptr, ptr %6, align 8, !tbaa !199  ; 14 uses
  %.not.i503.i = icmp eq i64 %i.atb, 0
  br i1 %.not.i503.i, label %find_ortho_corners.exit.i, label %.lr.ph.i504.i

.lr.ph.i504.i:                                    ; preds = %bb.lt
  %i.atd = add i64 %i.atb, -1                     ; 2 uses
  %i.ate = insertelement <2 x double> poison, double %.1388.i, i64 0
  %i.atf = shufflevector <2 x double> %i.ate, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.lu

bb.lu:                                            ; preds = %process_corner.exit.i.i, %.lr.ph.i504.i
  %.056.i.i = phi i64 [ 0, %.lr.ph.i504.i ], [ %i.axi, %process_corner.exit.i.i ] ; 7 uses
  %i.atg = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %.056.i.i ; 2 uses
  %.not.i.i.i86321 = icmp eq i64 %.056.i.i, 0
  br i1 %.not.i.i.i86321, label %find_prev_distinct.exit.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.lu
  %i.ath = load <2 x double>, ptr %i.atg, align 8, !tbaa !110
  br label %.lr.ph

bb.lv:                                            ; preds = %.lr.ph
  %.not.i.i.i86 = icmp eq i64 %.017.i.i.i, 0
  br i1 %.not.i.i.i86, label %find_prev_distinct.exit.i.i, label %.lr.ph, !llvm.loop !361

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.lv
  %.017.in.i.i.i322 = phi i64 [ %.017.i.i.i, %bb.lv ], [ %.056.i.i, %.lr.ph.preheader ]
  %.017.i.i.i = add i64 %.017.in.i.i.i322, -1     ; 4 uses
  %i.ati = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %.017.i.i.i
  %i.atj = load <2 x double>, ptr %i.ati, align 8, !tbaa !110
  %i.atk = fsub <2 x double> %i.atj, %i.ath       ; 2 uses
  %i.atl = extractelement <2 x double> %i.atk, i64 0
  %i.atm = extractelement <2 x double> %i.atk, i64 1
  %i.atn = call double @hypot(double noundef %i.atl, double noundef %i.atm) #27
  %i.ato = fcmp ule double %i.atn, 1.000000e-02
  br i1 %i.ato, label %bb.lv, label %.find_prev_distinct.exit.i.i_crit_edge, !llvm.loop !361

.find_prev_distinct.exit.i.i_crit_edge:           ; preds = %.lr.ph
  br label %find_prev_distinct.exit.i.i, !llvm.loop !361

find_prev_distinct.exit.i.i:                      ; preds = %bb.lv, %.find_prev_distinct.exit.i.i_crit_edge, %bb.lu
  %.017.lcssa.i.i.i = phi i64 [ -1, %bb.lu ], [ %.017.i.i.i, %.find_prev_distinct.exit.i.i_crit_edge ], [ -1, %bb.lv ] ; 2 uses
  %exitcond.not.i.i87325 = icmp eq i64 %.056.i.i, %i.atd
  br i1 %exitcond.not.i.i87325, label %process_corner.exit.i.i, label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %find_prev_distinct.exit.i.i
  %i.atp = load <2 x double>, ptr %i.atg, align 8, !tbaa !110 ; 9 uses
  br label %.lr.ph327

bb.lw:                                            ; preds = %.lr.ph327
  %exitcond.not.i.i87 = icmp eq i64 %.018.i.i.i, %i.atd
  br i1 %exitcond.not.i.i87, label %process_corner.exit.i.i, label %.lr.ph327, !llvm.loop !362

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.lw
  %.018.in.i.i.i326 = phi i64 [ %.018.i.i.i, %bb.lw ], [ %.056.i.i, %.lr.ph327.preheader ]
  %.018.i.i.i = add nuw i64 %.018.in.i.i.i326, 1  ; 3 uses
  %i.atq = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %.018.i.i.i
  %i.atr = load <2 x double>, ptr %i.atq, align 8, !tbaa !110
  %i.ats = fsub <2 x double> %i.atr, %i.atp       ; 4 uses
  %i.att = extractelement <2 x double> %i.ats, i64 0 ; 2 uses
  %i.atu = extractelement <2 x double> %i.ats, i64 1 ; 2 uses
  %i.atv = call double @hypot(double noundef %i.att, double noundef %i.atu) #27
  %i.atw = fcmp ule double %i.atv, 1.000000e-02
  br i1 %i.atw, label %bb.lw, label %find_next_distinct.exit.i.i, !llvm.loop !362

find_next_distinct.exit.i.i:                      ; preds = %.lr.ph327
  %i.atx = extractelement <2 x double> %i.atp, i64 1 ; 5 uses
  %i.aty = extractelement <2 x double> %i.atp, i64 0 ; 5 uses
  %i.atz = icmp eq i64 %.017.lcssa.i.i.i, -1
  br i1 %i.atz, label %process_corner.exit.i.i, label %bb.lx

bb.lx:                                            ; preds = %find_next_distinct.exit.i.i
  %i.aua = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %.017.lcssa.i.i.i
  %i.aub = load <2 x double>, ptr %i.aua, align 8, !tbaa !110
  %i.auc = fsub <2 x double> %i.atp, %i.aub       ; 4 uses
  %i.aud = shufflevector <2 x double> %i.ats, <2 x double> %i.auc, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.aue = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.aud) ; 2 uses
  %i.auf = fcmp ogt <4 x double> %i.aue, splat (double 1.000000e-01) ; 2 uses
  %i.aug = fcmp olt <4 x double> %i.aue, splat (double 1.000000e-01) ; 2 uses
  %i.auh = shufflevector <4 x i1> %i.auf, <4 x i1> %i.aug, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aui = shufflevector <4 x i1> %i.aug, <4 x i1> %i.auf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.auj = freeze <4 x i1> %i.auh
  %i.auk = bitcast <4 x i1> %i.auj to i4
  %i.aul = icmp eq i4 %i.auk, -1                  ; 2 uses
  %i.aum = bitcast <4 x i1> %i.aui to i4
  %i.aun = icmp eq i4 %i.aum, -1
  %i.auo = select i1 %i.aul, i1 true, i1 %i.aun
  br i1 %i.auo, label %bb.ly, label %process_corner.exit.i.i

bb.ly:                                            ; preds = %bb.lx
  %.val6468.i.i.i = load i64, ptr %i.arm, align 8, !tbaa !109
  %.not69.i.i.i = icmp eq i64 %.val6468.i.i.i, 0
  br i1 %.not69.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i95

bb.lz:                                            ; preds = %.lr.ph.i.i.i95
  %i.aup = add nuw i64 %.06370.i.i.i, 1           ; 2 uses
  %.val64.i.i.i = load i64, ptr %i.arm, align 8, !tbaa !109
  %.not.not.i.i.i = icmp ult i64 %i.aup, %.val64.i.i.i
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i95, label %.critedge.i.i.i, !llvm.loop !363

.lr.ph.i.i.i95:                                   ; preds = %bb.ly, %bb.lz
  %.06370.i.i.i = phi i64 [ %i.aup, %bb.lz ], [ 0, %bb.ly ] ; 2 uses
  %i.auq = load ptr, ptr %8, align 8, !tbaa !14
  %i.aur = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.06370.i.i.i) #27
  %i.aus = getelementptr inbounds nuw [72 x i8], ptr %i.auq, i64 %i.aur
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.aus, align 8, !tbaa !200
  %i.aut = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %.sroa.011.0.copyload.i.i.i
  %i.auu = load <2 x double>, ptr %i.aut, align 8, !tbaa !110
  %i.auv = fsub <2 x double> %i.atp, %i.auu       ; 2 uses
  %i.auw = extractelement <2 x double> %i.auv, i64 0
  %i.aux = extractelement <2 x double> %i.auv, i64 1
  %i.auy = call double @hypot(double noundef %i.auw, double noundef %i.aux) #27
  %i.auz = fcmp uge double %i.auy, 1.000000e-02
  br i1 %i.auz, label %bb.lz, label %process_corner.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.lz, %bb.ly
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.arn, i8 0, i64 72, i1 false)
  %i.ava = call i64 @gv_list_append_slot_(ptr noundef nonnull %8, i64 noundef 72) #27
  %i.avb = load ptr, ptr %8, align 8, !tbaa !14
  %i.avc = getelementptr inbounds nuw [72 x i8], ptr %i.avb, i64 %i.ava
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.avc, ptr noundef nonnull align 8 dereferenceable(72) %i.arn, i64 72, i1 false), !tbaa.struct !396
  %i.avd = load ptr, ptr %8, align 8, !tbaa !14
  %.val.i.i.i97 = load i64, ptr %i.arm, align 8, !tbaa !109
  %i.ave = add i64 %.val.i.i.i97, -1
  %i.avf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %i.ave) #27
  %i.avg = getelementptr inbounds nuw [72 x i8], ptr %i.avd, i64 %i.avf ; 17 uses
  store i64 %.056.i.i, ptr %i.avg, align 8, !tbaa !203
  %i.avh = extractelement <2 x double> %i.auc, i64 0
  %i.avi = extractelement <2 x double> %i.auc, i64 1
  %i.avj = call double @hypot(double noundef %i.avh, double noundef %i.avi) #27
  %i.avk = call double @hypot(double noundef %i.att, double noundef %i.atu) #27
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avg, i64 8
  %i.avm = insertelement <2 x double> poison, double %i.avj, i64 0
  %i.avn = shufflevector <2 x double> %i.avm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avo = fdiv <2 x double> %i.auc, %i.avn       ; 3 uses
  %i.avp = fneg <2 x double> %i.avo
  %i.avq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avp, <2 x double> %i.atf, <2 x double> %i.atp)
  store <2 x double> %i.avq, ptr %i.avl, align 8, !tbaa !110
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avg, i64 24
  %i.avs = insertelement <2 x double> poison, double %i.avk, i64 0
  %i.avt = shufflevector <2 x double> %i.avs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avu = fdiv <2 x double> %i.ats, %i.avt       ; 3 uses
  %i.avv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avu, <2 x double> %i.atf, <2 x double> %i.atp)
  store <2 x double> %i.avv, ptr %i.avr, align 8, !tbaa !110
  br i1 %i.aul, label %bb.ma, label %bb.mh

bb.ma:                                            ; preds = %.critedge.i.i.i
  %i.avw = extractelement <2 x double> %i.avo, i64 0 ; 2 uses
  %i.avx = fcmp ogt double %i.avw, 0.000000e+00   ; 2 uses
  %i.avy = extractelement <2 x double> %i.avu, i64 1 ; 2 uses
  %i.avz = fcmp olt double %i.avy, 0.000000e+00   ; 2 uses
  %or.cond3.i.i.i.i = and i1 %i.avx, %i.avz
  br i1 %or.cond3.i.i.i.i, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.awa = fsub <2 x double> %i.atp, %i.atf
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avg, i64 40
  store <2 x double> %i.awa, ptr %i.awb, align 8, !tbaa !110
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avg, i64 56
  store <2 x double> <double 0.000000e+00, double f0x3FF921FB54442D18>, ptr %i.awc, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mc:                                            ; preds = %bb.ma
  %i.awd = fcmp ogt double %i.avy, 0.000000e+00
  %or.cond5.i.i.i.i = and i1 %i.avx, %i.awd
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avg, i64 56 ; 3 uses
  br i1 %or.cond5.i.i.i.i, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.awf = fsub double %i.aty, %.1388.i
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avg, i64 40
  store double %i.awf, ptr %i.awg, align 8, !tbaa !397
  %i.awh = fadd double %.1388.i, %i.atx
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avg, i64 48
  store double %i.awh, ptr %i.awi, align 8, !tbaa !398
  store <2 x double> <double f0xBFF921FB54442D18, double 0.000000e+00>, ptr %i.awe, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.me:                                            ; preds = %bb.mc
  %i.awj = fcmp olt double %i.avw, 0.000000e+00
  %or.cond7.i.i.i.i = and i1 %i.awj, %i.avz
  %i.awk = fadd double %.1388.i, %i.aty
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avg, i64 40
  store double %i.awk, ptr %i.awl, align 8, !tbaa !397
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avg, i64 48 ; 2 uses
  br i1 %or.cond7.i.i.i.i, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.awn = fsub double %i.atx, %.1388.i
  store double %i.awn, ptr %i.awm, align 8, !tbaa !398
  store <2 x double> <double f0x3FF921FB54442D18, double f0x400921FB54442D18>, ptr %i.awe, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mg:                                            ; preds = %bb.me
  %i.awo = fadd double %.1388.i, %i.atx
  store double %i.awo, ptr %i.awm, align 8, !tbaa !398
  store <2 x double> <double f0x400921FB54442D18, double f0x4012D97C7F3321D2>, ptr %i.awe, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mh:                                            ; preds = %.critedge.i.i.i
  %i.awp = extractelement <2 x double> %i.avo, i64 1 ; 2 uses
  %i.awq = fcmp olt double %i.awp, 0.000000e+00   ; 2 uses
end_hunk_3
begin_hunk_4_@emit_edge:bb.a
._crit_edge.i89:                                  ; preds = %.loopexit643.i, %bb.nd
  store <2 x double> %.sroa.0.0.copyload, ptr %i.aro, align 8, !tbaa !110
  %i.azh = call i64 @gv_list_append_slot_(ptr noundef nonnull %9, i64 noundef 16) #27
  %i.azi = load ptr, ptr %9, align 8, !tbaa !14
  %i.azj = getelementptr inbounds nuw [16 x i8], ptr %i.azi, i64 %i.azh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azj, ptr noundef nonnull align 8 dereferenceable(16) %i.aro, i64 16, i1 false), !tbaa.struct !120
  %i.azk = load ptr, ptr %9, align 8, !tbaa !14
  %i.azl = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %9, i64 noundef 0) #27
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %i.azk, i64 %i.azl
  %.val473.i = load i64, ptr %i.arp, align 8, !tbaa !109
  call void @gvrender_polyline(ptr noundef %0, ptr noundef %i.azm, i64 noundef %.val473.i) #27
  %.val472571.i = load i64, ptr %i.arp, align 8, !tbaa !109
  %.not635.i = icmp eq i64 %.val472571.i, 0
  br i1 %.not635.i, label %._crit_edge575.i, label %.lr.ph574.i

bb.ne:                                            ; preds = %.lr.ph568.i
  %i.azn = add nuw i64 %.0374567.i, 1             ; 2 uses
  %.val474.i = load i64, ptr %i.arm, align 8, !tbaa !109
  %i.azo = icmp ult i64 %i.azn, %.val474.i
  br i1 %i.azo, label %.lr.ph568.i, label %.critedge.loopexit.i, !llvm.loop !369

.lr.ph568.i:                                      ; preds = %bb.ne, %.lr.ph568.preheader.i
  %.0374567.i = phi i64 [ %i.azn, %bb.ne ], [ 0, %.lr.ph568.preheader.i ] ; 2 uses
  %i.azp = load ptr, ptr %8, align 8, !tbaa !14
  %i.azq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0374567.i) #27
  %i.azr = getelementptr inbounds nuw [72 x i8], ptr %i.azp, i64 %i.azq
  %i.azs = load i64, ptr %i.azr, align 8, !tbaa !203
  %i.azt = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %i.azs
  %i.azu = load <2 x double>, ptr %i.azt, align 8, !tbaa !110
  %i.azv = load <2 x double>, ptr %i.azg, align 8, !tbaa !110
  %i.azw = fsub <2 x double> %i.azv, %i.azu       ; 2 uses
  %i.azx = extractelement <2 x double> %i.azw, i64 0
  %i.azy = extractelement <2 x double> %i.azw, i64 1
  %i.azz = call double @hypot(double noundef %i.azx, double noundef %i.azy) #27
  %i.baa = fcmp uge double %i.azz, 1.000000e-02
  br i1 %i.baa, label %bb.ne, label %.loopexit643.i

.critedge.loopexit.i:                             ; preds = %bb.ne, %.preheader539.i
  %i.bab = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %.0378570.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aro, ptr noundef nonnull align 8 dereferenceable(16) %i.bab, i64 16, i1 false), !tbaa.struct !120
  %i.bac = call i64 @gv_list_append_slot_(ptr noundef nonnull %9, i64 noundef 16) #27
  %i.bad = load ptr, ptr %9, align 8, !tbaa !14
  %i.bae = getelementptr inbounds nuw [16 x i8], ptr %i.bad, i64 %i.bac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bae, ptr noundef nonnull align 8 dereferenceable(16) %i.aro, i64 16, i1 false), !tbaa.struct !120
  br label %.loopexit643.i

.loopexit643.i:                                   ; preds = %.lr.ph568.i, %.critedge.loopexit.i
  %.0378.i = add nuw i64 %.0378570.i, 1           ; 2 uses
  %exitcond666.not.i = icmp eq i64 %.0378.i, %.0382.i
  br i1 %exitcond666.not.i, label %._crit_edge.i89, label %.preheader539.i, !llvm.loop !370

._crit_edge575.i:                                 ; preds = %bb.nh, %._crit_edge.i89
  call void @gv_list_clear_(ptr noundef nonnull %9, i64 noundef 16) #27
  call void @gv_list_free_(ptr noundef nonnull %9) #27
  %.val471.i = load i64, ptr %i.arm, align 8, !tbaa !109 ; 2 uses
  %i.baf = icmp ult i64 %.0383583.i, %.val471.i
  br i1 %i.baf, label %bb.ni, label %bb.nk

.lr.ph574.i:                                      ; preds = %._crit_edge.i89, %bb.nh
  %.0370572.i = phi i64 [ %i.bao, %bb.nh ], [ 0, %._crit_edge.i89 ] ; 2 uses
  %i.bag = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %9, i64 noundef %.0370572.i) #27
  %i.bah = load ptr, ptr %i.arq, align 8, !tbaa !391 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.bah to i64
  switch i64 %magicptr.i, label %bb.ng [
    i64 1, label %bb.nf
    i64 0, label %bb.nh
  ]

bb.nf:                                            ; preds = %.lr.ph574.i
  %i.bai = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.bai) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.ng:                                            ; preds = %.lr.ph574.i
  %i.baj = load ptr, ptr %9, align 8, !tbaa !14
  %i.bak = getelementptr inbounds nuw [16 x i8], ptr %i.baj, i64 %i.bag ; 2 uses
  %i.bal = load double, ptr %i.bak, align 8
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bak, i64 8
  %i.ban = load double, ptr %i.bam, align 8
  call void %i.bah(double %i.bal, double %i.ban) #27, !inline_history !371
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %.lr.ph574.i
  %i.bao = add nuw i64 %.0370572.i, 1             ; 2 uses
  %.val472.i = load i64, ptr %i.arp, align 8, !tbaa !109
  %i.bap = icmp ult i64 %i.bao, %.val472.i
  br i1 %i.bap, label %.lr.ph574.i, label %._crit_edge575.i, !llvm.loop !372

bb.ni:                                            ; preds = %._crit_edge575.i
  %i.baq = load ptr, ptr %8, align 8, !tbaa !14
  %i.bar = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383583.i) #27
  %i.bas = getelementptr inbounds nuw [72 x i8], ptr %i.baq, i64 %i.bar
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !203
  %.0367.i140 = add i64 %i.bat, 1                 ; 3 uses
  %i.bau = icmp ult i64 %.0367.i140, %i.atb
  %.val470576.i141 = load i64, ptr %i.arm, align 8
  %i.bav = icmp ne i64 %.val470576.i141, 0
  %or.cond632.i142 = select i1 %i.bau, i1 %i.bav, i1 false
  br i1 %or.cond632.i142, label %.lr.ph578.preheader.i, label %.critedge538.i

.loopexit642.i.loopexit:                          ; preds = %.lr.ph578.i
  %.0367.i = add nuw i64 %.0367.i143, 1           ; 3 uses
  %i.baw = icmp ult i64 %.0367.i, %i.atb
  %.val470576.i = load i64, ptr %i.arm, align 8
  %i.bax = icmp ne i64 %.val470576.i, 0
  %or.cond632.i = select i1 %i.baw, i1 %i.bax, i1 false
  br i1 %or.cond632.i, label %.lr.ph578.preheader.i, label %.critedge538.i

.lr.ph578.preheader.i:                            ; preds = %bb.ni, %.loopexit642.i.loopexit
  %.0367.i143 = phi i64 [ %.0367.i, %.loopexit642.i.loopexit ], [ %.0367.i140, %bb.ni ] ; 3 uses
  %i.bay = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %.0367.i143
  br label %.lr.ph578.i

bb.nj:                                            ; preds = %.lr.ph578.i
  %i.baz = add nuw i64 %.0365577.i, 1             ; 2 uses
  %.val470.i = load i64, ptr %i.arm, align 8, !tbaa !109
  %i.bba = icmp ult i64 %i.baz, %.val470.i
  br i1 %i.bba, label %.lr.ph578.i, label %.critedge538.i, !llvm.loop !373

.lr.ph578.i:                                      ; preds = %bb.nj, %.lr.ph578.preheader.i
  %.0365577.i = phi i64 [ %i.baz, %bb.nj ], [ 0, %.lr.ph578.preheader.i ] ; 2 uses
  %i.bbb = load ptr, ptr %8, align 8, !tbaa !14
  %i.bbc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0365577.i) #27
  %i.bbd = getelementptr inbounds nuw [72 x i8], ptr %i.bbb, i64 %i.bbc
  %i.bbe = load i64, ptr %i.bbd, align 8, !tbaa !203
  %i.bbf = getelementptr inbounds nuw [16 x i8], ptr %i.atc, i64 %i.bbe
  %i.bbg = load <2 x double>, ptr %i.bbf, align 8, !tbaa !110
  %i.bbh = load <2 x double>, ptr %i.bay, align 8, !tbaa !110
  %i.bbi = fsub <2 x double> %i.bbh, %i.bbg       ; 2 uses
  %i.bbj = extractelement <2 x double> %i.bbi, i64 0
  %i.bbk = extractelement <2 x double> %i.bbi, i64 1
  %i.bbl = call double @hypot(double noundef %i.bbj, double noundef %i.bbk) #27
  %i.bbm = fcmp uge double %i.bbl, 1.000000e-02
  br i1 %i.bbm, label %bb.nj, label %.loopexit642.i.loopexit

.critedge538.i:                                   ; preds = %.loopexit642.i.loopexit, %bb.nj, %bb.ni
  %.0367.i136 = phi i64 [ %.0367.i143, %bb.nj ], [ %.0367.i140, %bb.ni ], [ %.0367.i, %.loopexit642.i.loopexit ]
  %i.bbn = load ptr, ptr %8, align 8, !tbaa !14
  %i.bbo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383583.i) #27
  %i.bbp = getelementptr inbounds nuw [72 x i8], ptr %i.bbn, i64 %i.bbo
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 24
  %.sroa.0380.0.copyload382 = load <2 x double>, ptr %i.bbq, align 8, !tbaa !110
  %.val476.pre.i = load i64, ptr %i.arm, align 8, !tbaa !109
  br label %bb.nk

bb.nk:                                            ; preds = %.critedge538.i, %._crit_edge575.i
  %.sroa.0380.1 = phi <2 x double> [ %.sroa.0380.0.copyload382, %.critedge538.i ], [ %.sroa.0380.0, %._crit_edge575.i ]
  %.val476.i = phi i64 [ %.val476.pre.i, %.critedge538.i ], [ %.val471.i, %._crit_edge575.i ] ; 3 uses
  %.1385.i = phi i64 [ %.0367.i136, %.critedge538.i ], [ %.0384582.i, %._crit_edge575.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bbr = add i64 %.0383583.i, 1                 ; 2 uses
  %.not449.i = icmp ugt i64 %i.bbr, %.val476.i
  br i1 %.not449.i, label %bb.mp, label %bb.nb, !llvm.loop !374

bb.nl:                                            ; preds = %find_ortho_corners.exit.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.atc, i64 noundef %i.atb, i32 noundef 0) #27
  %.val585.pre.i = load i64, ptr %i.arm, align 8, !tbaa !109
  br label %draw_ortho_corner_markers.exit.i

draw_ortho_corner_markers.exit.i:                 ; preds = %bb.mp, %bb.na, %bb.nl
  %.val585.i = phi i64 [ %.val585.pre.i, %bb.nl ], [ 0, %bb.mp ], [ %.val.i514.i, %bb.na ]
  %.not636.i = icmp eq i64 %.val585.i, 0
  br i1 %.not636.i, label %._crit_edge589.i, label %.lr.ph588.i

._crit_edge589.i:                                 ; preds = %bb.no, %draw_ortho_corner_markers.exit.i
  call void @gv_list_clear_(ptr noundef nonnull %8, i64 noundef 72) #27
  call void @gv_list_free_(ptr noundef nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.nq

.lr.ph588.i:                                      ; preds = %draw_ortho_corner_markers.exit.i, %bb.no
  %.0586.i = phi i64 [ %i.bbx, %bb.no ], [ 0, %draw_ortho_corner_markers.exit.i ] ; 2 uses
  %i.bbs = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0586.i) #27
  %i.bbt = load ptr, ptr %i.aru, align 8, !tbaa !400 ; 2 uses
  %magicptr469.i = ptrtoint ptr %i.bbt to i64
  switch i64 %magicptr469.i, label %bb.nn [
    i64 1, label %bb.nm
    i64 0, label %bb.no
  ]

bb.nm:                                            ; preds = %.lr.ph588.i
  %i.bbu = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite454.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.bbu) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.nn:                                            ; preds = %.lr.ph588.i
  %i.bbv = load ptr, ptr %8, align 8, !tbaa !14
  %i.bbw = getelementptr inbounds nuw [72 x i8], ptr %i.bbv, i64 %i.bbs
  call void %i.bbt(ptr noundef byval(%struct.corner_info_t) align 8 %i.bbw) #27, !inline_history !371
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %.lr.ph588.i
  %i.bbx = add nuw i64 %.0586.i, 1                ; 2 uses
  %.val.i90 = load i64, ptr %i.arm, align 8, !tbaa !109
  %i.bby = icmp ult i64 %i.bbx, %.val.i90
  br i1 %i.bby, label %.lr.ph588.i, label %._crit_edge589.i, !llvm.loop !375

bb.np:                                            ; preds = %bb.ls
  %i.bbz = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.bca = load i64, ptr %i.arl, align 8, !tbaa !198 ; 2 uses
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.bbz, i64 noundef %i.bca, i32 noundef 0) #27
  br label %bb.nq

bb.nq:                                            ; preds = %bb.np, %._crit_edge589.i
  %24 = phi i64 [ %i.bca, %bb.np ], [ %i.atb, %._crit_edge589.i ]
  %25 = phi ptr [ %i.bbz, %bb.np ], [ %i.atc, %._crit_edge589.i ] ; 3 uses
  %i.bcb = load i32, ptr %i.arv, align 8, !tbaa !394 ; 3 uses
  %.not451.not.i = icmp eq i32 %i.bcb, 0
  br i1 %.not451.not.i, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bcc = load double, ptr %i.arw, align 8
  %i.bcd = load double, ptr %i.arx, align 8
  %i.bce = load double, ptr %25, align 8
  %i.bcf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bcg = load double, ptr %i.bcf, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.bcc, double %i.bcd, double %i.bce, double %i.bcg, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.bcb) #27
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %i.bch = load i32, ptr %i.ary, align 4, !tbaa !395 ; 3 uses
  %.not452.not.i = icmp eq i32 %i.bch, 0
  br i1 %.not452.not.i, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bci = getelementptr [16 x i8], ptr %25, i64 %24 ; 2 uses
  %i.bcj = getelementptr i8, ptr %i.bci, i64 -16
  %i.bck = load double, ptr %i.arz, align 8
  %i.bcl = load double, ptr %i.asa, align 8
  %i.bcm = load double, ptr %i.bcj, align 8
  %i.bcn = getelementptr i8, ptr %i.bci, i64 -8
  %i.bco = load double, ptr %i.bcn, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.bck, double %i.bcl, double %i.bcm, double %i.bco, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.bch) #27
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.bcp = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 16
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !191 ; 3 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 8
  %i.bct = load i64, ptr %i.bcs, align 8, !tbaa !195 ; 3 uses
  %i.bcu = icmp ugt i64 %i.bct, 1
  br i1 %i.bcu, label %bb.nv, label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  %i.bcv = or i32 %i.bch, %i.bcb
  %or.cond12.i = icmp ne i32 %i.bcv, 0
  %or.cond14.i = and i1 %.not39, %or.cond12.i
  br i1 %or.cond14.i, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  call void @gvrender_set_style(ptr noundef %0, ptr noundef nonnull %.036) #27
  %.pre.i84 = load ptr, ptr %i.b, align 8, !tbaa !87
  %.phi.trans.insert.i85 = getelementptr inbounds nuw i8, ptr %.pre.i84, i64 16
  %.pre675.i = load ptr, ptr %.phi.trans.insert.i85, align 8, !tbaa !191 ; 2 uses
  %.phi.trans.insert676.i = getelementptr inbounds nuw i8, ptr %.pre675.i, i64 8
  %.pre677.i = load i64, ptr %.phi.trans.insert676.i, align 8, !tbaa !195
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv, %bb.nu
  %i.bcw = phi i64 [ %i.bct, %bb.nv ], [ %.pre677.i, %bb.nw ], [ %i.bct, %bb.nu ]
  %i.bcx = phi ptr [ %i.bcr, %bb.nv ], [ %.pre675.i, %bb.nw ], [ %i.bcr, %bb.nu ]
  %i.bcy = add nuw i64 %.0392590.i, 1             ; 2 uses
  %i.bcz = icmp ult i64 %i.bcy, %i.bcw
  br i1 %i.bcz, label %bb.lm, label %.loopexit543.i, !llvm.loop !376

.loopexit543.i:                                   ; preds = %bb.nx, %bb.ll, %._crit_edge631.i, %bb.jy, %bb.jx, %multicolor.exit.i, %emit_begin_edge.exit
  %i.bda = getelementptr inbounds nuw i8, ptr %7, i64 31
  %.val479.i = load i8, ptr %i.bda, align 1, !tbaa !14
  %i.bdb = icmp eq i8 %.val479.i, -1
  br i1 %i.bdb, label %bb.ny, label %emit_edge_graphics.exit

bb.ny:                                            ; preds = %.loopexit543.i
  %.val478.i = load ptr, ptr %7, align 8
  call void @free(ptr noundef %.val478.i) #27
  br label %emit_edge_graphics.exit

emit_edge_graphics.exit:                          ; preds = %.loopexit543.i, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bdc = load ptr, ptr %i.gc, align 8, !tbaa !39 ; 26 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 16
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !14 ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdc, i64 248 ; 2 uses
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !53
  %.not.i112 = icmp eq ptr %i.bdg, null
  br i1 %.not.i112, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %emit_edge_graphics.exit
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdc, i64 352
  %i.bdi = load i16, ptr %i.bdh, align 8
  %i.bdj = and i16 %i.bdi, 1
  %.not103.i = icmp eq i16 %i.bdj, 0
  br i1 %.not103.i, label %.loopexit.i114, label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %emit_edge_graphics.exit
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdc, i64 376 ; 2 uses
  %i.bdl = load i64, ptr %i.bdk, align 8, !tbaa !401 ; 2 uses
  %.not104.i = icmp eq i64 %i.bdl, 0
  br i1 %.not104.i, label %.loopexit.i114, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdc, i64 384 ; 2 uses
  %.not115.i = icmp eq i64 %i.bdl, 1
  br i1 %.not115.i, label %.loopexit.i114, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ob
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !67 ; 2 uses
  %i.bdo = load i64, ptr %i.bdn, align 8, !tbaa !200
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdc, i64 360
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdc, i64 392
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdc, i64 368
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdc, i64 288
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdc, i64 320
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdc, i64 256
  br label %bb.oc

bb.oc:                                            ; preds = %bb.oc, %.lr.ph.i113
  %i.bdv = phi ptr [ %i.bdn, %.lr.ph.i113 ], [ %i.bee, %bb.oc ]
  %.0113.i = phi i64 [ 1, %.lr.ph.i113 ], [ %i.bei, %bb.oc ] ; 3 uses
  %.099112.i = phi i64 [ %i.bdo, %.lr.ph.i113 ], [ %i.beh, %bb.oc ] ; 2 uses
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %i.bdv, i64 %.0113.i
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !200
  store i64 %i.bdx, ptr %i.bdp, align 8, !tbaa !123
  %i.bdy = load ptr, ptr %i.bdq, align 8, !tbaa !66
  %i.bdz = getelementptr inbounds nuw [16 x i8], ptr %i.bdy, i64 %.099112.i
  store ptr %i.bdz, ptr %i.bdr, align 8, !tbaa !65
  %i.bea = load ptr, ptr %i.bdf, align 8, !tbaa !53
  %i.beb = load ptr, ptr %i.bds, align 8, !tbaa !57
  %i.bec = load ptr, ptr %i.bdt, align 8, !tbaa !61
  %i.bed = load ptr, ptr %i.bdu, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.bea, ptr noundef %i.beb, ptr noundef %i.bec, ptr noundef %i.bed) #27
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  %i.bee = load ptr, ptr %i.bdm, align 8, !tbaa !67 ; 2 uses
  %i.bef = getelementptr inbounds nuw [8 x i8], ptr %i.bee, i64 %.0113.i
  %i.beg = load i64, ptr %i.bef, align 8, !tbaa !200
  %i.beh = add i64 %i.beg, %.099112.i
  %i.bei = add nuw i64 %.0113.i, 1                ; 2 uses
  %i.bej = load i64, ptr %i.bdk, align 8, !tbaa !401
  %i.bek = icmp ult i64 %i.bei, %i.bej
  br i1 %i.bek, label %bb.oc, label %.loopexit.i114, !llvm.loop !377

.loopexit.i114:                                   ; preds = %bb.oc, %bb.ob, %bb.oa, %bb.nz
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bdc, i64 360
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bde, i64 16 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bel, i8 0, i64 16, i1 false)
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !87 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 16
  %i.bep = load ptr, ptr %i.beo, align 8, !tbaa !191 ; 2 uses
  %.not105.i = icmp eq ptr %i.bep, null
  br i1 %.not105.i, label %bb.oj, label %bb.od

bb.od:                                            ; preds = %.loopexit.i114
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !196 ; 4 uses
  %.sroa.7.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.beq, i64 16
  %.sroa.7.0.copyload.i116 = load i32, ptr %.sroa.7.0..sroa_idx.i115, align 8, !tbaa !47
  %.not106.i = icmp eq i32 %.sroa.7.0.copyload.i116, 0
  br i1 %.not106.i, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.beq, i64 32
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.beq, i64 24
  br label %bb.og

bb.of:                                            ; preds = %bb.od
  %.sroa.0.0.copyload.i118 = load ptr, ptr %i.beq, align 8, !tbaa !201 ; 2 uses
  %.sroa.816.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i118, i64 8
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.oe
  %.sroa.816.0.in.i = phi ptr [ %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i, %bb.oe ], [ %.sroa.816.0..sroa_idx.i, %bb.of ]
  %.sroa.011.0.in.i = phi ptr [ %.sroa.9.0..sroa_idx.i, %bb.oe ], [ %.sroa.0.0.copyload.i118, %bb.of ]
  %.sroa.011.0.i = load double, ptr %.sroa.011.0.in.i, align 8, !tbaa !110
  %.sroa.816.0.i = load double, ptr %.sroa.816.0.in.i, align 8, !tbaa !110
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bdc, i64 352 ; 2 uses
  %i.bes = load i16, ptr %i.ber, align 8          ; 2 uses
  %i.bet = and i16 %i.bes, 128
  %i.beu = icmp ne i16 %i.bet, 0
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bdc, i64 272
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !55
  %i.bex = and i16 %i.bes, 2
  %i.bey = icmp ne i16 %i.bex, 0
  call fastcc void @nodeIntersect(ptr noundef nonnull %0, double %.sroa.011.0.i, double %.sroa.816.0.i, i1 noundef zeroext %i.beu, ptr noundef %i.bew, i1 noundef zeroext %i.bey)
  %i.bez = load ptr, ptr %i.bem, align 8, !tbaa !87
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 16
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !191 ; 2 uses
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !196
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8
  %i.bfe = load i64, ptr %i.bfd, align 8, !tbaa !195
  %i.bff = getelementptr [56 x i8], ptr %i.bfc, i64 %i.bfe ; 4 uses
  %.sroa.8.0..sroa_idx7.i = getelementptr i8, ptr %i.bff, i64 -36
  %.sroa.8.0.copyload8.i = load i32, ptr %.sroa.8.0..sroa_idx7.i, align 4, !tbaa !47
  %.not107.i = icmp eq i32 %.sroa.8.0.copyload8.i, 0
  br i1 %.not107.i, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.bfg = getelementptr i8, ptr %i.bff, i64 -56
  %.sroa.6.0..sroa_idx3.i = getelementptr i8, ptr %i.bff, i64 -48
  %.sroa.6.0.copyload4.i = load i64, ptr %.sroa.6.0..sroa_idx3.i, align 8, !tbaa !200
  %.sroa.0.0.copyload2.i = load ptr, ptr %i.bfg, align 8, !tbaa !201
  %i.bfh = getelementptr [16 x i8], ptr %.sroa.0.0.copyload2.i, i64 %.sroa.6.0.copyload4.i
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %bb.og
  %.pn.i = phi ptr [ %i.bfh, %bb.oh ], [ %i.bff, %bb.og ] ; 2 uses
  %.sroa.011.1.in.i = getelementptr i8, ptr %.pn.i, i64 -16
  %.sroa.011.1.i = load double, ptr %.sroa.011.1.in.i, align 8, !tbaa !110
  %.sroa.816.1.in.i = getelementptr i8, ptr %.pn.i, i64 -8
  %.sroa.816.1.i = load double, ptr %.sroa.816.1.in.i, align 8, !tbaa !110
  %i.bfi = load i16, ptr %i.ber, align 8          ; 2 uses
  %i.bfj = and i16 %i.bfi, 256
  %i.bfk = icmp ne i16 %i.bfj, 0
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bdc, i64 280
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !56
  %i.bfn = and i16 %i.bfi, 4
  %i.bfo = icmp ne i16 %i.bfn, 0
  call fastcc void @nodeIntersect(ptr noundef nonnull %0, double %.sroa.011.1.i, double %.sroa.816.1.i, i1 noundef zeroext %i.bfk, ptr noundef %i.bfm, i1 noundef zeroext %i.bfo)
  %.pre.i117 = load ptr, ptr %i.bem, align 8, !tbaa !87
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %.loopexit.i114
  %i.bfp = phi ptr [ %.pre.i117, %bb.oi ], [ %i.ben, %.loopexit.i114 ]
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 120
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !378
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bdc, i64 352 ; 4 uses
end_hunk_4
