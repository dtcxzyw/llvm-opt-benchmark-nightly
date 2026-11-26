Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/routespl?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@makeStraightEdges:bb.a

bb.o:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %6, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  %.0.copyload14.i = load ptr, ptr %i.dl, align 8
  call void @free(ptr noundef %.0.copyload14.i) #17
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dm = load ptr, ptr %6, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.di
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !39
  call void %i.dj(ptr noundef %i.do) #17, !inline_history !112
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dp = add nuw i64 %.03259.i, 1                ; 2 uses
  %.val39.i = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.dq = icmp ult i64 %i.dp, %.val39.i
  br i1 %i.dq, label %bb.n, label %._crit_edge61.i, !llvm.loop !113

.preheader46.loopexit.i:                          ; preds = %.lr.ph.i
  %.val55.pre.i = load i64, ptr %i.bf, align 8, !tbaa !72
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %.preheader46.loopexit.i, %.preheader47.i
  %.val55.i = phi i64 [ %.val17.i.i, %.preheader47.i ], [ %.val55.pre.i, %.preheader46.loopexit.i ]
  %.031.lcssa.i = phi double [ 0.000000e+00, %.preheader47.i ], [ %i.ed, %.preheader46.loopexit.i ]
  %i.dr = phi <2 x double> [ zeroinitializer, %.preheader47.i ], [ %i.ec, %.preheader46.loopexit.i ]
  %.not62.i = icmp eq i64 %.val55.i, 0
  br i1 %.not62.i, label %._crit_edge.i, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.preheader46.i
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.r

.lr.ph.i:                                         ; preds = %.preheader47.i, %.lr.ph.i
  %.03052.i = phi i64 [ %i.ee, %.lr.ph.i ], [ 0, %.preheader47.i ] ; 2 uses
  %.03151.i = phi double [ %i.ed, %.lr.ph.i ], [ 0.000000e+00, %.preheader47.i ]
  %i.dt = phi <2 x double> [ %i.ec, %.lr.ph.i ], [ zeroinitializer, %.preheader47.i ]
  %i.du = load ptr, ptr %.2.i.i, align 8, !tbaa !26
  %i.dv = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %.2.i.i, i64 noundef %.03052.i) #17
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !75
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load <2 x double>, ptr %i.ea, align 8, !tbaa !20
  %i.ec = fadd <2 x double> %i.dt, %i.eb          ; 2 uses
  %i.ed = fadd double %.03151.i, 1.000000e+00     ; 2 uses
  %i.ee = add nuw i64 %.03052.i, 1                ; 2 uses
  %.val38.i = load i64, ptr %i.cz, align 8, !tbaa !72
  %i.ef = icmp ult i64 %i.ee, %.val38.i
  br i1 %i.ef, label %.lr.ph.i, label %.preheader46.loopexit.i, !llvm.loop !114

._crit_edge.i:                                    ; preds = %bb.u, %.preheader46.i
  call void @gv_list_clear_(ptr noundef nonnull %6, i64 noundef 8) #17
  call void @gv_list_free_(ptr noundef nonnull %6) #17
  %i.eg = insertelement <2 x double> poison, double %.031.lcssa.i, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fdiv <2 x double> %i.dr, %i.eh
  br label %get_cycle_centroid.exit

bb.r:                                             ; preds = %bb.u, %.lr.ph57.i
  %.056.i = phi i64 [ 0, %.lr.ph57.i ], [ %i.eq, %bb.u ] ; 2 uses
  %i.ej = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.056.i) #17 ; 2 uses
  %i.ek = load ptr, ptr %i.ds, align 8, !tbaa !118 ; 2 uses
  %magicptr37.i = ptrtoint ptr %i.ek to i64
  switch i64 %magicptr37.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.el = load ptr, ptr %6, align 8, !tbaa !26
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ej
  %.0.copyload.i = load ptr, ptr %i.em, align 8
  call void @free(ptr noundef %.0.copyload.i) #17
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.en = load ptr, ptr %6, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ej
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !39
  call void %i.ek(ptr noundef %i.ep) #17, !inline_history !112
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.eq = add nuw i64 %.056.i, 1                  ; 2 uses
  %.val.i = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.er = icmp ult i64 %i.eq, %.val.i
  br i1 %i.er, label %bb.r, label %._crit_edge.i, !llvm.loop !115

