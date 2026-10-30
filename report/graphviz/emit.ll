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
  store <2 x double> %i.he, ptr %i.hc, align 8, !tbaa !110
  %i.hf = add i64 %i.ha, %i.go                    ; 2 uses
  %i.hg = add nuw nsw i64 %.0163207.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit79.unr-lcssa, label %gv_calloc.exit192.i, !llvm.loop !312

bb.ao:                                            ; preds = %bb.aj
  %mul.ov.i195.i = icmp ugt i64 %spec.select190.i, 1152921504606846975
  br i1 %mul.ov.i195.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.47, i64 noundef %spec.select190.i, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hj = tail call noalias ptr @calloc(i64 noundef %spec.select190.i, i64 noundef 16) #28 ; 6 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.ar, label %gv_calloc.exit196.preheader.i

gv_calloc.exit196.preheader.i:                    ; preds = %bb.aq
  %invariant.gep208.i = getelementptr [16 x i8], ptr %i.ed, i64 %i.gm ; 3 uses
  %min.iters.check = icmp ult i64 %spec.select190.i, 4
  br i1 %min.iters.check, label %gv_calloc.exit196.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %gv_calloc.exit196.preheader.i
  %n.vec = and i64 %spec.select190.i, 1152921504606846974 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.hl = or disjoint i64 %index, 1               ; 2 uses
  %i.hm = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %index
  %i.hn = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.hl
  %wide.load = load <2 x double>, ptr %i.hm, align 8
  %wide.load64 = load <2 x double>, ptr %i.hn, align 8
  %i.ho = fadd <2 x double> %i.cq, %wide.load
  %i.hp = fadd <2 x double> %i.cq, %wide.load64
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %index
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %i.hl
  store <2 x double> %i.ho, ptr %i.hq, align 8
  store <2 x double> %i.hp, ptr %i.hr, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select190.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %gv_calloc.exit196.i.preheader

gv_calloc.exit196.i.preheader:                    ; preds = %gv_calloc.exit196.preheader.i, %middle.block
  %.0210.i.ph = phi i64 [ 0, %gv_calloc.exit196.preheader.i ], [ %n.vec, %middle.block ]
  br label %gv_calloc.exit196.i

bb.ar:                                            ; preds = %bb.aq
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hu = shl nuw i64 %spec.select190.i, 4
  %i.hv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.45, i64 noundef %i.hu) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit196.i:                              ; preds = %gv_calloc.exit196.i.preheader, %gv_calloc.exit196.i
  %.0210.i = phi i64 [ %i.hz, %gv_calloc.exit196.i ], [ %.0210.i.ph, %gv_calloc.exit196.i.preheader ] ; 3 uses
  %gep209.i = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %.0210.i
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %.0210.i
  %i.hx = load <2 x double>, ptr %gep209.i, align 8, !tbaa !110
  %i.hy = fadd <2 x double> %i.cq, %i.hx
  store <2 x double> %i.hy, ptr %i.hw, align 8, !tbaa !110
  %i.hz = add nuw nsw i64 %.0210.i, 1             ; 2 uses
  %exitcond215.not.i = icmp eq i64 %i.hz, %spec.select190.i
  br i1 %exitcond215.not.i, label %.loopexit.i, label %gv_calloc.exit196.i, !llvm.loop !314

.thread.i:                                        ; preds = %isRect.exit.thread.i, %isFilled.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.ia, align 4, !tbaa !122
  %i.ib = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.as, label %gv_calloc.exit198.i

bb.as:                                            ; preds = %.thread.i
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ie = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit198.i:                              ; preds = %.thread.i
  %i.if = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 96
  %i.ih = load <2 x double>, ptr %i.ig, align 8, !tbaa !110
  %i.ii = fmul <2 x double> %i.ih, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ik = fsub <2 x double> %i.cq, %i.ij
  store <2 x double> %i.ik, ptr %i.ib, align 8, !tbaa !110
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 112
  %i.im = load double, ptr %i.il, align 8, !tbaa !186
  %i.in = fadd double %i.cr, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store double %i.in, ptr %i.io, align 8, !tbaa !121
  %i.ip = extractelement <2 x double> %i.ii, i64 0
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %gv_calloc.exit198.i, %bb.ah, %gv_calloc.exit.i
  %.sink232.i = phi double [ %i.fa, %gv_calloc.exit.i ], [ %i.fu, %bb.ah ], [ %i.ip, %gv_calloc.exit198.i ]
  %.sink231.i = phi ptr [ %i.em, %gv_calloc.exit.i ], [ %i.fl, %bb.ah ], [ %i.ib, %gv_calloc.exit198.i ] ; 2 uses
  %i.iq = extractelement <2 x double> %i.cq, i64 1
  %i.ir = fadd double %i.iq, %.sink232.i
  %i.is = getelementptr inbounds nuw i8, ptr %.sink231.i, i64 24
  store double %i.ir, ptr %i.is, align 8, !tbaa !126
  br label %.loopexit.i

.loopexit.i.loopexit79.unr-lcssa:                 ; preds = %gv_calloc.exit192.i
  %i.it = and i32 %narrow.i, 1
  %lcmp.mod.not = icmp eq i32 %i.it, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %gv_calloc.exit192.i.epil.preheader

gv_calloc.exit192.i.epil.preheader:               ; preds = %.loopexit.i.loopexit79.unr-lcssa, %gv_calloc.exit192.preheader.i
  %.0163207.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hg, %.loopexit.i.loopexit79.unr-lcssa ]
  %.0164206.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hf, %.loopexit.i.loopexit79.unr-lcssa ]
  %lcmp.mod80 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %gep.i.epil = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i.epil.init
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %.0163207.i.epil.init
  %i.iv = load <2 x double>, ptr %gep.i.epil, align 8, !tbaa !110
  %i.iw = fadd <2 x double> %i.cq, %i.iv
  store <2 x double> %i.iw, ptr %i.iu, align 8, !tbaa !110
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %gv_calloc.exit192.i.epil.preheader, %.loopexit.i.loopexit79.unr-lcssa, %gv_calloc.exit196.i, %.lr.ph.i, %middle.block, %middle.block74, %.loopexit.sink.split.i, %bb.ai
  %.2172.i = phi i64 [ 0, %bb.ai ], [ 2, %.loopexit.sink.split.i ], [ %i.ei, %middle.block74 ], [ %spec.select190.i, %middle.block ], [ %i.ei, %.lr.ph.i ], [ %spec.select190.i, %gv_calloc.exit196.i ], [ %i.ei, %.loopexit.i.loopexit79.unr-lcssa ], [ %i.ei, %gv_calloc.exit192.i.epil.preheader ] ; 2 uses
  %.2.i = phi ptr [ %i.ga, %bb.ai ], [ %.sink231.i, %.loopexit.sink.split.i ], [ %i.ga, %middle.block74 ], [ %i.hj, %middle.block ], [ %i.ga, %.lr.ph.i ], [ %i.hj, %gv_calloc.exit196.i ], [ %i.gr, %.loopexit.i.loopexit79.unr-lcssa ], [ %i.gr, %gv_calloc.exit192.i.epil.preheader ] ; 3 uses
  %i.ix = and i32 %i.ak, 8192
  %.not188.i = icmp eq i32 %i.ix, 0
  br i1 %.not188.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit.i
  %i.iy = tail call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef %.2.i, ptr noundef %.2.i, i64 noundef %.2172.i) #27 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store ptr %.2.i, ptr %i.iz, align 8, !tbaa !65
  %i.ja = getelementptr inbounds nuw i8, ptr %i.al, i64 360
  store i64 %.2172.i, ptr %i.ja, align 8, !tbaa !123
  br label %emit_begin_node.exit

emit_begin_node.exit:                             ; preds = %bb.p, %bb.r, %bb.au
  %i.jb = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #27
  %i.jc = tail call ptr @setColorScheme(ptr noundef %i.jb) #27
  store ptr %i.jc, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @gvrender_begin_node(ptr noundef nonnull %0) #27
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !315
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !332
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !334
  tail call void %i.jj(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %i.jk = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 144
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !335 ; 3 uses
  %.not40 = icmp eq ptr %i.jm, null
  br i1 %.not40, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %emit_begin_node.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 105
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !187, !range !145, !noundef !181
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @emit_label(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %i.jm) #27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %emit_begin_node.exit
  tail call void @gvrender_end_node(ptr noundef nonnull %0) #27
  %i.jq = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  %i.jr = tail call ptr @setColorScheme(ptr noundef %i.jq) #27
  tail call void @free(ptr noundef %i.jr) #27
  %i.js = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.js) #27
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
  %i.afo = getelementptr inbounds nuw i8, ptr %.0.i119, i64 1
  br label %agxbput.exit.i, !llvm.loop !351

default_pencolor.exit:                            ; preds = %agxbclear.exit.thread.i.i, %bb.jg
  %i.afp = phi ptr [ %i.afn, %bb.jg ], [ %7, %agxbclear.exit.thread.i.i ] ; 4 uses
  %.not440.i = icmp eq ptr %i.afp, %.0379.i
  br i1 %.not440.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %default_pencolor.exit
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef %i.afp) #27
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %default_pencolor.exit, %.thread.i
  %.0399521.i = phi ptr [ %.0379.i, %.thread.i ], [ %i.afp, %bb.jj ], [ %i.afp, %default_pencolor.exit ] ; 14 uses
  %.0400520.i = phi ptr [ %i.aei, %.thread.i ], [ %.0400.i, %bb.jj ], [ %.0400.i, %default_pencolor.exit ] ; 7 uses
  %.not441.i = icmp eq ptr %.0400520.i, %.0379.i
  br i1 %.not441.i, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef %.0400520.i) #27
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  br i1 %.1414.i, label %bb.jn, label %bb.jz

bb.jn:                                            ; preds = %bb.jm
  %i.afq = load i8, ptr %.0399521.i, align 1, !tbaa !14
  %i.afr = icmp eq i8 %i.afq, 0
  %spec.store.select.i = select i1 %i.afr, ptr @.str.27, ptr %.0399521.i ; 3 uses
  %i.afs = load i8, ptr %.0400520.i, align 1, !tbaa !14
  %i.aft = icmp eq i8 %i.afs, 0
  %spec.store.select15.i = select i1 %i.aft, ptr @.str.27, ptr %.0400520.i ; 2 uses
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull @.str.29) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select.i) #27
  %i.afu = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !191
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.afx, i64 56, i1 false), !tbaa.struct !393
  %i.afy = load ptr, ptr @E_dir, align 8, !tbaa !167 ; 2 uses
  %.not.i480.i = icmp eq ptr %i.afy, null
  br i1 %.not.i480.i, label %bb.jt, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.afz = call ptr @agxget(ptr noundef nonnull %1, ptr noundef nonnull %i.afy) #27 ; 5 uses
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !14
  %.not10.i.i = icmp eq i8 %i.aga, 0
  br i1 %.not10.i.i, label %bb.jt, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.agb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.afz, ptr noundef nonnull dereferenceable(8) @.str.98) #31
  %i.agc = icmp eq i32 %i.agb, 0
  br i1 %i.agc, label %taperfun.exit.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.agd = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.afz, ptr noundef nonnull dereferenceable(5) @.str.99) #31
  %i.age = icmp eq i32 %i.agd, 0
  br i1 %i.age, label %taperfun.exit.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.agf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.afz, ptr noundef nonnull dereferenceable(5) @.str.100) #31
  %i.agg = icmp eq i32 %i.agf, 0
  br i1 %i.agg, label %taperfun.exit.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.agh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.afz, ptr noundef nonnull dereferenceable(5) @.str.101) #31
  %i.agi = icmp eq i32 %i.agh, 0
  br i1 %i.agi, label %taperfun.exit.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jo, %bb.jn
  %i.agj = load i32, ptr %1, align 8
  %i.agk = and i32 %i.agj, 3
  %i.agl = icmp eq i32 %i.agk, 2
  %i.agm = select i1 %i.agl, i64 56, i64 -8
  %i.agn = getelementptr inbounds i8, ptr %1, i64 %i.agm
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !176
  %i.agp = call ptr @agraphof(ptr noundef %i.ago) #27
  %i.agq = call i32 @agisdirected(ptr noundef %i.agp) #27
  %.not11.i.i = icmp eq i32 %i.agq, 0
  %i.agr = select i1 %.not11.i.i, ptr @nonefunc, ptr @forfunc
  br label %taperfun.exit.i

