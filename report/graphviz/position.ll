Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/position?download=true
inline.NumInlined: 41
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@keepout_othernodes:bb.a
    i8 1, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 392
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i51 = phi ptr [ %i.de, %bb.h ], [ %i.di, %bb.i ] ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i51, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 160
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !183 ; 2 uses
  %.not15.i52 = icmp eq ptr %i.di, null
  br i1 %.not15.i52, label %bb.j, label %bb.i, !llvm.loop !178

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %.0.i51, align 8
  %i.dk = and i32 %i.dj, 3
  %i.dl = icmp eq i32 %i.dk, 3
  %i.dm = select i1 %i.dl, i64 56, i64 120
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i51, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !63
  %i.dp = tail call i32 @agcontains(ptr noundef %0, ptr noundef %i.do) #14
  %.not16.i53 = icmp eq i32 %i.dp, 0
  br i1 %.not16.i53, label %vnode_not_related_to.exit55, label %vnode_not_related_to.exit55.thread

vnode_not_related_to.exit55:                      ; preds = %bb.j
  %i.dq = load i32, ptr %.0.i51, align 8
  %i.dr = and i32 %i.dq, 3
  %i.ds = icmp eq i32 %i.dr, 2
  %i.dt = select i1 %i.ds, i64 56, i64 -8
  %i.du = getelementptr inbounds i8, ptr %.0.i51, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !63
  %i.dw = tail call i32 @agcontains(ptr noundef %0, ptr noundef %i.dv) #14
  %.not17.i54 = icmp eq i32 %i.dw, 0
  br i1 %.not17.i54, label %vnode_not_related_to.exit55._crit_edge, label %vnode_not_related_to.exit55.thread

vnode_not_related_to.exit55._crit_edge:           ; preds = %vnode_not_related_to.exit55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.pre86 = load ptr, ptr %i.dx, align 8, !tbaa !13
  br label %split85

split85:                                          ; preds = %.lr.ph65, %vnode_not_related_to.exit55._crit_edge
  %i.dy = phi ptr [ %.pre86, %vnode_not_related_to.exit55._crit_edge ], [ %i.cz, %.lr.ph65 ]
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 368
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !83
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !64
  %i.ee = fadd double %i.ed, %i.i
  %i.ef = tail call ptr @make_aux_edge(ptr noundef %i.eb, ptr noundef nonnull %i.cx, double noundef %i.ee, i32 noundef 0) ; 0 uses
  br label %.loopexit

vnode_not_related_to.exit55.thread:               ; preds = %.lr.ph65, %bb.j, %vnode_not_related_to.exit55
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.eg = tail call ptr @dot_root(ptr noundef %0) #14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 264
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !39
  %i.el = getelementptr inbounds [88 x i8], ptr %i.ek, i64 %indvars.iv79
  %i.em = load i32, ptr %i.el, align 8, !tbaa !42
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next77, %i.en
  br i1 %i.eo, label %.lr.ph65, label %.loopexit, !llvm.loop !180