get_cycle_centroid.exit:                          ; preds = %._crit_edge61.i, %._crit_edge.i
  %i.es = phi <2 x double> [ %i.dh, %._crit_edge61.i ], [ %i.ei, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.et = fadd <2 x double> %i.z, %i.ae
  %i.eu = fmul <2 x double> %i.et, splat (double 5.000000e-01) ; 2 uses
  %i.ev = fsub <2 x double> %i.es, %i.eu          ; 3 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = extractelement <2 x double> %i.ev, i64 1
  %i.ey = call double @hypot(double noundef %i.ew, double noundef %i.ex) #17 ; 2 uses
  %i.ez = fcmp une double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.v, label %bend.exit

bb.v:                                             ; preds = %get_cycle_centroid.exit
  %foldExtExtBinop = fsub <2 x double> %i.ae, %i.z
  %i.fa = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop120 = fsub <2 x double> %i.ae, %i.z ; 2 uses
  %foldExtExtBinop122 = fmul <2 x double> %foldExtExtBinop120, %foldExtExtBinop120
  %i.fb = extractelement <2 x double> %foldExtExtBinop122, i64 1
  %i.fc = call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.fb)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.fc)
  %i.fd = fdiv double %sqrt.i, 5.000000e+00
  %i.fe = fneg <2 x double> %i.ev
  %i.ff = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fdiv <2 x double> %i.fe, %i.fg
  %i.fi = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fj, <2 x double> %i.eu) ; 2 uses
  store <2 x double> %i.fk, ptr %i.t, align 16, !tbaa !20
  store <2 x double> %i.fk, ptr %i.m, align 16, !tbaa !20
  br label %bend.exit

bend.exit:                                        ; preds = %bb.v, %get_cycle_centroid.exit, %bb.b
  %i.fl = load i32, ptr %i.a, align 8
  %i.fm = and i32 %i.fl, 3
  %i.fn = icmp eq i32 %i.fm, 2
  %i.fo = select i1 %i.fn, ptr %i.a, ptr %i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !62
  call void @clip_and_install(ptr noundef nonnull %i.a, ptr noundef %i.fq, ptr noundef nonnull %7, i64 noundef 4, ptr noundef %4) #17
  call void @addEdgeLabels(ptr noundef nonnull %i.a) #17
  br label %.loopexit96

bb.w:                                             ; preds = %bb.a
  %foldExtExtBinop124 = fsub <2 x double> %i.z, %i.ae
  %i.fr = extractelement <2 x double> %foldExtExtBinop124, i64 0 ; 2 uses
  %foldExtExtBinop126 = fsub <2 x double> %i.z, %i.ae ; 2 uses
  %i.fs = extractelement <2 x double> %foldExtExtBinop126, i64 1 ; 3 uses
  %i.ft = fmul double %i.fs, %i.fs
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %i.ft)
  %i.fv = fcmp olt double %i.fu, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !21
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %foldExtExtBinop128 = fsub <2 x double> %i.ae, %i.z ; 2 uses
  %i.fw = extractelement <2 x double> %foldExtExtBinop128, i64 0
  %i.fx = tail call double @hypot(double noundef %i.fs, double noundef %i.fw) #17
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !125
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !43
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !137 ; 2 uses
  %i.ge = trunc i64 %2 to i32
  %i.gf = add i32 %i.ge, -1
  %i.gg = mul nsw i32 %i.gd, %i.gf
  %i.gh = sdiv i32 %i.gg, 2
  %i.gi = sitofp i32 %i.gh to double
  %i.gj = shufflevector <2 x double> %foldExtExtBinop126, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> %foldExtExtBinop128, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gl = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.gk, %i.gm
  %i.go = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = fdiv <2 x double> %i.gn, %i.gp          ; 2 uses
  %i.gr = fadd <2 x double> %i.z, %i.gq
  store <2 x double> %i.gr, ptr %i.m, align 16, !tbaa !20
  %i.gs = fadd <2 x double> %i.ae, %i.gq
  store <2 x double> %i.gs, ptr %i.t, align 16, !tbaa !20
  %i.gt = sub nsw i32 0, %i.gd
  %i.gu = sitofp i32 %i.gt to double
  %i.gv = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x double> %i.gk, %i.gw
  %i.gy = fdiv <2 x double> %i.gx, %i.gp
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gz = phi <2 x double> [ zeroinitializer, %bb.x ], [ %i.gy, %bb.y ] ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit96, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.ha = icmp eq i32 %3, 6
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %11 = load <2 x double>, ptr %i.m, align 16
  %12 = load <2 x double>, ptr %i.t, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ad
  %.086101 = phi i64 [ 0, %.lr.ph ], [ %i.ii, %bb.ad ] ; 2 uses
  %13 = phi <2 x double> [ %11, %.lr.ph ], [ %i.ig, %bb.ad ]
  %14 = phi <2 x double> [ %12, %.lr.ph ], [ %i.ih, %bb.ad ]
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.086101
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !70 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.hk = load i32, ptr %i.hj, align 8
  %i.hl = and i32 %i.hk, 3
  %i.hm = icmp eq i32 %i.hl, 2
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 -64 ; 3 uses
  %i.ho = select i1 %i.hm, ptr %i.hj, ptr %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !62
  %i.hr = icmp eq ptr %i.hq, %i.l
  br i1 %i.hr, label %.preheader.preheader, label %.preheader94.preheader