taperfun.exit.i:                                  ; preds = %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp
  %.0.i.i101 = phi ptr [ %i.agr, %bb.jt ], [ @forfunc, %bb.jp ], [ @revfunc, %bb.jq ], [ @bothfunc, %bb.jr ], [ @nonefunc, %bb.js ]
  %i.ags = call { i64, ptr } @taper(ptr noundef nonnull %6, ptr noundef nonnull %.0.i.i101, double noundef %i.zr) #27 ; 2 uses
  %i.agt = extractvalue { i64, ptr } %i.ags, 0
  %i.agu = extractvalue { i64, ptr } %i.ags, 1    ; 2 uses
  call void @gvrender_polygon(ptr noundef %0, ptr noundef %i.agu, i64 noundef %i.agt, i32 noundef 1) #27
  call void @free(ptr noundef %i.agu) #27
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select.i) #27
  %.not465.i = icmp eq ptr %spec.store.select15.i, %spec.store.select.i
  br i1 %.not465.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %taperfun.exit.i
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select15.i) #27
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %taperfun.exit.i
  %i.agv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.agw = load i32, ptr %i.agv, align 8, !tbaa !394 ; 2 uses
  %.not466.i = icmp eq i32 %i.agw, 0
  br i1 %.not466.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.agx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.agy = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.agz = load double, ptr %i.agx, align 8
  %i.aha = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ahb = load double, ptr %i.aha, align 8
  %i.ahc = load double, ptr %i.agy, align 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.ahe = load double, ptr %i.ahd, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.agz, double %i.ahb, double %i.ahc, double %i.ahe, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.agw) #27
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.ahf = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !395 ; 2 uses
  %.not467.i = icmp eq i32 %i.ahg, 0
  br i1 %.not467.i, label %.loopexit540.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ahh = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ahi = load ptr, ptr %6, align 8, !tbaa !199
  %i.ahj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !198
  %i.ahl = getelementptr [16 x i8], ptr %i.ahi, i64 %i.ahk ; 2 uses
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 -16
  %i.ahn = load double, ptr %i.ahh, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ahp = load double, ptr %i.aho, align 8
  %i.ahq = load double, ptr %i.ahm, align 8
  %i.ahr = getelementptr i8, ptr %i.ahl, i64 -8
  %i.ahs = load double, ptr %i.ahr, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.ahn, double %i.ahp, double %i.ahq, double %i.ahs, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.ahg) #27
  br label %.loopexit540.i

bb.jz:                                            ; preds = %bb.jm
  %i.aht = load ptr, ptr %i.b, align 8, !tbaa !87 ; 3 uses
  br i1 %i.aai, label %bb.ka, label %bb.lh

bb.ka:                                            ; preds = %bb.jz
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 16 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !191
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !195 ; 10 uses
  %.not532.i = icmp eq i64 %i.ahx, 0              ; 3 uses
  br i1 %.not532.i, label %gv_calloc.exit484.thread.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %mul.ov.i.i = icmp ugt i64 %i.ahx, 329406144173384850
  br i1 %mul.ov.i.i, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.ahy = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ahz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahy, ptr noundef nonnull @.str.47, i64 noundef %i.ahx, i64 noundef 56) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kd:                                            ; preds = %bb.kb
  %i.aia = call noalias ptr @calloc(i64 noundef %i.ahx, i64 noundef 56) #28 ; 3 uses
  %i.aib = icmp eq ptr %i.aia, null
  br i1 %i.aib, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.aic = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aid = mul nuw i64 %i.ahx, 56
  %i.aie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aic, ptr noundef nonnull @.str.45, i64 noundef %i.aid) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit484.thread.i:                       ; preds = %bb.ka
  %i.aif = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  %i.aig = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  br label %._crit_edge605.i

bb.kf:                                            ; preds = %bb.kd
  %i.aih = call noalias ptr @calloc(i64 noundef %i.ahx, i64 noundef 56) #28 ; 3 uses
  %i.aii = icmp eq ptr %i.aih, null
  br i1 %i.aii, label %bb.kg, label %.lr.ph604.i

bb.kg:                                            ; preds = %bb.kf
  %i.aij = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aik = mul nuw i64 %i.ahx, 56
  %i.ail = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aij, ptr noundef nonnull @.str.45, i64 noundef %i.aik) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph604.i:                                      ; preds = %bb.kf
  %i.aim = uitofp i64 %.0410.i to double
  %i.ain = fadd nnan double %i.aim, 2.000000e+00
  %i.aio = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aip = fmul nnan double %i.ain, -5.000000e-01
  %i.aiq = insertelement <2 x double> poison, double %i.aip, i64 0
  %i.air = shufflevector <2 x double> %i.aiq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.ki

._crit_edge605.i:                                 ; preds = %._crit_edge596.i, %gv_calloc.exit484.thread.i
  %19 = phi ptr [ undef, %gv_calloc.exit484.thread.i ], [ %20, %._crit_edge596.i ] ; 3 uses
  %i.ais = phi ptr [ %i.aif, %gv_calloc.exit484.thread.i ], [ %i.aia, %._crit_edge596.i ] ; 3 uses
  %i.ait = phi ptr [ %i.aig, %gv_calloc.exit484.thread.i ], [ %i.aih, %._crit_edge596.i ] ; 3 uses
  %i.aiu = call noalias ptr @strdup(ptr noundef readonly %.0399521.i) #27 ; 3 uses
  %i.aiv = icmp eq ptr %i.aiu, null
  br i1 %i.aiv, label %bb.kh, label %gv_strdup.exit.i

bb.kh:                                            ; preds = %._crit_edge605.i
  %i.aiw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aix = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0399521.i) #31
  %i.aiy = add i64 %i.aix, 1
  %i.aiz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aiw, ptr noundef nonnull @.str.45, i64 noundef %i.aiy) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit.i:                                 ; preds = %._crit_edge605.i
  %i.aja = call ptr @strtok(ptr noundef nonnull %i.aiu, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455615.i = icmp eq ptr %i.aja, null
  br i1 %.not455615.i, label %._crit_edge622.i, label %.lr.ph621.i

bb.ki:                                            ; preds = %._crit_edge596.i, %.lr.ph604.i
  %.0409603.i = phi i64 [ 0, %.lr.ph604.i ], [ %i.anr, %._crit_edge596.i ] ; 4 uses
  %.sroa.8214.0602.i = phi double [ 0.000000e+00, %.lr.ph604.i ], [ %.sroa.8214.1.lcssa.i, %._crit_edge596.i ] ; 2 uses
  %.sroa.0210.0601.i = phi double [ 0.000000e+00, %.lr.ph604.i ], [ %.sroa.0210.1.lcssa.i, %._crit_edge596.i ] ; 2 uses
  %i.ajb = load ptr, ptr %i.ahu, align 8, !tbaa !191
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !196
  %i.ajd = getelementptr inbounds nuw [56 x i8], ptr %i.ajc, i64 %.0409603.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ajd, i64 56, i1 false), !tbaa.struct !393
  %i.aje = load i64, ptr %i.aio, align 8, !tbaa !198 ; 10 uses
  %i.ajf = getelementptr inbounds nuw [56 x i8], ptr %i.aia, i64 %.0409603.i ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  store i64 %i.aje, ptr %i.ajg, align 8, !tbaa !198
  %i.ajh = getelementptr inbounds nuw [56 x i8], ptr %i.aih, i64 %.0409603.i ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store i64 %i.aje, ptr %i.aji, align 8, !tbaa !198
  %.not533.i = icmp eq i64 %i.aje, 0
  br i1 %.not533.i, label %gv_calloc.exit492.thread.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %mul.ov.i487.i = icmp ugt i64 %i.aje, 1152921504606846975
  br i1 %mul.ov.i487.i, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.ajj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajj, ptr noundef nonnull @.str.47, i64 noundef %i.aje, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kl:                                            ; preds = %bb.kj
  %i.ajl = call noalias ptr @calloc(i64 noundef %i.aje, i64 noundef 16) #28 ; 4 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ajn = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajo = shl nuw i64 %i.aje, 4
  %i.ajp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajn, ptr noundef nonnull @.str.45, i64 noundef %i.ajo) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.thread.i:                       ; preds = %bb.ki
  %i.ajq = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajq, ptr %i.ajf, align 8, !tbaa !199
  %i.ajr = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajr, ptr %i.ajh, align 8, !tbaa !199
  %i.ajs = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.ajt = load <2 x double>, ptr %i.ajs, align 8, !tbaa !110
  br label %.lr.ph595.i

bb.kn:                                            ; preds = %bb.kl
  store ptr %i.ajl, ptr %i.ajf, align 8, !tbaa !199
  %i.aju = call noalias ptr @calloc(i64 noundef %i.aje, i64 noundef 16) #28 ; 4 uses
  %i.ajv = icmp eq ptr %i.aju, null
  br i1 %i.ajv, label %bb.ko, label %gv_calloc.exit492.i

bb.ko:                                            ; preds = %bb.kn
  %i.ajw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajx = shl nuw i64 %i.aje, 4
  %i.ajy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajw, ptr noundef nonnull @.str.45, i64 noundef %i.ajx) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.i:                              ; preds = %bb.kn
  store ptr %i.aju, ptr %i.ajh, align 8, !tbaa !199
  %i.ajz = load ptr, ptr %6, align 8, !tbaa !199  ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !110
  %i.aka = load <2 x double>, ptr %i.ajz, align 8, !tbaa !110 ; 2 uses
  %i.akb = add nsw i64 %i.aje, -1                 ; 2 uses
  %.not635.i = icmp eq i64 %i.akb, 0
  %i.akc = insertelement <2 x double> %i.aka, double %.sroa.8.0.copyload.i, i64 1
  br i1 %.not635.i, label %._crit_edge596.i, label %.lr.ph595.i

.lr.ph595.i:                                      ; preds = %gv_calloc.exit492.i, %gv_calloc.exit492.thread.i
  %i.akd = phi i64 [ -1, %gv_calloc.exit492.thread.i ], [ %i.akb, %gv_calloc.exit492.i ]
  %i.ake = phi ptr [ %i.ajs, %gv_calloc.exit492.thread.i ], [ %i.ajz, %gv_calloc.exit492.i ] ; 4 uses
  %i.akf = phi ptr [ %i.ajq, %gv_calloc.exit492.thread.i ], [ %i.ajl, %gv_calloc.exit492.i ] ; 7 uses
  %i.akg = phi ptr [ %i.ajr, %gv_calloc.exit492.thread.i ], [ %i.aju, %gv_calloc.exit492.i ] ; 4 uses
  %i.akh = phi <2 x double> [ %i.ajt, %gv_calloc.exit492.thread.i ], [ %i.akc, %gv_calloc.exit492.i ]
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  br label %bb.kp