.loopexit:                                        ; preds = %vnode_not_related_to.exit55.thread, %.loopexit57, %split85, %bb.c, %bb.b
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 340
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !38
  %i.es = sext i32 %i.er to i64
  %.not.not = icmp slt i64 %indvars.iv79, %i.es
  br i1 %.not.not, label %bb.b, label %.preheader, !llvm.loop !181

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.lr.ph71 ], [ 1, %.preheader ] ; 3 uses
  %i.et = phi ptr [ %i.ey, %.lr.ph71 ], [ %i.k, %.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 240
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !92
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv82
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !93
  tail call fastcc void @keepout_othernodes(ptr noundef %i.ex)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 236
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !79
  %i.fb = sext i32 %i.fa to i64
  %.not47.not = icmp slt i64 %indvars.iv82, %i.fb
  br i1 %.not47.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !182

._crit_edge:                                      ; preds = %.lr.ph71, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @contain_subclust(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @G_margin, align 8, !tbaa !89
  %i.b = tail call i32 @late_int(ptr noundef %0, ptr noundef %i.a, i32 noundef 8, i32 noundef 0) #14
  tail call fastcc void @make_lrvn(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %.not16 = icmp slt i32 %i.f, 1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = sitofp i32 %i.b to double                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.ah, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93   ; 3 uses
  tail call fastcc void @make_lrvn(ptr noundef %i.l)
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.u = load double, ptr %i.t, align 8, !tbaa !94
  %i.v = fadd double %i.u, %i.g
  %i.w = tail call ptr @make_aux_edge(ptr noundef %i.o, ptr noundef %i.s, double noundef %i.v, i32 noundef 0) ; 0 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 368
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !94
  %i.af = fadd double %i.ae, %i.g
  %i.ag = tail call ptr @make_aux_edge(ptr noundef %i.z, ptr noundef %i.ac, double noundef %i.af, i32 noundef 0) ; 0 uses
  tail call fastcc void @contain_subclust(ptr noundef %i.l)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 236
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !79
  %i.ak = sext i32 %i.aj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ak
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @separate_subclust(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @G_margin, align 8, !tbaa !89
  %i.b = tail call i32 @late_int(ptr noundef %0, ptr noundef %i.a, i32 noundef 8, i32 noundef 0) #14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %.not48 = icmp slt i32 %i.f, 1
  br i1 %.not48, label %._crit_edge56, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.not4253 = icmp slt i32 %i.q, 1
  br i1 %.not4253, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader
  %i.g = sitofp i32 %i.b to double
  %i.h = icmp slt i32 %i.b, 0
  %.in.v.i = select i1 %i.h, double -5.000000e-01, double 5.000000e-01
  %.in.i = fadd double %.in.v.i, %i.g
  %i.i = fptosi double %.in.i to i32
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.j = phi ptr [ %i.o, %.lr.ph ], [ %i.d, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  tail call fastcc void @make_lrvn(ptr noundef %i.n)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79   ; 3 uses
  %i.r = sext i32 %i.q to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.r
  br i1 %.not.not, label %.lr.ph, label %.preheader, !llvm.loop !185

bb.b:                                             ; preds = %.lr.ph55, %._crit_edge
  %i.s = phi i32 [ %i.q, %.lr.ph55 ], [ %i.cx, %._crit_edge ]
  %i.t = phi ptr [ %i.o, %.lr.ph55 ], [ %i.cv, %._crit_edge ] ; 2 uses
  %indvars.iv64 = phi i64 [ 1, %.lr.ph55 ], [ %indvars.iv.next65, %._crit_edge ] ; 5 uses
  %indvars.iv59.a = phi i64 [ 2, %.lr.ph55 ], [ %indvars.iv.next60, %._crit_edge ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %i.u = sext i32 %i.s to i64
  %.not4350.not = icmp slt i64 %indvars.iv64, %i.u
  br i1 %.not4350.not, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %bb.b, %bb.f
  %i.v = phi ptr [ %i.cn, %bb.f ], [ %i.t, %bb.b ] ; 2 uses
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %bb.f ], [ %indvars.iv59.a, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93   ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv61
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.ak = icmp sgt i32 %i.af, %i.aj               ; 2 uses
  %spec.select = select i1 %i.ak, ptr %i.ab, ptr %i.z ; 3 uses
  %spec.select44 = select i1 %i.ak, ptr %i.z, ptr %i.ab ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 340
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select44, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !37 ; 2 uses
  %i.at = icmp slt i32 %i.ao, %i.as
  br i1 %i.at, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph52
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 264
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.aw = sext i32 %i.as to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [88 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 364
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bh = getelementptr inbounds [88 x i8], ptr %i.bg, i64 %i.aw
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 364
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !51
  %i.bp = icmp slt i32 %i.be, %i.bo               ; 2 uses
  %spec.select.spec.select44 = select i1 %i.bp, ptr %spec.select, ptr %spec.select44
  %spec.select44.spec.select = select i1 %i.bp, ptr %spec.select44, ptr %spec.select
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select.spec.select44, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 368
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select44.spec.select, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 360
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !82
  %i.by = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 128) #15 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.d, label %gv_alloc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !54
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.2, i64 noundef 128) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  store i32 3, ptr %i.cc, align 8
  store i32 2, ptr %i.by, align 8
  %i.cd = tail call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 240) #15 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.e, label %gv_alloc.exit22.i

bb.e:                                             ; preds = %gv_alloc.exit.i
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !54
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.2, i64 noundef 240) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit22.i:                                ; preds = %gv_alloc.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.cd, ptr %i.ch, align 8, !tbaa !66
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  store ptr %i.bt, ptr %i.ci, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  store ptr %i.bx, ptr %i.cj, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 228
  store i32 %i.i, ptr %i.ck, align 4, !tbaa !72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 212
  store i32 0, ptr %i.cl, align 4, !tbaa !73
  %i.cm = tail call ptr @fast_edge(ptr noundef nonnull %i.by) #14 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph52, %gv_alloc.exit22.i
  %i.cn = phi ptr [ %i.v, %.lr.ph52 ], [ %.pre, %gv_alloc.exit22.i ] ; 3 uses
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 236
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !79
  %i.cq = trunc nuw i64 %indvars.iv61 to i32
  %.not43.not = icmp sgt i32 %i.cp, %i.cq
  br i1 %.not43.not, label %.lr.ph52, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.lcssa = phi ptr [ %i.t, %bb.b ], [ %i.cn, %bb.f ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.lcssa, i64 240
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !92
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv64
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !93
  tail call fastcc void @separate_subclust(ptr noundef %i.cu)
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 236
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !79 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %.not42.not = icmp slt i64 %indvars.iv64, %i.cy
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59.a, 1
  br i1 %.not42.not, label %bb.b, label %._crit_edge56, !llvm.loop !187

._crit_edge56:                                    ; preds = %._crit_edge, %bb.a, %.preheader
  ret void
}

declare ptr @dot_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @contain_nodes(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @G_margin, align 8, !tbaa !89
  %i.b = tail call i32 @late_int(ptr noundef %0, ptr noundef %i.a, i32 noundef 8, i32 noundef 0) #14
  tail call fastcc void @make_lrvn(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 340
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  %.not29 = icmp sgt i32 %i.j, %i.l
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = sitofp i32 %i.b to double                ; 2 uses
  %i.n = sext i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.o = phi ptr [ %i.d, %.lr.ph ], [ %i.bd, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds [88 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = tail call ptr @agnameof(ptr noundef nonnull %0) #14
  %i.z = trunc nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.4, ptr noundef %i.y, i32 noundef %i.z) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !64
  %i.ae = fadd double %i.ad, %i.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.ag = load double, ptr %i.af, align 8, !tbaa !94
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = tail call ptr @make_aux_edge(ptr noundef %i.f, ptr noundef nonnull %i.w, double noundef %i.ah, i32 noundef 0) ; 0 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = getelementptr inbounds [88 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !42
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !60
  %i.ay = fadd double %i.ax, %i.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.ba = load double, ptr %i.az, align 8, !tbaa !94
  %i.bb = fadd double %i.ay, %i.ba
  %i.bc = tail call ptr @make_aux_edge(ptr noundef %i.at, ptr noundef %i.h, double noundef %i.bb, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 340
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !38
  %i.bg = sext i32 %i.bf to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bg
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !188

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

declare i32 @late_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @make_lrvn(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %i.f = tail call ptr @virtual_node(ptr noundef %i.e) #14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  store i8 2, ptr %i.i, align 8, !tbaa !76
  %i.j = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %i.k = tail call ptr @virtual_node(ptr noundef %i.j) #14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  store i8 2, ptr %i.n, align 8, !tbaa !76
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %.not18 = icmp eq ptr %i.q, null
  br i1 %.not18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @dot_root(ptr noundef nonnull %0) #14
  %.not19 = icmp eq ptr %0, %i.r
  br i1 %.not19, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @agroot(ptr noundef nonnull %0) #14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 132
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81
  %i.x = and i32 %i.w, 1
  %.not20 = icmp eq i32 %i.x, 0
  br i1 %.not20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load double, ptr %i.z, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !94
  %i.ad = tail call nsz double @llvm.maxnum.f64(double %i.aa, double %i.ac)
  %i.ae = tail call ptr @make_aux_edge(ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, double noundef %i.ad, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 360
  store ptr %i.f, ptr %i.ag, align 8, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 368
  store ptr %i.k, ptr %i.ah, align 8, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare ptr @agnameof(ptr noundef) local_unnamed_addr #1

declare ptr @agroot(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #10

declare i32 @agcontains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @clust_ht(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dot_root(ptr noundef %0) #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = tail call ptr @dot_root(ptr noundef %0) #14
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @G_margin, align 8, !tbaa !89
  %i.i = tail call i32 @late_int(ptr noundef %0, ptr noundef %i.h, i32 noundef 8, i32 noundef 0) #14
  %i.j = sitofp i32 %i.i to double
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.059 = phi double [ %i.j, %bb.b ], [ 8.000000e+00, %bb.a ] ; 2 uses
end_hunk_0