.preheader94.preheader:                           ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hg, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.he, ptr noundef nonnull align 16 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hc, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !21
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 16 dereferenceable(64) %7, i64 64, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader94.preheader, %.preheader.preheader
  br i1 %i.ha, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hb, ptr noundef nonnull align 16 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hd, ptr noundef nonnull align 16 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hf, ptr noundef nonnull align 16 dereferenceable(16) %i.hg, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @make_polyline(ptr nonnull %9, i64 4, ptr noundef nonnull %10) #17
  %i.hs = load i32, ptr %i.hj, align 8
  %i.ht = and i32 %i.hs, 3
  %i.hu = icmp eq i32 %i.ht, 2
  %i.hv = select i1 %i.hu, ptr %i.hj, ptr %i.hn
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62
  %i.hy = load ptr, ptr %10, align 8, !tbaa !19
  %i.hz = load i64, ptr %i.hh, align 8, !tbaa !16
  call void @clip_and_install(ptr noundef nonnull %i.hj, ptr noundef %i.hx, ptr noundef %i.hy, i64 noundef %i.hz, ptr noundef %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  %i.ia = load i32, ptr %i.hj, align 8
  %i.ib = and i32 %i.ia, 3
  %i.ic = icmp eq i32 %i.ib, 2
  %i.id = select i1 %i.ic, ptr %i.hj, ptr %i.hn
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !62
  call void @clip_and_install(ptr noundef nonnull %i.hj, ptr noundef %i.if, ptr noundef nonnull %8, i64 noundef 4, ptr noundef %4) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @addEdgeLabels(ptr noundef nonnull %i.hj) #17
  %i.ig = fadd <2 x double> %i.gz, %13            ; 2 uses
  store <2 x double> %i.ig, ptr %i.m, align 16, !tbaa !20
  %i.ih = fadd <2 x double> %i.gz, %14            ; 2 uses
  store <2 x double> %i.ih, ptr %i.t, align 16, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ii = add nuw i64 %.086101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ii, %2
  br i1 %exitcond.not, label %.loopexit96, label %bb.aa, !llvm.loop !116

.loopexit96:                                      ; preds = %bb.ad, %bb.z, %bend.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

declare void @clip_and_install(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @addEdgeLabels(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #11 {
bb.a:
  tail call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @agnameof(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @limitBoxes(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, double noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = fmul double %4, %i.a                     ; 3 uses
  %i.c = icmp ult i64 %3, 4
  %i.d = fcmp ult double %i.b, 0.000000e+00
  %or.cond = or i1 %i.c, %i.d
  %.not = icmp eq i64 %1, 0
  %or.cond95 = or i1 %or.cond, %.not
  br i1 %or.cond95, label %._crit_edge, label %.preheader.us85

.preheader.us85:                                  ; preds = %bb.a, %..loopexit_crit_edge.split.us.us
  %i.e = phi i64 [ %i.av, %..loopexit_crit_edge.split.us.us ], [ 3, %bb.a ] ; 3 uses
  %.07784.us86 = phi i64 [ %i.e, %..loopexit_crit_edge.split.us.us ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.07784.us86 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %i.f, i64 32
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us85
  %.07682.us.us = phi double [ 0.000000e+00, %.preheader.us85 ], [ %i.at, %._crit_edge.us.us ] ; 2 uses
  %i.j = fdiv double %.07682.us.us, %i.b
  %i.k = load <2 x double>, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  %i.l = load <2 x double>, ptr %i.g, align 8, !tbaa !20 ; 3 uses
  %i.m = fsub <2 x double> %i.l, %i.k
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.m, <2 x double> %i.k) ; 2 uses
  %i.q = load <2 x double>, ptr %i.h, align 8, !tbaa !20 ; 3 uses
  %i.r = fsub <2 x double> %i.q, %i.l
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.r, <2 x double> %i.l) ; 3 uses
  %i.t = load <2 x double>, ptr %i.i, align 8, !tbaa !20
  %i.u = fsub <2 x double> %i.t, %i.q
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.u, <2 x double> %i.q)
  %i.w = fsub <2 x double> %i.s, %i.p
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.w, <2 x double> %i.p) ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.s
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.y, <2 x double> %i.s)
  %i.aa = fsub <2 x double> %i.z, %i.x
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.aa, <2 x double> %i.x) ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ad = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.us.us
  %.081.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.as, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.081.us.us ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !55
  %i.ai = fadd double %i.ah, 1.000000e-04
  %i.aj = fcmp ugt double %i.ad, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !54
  %i.am = fadd double %i.al, -1.000000e-04
  %i.an = fcmp ult double %i.ad, %i.am
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load double, ptr %i.ae, align 8, !tbaa !52
  %i.ap = tail call nsz double @llvm.minnum.f64(double %i.ao, double %i.ac)
  store double %i.ap, ptr %i.ae, align 8, !tbaa !52
  %i.aq = load double, ptr %i.af, align 8, !tbaa !53
  %i.ar = tail call nsz double @llvm.maxnum.f64(double %i.aq, double %i.ac)
  store double %i.ar, ptr %i.af, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.as = add nuw i64 %.081.us.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %1
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !138