bb.kp:                                            ; preds = %computeoffset_qr.exit.i, %.lr.ph595.i
  %.0408594.i = phi i64 [ 0, %.lr.ph595.i ], [ %i.aln, %computeoffset_qr.exit.i ] ; 7 uses
  %.sroa.8214.1591.i = phi double [ %.sroa.8214.0602.i, %.lr.ph595.i ], [ %i.amv, %computeoffset_qr.exit.i ]
  %.sroa.0210.1590.i = phi double [ %.sroa.0210.0601.i, %.lr.ph595.i ], [ %i.amu, %computeoffset_qr.exit.i ]
  %i.aki = phi <2 x double> [ %i.akh, %.lr.ph595.i ], [ %i.alp, %computeoffset_qr.exit.i ] ; 4 uses
  %i.akj = add nuw i64 %.0408594.i, 1             ; 3 uses
  %i.akk = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.akj
  %i.akl = load <2 x double>, ptr %i.akk, align 8, !tbaa !110 ; 6 uses
  %i.akm = icmp eq i64 %.0408594.i, 0
  br i1 %i.akm, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %foldExtExtBinop344 = fsub <2 x double> %i.aki, %i.akl
  %i.akn = extractelement <2 x double> %foldExtExtBinop344, i64 0 ; 3 uses
  %foldExtExtBinop346 = fsub <2 x double> %i.aki, %i.akl
  %i.ako = extractelement <2 x double> %foldExtExtBinop346, i64 1 ; 3 uses
  %i.akp = fmul double %i.ako, %i.ako
  %i.akq = call double @llvm.fmuladd.f64(double %i.akn, double %i.akn, double %i.akp)
  %i.akr = fadd double %i.akq, 1.000000e-04
  %i.aks = call double @sqrt(double noundef %i.akr) #27
  %i.akt = fdiv double 2.000000e+00, %i.aks       ; 2 uses
  %i.aku = fmul double %i.ako, %i.akt
  %i.akv = fneg double %i.akn
  %i.akw = fmul double %i.akt, %i.akv
  store double %i.aku, ptr %i.akf, align 8, !tbaa !110
  store double %i.akw, ptr %.sroa.4100.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.akx = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %.0408594.i ; 2 uses
  %i.aky = extractelement <2 x double> %i.akl, i64 0
  %i.akz = fsub double %.sroa.0210.1590.i, %i.aky ; 3 uses
  %i.ala = extractelement <2 x double> %i.akl, i64 1
  %i.alb = fsub double %.sroa.8214.1591.i, %i.ala ; 3 uses
  %i.alc = fmul double %i.alb, %i.alb
  %i.ald = call double @llvm.fmuladd.f64(double %i.akz, double %i.akz, double %i.alc)
  %i.ale = fadd double %i.ald, 1.000000e-04
  %i.alf = call double @sqrt(double noundef %i.ale) #27
  %i.alg = fdiv double 2.000000e+00, %i.alf       ; 2 uses
  %i.alh = fmul double %i.alb, %i.alg
  %i.ali = fneg double %i.akz
  %i.alj = fmul double %i.alg, %i.ali
  store double %i.alh, ptr %i.akx, align 8, !tbaa !110
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  store double %i.alj, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.alk = add i64 %.0408594.i, 2                 ; 3 uses
  %i.all = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.alk
  %i.alm = load <2 x double>, ptr %i.all, align 8, !tbaa !110 ; 4 uses
  %i.aln = add i64 %.0408594.i, 3                 ; 4 uses
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.aln
  %i.alp = load <2 x double>, ptr %i.alo, align 8, !tbaa !110 ; 3 uses
  %i.alq = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %i.akj ; 2 uses
  %i.alr = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %i.alk ; 2 uses
  %i.als = fsub <2 x double> %i.akl, %i.alm       ; 3 uses
  %i.alt = extractelement <2 x double> %i.als, i64 0
  %i.alu = extractelement <2 x double> %i.als, i64 1
  %i.alv = call double @hypot(double noundef %i.alt, double noundef %i.alu) #27 ; 2 uses
  %i.alw = fcmp olt double %i.alv, 1.000000e-04
  br i1 %i.alw, label %bb.kt, label %computeoffset_qr.exit.i

bb.kt:                                            ; preds = %bb.ks
  %i.alx = fsub <2 x double> %i.aki, %i.alp       ; 4 uses
  %foldExtExtBinop348 = fmul <2 x double> %i.alx, %i.alx
  %i.aly = extractelement <2 x double> %foldExtExtBinop348, i64 1
  %i.alz = extractelement <2 x double> %i.alx, i64 0 ; 2 uses
  %i.ama = call double @llvm.fmuladd.f64(double %i.alz, double %i.alz, double %i.aly)
  %i.amb = fadd double %i.ama, 1.000000e-04
  %i.amc = call double @sqrt(double noundef %i.amb) #27
  br label %computeoffset_qr.exit.i

computeoffset_qr.exit.i:                          ; preds = %bb.kt, %bb.ks
  %.022.i.i = phi double [ %i.amc, %bb.kt ], [ %i.alv, %bb.ks ]
  %i.amd = phi <2 x double> [ %i.alx, %bb.kt ], [ %i.als, %bb.ks ] ; 2 uses
  %i.ame = fdiv double 2.000000e+00, %.022.i.i
  %i.amf = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %.0408594.i
  %i.amg = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %.0408594.i
  %i.amh = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %i.akj
  %i.ami = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %i.alk
  %i.amj = insertelement <2 x double> poison, double %i.ame, i64 0
  %i.amk = shufflevector <2 x double> %i.amj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aml = fneg <2 x double> %i.amd
  %i.amm = shufflevector <2 x double> %i.amd, <2 x double> %i.aml, <2 x i32> <i32 1, i32 2>
  %i.amn = fmul <2 x double> %i.amk, %i.amm       ; 2 uses
  store <2 x double> %i.amn, ptr %i.alr, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alq, ptr noundef nonnull align 8 dereferenceable(16) %i.alr, i64 16, i1 false), !tbaa.struct !120
  %i.amo = load <2 x double>, ptr %i.amf, align 8, !tbaa !110
  %i.amp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amo, <2 x double> %i.aki)
  store <2 x double> %i.amp, ptr %i.amg, align 8, !tbaa !110
  %i.amq = load <2 x double>, ptr %i.alq, align 8, !tbaa !110
  %i.amr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amq, <2 x double> %i.akl)
  store <2 x double> %i.amr, ptr %i.amh, align 8, !tbaa !110
  %i.ams = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amn, <2 x double> %i.alm)
  store <2 x double> %i.ams, ptr %i.ami, align 8, !tbaa !110
  %i.amt = icmp ult i64 %i.aln, %i.akd
  %i.amu = extractelement <2 x double> %i.alm, i64 0 ; 2 uses
  %i.amv = extractelement <2 x double> %i.alm, i64 1 ; 2 uses
  br i1 %i.amt, label %bb.kp, label %._crit_edge596.i, !llvm.loop !352

._crit_edge596.i:                                 ; preds = %computeoffset_qr.exit.i, %gv_calloc.exit492.i
  %20 = phi ptr [ %i.ajz, %gv_calloc.exit492.i ], [ %i.ake, %computeoffset_qr.exit.i ]
  %i.amw = phi ptr [ %i.ajl, %gv_calloc.exit492.i ], [ %i.akf, %computeoffset_qr.exit.i ]
  %i.amx = phi ptr [ %i.aju, %gv_calloc.exit492.i ], [ %i.akg, %computeoffset_qr.exit.i ]
  %.sroa.0210.1.lcssa.i = phi double [ %.sroa.0210.0601.i, %gv_calloc.exit492.i ], [ %i.amu, %computeoffset_qr.exit.i ] ; 2 uses
  %.sroa.8214.1.lcssa.i = phi double [ %.sroa.8214.0602.i, %gv_calloc.exit492.i ], [ %i.amv, %computeoffset_qr.exit.i ] ; 2 uses
  %.0408.lcssa.i = phi i64 [ 0, %gv_calloc.exit492.i ], [ %i.aln, %computeoffset_qr.exit.i ] ; 2 uses
  %i.amy = phi <2 x double> [ %i.aka, %gv_calloc.exit492.i ], [ %i.alp, %computeoffset_qr.exit.i ] ; 3 uses
  %i.amz = getelementptr inbounds nuw [16 x i8], ptr %i.amw, i64 %.0408.lcssa.i
  %i.ana = extractelement <2 x double> %i.amy, i64 0
  %i.anb = fsub double %.sroa.0210.1.lcssa.i, %i.ana ; 3 uses
  %i.anc = extractelement <2 x double> %i.amy, i64 1
  %i.and = fsub double %.sroa.8214.1.lcssa.i, %i.anc ; 3 uses
  %i.ane = fmul double %i.and, %i.and
  %i.anf = call double @llvm.fmuladd.f64(double %i.anb, double %i.anb, double %i.ane)
  %i.ang = fadd double %i.anf, 1.000000e-04
  %i.anh = call double @sqrt(double noundef %i.ang) #27
  %i.ani = fdiv double 2.000000e+00, %i.anh
  %i.anj = fneg double %i.anb
  %i.ank = getelementptr inbounds nuw [16 x i8], ptr %i.amx, i64 %.0408.lcssa.i
  %i.anl = insertelement <2 x double> poison, double %i.ani, i64 0
  %i.anm = shufflevector <2 x double> %i.anl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ann = insertelement <2 x double> poison, double %i.and, i64 0
  %i.ano = insertelement <2 x double> %i.ann, double %i.anj, i64 1
  %i.anp = fmul <2 x double> %i.anm, %i.ano       ; 2 uses
  store <2 x double> %i.anp, ptr %i.amz, align 8, !tbaa !110
  %i.anq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.anp, <2 x double> %i.amy)
  store <2 x double> %i.anq, ptr %i.ank, align 8, !tbaa !110
  %i.anr = add nuw nsw i64 %.0409603.i, 1         ; 2 uses
  %exitcond664.not.i = icmp eq i64 %i.anr, %i.ahx
  br i1 %exitcond664.not.i, label %._crit_edge605.i, label %bb.ki, !llvm.loop !353

.lr.ph621.i:                                      ; preds = %gv_strdup.exit.i, %._crit_edge614.i
  %.0371620.i = phi i32 [ %i.anz, %._crit_edge614.i ], [ 0, %gv_strdup.exit.i ] ; 3 uses
  %.1380619.i = phi ptr [ %i.aoa, %._crit_edge614.i ], [ %i.aja, %gv_strdup.exit.i ] ; 2 uses
  %.0401618.i = phi ptr [ %spec.select468.i, %._crit_edge614.i ], [ %.0399521.i, %gv_strdup.exit.i ]
  %.0403617.i = phi ptr [ %.2405.i, %._crit_edge614.i ], [ %.0399521.i, %gv_strdup.exit.i ]
  %.0406616.i = phi ptr [ %.1407.i, %._crit_edge614.i ], [ %.0399521.i, %gv_strdup.exit.i ] ; 2 uses
  %i.ans = load i8, ptr %.1380619.i, align 1, !tbaa !14
  %.not462.i = icmp eq i8 %i.ans, 0
  %spec.store.select3.i = select i1 %.not462.i, ptr @.str.27, ptr %.1380619.i ; 7 uses
  %.not463.i = icmp eq ptr %spec.store.select3.i, %.0406616.i
  br i1 %.not463.i, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph621.i
  %i.ant = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 156
  %i.anv = load i8, ptr %i.anu, align 4, !tbaa !392
  %i.anw = and i8 %i.anv, 3
  %.not464.i = icmp eq i8 %i.anw, 0
  br i1 %.not464.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %.lr.ph621.i
  %.1407.i = phi ptr [ %.0406616.i, %.lr.ph621.i ], [ %spec.store.select3.i, %bb.kv ], [ %spec.store.select3.i, %bb.ku ]
  %i.anx = icmp eq i32 %.0371620.i, 0
  %spec.select468.i = select i1 %i.anx, ptr %spec.store.select3.i, ptr %.0401618.i ; 2 uses
  %i.any = icmp samesign ult i32 %.0371620.i, 2
  %.2405.i = select i1 %i.any, ptr %spec.store.select3.i, ptr %.0403617.i ; 2 uses
  br i1 %.not532.i, label %._crit_edge614.i, label %.lr.ph613.i

._crit_edge614.i:                                 ; preds = %._crit_edge609.i, %bb.kw
  %i.anz = add nuw nsw i32 %.0371620.i, 1
  %i.aoa = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455.i = icmp eq ptr %i.aoa, null
  br i1 %.not455.i, label %._crit_edge622.i, label %.lr.ph621.i, !llvm.loop !354

.lr.ph613.i:                                      ; preds = %bb.kw, %._crit_edge609.i
  %.0398611.i = phi i64 [ %i.aox, %._crit_edge609.i ], [ 0, %bb.kw ] ; 3 uses
  %i.aob = getelementptr inbounds nuw [56 x i8], ptr %i.ait, i64 %.0398611.i ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !199 ; 10 uses
  %i.aod = getelementptr inbounds nuw [56 x i8], ptr %i.ais, i64 %.0398611.i
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !199 ; 9 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !198 ; 9 uses
  %.not637.i = icmp eq i64 %i.aog, 0
  br i1 %.not637.i, label %._crit_edge609.i, label %.lr.ph608.i.preheader

.lr.ph608.i.preheader:                            ; preds = %.lr.ph613.i
  %min.iters.check = icmp ult i64 %i.aog, 4
  br i1 %min.iters.check, label %.lr.ph608.i.preheader350, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph608.i.preheader
  %scevgep = getelementptr i8, ptr %i.aoc, i64 -8
  %i.aoh = shl i64 %i.aog, 4                      ; 4 uses
  %scevgep328 = getelementptr i8, ptr %scevgep, i64 %i.aoh
  %scevgep329 = getelementptr i8, ptr %i.aoe, i64 -8
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.aoh
  %scevgep331 = getelementptr i8, ptr %i.aoc, i64 8
  %scevgep332 = getelementptr i8, ptr %i.aoc, i64 %i.aoh
  %scevgep333 = getelementptr i8, ptr %i.aoe, i64 8
  %scevgep334 = getelementptr i8, ptr %i.aoe, i64 %i.aoh
  %bound0 = icmp ult ptr %i.aoc, %scevgep330
  %bound1 = icmp ult ptr %i.aoe, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  %bound0335 = icmp ult ptr %scevgep331, %scevgep334
  %bound1336 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict, %found.conflict337
  br i1 %conflict.rdx, label %.lr.ph608.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aog, -2                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aoi = or disjoint i64 %index, 1              ; 2 uses
  %i.aoj = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %index
  %i.aok = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %i.aoi
  %wide.load = load <2 x double>, ptr %i.aoj, align 8
  %wide.load338 = load <2 x double>, ptr %i.aok, align 8
  %i.aol = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %index ; 2 uses
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %i.aoi ; 2 uses
  %wide.load339 = load <2 x double>, ptr %i.aol, align 8
  %wide.load340 = load <2 x double>, ptr %i.aom, align 8
  %i.aon = fadd <2 x double> %wide.load, %wide.load339
  %i.aoo = fadd <2 x double> %wide.load338, %wide.load340
  store <2 x double> %i.aon, ptr %i.aol, align 8
  store <2 x double> %i.aoo, ptr %i.aom, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aop = icmp eq i64 %index.next, %n.vec
  br i1 %i.aop, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aog, %n.vec
  br i1 %cmp.n, label %._crit_edge609.i, label %.lr.ph608.i.preheader350

.lr.ph608.i.preheader350:                         ; preds = %vector.memcheck, %.lr.ph608.i.preheader, %middle.block
  %.0394606.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph608.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0394606.i.ph, 1
  %xtraiter = and i64 %i.aog, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph608.i.prol.loopexit, label %.lr.ph608.i.prol

.lr.ph608.i.prol:                                 ; preds = %.lr.ph608.i.preheader350
  %i.aoq = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %.0394606.i.ph
  %i.aor = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %.0394606.i.ph ; 2 uses
  %i.aos = load <2 x double>, ptr %i.aoq, align 8, !tbaa !110
  %i.aot = load <2 x double>, ptr %i.aor, align 8, !tbaa !110
  %i.aou = fadd <2 x double> %i.aos, %i.aot
  store <2 x double> %i.aou, ptr %i.aor, align 8, !tbaa !110
  %i.aov = or disjoint i64 %.0394606.i.ph, 1
  br label %.lr.ph608.i.prol.loopexit

.lr.ph608.i.prol.loopexit:                        ; preds = %.lr.ph608.i.prol, %.lr.ph608.i.preheader350
  %.0394606.i.unr = phi i64 [ %.0394606.i.ph, %.lr.ph608.i.preheader350 ], [ %i.aov, %.lr.ph608.i.prol ]
  %i.aow = icmp eq i64 %i.aog, %.neg
  br i1 %i.aow, label %._crit_edge609.i, label %.lr.ph608.i

._crit_edge609.i:                                 ; preds = %.lr.ph608.i.prol.loopexit, %.lr.ph608.i, %middle.block, %.lr.ph613.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.aoc, i64 noundef %i.aog, i32 noundef 0) #27
  %i.aox = add nuw i64 %.0398611.i, 1             ; 2 uses
  %exitcond666.not.i = icmp eq i64 %i.aox, %i.ahx
  br i1 %exitcond666.not.i, label %._crit_edge614.i, label %.lr.ph613.i, !llvm.loop !356

.lr.ph608.i:                                      ; preds = %.lr.ph608.i.prol.loopexit, %.lr.ph608.i
  %.0394606.i = phi i64 [ %i.apj, %.lr.ph608.i ], [ %.0394606.i.unr, %.lr.ph608.i.prol.loopexit ] ; 4 uses
  %i.aoy = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %.0394606.i
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %.0394606.i ; 2 uses
  %i.apa = load <2 x double>, ptr %i.aoy, align 8, !tbaa !110
  %i.apb = load <2 x double>, ptr %i.aoz, align 8, !tbaa !110
  %i.apc = fadd <2 x double> %i.apa, %i.apb
  store <2 x double> %i.apc, ptr %i.aoz, align 8, !tbaa !110
  %i.apd = add nuw i64 %.0394606.i, 1             ; 2 uses
  %i.ape = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %i.apd
  %i.apf = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %i.apd ; 2 uses
  %i.apg = load <2 x double>, ptr %i.ape, align 8, !tbaa !110
  %i.aph = load <2 x double>, ptr %i.apf, align 8, !tbaa !110
  %i.api = fadd <2 x double> %i.apg, %i.aph
  store <2 x double> %i.api, ptr %i.apf, align 8, !tbaa !110
  %i.apj = add nuw i64 %.0394606.i, 2             ; 2 uses
  %exitcond665.not.i.1 = icmp eq i64 %i.apj, %i.aog
  br i1 %exitcond665.not.i.1, label %._crit_edge609.i, label %.lr.ph608.i, !llvm.loop !357

._crit_edge622.i:                                 ; preds = %._crit_edge614.i, %gv_strdup.exit.i
  %.0403.lcssa.i = phi ptr [ %.0399521.i, %gv_strdup.exit.i ], [ %.2405.i, %._crit_edge614.i ] ; 4 uses
  %.0401.lcssa.i = phi ptr [ %.0399521.i, %gv_strdup.exit.i ], [ %spec.select468.i, %._crit_edge614.i ] ; 3 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !394 ; 3 uses
  %.not456.i = icmp eq i32 %i.apl, 0
  br i1 %.not456.i, label %bb.lb, label %bb.kx

bb.kx:                                            ; preds = %._crit_edge622.i
  %.not457.i = icmp eq ptr %.0403.lcssa.i, null
  br i1 %.not457.i, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.apm = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 156
  %i.apo = load i8, ptr %i.apn, align 4, !tbaa !392
  %i.app = and i8 %i.apo, 3
  %.not458.i = icmp eq i8 %i.app, 0
  br i1 %.not458.i, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  %.pre675.i = load i32, ptr %i.apk, align 8, !tbaa !394
  %.pre160 = load ptr, ptr %6, align 8, !tbaa !199
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky, %bb.kx
  %21 = phi ptr [ %19, %bb.ky ], [ %.pre160, %bb.kz ], [ %19, %bb.kx ] ; 3 uses
  %i.apq = phi i32 [ %i.apl, %bb.ky ], [ %.pre675.i, %bb.kz ], [ %i.apl, %bb.kx ]
  %i.apr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aps = load double, ptr %i.apr, align 8
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.apu = load double, ptr %i.apt, align 8
  %i.apv = load double, ptr %21, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.apx = load double, ptr %i.apw, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.aps, double %i.apu, double %i.apv, double %i.apx, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.apq) #27
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %._crit_edge622.i
  %22 = phi ptr [ %21, %bb.la ], [ %19, %._crit_edge622.i ] ; 2 uses
  %.3.i100 = phi ptr [ %.0403.lcssa.i, %bb.la ], [ null, %._crit_edge622.i ]
  %i.apy = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !395 ; 3 uses
  %.not459.i = icmp eq i32 %i.apz, 0
  br i1 %.not459.i, label %bb.lg, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %.not460.i = icmp eq ptr %.3.i100, %.0401.lcssa.i
  br i1 %.not460.i, label %bb.lf, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.aqa = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 156
  %i.aqc = load i8, ptr %i.aqb, align 4, !tbaa !392
  %i.aqd = and i8 %i.aqc, 3
  %.not461.i = icmp eq i8 %i.aqd, 0
  br i1 %.not461.i, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef %.0401.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef %.0401.lcssa.i) #27
  %.pre676.i = load i32, ptr %i.apy, align 4, !tbaa !395
  %.pre161 = load ptr, ptr %6, align 8, !tbaa !199
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld, %bb.lc
  %23 = phi ptr [ %22, %bb.ld ], [ %.pre161, %bb.le ], [ %22, %bb.lc ]
  %i.aqe = phi i32 [ %i.apz, %bb.ld ], [ %.pre676.i, %bb.le ], [ %i.apz, %bb.lc ]
  %i.aqf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aqg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !198
  %i.aqi = getelementptr [16 x i8], ptr %23, i64 %i.aqh ; 2 uses
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 -16
  %i.aqk = load double, ptr %i.aqf, align 8
  %i.aql = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aqm = load double, ptr %i.aql, align 8
  %i.aqn = load double, ptr %i.aqj, align 8
  %i.aqo = getelementptr i8, ptr %i.aqi, i64 -8
  %i.aqp = load double, ptr %i.aqo, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.aqk, double %i.aqm, double %i.aqn, double %i.aqp, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.aqe) #27
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.lb
  call void @free(ptr noundef %i.aiu) #27
  br i1 %.not532.i, label %._crit_edge628.i, label %.lr.ph627.i

._crit_edge628.i:                                 ; preds = %.lr.ph627.i, %bb.lg
  call void @free(ptr noundef %i.ais) #27
  call void @free(ptr noundef %i.ait) #27
  br label %.loopexit540.i

.lr.ph627.i:                                      ; preds = %bb.lg, %.lr.ph627.i
  %.0393625.i = phi i64 [ %i.aqu, %.lr.ph627.i ], [ 0, %bb.lg ] ; 3 uses
  %i.aqq = getelementptr inbounds nuw [56 x i8], ptr %i.ais, i64 %.0393625.i
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !199
  call void @free(ptr noundef %i.aqr) #27
  %i.aqs = getelementptr inbounds nuw [56 x i8], ptr %i.ait, i64 %.0393625.i
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !199
  call void @free(ptr noundef %i.aqt) #27
  %i.aqu = add nuw i64 %.0393625.i, 1             ; 2 uses
  %exitcond667.not.i = icmp eq i64 %i.aqu, %i.ahx
  br i1 %exitcond667.not.i, label %._crit_edge628.i, label %.lr.ph627.i, !llvm.loop !358