._crit_edge.us.us:                                ; preds = %bb.e
  %i.at = fadd double %.07682.us.us, 1.000000e+00 ; 2 uses
  %i.au = fcmp ugt double %i.at, %i.b
  br i1 %i.au, label %..loopexit_crit_edge.split.us.us, label %.lr.ph.us.us, !llvm.loop !139

..loopexit_crit_edge.split.us.us:                 ; preds = %._crit_edge.us.us
  %i.av = add i64 %i.e, 3                         ; 2 uses
  %i.aw = icmp ult i64 %i.av, %3
  br i1 %i.aw, label %.preheader.us85, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %..loopexit_crit_edge.split.us.us, %bb.a
  ret void
}

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @printpath(ptr nofree noundef readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.18, i64 noundef %i.c) #19 ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !38
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.h = load double, ptr %0, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64, !range !65, !noundef !66
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, ptr @.str.21, ptr @.str.22
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.20, double noundef %i.h, double noundef %i.j, double noundef %i.l, ptr noundef nonnull %i.p) #19 ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !142
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load double, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load double, ptr %i.w, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.z = load i8, ptr %i.y, align 1, !tbaa !68, !range !65, !noundef !66
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.aa, ptr @.str.21, ptr @.str.22
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.23, double noundef %i.t, double noundef %i.v, double noundef %i.x, ptr noundef nonnull %i.ab) #19 ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.b ] ; 3 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.020 ; 4 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.am = load double, ptr %i.al, align 8, !tbaa !55
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.19, i64 noundef %.020, double noundef %i.ag, double noundef %i.ai, double noundef %i.ak, double noundef %i.am) #19 ; 0 uses
  %i.ao = add nuw i64 %.020, 1                    ; 2 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !38
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge, !llvm.loop !141
}
end_hunk_0