bb.lh:                                            ; preds = %bb.jz
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aht, i64 156
  %i.aqw = load i8, ptr %i.aqv, align 4, !tbaa !392
  %i.aqx = and i8 %i.aqw, 3
  %.not442.i = icmp eq i8 %i.aqx, 0
  br i1 %.not442.i, label %bb.li, label %bb.ll

bb.li:                                            ; preds = %bb.lh
  %i.aqy = load i8, ptr %.0399521.i, align 1, !tbaa !14
  %.not443.i = icmp eq i8 %i.aqy, 0
  br i1 %.not443.i, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0399521.i) #27
  br label %.sink.split.i99

bb.lk:                                            ; preds = %bb.li
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull @.str.27) #27
  %i.aqz = load i8, ptr %.0400520.i, align 1, !tbaa !14
  %.not444.i = icmp eq i8 %i.aqz, 0
  %.str.27..0400520.i = select i1 %.not444.i, ptr @.str.27, ptr %.0400520.i
  br label %.sink.split.i99

.sink.split.i99:                                  ; preds = %bb.lk, %bb.lj
  %.0400520.sink.i = phi ptr [ %.0400520.i, %bb.lj ], [ %.str.27..0400520.i, %bb.lk ]
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef %.0400520.sink.i) #27
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %bb.ll

bb.ll:                                            ; preds = %.sink.split.i99, %bb.lh
  %i.ara = phi ptr [ %.pre, %.sink.split.i99 ], [ %i.aht, %bb.lh ]
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !191 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  %i.are = load i64, ptr %i.ard, align 8, !tbaa !195
  %.not630.i = icmp eq i64 %i.are, 0
  br i1 %.not630.i, label %.loopexit540.i, label %.lr.ph589.i

.lr.ph589.i:                                      ; preds = %bb.ll
  %i.arf = fmul nsz double %i.zr, 8.000000e+00
  %i.arg = call nsz double @llvm.maxnum.f64(double %i.arf, double 1.200000e+01)
  %i.arh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 15 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.arn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not.i.i505.i = icmp eq ptr %.0399521.i, null
  %i.aro = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.arq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.arr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.art = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aru = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.arv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.arw = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.lm

bb.lm:                                            ; preds = %bb.nx, %.lr.ph589.i
  %i.arx = phi ptr [ %i.arc, %.lr.ph589.i ], [ %i.bct, %bb.nx ]
  %.0392587.i = phi i64 [ 0, %.lr.ph589.i ], [ %i.bcu, %bb.nx ] ; 2 uses
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !196
  %i.arz = getelementptr inbounds nuw [56 x i8], ptr %i.ary, i64 %.0392587.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.arz, i64 56, i1 false), !tbaa.struct !393
  %i.asa = load i32, ptr %1, align 8
  %i.asb = and i32 %i.asa, 3
  %i.asc = icmp eq i32 %i.asb, 2
  %i.asd = select i1 %i.asc, i64 56, i64 -8
  %i.ase = getelementptr inbounds i8, ptr %1, i64 %i.asd
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !176
  %i.asg = call ptr @agraphof(ptr noundef %i.asf) #27
  %i.ash = call ptr @agget(ptr noundef %i.asg, ptr noundef nonnull @.str.91) #27 ; 2 uses
  %.not445.i = icmp eq ptr %i.ash, null
  br i1 %.not445.i, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.asi = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ash, ptr noundef nonnull dereferenceable(6) @.str.92) #31
  %i.asj = icmp eq i32 %i.asi, 0
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %i.ask = phi i1 [ false, %bb.lm ], [ %i.asj, %bb.ln ]
  br i1 %.not39, label %.preheader539.i, label %.loopexit.i

.preheader539.i:                                  ; preds = %bb.lo
  %i.asl = load ptr, ptr %.036, align 16, !tbaa !105 ; 2 uses
  %.not446.not559.i = icmp eq ptr %i.asl, null
  br i1 %.not446.not559.i, label %.loopexit.i, label %.lr.ph.i98

bb.lp:                                            ; preds = %.lr.ph.i98
  %i.asm = getelementptr inbounds nuw i8, ptr %.0386560.i, i64 8 ; 2 uses
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !105 ; 2 uses
  %.not446.not.i = icmp eq ptr %i.asn, null
  br i1 %.not446.not.i, label %.loopexit.i, label %.lr.ph.i98, !llvm.loop !359

.lr.ph.i98:                                       ; preds = %.preheader539.i, %bb.lp
  %i.aso = phi ptr [ %i.asn, %bb.lp ], [ %i.asl, %.preheader539.i ]
  %.0386560.i = phi ptr [ %i.asm, %bb.lp ], [ %.036, %.preheader539.i ]
  %i.asp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aso, ptr noundef nonnull dereferenceable(8) @.str.68) #31
  %i.asq = icmp eq i32 %i.asp, 0                  ; 3 uses
  br i1 %i.asq, label %.loopexit.i, label %bb.lp

.loopexit.i:                                      ; preds = %.lr.ph.i98, %bb.lp, %.preheader539.i, %bb.lo
  %.1390.i = phi i1 [ false, %bb.lo ], [ false, %.preheader539.i ], [ %i.asq, %bb.lp ], [ %i.asq, %.lr.ph.i98 ] ; 2 uses
  %i.asr = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.93) #27 ; 3 uses
  %.not447.i = icmp eq ptr %i.asr, null
  br i1 %.not447.i, label %bb.ls, label %bb.lq

bb.lq:                                            ; preds = %.loopexit.i
  %i.ass = load i8, ptr %i.asr, align 1, !tbaa !14
  %.not448.i = icmp eq i8 %i.ass, 0
  br i1 %.not448.i, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.ast = call double @strtod(ptr noundef nonnull captures(none) %i.asr, ptr noundef null) #27, !inline_history !360 ; 2 uses
  %i.asu = fcmp ogt double %i.ast, 0.000000e+00
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq, %.loopexit.i
  %.2391.i = phi i1 [ %i.asu, %bb.lr ], [ %.1390.i, %bb.lq ], [ %.1390.i, %.loopexit.i ] ; 2 uses
  %.0387.i = phi double [ %i.ast, %bb.lr ], [ 0.000000e+00, %bb.lq ], [ 0.000000e+00, %.loopexit.i ] ; 2 uses
  %i.asv = fcmp oeq double %.0387.i, 0.000000e+00
  %or.cond5.i = select i1 %.2391.i, i1 %i.asv, i1 false
  %.1388.i = select i1 %or.cond5.i, double %i.arg, double %.0387.i ; 14 uses
  %or.cond7.i = and i1 %i.ask, %.2391.i
  %i.asw = fcmp ogt double %.1388.i, 0.000000e+00
  %or.cond9.i = select i1 %or.cond7.i, i1 %i.asw, i1 false
  br i1 %or.cond9.i, label %bb.lt, label %bb.np

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %8, i8 0, i64 112, i1 false)
  %i.asx = load i64, ptr %i.arh, align 8, !tbaa !198 ; 9 uses
  call void @gv_list_reserve_(ptr noundef nonnull %8, i64 noundef %i.asx, i64 noundef 72) #27
  %i.asy = load ptr, ptr %6, align 8, !tbaa !199  ; 14 uses
  %.not.i500.i = icmp eq i64 %i.asx, 0
  br i1 %.not.i500.i, label %find_ortho_corners.exit.i, label %.lr.ph.i501.i

.lr.ph.i501.i:                                    ; preds = %bb.lt
  %i.asz = add i64 %i.asx, -1                     ; 2 uses
  %i.ata = insertelement <2 x double> poison, double %.1388.i, i64 0
  %i.atb = shufflevector <2 x double> %i.ata, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.lu

bb.lu:                                            ; preds = %process_corner.exit.i.i, %.lr.ph.i501.i
  %.056.i.i = phi i64 [ 0, %.lr.ph.i501.i ], [ %i.axe, %process_corner.exit.i.i ] ; 7 uses
  %i.atc = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %.056.i.i ; 2 uses
  %.not.i.i.i86321 = icmp eq i64 %.056.i.i, 0
  br i1 %.not.i.i.i86321, label %find_prev_distinct.exit.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.lu
  %i.atd = load <2 x double>, ptr %i.atc, align 8, !tbaa !110
  br label %.lr.ph

bb.lv:                                            ; preds = %.lr.ph
  %.not.i.i.i86 = icmp eq i64 %.017.i.i.i, 0
  br i1 %.not.i.i.i86, label %find_prev_distinct.exit.i.i, label %.lr.ph, !llvm.loop !361

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.lv
  %.017.in.i.i.i322 = phi i64 [ %.017.i.i.i, %bb.lv ], [ %.056.i.i, %.lr.ph.preheader ]
  %.017.i.i.i = add i64 %.017.in.i.i.i322, -1     ; 4 uses
  %i.ate = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %.017.i.i.i
  %i.atf = load <2 x double>, ptr %i.ate, align 8, !tbaa !110
  %i.atg = fsub <2 x double> %i.atf, %i.atd       ; 2 uses
  %i.ath = extractelement <2 x double> %i.atg, i64 0
  %i.ati = extractelement <2 x double> %i.atg, i64 1
  %i.atj = call double @hypot(double noundef %i.ath, double noundef %i.ati) #27
  %i.atk = fcmp ule double %i.atj, 1.000000e-02
  br i1 %i.atk, label %bb.lv, label %.find_prev_distinct.exit.i.i_crit_edge, !llvm.loop !361

.find_prev_distinct.exit.i.i_crit_edge:           ; preds = %.lr.ph
  br label %find_prev_distinct.exit.i.i, !llvm.loop !361

find_prev_distinct.exit.i.i:                      ; preds = %bb.lv, %.find_prev_distinct.exit.i.i_crit_edge, %bb.lu
  %.017.lcssa.i.i.i = phi i64 [ -1, %bb.lu ], [ %.017.i.i.i, %.find_prev_distinct.exit.i.i_crit_edge ], [ -1, %bb.lv ] ; 2 uses
  %exitcond.not.i.i87325 = icmp eq i64 %.056.i.i, %i.asz
  br i1 %exitcond.not.i.i87325, label %process_corner.exit.i.i, label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %find_prev_distinct.exit.i.i
  %i.atl = load <2 x double>, ptr %i.atc, align 8, !tbaa !110 ; 9 uses
  br label %.lr.ph327

bb.lw:                                            ; preds = %.lr.ph327
  %exitcond.not.i.i87 = icmp eq i64 %.018.i.i.i, %i.asz
  br i1 %exitcond.not.i.i87, label %process_corner.exit.i.i, label %.lr.ph327, !llvm.loop !362

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.lw
  %.018.in.i.i.i326 = phi i64 [ %.018.i.i.i, %bb.lw ], [ %.056.i.i, %.lr.ph327.preheader ]
  %.018.i.i.i = add nuw i64 %.018.in.i.i.i326, 1  ; 3 uses
  %i.atm = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %.018.i.i.i
  %i.atn = load <2 x double>, ptr %i.atm, align 8, !tbaa !110
  %i.ato = fsub <2 x double> %i.atn, %i.atl       ; 4 uses
  %i.atp = extractelement <2 x double> %i.ato, i64 0 ; 2 uses
  %i.atq = extractelement <2 x double> %i.ato, i64 1 ; 2 uses
  %i.atr = call double @hypot(double noundef %i.atp, double noundef %i.atq) #27
  %i.ats = fcmp ule double %i.atr, 1.000000e-02
  br i1 %i.ats, label %bb.lw, label %find_next_distinct.exit.i.i, !llvm.loop !362

find_next_distinct.exit.i.i:                      ; preds = %.lr.ph327
  %i.att = extractelement <2 x double> %i.atl, i64 1 ; 5 uses
  %i.atu = extractelement <2 x double> %i.atl, i64 0 ; 5 uses
  %i.atv = icmp eq i64 %.017.lcssa.i.i.i, -1
  br i1 %i.atv, label %process_corner.exit.i.i, label %bb.lx

bb.lx:                                            ; preds = %find_next_distinct.exit.i.i
  %i.atw = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %.017.lcssa.i.i.i
  %i.atx = load <2 x double>, ptr %i.atw, align 8, !tbaa !110
  %i.aty = fsub <2 x double> %i.atl, %i.atx       ; 4 uses
  %i.atz = shufflevector <2 x double> %i.ato, <2 x double> %i.aty, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.aua = call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.atz) ; 2 uses
  %i.aub = fcmp ogt <4 x double> %i.aua, splat (double 1.000000e-01) ; 2 uses
  %i.auc = fcmp olt <4 x double> %i.aua, splat (double 1.000000e-01) ; 2 uses
  %i.aud = shufflevector <4 x i1> %i.aub, <4 x i1> %i.auc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aue = shufflevector <4 x i1> %i.auc, <4 x i1> %i.aub, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.auf = freeze <4 x i1> %i.aud
  %i.aug = bitcast <4 x i1> %i.auf to i4
  %i.auh = icmp eq i4 %i.aug, -1                  ; 2 uses
  %i.aui = bitcast <4 x i1> %i.aue to i4
  %i.auj = icmp eq i4 %i.aui, -1
  %i.auk = select i1 %i.auh, i1 true, i1 %i.auj
  br i1 %i.auk, label %bb.ly, label %process_corner.exit.i.i

bb.ly:                                            ; preds = %bb.lx
  %.val6468.i.i.i = load i64, ptr %i.ari, align 8, !tbaa !109
  %.not69.i.i.i = icmp eq i64 %.val6468.i.i.i, 0
  br i1 %.not69.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i95

bb.lz:                                            ; preds = %.lr.ph.i.i.i95
  %i.aul = add nuw i64 %.06370.i.i.i, 1           ; 2 uses
  %.val64.i.i.i = load i64, ptr %i.ari, align 8, !tbaa !109
  %.not.not.i.i.i = icmp ult i64 %i.aul, %.val64.i.i.i
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i95, label %.critedge.i.i.i, !llvm.loop !363

.lr.ph.i.i.i95:                                   ; preds = %bb.ly, %bb.lz
  %.06370.i.i.i = phi i64 [ %i.aul, %bb.lz ], [ 0, %bb.ly ] ; 2 uses
  %i.aum = load ptr, ptr %8, align 8, !tbaa !14
  %i.aun = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.06370.i.i.i) #27
  %i.auo = getelementptr inbounds nuw [72 x i8], ptr %i.aum, i64 %i.aun
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.auo, align 8, !tbaa !200
  %i.aup = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %.sroa.011.0.copyload.i.i.i
  %i.auq = load <2 x double>, ptr %i.aup, align 8, !tbaa !110
  %i.aur = fsub <2 x double> %i.atl, %i.auq       ; 2 uses
  %i.aus = extractelement <2 x double> %i.aur, i64 0
  %i.aut = extractelement <2 x double> %i.aur, i64 1
  %i.auu = call double @hypot(double noundef %i.aus, double noundef %i.aut) #27
  %i.auv = fcmp uge double %i.auu, 1.000000e-02
  br i1 %i.auv, label %bb.lz, label %process_corner.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.lz, %bb.ly
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.arj, i8 0, i64 72, i1 false)
  %i.auw = call i64 @gv_list_append_slot_(ptr noundef nonnull %8, i64 noundef 72) #27
  %i.aux = load ptr, ptr %8, align 8, !tbaa !14
  %i.auy = getelementptr inbounds nuw [72 x i8], ptr %i.aux, i64 %i.auw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.auy, ptr noundef nonnull align 8 dereferenceable(72) %i.arj, i64 72, i1 false), !tbaa.struct !396
  %i.auz = load ptr, ptr %8, align 8, !tbaa !14
  %.val.i.i.i97 = load i64, ptr %i.ari, align 8, !tbaa !109
  %i.ava = add i64 %.val.i.i.i97, -1
  %i.avb = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %i.ava) #27
  %i.avc = getelementptr inbounds nuw [72 x i8], ptr %i.auz, i64 %i.avb ; 17 uses
  store i64 %.056.i.i, ptr %i.avc, align 8, !tbaa !203
  %i.avd = extractelement <2 x double> %i.aty, i64 0
  %i.ave = extractelement <2 x double> %i.aty, i64 1
  %i.avf = call double @hypot(double noundef %i.avd, double noundef %i.ave) #27
  %i.avg = call double @hypot(double noundef %i.atp, double noundef %i.atq) #27
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avc, i64 8
  %i.avi = insertelement <2 x double> poison, double %i.avf, i64 0
  %i.avj = shufflevector <2 x double> %i.avi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avk = fdiv <2 x double> %i.aty, %i.avj       ; 3 uses
  %i.avl = fneg <2 x double> %i.avk
  %i.avm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avl, <2 x double> %i.atb, <2 x double> %i.atl)
  store <2 x double> %i.avm, ptr %i.avh, align 8, !tbaa !110
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avc, i64 24
  %i.avo = insertelement <2 x double> poison, double %i.avg, i64 0
  %i.avp = shufflevector <2 x double> %i.avo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avq = fdiv <2 x double> %i.ato, %i.avp       ; 3 uses
  %i.avr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avq, <2 x double> %i.atb, <2 x double> %i.atl)
  store <2 x double> %i.avr, ptr %i.avn, align 8, !tbaa !110
  br i1 %i.auh, label %bb.ma, label %bb.mh

bb.ma:                                            ; preds = %.critedge.i.i.i
  %i.avs = extractelement <2 x double> %i.avk, i64 0 ; 2 uses
  %i.avt = fcmp ogt double %i.avs, 0.000000e+00   ; 2 uses
  %i.avu = extractelement <2 x double> %i.avq, i64 1 ; 2 uses
  %i.avv = fcmp olt double %i.avu, 0.000000e+00   ; 2 uses
  %or.cond3.i.i.i.i = and i1 %i.avt, %i.avv
  br i1 %or.cond3.i.i.i.i, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.avw = fsub <2 x double> %i.atl, %i.atb
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avc, i64 40
  store <2 x double> %i.avw, ptr %i.avx, align 8, !tbaa !110
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avc, i64 56
  store <2 x double> <double 0.000000e+00, double f0x3FF921FB54442D18>, ptr %i.avy, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mc:                                            ; preds = %bb.ma
  %i.avz = fcmp ogt double %i.avu, 0.000000e+00
  %or.cond5.i.i.i.i = and i1 %i.avt, %i.avz
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avc, i64 56 ; 3 uses
  br i1 %or.cond5.i.i.i.i, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.awb = fsub double %i.atu, %.1388.i
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avc, i64 40
  store double %i.awb, ptr %i.awc, align 8, !tbaa !397
  %i.awd = fadd double %.1388.i, %i.att
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avc, i64 48
  store double %i.awd, ptr %i.awe, align 8, !tbaa !398
  store <2 x double> <double f0xBFF921FB54442D18, double 0.000000e+00>, ptr %i.awa, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.me:                                            ; preds = %bb.mc
  %i.awf = fcmp olt double %i.avs, 0.000000e+00
  %or.cond7.i.i.i.i = and i1 %i.awf, %i.avv
  %i.awg = fadd double %.1388.i, %i.atu
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avc, i64 40
  store double %i.awg, ptr %i.awh, align 8, !tbaa !397
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avc, i64 48 ; 2 uses
  br i1 %or.cond7.i.i.i.i, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.awj = fsub double %i.att, %.1388.i
  store double %i.awj, ptr %i.awi, align 8, !tbaa !398
  store <2 x double> <double f0x3FF921FB54442D18, double f0x400921FB54442D18>, ptr %i.awa, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mg:                                            ; preds = %bb.me
  %i.awk = fadd double %.1388.i, %i.att
  store double %i.awk, ptr %i.awi, align 8, !tbaa !398
  store <2 x double> <double f0x400921FB54442D18, double f0x4012D97C7F3321D2>, ptr %i.awa, align 8, !tbaa !110
  br label %process_corner.exit.i.i

bb.mh:                                            ; preds = %.critedge.i.i.i
  %i.awl = extractelement <2 x double> %i.avk, i64 1 ; 2 uses
  %i.awm = fcmp olt double %i.awl, 0.000000e+00   ; 2 uses
end_hunk_3
begin_hunk_4_@emit_edge:bb.a
._crit_edge.i89:                                  ; preds = %.loopexit640.i, %bb.nd
  store <2 x double> %.sroa.0.0.copyload, ptr %i.ark, align 8, !tbaa !110
  %i.azd = call i64 @gv_list_append_slot_(ptr noundef nonnull %9, i64 noundef 16) #27
  %i.aze = load ptr, ptr %9, align 8, !tbaa !14
  %i.azf = getelementptr inbounds nuw [16 x i8], ptr %i.aze, i64 %i.azd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azf, ptr noundef nonnull align 8 dereferenceable(16) %i.ark, i64 16, i1 false), !tbaa.struct !120
  %i.azg = load ptr, ptr %9, align 8, !tbaa !14
  %i.azh = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %9, i64 noundef 0) #27
  %i.azi = getelementptr inbounds nuw [16 x i8], ptr %i.azg, i64 %i.azh
  %.val473.i = load i64, ptr %i.arl, align 8, !tbaa !109
  call void @gvrender_polyline(ptr noundef %0, ptr noundef %i.azi, i64 noundef %.val473.i) #27
  %.val472568.i = load i64, ptr %i.arl, align 8, !tbaa !109
  %.not632.i = icmp eq i64 %.val472568.i, 0
  br i1 %.not632.i, label %._crit_edge572.i, label %.lr.ph571.i

bb.ne:                                            ; preds = %.lr.ph565.i
  %i.azj = add nuw i64 %.0374564.i, 1             ; 2 uses
  %.val474.i = load i64, ptr %i.ari, align 8, !tbaa !109
  %i.azk = icmp ult i64 %i.azj, %.val474.i
  br i1 %i.azk, label %.lr.ph565.i, label %.critedge.loopexit.i, !llvm.loop !369

.lr.ph565.i:                                      ; preds = %bb.ne, %.lr.ph565.preheader.i
  %.0374564.i = phi i64 [ %i.azj, %bb.ne ], [ 0, %.lr.ph565.preheader.i ] ; 2 uses
  %i.azl = load ptr, ptr %8, align 8, !tbaa !14
  %i.azm = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0374564.i) #27
  %i.azn = getelementptr inbounds nuw [72 x i8], ptr %i.azl, i64 %i.azm
  %i.azo = load i64, ptr %i.azn, align 8, !tbaa !203
  %i.azp = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %i.azo
  %i.azq = load <2 x double>, ptr %i.azp, align 8, !tbaa !110
  %i.azr = load <2 x double>, ptr %i.azc, align 8, !tbaa !110
  %i.azs = fsub <2 x double> %i.azr, %i.azq       ; 2 uses
  %i.azt = extractelement <2 x double> %i.azs, i64 0
  %i.azu = extractelement <2 x double> %i.azs, i64 1
  %i.azv = call double @hypot(double noundef %i.azt, double noundef %i.azu) #27
  %i.azw = fcmp uge double %i.azv, 1.000000e-02
  br i1 %i.azw, label %bb.ne, label %.loopexit640.i

.critedge.loopexit.i:                             ; preds = %bb.ne, %.preheader536.i
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %.0378567.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ark, ptr noundef nonnull align 8 dereferenceable(16) %i.azx, i64 16, i1 false), !tbaa.struct !120
  %i.azy = call i64 @gv_list_append_slot_(ptr noundef nonnull %9, i64 noundef 16) #27
  %i.azz = load ptr, ptr %9, align 8, !tbaa !14
  %i.baa = getelementptr inbounds nuw [16 x i8], ptr %i.azz, i64 %i.azy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.baa, ptr noundef nonnull align 8 dereferenceable(16) %i.ark, i64 16, i1 false), !tbaa.struct !120
  br label %.loopexit640.i

.loopexit640.i:                                   ; preds = %.lr.ph565.i, %.critedge.loopexit.i
  %.0378.i = add nuw i64 %.0378567.i, 1           ; 2 uses
  %exitcond663.not.i = icmp eq i64 %.0378.i, %.0382.i
  br i1 %exitcond663.not.i, label %._crit_edge.i89, label %.preheader536.i, !llvm.loop !370

._crit_edge572.i:                                 ; preds = %bb.nh, %._crit_edge.i89
  call void @gv_list_clear_(ptr noundef nonnull %9, i64 noundef 16) #27
  call void @gv_list_free_(ptr noundef nonnull %9) #27
  %.val471.i = load i64, ptr %i.ari, align 8, !tbaa !109 ; 2 uses
  %i.bab = icmp ult i64 %.0383580.i, %.val471.i
  br i1 %i.bab, label %bb.ni, label %bb.nk

.lr.ph571.i:                                      ; preds = %._crit_edge.i89, %bb.nh
  %.0370569.i = phi i64 [ %i.bak, %bb.nh ], [ 0, %._crit_edge.i89 ] ; 2 uses
  %i.bac = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %9, i64 noundef %.0370569.i) #27
  %i.bad = load ptr, ptr %i.arm, align 8, !tbaa !391 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.bad to i64
  switch i64 %magicptr.i, label %bb.ng [
    i64 1, label %bb.nf
    i64 0, label %bb.nh
  ]

bb.nf:                                            ; preds = %.lr.ph571.i
  %i.bae = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.bae) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.ng:                                            ; preds = %.lr.ph571.i
  %i.baf = load ptr, ptr %9, align 8, !tbaa !14
  %i.bag = getelementptr inbounds nuw [16 x i8], ptr %i.baf, i64 %i.bac ; 2 uses
  %i.bah = load double, ptr %i.bag, align 8
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.baj = load double, ptr %i.bai, align 8
  call void %i.bad(double %i.bah, double %i.baj) #27, !inline_history !371
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %.lr.ph571.i
  %i.bak = add nuw i64 %.0370569.i, 1             ; 2 uses
  %.val472.i = load i64, ptr %i.arl, align 8, !tbaa !109
  %i.bal = icmp ult i64 %i.bak, %.val472.i
  br i1 %i.bal, label %.lr.ph571.i, label %._crit_edge572.i, !llvm.loop !372

bb.ni:                                            ; preds = %._crit_edge572.i
  %i.bam = load ptr, ptr %8, align 8, !tbaa !14
  %i.ban = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383580.i) #27
  %i.bao = getelementptr inbounds nuw [72 x i8], ptr %i.bam, i64 %i.ban
  %i.bap = load i64, ptr %i.bao, align 8, !tbaa !203
  %.0367.i140 = add i64 %i.bap, 1                 ; 3 uses
  %i.baq = icmp ult i64 %.0367.i140, %i.asx
  %.val470573.i141 = load i64, ptr %i.ari, align 8
  %i.bar = icmp ne i64 %.val470573.i141, 0
  %or.cond629.i142 = select i1 %i.baq, i1 %i.bar, i1 false
  br i1 %or.cond629.i142, label %.lr.ph575.preheader.i, label %.critedge535.i

.loopexit639.i.loopexit:                          ; preds = %.lr.ph575.i
  %.0367.i = add nuw i64 %.0367.i143, 1           ; 3 uses
  %i.bas = icmp ult i64 %.0367.i, %i.asx
  %.val470573.i = load i64, ptr %i.ari, align 8
  %i.bat = icmp ne i64 %.val470573.i, 0
  %or.cond629.i = select i1 %i.bas, i1 %i.bat, i1 false
  br i1 %or.cond629.i, label %.lr.ph575.preheader.i, label %.critedge535.i

.lr.ph575.preheader.i:                            ; preds = %bb.ni, %.loopexit639.i.loopexit
  %.0367.i143 = phi i64 [ %.0367.i, %.loopexit639.i.loopexit ], [ %.0367.i140, %bb.ni ] ; 3 uses
  %i.bau = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %.0367.i143
  br label %.lr.ph575.i

bb.nj:                                            ; preds = %.lr.ph575.i
  %i.bav = add nuw i64 %.0365574.i, 1             ; 2 uses
  %.val470.i = load i64, ptr %i.ari, align 8, !tbaa !109
  %i.baw = icmp ult i64 %i.bav, %.val470.i
  br i1 %i.baw, label %.lr.ph575.i, label %.critedge535.i, !llvm.loop !373

.lr.ph575.i:                                      ; preds = %bb.nj, %.lr.ph575.preheader.i
  %.0365574.i = phi i64 [ %i.bav, %bb.nj ], [ 0, %.lr.ph575.preheader.i ] ; 2 uses
  %i.bax = load ptr, ptr %8, align 8, !tbaa !14
  %i.bay = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0365574.i) #27
  %i.baz = getelementptr inbounds nuw [72 x i8], ptr %i.bax, i64 %i.bay
  %i.bba = load i64, ptr %i.baz, align 8, !tbaa !203
  %i.bbb = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %i.bba
  %i.bbc = load <2 x double>, ptr %i.bbb, align 8, !tbaa !110
  %i.bbd = load <2 x double>, ptr %i.bau, align 8, !tbaa !110
  %i.bbe = fsub <2 x double> %i.bbd, %i.bbc       ; 2 uses
  %i.bbf = extractelement <2 x double> %i.bbe, i64 0
  %i.bbg = extractelement <2 x double> %i.bbe, i64 1
  %i.bbh = call double @hypot(double noundef %i.bbf, double noundef %i.bbg) #27
  %i.bbi = fcmp uge double %i.bbh, 1.000000e-02
  br i1 %i.bbi, label %bb.nj, label %.loopexit639.i.loopexit

.critedge535.i:                                   ; preds = %.loopexit639.i.loopexit, %bb.nj, %bb.ni
  %.0367.i136 = phi i64 [ %.0367.i143, %bb.nj ], [ %.0367.i140, %bb.ni ], [ %.0367.i, %.loopexit639.i.loopexit ]
  %i.bbj = load ptr, ptr %8, align 8, !tbaa !14
  %i.bbk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0383580.i) #27
  %i.bbl = getelementptr inbounds nuw [72 x i8], ptr %i.bbj, i64 %i.bbk
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 24
  %.sroa.0380.0.copyload382 = load <2 x double>, ptr %i.bbm, align 8, !tbaa !110
  %.val476.pre.i = load i64, ptr %i.ari, align 8, !tbaa !109
  br label %bb.nk

bb.nk:                                            ; preds = %.critedge535.i, %._crit_edge572.i
  %.sroa.0380.1 = phi <2 x double> [ %.sroa.0380.0.copyload382, %.critedge535.i ], [ %.sroa.0380.0, %._crit_edge572.i ]
  %.val476.i = phi i64 [ %.val476.pre.i, %.critedge535.i ], [ %.val471.i, %._crit_edge572.i ] ; 3 uses
  %.1385.i = phi i64 [ %.0367.i136, %.critedge535.i ], [ %.0384579.i, %._crit_edge572.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bbn = add i64 %.0383580.i, 1                 ; 2 uses
  %.not449.i = icmp ugt i64 %i.bbn, %.val476.i
  br i1 %.not449.i, label %bb.mp, label %bb.nb, !llvm.loop !374

bb.nl:                                            ; preds = %find_ortho_corners.exit.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.asy, i64 noundef %i.asx, i32 noundef 0) #27
  %.val582.pre.i = load i64, ptr %i.ari, align 8, !tbaa !109
  br label %draw_ortho_corner_markers.exit.i

draw_ortho_corner_markers.exit.i:                 ; preds = %bb.mp, %bb.na, %bb.nl
  %.val582.i = phi i64 [ %.val582.pre.i, %bb.nl ], [ 0, %bb.mp ], [ %.val.i511.i, %bb.na ]
  %.not633.i = icmp eq i64 %.val582.i, 0
  br i1 %.not633.i, label %._crit_edge586.i, label %.lr.ph585.i

._crit_edge586.i:                                 ; preds = %bb.no, %draw_ortho_corner_markers.exit.i
  call void @gv_list_clear_(ptr noundef nonnull %8, i64 noundef 72) #27
  call void @gv_list_free_(ptr noundef nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.nq

.lr.ph585.i:                                      ; preds = %draw_ortho_corner_markers.exit.i, %bb.no
  %.0583.i = phi i64 [ %i.bbt, %bb.no ], [ 0, %draw_ortho_corner_markers.exit.i ] ; 2 uses
  %i.bbo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0583.i) #27
  %i.bbp = load ptr, ptr %i.arq, align 8, !tbaa !400 ; 2 uses
  %magicptr469.i = ptrtoint ptr %i.bbp to i64
  switch i64 %magicptr469.i, label %bb.nn [
    i64 1, label %bb.nm
    i64 0, label %bb.no
  ]

bb.nm:                                            ; preds = %.lr.ph585.i
  %i.bbq = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite454.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.bbq) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.nn:                                            ; preds = %.lr.ph585.i
  %i.bbr = load ptr, ptr %8, align 8, !tbaa !14
  %i.bbs = getelementptr inbounds nuw [72 x i8], ptr %i.bbr, i64 %i.bbo
  call void %i.bbp(ptr noundef byval(%struct.corner_info_t) align 8 %i.bbs) #27, !inline_history !371
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %.lr.ph585.i
  %i.bbt = add nuw i64 %.0583.i, 1                ; 2 uses
  %.val.i90 = load i64, ptr %i.ari, align 8, !tbaa !109
  %i.bbu = icmp ult i64 %i.bbt, %.val.i90
  br i1 %i.bbu, label %.lr.ph585.i, label %._crit_edge586.i, !llvm.loop !375

bb.np:                                            ; preds = %bb.ls
  %i.bbv = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.bbw = load i64, ptr %i.arh, align 8, !tbaa !198 ; 2 uses
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.bbv, i64 noundef %i.bbw, i32 noundef 0) #27
  br label %bb.nq

bb.nq:                                            ; preds = %bb.np, %._crit_edge586.i
  %24 = phi i64 [ %i.bbw, %bb.np ], [ %i.asx, %._crit_edge586.i ]
  %25 = phi ptr [ %i.bbv, %bb.np ], [ %i.asy, %._crit_edge586.i ] ; 3 uses
  %i.bbx = load i32, ptr %i.arr, align 8, !tbaa !394 ; 3 uses
  %.not451.not.i = icmp eq i32 %i.bbx, 0
  br i1 %.not451.not.i, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bby = load double, ptr %i.ars, align 8
  %i.bbz = load double, ptr %i.art, align 8
  %i.bca = load double, ptr %25, align 8
  %i.bcb = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bcc = load double, ptr %i.bcb, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.bby, double %i.bbz, double %i.bca, double %i.bcc, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.bbx) #27
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %i.bcd = load i32, ptr %i.aru, align 4, !tbaa !395 ; 3 uses
  %.not452.not.i = icmp eq i32 %i.bcd, 0
  br i1 %.not452.not.i, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bce = getelementptr [16 x i8], ptr %25, i64 %24 ; 2 uses
  %i.bcf = getelementptr i8, ptr %i.bce, i64 -16
  %i.bcg = load double, ptr %i.arv, align 8
  %i.bch = load double, ptr %i.arw, align 8
  %i.bci = load double, ptr %i.bcf, align 8
  %i.bcj = getelementptr i8, ptr %i.bce, i64 -8
  %i.bck = load double, ptr %i.bcj, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.bcg, double %i.bch, double %i.bci, double %i.bck, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.bcd) #27
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.bcl = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 16
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !191 ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 8
  %i.bcp = load i64, ptr %i.bco, align 8, !tbaa !195 ; 3 uses
  %i.bcq = icmp ugt i64 %i.bcp, 1
  br i1 %i.bcq, label %bb.nv, label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  %i.bcr = or i32 %i.bcd, %i.bbx
  %or.cond12.i = icmp ne i32 %i.bcr, 0
  %or.cond14.i = and i1 %.not39, %or.cond12.i
  br i1 %or.cond14.i, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  call void @gvrender_set_style(ptr noundef %0, ptr noundef nonnull %.036) #27
  %.pre.i84 = load ptr, ptr %i.b, align 8, !tbaa !87
  %.phi.trans.insert.i85 = getelementptr inbounds nuw i8, ptr %.pre.i84, i64 16
  %.pre672.i = load ptr, ptr %.phi.trans.insert.i85, align 8, !tbaa !191 ; 2 uses
  %.phi.trans.insert673.i = getelementptr inbounds nuw i8, ptr %.pre672.i, i64 8
  %.pre674.i = load i64, ptr %.phi.trans.insert673.i, align 8, !tbaa !195
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv, %bb.nu
  %i.bcs = phi i64 [ %i.bcp, %bb.nv ], [ %.pre674.i, %bb.nw ], [ %i.bcp, %bb.nu ]
  %i.bct = phi ptr [ %i.bcn, %bb.nv ], [ %.pre672.i, %bb.nw ], [ %i.bcn, %bb.nu ]
  %i.bcu = add nuw i64 %.0392587.i, 1             ; 2 uses
  %i.bcv = icmp ult i64 %i.bcu, %i.bcs
  br i1 %i.bcv, label %bb.lm, label %.loopexit540.i, !llvm.loop !376

.loopexit540.i:                                   ; preds = %bb.nx, %bb.ll, %._crit_edge628.i, %bb.jy, %bb.jx, %multicolor.exit.i, %emit_begin_edge.exit
  %i.bcw = getelementptr inbounds nuw i8, ptr %7, i64 31
  %.val479.i = load i8, ptr %i.bcw, align 1, !tbaa !14
  %i.bcx = icmp eq i8 %.val479.i, -1
  br i1 %i.bcx, label %bb.ny, label %emit_edge_graphics.exit

bb.ny:                                            ; preds = %.loopexit540.i
  %.val478.i = load ptr, ptr %7, align 8
  call void @free(ptr noundef %.val478.i) #27
  br label %emit_edge_graphics.exit

emit_edge_graphics.exit:                          ; preds = %.loopexit540.i, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bcy = load ptr, ptr %i.gc, align 8, !tbaa !39 ; 26 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 16
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !14 ; 3 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcy, i64 248 ; 2 uses
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !53
  %.not.i112 = icmp eq ptr %i.bdc, null
  br i1 %.not.i112, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %emit_edge_graphics.exit
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcy, i64 352
  %i.bde = load i16, ptr %i.bdd, align 8
  %i.bdf = and i16 %i.bde, 1
  %.not103.i = icmp eq i16 %i.bdf, 0
  br i1 %.not103.i, label %.loopexit.i114, label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %emit_edge_graphics.exit
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bcy, i64 376 ; 2 uses
  %i.bdh = load i64, ptr %i.bdg, align 8, !tbaa !401 ; 2 uses
  %.not104.i = icmp eq i64 %i.bdh, 0
  br i1 %.not104.i, label %.loopexit.i114, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bcy, i64 384 ; 2 uses
  %.not115.i = icmp eq i64 %i.bdh, 1
  br i1 %.not115.i, label %.loopexit.i114, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ob
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !67 ; 2 uses
  %i.bdk = load i64, ptr %i.bdj, align 8, !tbaa !200
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bcy, i64 360
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bcy, i64 392
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bcy, i64 368
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bcy, i64 288
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bcy, i64 320
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bcy, i64 256
  br label %bb.oc

bb.oc:                                            ; preds = %bb.oc, %.lr.ph.i113
  %i.bdr = phi ptr [ %i.bdj, %.lr.ph.i113 ], [ %i.bea, %bb.oc ]
  %.0113.i = phi i64 [ 1, %.lr.ph.i113 ], [ %i.bee, %bb.oc ] ; 3 uses
  %.099112.i = phi i64 [ %i.bdk, %.lr.ph.i113 ], [ %i.bed, %bb.oc ] ; 2 uses
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %i.bdr, i64 %.0113.i
  %i.bdt = load i64, ptr %i.bds, align 8, !tbaa !200
  store i64 %i.bdt, ptr %i.bdl, align 8, !tbaa !123
  %i.bdu = load ptr, ptr %i.bdm, align 8, !tbaa !66
  %i.bdv = getelementptr inbounds nuw [16 x i8], ptr %i.bdu, i64 %.099112.i
  store ptr %i.bdv, ptr %i.bdn, align 8, !tbaa !65
  %i.bdw = load ptr, ptr %i.bdb, align 8, !tbaa !53
  %i.bdx = load ptr, ptr %i.bdo, align 8, !tbaa !57
  %i.bdy = load ptr, ptr %i.bdp, align 8, !tbaa !61
  %i.bdz = load ptr, ptr %i.bdq, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.bdw, ptr noundef %i.bdx, ptr noundef %i.bdy, ptr noundef %i.bdz) #27
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  %i.bea = load ptr, ptr %i.bdi, align 8, !tbaa !67 ; 2 uses
  %i.beb = getelementptr inbounds nuw [8 x i8], ptr %i.bea, i64 %.0113.i
  %i.bec = load i64, ptr %i.beb, align 8, !tbaa !200
  %i.bed = add i64 %i.bec, %.099112.i
  %i.bee = add nuw i64 %.0113.i, 1                ; 2 uses
  %i.bef = load i64, ptr %i.bdg, align 8, !tbaa !401
  %i.beg = icmp ult i64 %i.bee, %i.bef
  br i1 %i.beg, label %bb.oc, label %.loopexit.i114, !llvm.loop !377

.loopexit.i114:                                   ; preds = %bb.oc, %bb.ob, %bb.oa, %bb.nz
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bcy, i64 360
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bda, i64 16 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.beh, i8 0, i64 16, i1 false)
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !87 ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !191 ; 2 uses
  %.not105.i = icmp eq ptr %i.bel, null
  br i1 %.not105.i, label %bb.oj, label %bb.od

bb.od:                                            ; preds = %.loopexit.i114
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !196 ; 4 uses
  %.sroa.7.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.bem, i64 16
  %.sroa.7.0.copyload.i116 = load i32, ptr %.sroa.7.0..sroa_idx.i115, align 8, !tbaa !47
  %.not106.i = icmp eq i32 %.sroa.7.0.copyload.i116, 0
  br i1 %.not106.i, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bem, i64 32
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bem, i64 24
  br label %bb.og

bb.of:                                            ; preds = %bb.od
  %.sroa.0.0.copyload.i118 = load ptr, ptr %i.bem, align 8, !tbaa !201 ; 2 uses
  %.sroa.816.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i118, i64 8
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.oe
  %.sroa.816.0.in.i = phi ptr [ %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i, %bb.oe ], [ %.sroa.816.0..sroa_idx.i, %bb.of ]
  %.sroa.011.0.in.i = phi ptr [ %.sroa.9.0..sroa_idx.i, %bb.oe ], [ %.sroa.0.0.copyload.i118, %bb.of ]
  %.sroa.011.0.i = load double, ptr %.sroa.011.0.in.i, align 8, !tbaa !110
  %.sroa.816.0.i = load double, ptr %.sroa.816.0.in.i, align 8, !tbaa !110
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bcy, i64 352 ; 2 uses
  %i.beo = load i16, ptr %i.ben, align 8          ; 2 uses
  %i.bep = and i16 %i.beo, 128
  %i.beq = icmp ne i16 %i.bep, 0
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bcy, i64 272
  %i.bes = load ptr, ptr %i.ber, align 8, !tbaa !55
  %i.bet = and i16 %i.beo, 2
  %i.beu = icmp ne i16 %i.bet, 0
  call fastcc void @nodeIntersect(ptr noundef nonnull %0, double %.sroa.011.0.i, double %.sroa.816.0.i, i1 noundef zeroext %i.beq, ptr noundef %i.bes, i1 noundef zeroext %i.beu)
  %i.bev = load ptr, ptr %i.bei, align 8, !tbaa !87
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 16
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !191 ; 2 uses
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !196
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bex, i64 8
  %i.bfa = load i64, ptr %i.bez, align 8, !tbaa !195
  %i.bfb = getelementptr [56 x i8], ptr %i.bey, i64 %i.bfa ; 4 uses
  %.sroa.8.0..sroa_idx7.i = getelementptr i8, ptr %i.bfb, i64 -36
  %.sroa.8.0.copyload8.i = load i32, ptr %.sroa.8.0..sroa_idx7.i, align 4, !tbaa !47
  %.not107.i = icmp eq i32 %.sroa.8.0.copyload8.i, 0
  br i1 %.not107.i, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.bfc = getelementptr i8, ptr %i.bfb, i64 -56
  %.sroa.6.0..sroa_idx3.i = getelementptr i8, ptr %i.bfb, i64 -48
  %.sroa.6.0.copyload4.i = load i64, ptr %.sroa.6.0..sroa_idx3.i, align 8, !tbaa !200
  %.sroa.0.0.copyload2.i = load ptr, ptr %i.bfc, align 8, !tbaa !201
  %i.bfd = getelementptr [16 x i8], ptr %.sroa.0.0.copyload2.i, i64 %.sroa.6.0.copyload4.i
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %bb.og
  %.pn.i = phi ptr [ %i.bfd, %bb.oh ], [ %i.bfb, %bb.og ] ; 2 uses
  %.sroa.011.1.in.i = getelementptr i8, ptr %.pn.i, i64 -16
  %.sroa.011.1.i = load double, ptr %.sroa.011.1.in.i, align 8, !tbaa !110
  %.sroa.816.1.in.i = getelementptr i8, ptr %.pn.i, i64 -8
  %.sroa.816.1.i = load double, ptr %.sroa.816.1.in.i, align 8, !tbaa !110
  %i.bfe = load i16, ptr %i.ben, align 8          ; 2 uses
  %i.bff = and i16 %i.bfe, 256
  %i.bfg = icmp ne i16 %i.bff, 0
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bcy, i64 280
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !56
  %i.bfj = and i16 %i.bfe, 4
  %i.bfk = icmp ne i16 %i.bfj, 0
  call fastcc void @nodeIntersect(ptr noundef nonnull %0, double %.sroa.011.1.i, double %.sroa.816.1.i, i1 noundef zeroext %i.bfg, ptr noundef %i.bfi, i1 noundef zeroext %i.bfk)
  %.pre.i117 = load ptr, ptr %i.bei, align 8, !tbaa !87
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %.loopexit.i114
  %i.bfl = phi ptr [ %.pre.i117, %bb.oi ], [ %i.bej, %.loopexit.i114 ]
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 120
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !378
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bcy, i64 352 ; 4 uses
end_hunk_4
