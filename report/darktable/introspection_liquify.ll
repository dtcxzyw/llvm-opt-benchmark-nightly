Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_hit_paths:bb.a
  %i.db = insertelement <2 x float> poison, float %spec.select.i, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.dd = fmul reassoc nsz arcp contract afn <2 x float> %i.dc, %i.cy
  %i.de = fadd reassoc nsz arcp contract afn <2 x float> %i.dd, %i.bj ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn <2 x float> %i.dc, %i.cz
  %i.dg = fadd reassoc nsz arcp contract afn <2 x float> %i.df, %i.bl ; 3 uses
  %i.dh = fmul reassoc nsz arcp contract afn <2 x float> %i.dc, %i.da
  %i.di = fadd reassoc nsz arcp contract afn <2 x float> %i.bm, %i.dh
  %i.dj = fsub reassoc nsz arcp contract afn <2 x float> %i.dg, %i.de
  %i.dk = fmul reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dc
  %i.dl = fadd reassoc nsz arcp contract afn <2 x float> %i.dk, %i.de ; 2 uses
  %i.dm = fsub reassoc nsz arcp contract afn <2 x float> %i.di, %i.dg
  %i.dn = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, %i.dc
  %i.do = fadd reassoc nsz arcp contract afn <2 x float> %i.dg, %i.dn
  %i.dp = fsub reassoc nsz arcp contract afn <2 x float> %i.do, %i.dl
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.dp, %i.dc
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dl, %i.dq
  %i.ds = fsub reassoc nsz arcp contract afn <2 x float> %i.dr, %i.bn
  %i.dt = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ds) #31 ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn olt float %i.dt, %.1328
  br i1 %i.du, label %.thread.sink.split, label %.thread

bb.p:                                             ; preds = %bb.i
  %switch = icmp ult i32 %i.z, 4
  br i1 %switch, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.dv = load <2 x float>, ptr %3, align 4
  %i.dw = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.dv
  %i.dx = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.dw) #31 ; 2 uses
  %i.dy = fcmp reassoc nsz arcp contract afn olt float %i.dx, %.1328
  br i1 %i.dy, label %.sink.split, label %bb.v

bb.r:                                             ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.ea = load <2 x float>, ptr %i.dz, align 4
  %i.eb = load <2 x float>, ptr %3, align 4
  %i.ec = fsub reassoc nsz arcp contract afn <2 x float> %i.ea, %i.eb
  %i.ed = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ec) #31 ; 2 uses
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.ed, %.1328
  br i1 %i.ee, label %.sink.split, label %bb.v

bb.s:                                             ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !79
  %i.ei = load <2 x float>, ptr %i.ef, align 4
  %i.ej = fsub reassoc nsz arcp contract afn <2 x float> %i.ei, %i.ag
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul reassoc nsz arcp contract afn <2 x float> %i.el, %i.ej
  %i.en = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.em
  %i.eo = load <2 x float>, ptr %3, align 4
  %i.ep = fsub reassoc nsz arcp contract afn <2 x float> %i.en, %i.eo
  %i.eq = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ep) #31 ; 2 uses
  %i.er = fcmp reassoc nsz arcp contract afn olt float %i.eq, %.1328
  br i1 %i.er, label %.sink.split, label %bb.v

bb.t:                                             ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.et = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.eu = load float, ptr %i.et, align 4, !tbaa !80
  %i.ev = load <2 x float>, ptr %i.es, align 4
  %i.ew = fsub reassoc nsz arcp contract afn <2 x float> %i.ev, %i.ag
  %i.ex = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, %i.ew
  %i.fa = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ez
  %i.fb = load <2 x float>, ptr %3, align 4
  %i.fc = fsub reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fb
  %i.fd = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fc) #31 ; 2 uses
  %i.fe = fcmp reassoc nsz arcp contract afn olt float %i.fd, %.1328
  br i1 %i.fe, label %.sink.split, label %bb.v

bb.u:                                             ; preds = %bb.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.fg = load double, ptr %i.t, align 8, !tbaa !132
  %i.fh = fmul reassoc nsz arcp contract afn double %i.fg, 5.000000e+00
  %i.fi = fptrunc reassoc nsz arcp contract afn double %i.fh to float
  %i.fj = load <2 x float>, ptr %i.ff, align 4    ; 2 uses
  %i.fk = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.fj ; 2 uses
  %i.fl = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fk) #31
  %i.fm = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fmul reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fn
  %i.fp = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fdiv reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fq
  %i.fs = load <2 x float>, ptr %3, align 4
  %i.ft = fsub reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fs
  %i.fu = fadd reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fr
  %i.fv = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fu) #31 ; 2 uses
  %i.fw = fcmp reassoc nsz arcp contract afn olt float %i.fv, %.1328
  br i1 %i.fw, label %.sink.split, label %bb.v

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.11.ph = phi float [ %i.fd, %bb.t ], [ %i.eq, %bb.s ], [ %i.ed, %bb.r ], [ %i.dx, %bb.q ], [ %i.fv, %bb.u ]
  store i32 %i.j, ptr %4, align 8, !tbaa !143
  store ptr %i.u, ptr %i.a, align 8, !tbaa !144
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.u, %bb.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.11 = phi nsz float [ %.1328, %bb.i ], [ %.1328, %bb.u ], [ %.1328, %bb.r ], [ %.1328, %bb.s ], [ %.1328, %bb.t ], [ %.1328, %bb.q ], [ %.11.ph, %.sink.split ] ; 8 uses
  %i.fx = icmp eq i32 %i.z, 3
  br i1 %i.fx, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  switch i32 %i.j, label %.thread [
    i32 13, label %bb.x
    i32 14, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %.not255 = icmp eq ptr %.0.i, null
  br i1 %.not255, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fy = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !145
  %i.ga = icmp eq i32 %i.fz, 3
  br i1 %i.ga, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  %i.gc = load <2 x float>, ptr %i.gb, align 4
  %i.gd = load <2 x float>, ptr %3, align 4
  %i.ge = fsub reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gd
  %i.gf = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ge) #31 ; 2 uses
  %i.gg = fcmp reassoc nsz arcp contract afn olt float %i.gf, %.11
  br i1 %i.gg, label %.thread.sink.split, label %.thread

bb.aa:                                            ; preds = %bb.w
  %i.gh = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !145
  %.not256 = icmp eq i32 %i.gi, 3
  br i1 %.not256, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.gk = load <2 x float>, ptr %i.gj, align 4
  %i.gl = load <2 x float>, ptr %3, align 4
  %i.gm = fsub reassoc nsz arcp contract afn <2 x float> %i.gk, %i.gl
  %i.gn = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.gm) #31 ; 2 uses
  %i.go = fcmp reassoc nsz arcp contract afn olt float %i.gn, %.11
  br i1 %i.go, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.ab, %bb.z, %bb.o, %bb.l
  %.sink345 = phi i32 [ 5, %bb.l ], [ 5, %bb.o ], [ 13, %bb.z ], [ 14, %bb.ab ]
  %.16.ph.ph = phi float [ %i.bb, %bb.l ], [ %i.dt, %bb.o ], [ %i.gf, %bb.z ], [ %i.gn, %bb.ab ]
  store i32 %.sink345, ptr %4, align 8, !tbaa !143
  store ptr %i.u, ptr %i.a, align 8, !tbaa !144
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.w, %find_nearest_on_curve_t.exit, %bb.o, %bb.y, %bb.z, %bb.l, %bb.k, %bb.j, %bb.p, %bb.g, %bb.e, %bb.h, %bb.ab, %bb.aa, %bb.v
  %.16.ph = phi float [ %.1328, %bb.j ], [ %.1328, %bb.g ], [ %.11, %bb.ab ], [ %.1328, %find_nearest_on_curve_t.exit ], [ %.11, %bb.w ], [ %.11, %bb.aa ], [ %.11, %bb.v ], [ %.1328, %bb.h ], [ %.1328, %bb.e ], [ %.1328, %bb.o ], [ %.1328, %bb.k ], [ %.1328, %bb.p ], [ %.1328, %bb.l ], [ %.11, %bb.y ], [ %.11, %bb.z ], [ %.16.ph.ph, %.thread.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.thread, %bb.b
  %.18 = phi nsz float [ %.0331, %bb.b ], [ %.16.ph, %.thread ], [ %.1328, %bb.c ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0228330, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !75 ; 2 uses
  %.not = icmp eq ptr %i.gq, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

bb.ac:                                            ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc float @find_nearest_on_line_t(<2 x float> noundef %0, <2 x float> noundef %1, <2 x float> noundef %2) unnamed_addr #12 {
bb.a:
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %1, %0 ; 2 uses
  %foldExtExtBinop24 = fsub reassoc nsz arcp contract afn <2 x float> %2, %0
  %i.a = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.b = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.c = fsub reassoc nsz arcp contract afn <2 x float> %i.a, %i.b ; 3 uses
  %i.d = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.c, <2 x i32> <i32 0, i32 3>
  %i.e = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.d) #31 ; 2 uses
  %foldExtExtBinop26 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop24, %foldExtExtBinop
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop28 = fmul reassoc nsz arcp contract afn <2 x float> %i.c, %shift
  %foldExtExtBinop30 = fadd reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop26, %foldExtExtBinop28
  %i.f = extractelement <2 x float> %foldExtExtBinop30, i64 0
  %i.g = fmul reassoc nsz arcp contract afn float %i.e, %i.e
  %i.h = fdiv reassoc nsz arcp contract afn float %i.f, %i.g
  ret float %i.h
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @cabsf(<2 x float> noundef) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define internal fastcc float @find_nearest_on_curve_t(<2 x float> noundef %0, <2 x float> noundef %1, <2 x float> noundef %2, <2 x float> noundef %3, <2 x float> noundef %4) unnamed_addr #14 {
bb.a:
  %i.a = fsub reassoc nsz arcp contract afn <2 x float> %4, %0
  %i.b = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.a) #31
  %5 = fneg reassoc nsz arcp contract afn <2 x float> %3
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret float %spec.select

bb.c:                                             ; preds = %bb.a, %bb.c
  %.073 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.c ]   ; 2 uses
  %.03972 = phi float [ %i.b, %bb.a ], [ %spec.select44, %bb.c ] ; 2 uses
  %.04071 = phi float [ 0.000000e+00, %bb.a ], [ %spec.select, %bb.c ]
  %i.c = uitofp nsz nneg i32 %.073 to double
  %i.d = fmul reassoc nnan nsz arcp contract afn double %i.c, 1.000000e-02
  %i.e = fptrunc reassoc nsz arcp contract afn double %i.d to float ; 6 uses
  %i.f = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.e ; 5 uses
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, %i.f
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.f
  %i.i = fmul reassoc nnan nsz arcp contract afn float %i.f, 3.000000e+00 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.f, %i.e
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = fmul reassoc nsz arcp contract afn float %i.e, %i.e ; 2 uses
  %.neg.reass = fmul reassoc nsz arcp contract afn float %i.i, %i.l
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.e
  %6 = insertelement <2 x float> poison, float %i.m, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %7, %5
  %9 = insertelement <2 x float> poison, float %.neg.reass, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul reassoc nsz arcp contract afn <2 x float> %2, %10
  %12 = insertelement <2 x float> poison, float %i.h, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul reassoc nsz arcp contract afn <2 x float> %0, %13
  %15 = fadd reassoc nsz arcp contract afn <2 x float> %11, %14
  %16 = insertelement <2 x float> poison, float %i.k, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul reassoc nsz arcp contract afn <2 x float> %1, %17
  %19 = fadd reassoc nsz arcp contract afn <2 x float> %15, %18
  %20 = fsub reassoc nsz arcp contract afn <2 x float> %8, %19
  %21 = fadd reassoc nsz arcp contract afn <2 x float> %20, %4
  %i.n = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %21) #31 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, %.03972 ; 2 uses
  %spec.select = select nsz i1 %i.o, float %i.e, float %.04071 ; 2 uses
  %spec.select44 = select nsz i1 %i.o, float %i.n, float %.03972
  %i.p = add nuw nsw i32 %.073, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, 100
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @casteljau(float %.0.val, float %.4.val, ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, float noundef %3) unnamed_addr #15 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4            ; 3 uses
  %i.d = fsub reassoc nsz arcp contract afn float %i.a, %.0.val
  %i.e = fsub reassoc nsz arcp contract afn float %i.c, %.4.val
  %i.f = fmul reassoc nsz arcp contract afn float %i.d, %3
  %i.g = fmul reassoc nsz arcp contract afn float %i.e, %3
  %i.h = fadd reassoc nsz arcp contract afn float %i.f, %.0.val ; 3 uses
  %i.i = fadd reassoc nsz arcp contract afn float %i.g, %.4.val ; 3 uses
  %i.j = load float, ptr %1, align 4              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4            ; 3 uses
  %i.m = fsub reassoc nsz arcp contract afn float %i.j, %i.a
  %i.n = fsub reassoc nsz arcp contract afn float %i.l, %i.c
  %i.o = fmul reassoc nsz arcp contract afn float %i.m, %3
  %i.p = fmul reassoc nsz arcp contract afn float %i.n, %3
  %i.q = fadd reassoc nsz arcp contract afn float %i.o, %i.a ; 3 uses
  %i.r = fadd reassoc nsz arcp contract afn float %i.p, %i.c ; 3 uses
  %i.s = load float, ptr %2, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load float, ptr %i.t, align 4
  %i.v = fsub reassoc nsz arcp contract afn float %i.s, %i.j
  %i.w = fsub reassoc nsz arcp contract afn float %i.u, %i.l
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %3
  %i.y = fmul reassoc nsz arcp contract afn float %i.w, %3
  %i.z = fadd reassoc nsz arcp contract afn float %i.j, %i.x
  %i.aa = fadd reassoc nsz arcp contract afn float %i.l, %i.y
  %i.ab = fsub reassoc nsz arcp contract afn float %i.q, %i.h
  %i.ac = fsub reassoc nsz arcp contract afn float %i.r, %i.i
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ab, %3
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ac, %3
  %i.af = fadd reassoc nsz arcp contract afn float %i.ad, %i.h ; 3 uses
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, %i.i ; 3 uses
  %i.ah = fsub reassoc nsz arcp contract afn float %i.z, %i.q
  %i.ai = fsub reassoc nsz arcp contract afn float %i.aa, %i.r
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ah, %3
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ai, %3
  %i.al = fadd reassoc nsz arcp contract afn float %i.q, %i.aj
  %i.am = fadd reassoc nsz arcp contract afn float %i.r, %i.ak
  %i.an = fsub reassoc nsz arcp contract afn float %i.al, %i.af
  %i.ao = fsub reassoc nsz arcp contract afn float %i.am, %i.ag
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %3
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ao, %3
  %i.ar = fadd reassoc nsz arcp contract afn float %i.ap, %i.af
  %i.as = fadd reassoc nsz arcp contract afn float %i.aq, %i.ag
  store float %i.h, ptr %0, align 4
  store float %i.i, ptr %i.b, align 4
  store float %i.af, ptr %1, align 4
  store float %i.ag, ptr %i.k, align 4
  store float %i.ar, ptr %2, align 4
  store float %i.as, ptr %i.t, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_hit_test_paths(ptr nofree readnone captures(none) %0, ptr noundef %1, <2 x float> noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca { float, float }, align 8         ; 2 uses
  store <2 x float> %2, ptr %i.a, align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 40), align 8, !tbaa !135
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @g_list_prepend(ptr noundef null, ptr noundef null) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 96), align 16, !tbaa !135
  %i.f = and i32 %i.e, 1
  %.not.1 = icmp eq i32 %i.f, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @g_list_prepend(ptr noundef %.1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi ptr [ %i.g, %bb.d ], [ %.1, %bb.c ] ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 152), align 8, !tbaa !135
  %i.i = and i32 %i.h, 1
  %.not.2 = icmp eq i32 %i.i, 0
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @g_list_prepend(ptr noundef %.1.1, ptr noundef nonnull inttoptr (i64 2 to ptr)) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi ptr [ %i.j, %bb.f ], [ %.1.1, %bb.e ] ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 208), align 16, !tbaa !135
  %i.l = and i32 %i.k, 1
  %.not.3 = icmp eq i32 %i.l, 0
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @g_list_prepend(ptr noundef %.1.2, ptr noundef nonnull inttoptr (i64 3 to ptr)) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi ptr [ %i.m, %bb.h ], [ %.1.2, %bb.g ] ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 264), align 8, !tbaa !135
  %i.o = and i32 %i.n, 1
  %.not.4 = icmp eq i32 %i.o, 0
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @g_list_prepend(ptr noundef %.1.3, ptr noundef nonnull inttoptr (i64 4 to ptr)) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4 = phi ptr [ %i.p, %bb.j ], [ %.1.3, %bb.i ] ; 2 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 320), align 16, !tbaa !135
  %i.r = and i32 %i.q, 1
  %.not.5 = icmp eq i32 %i.r, 0
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @g_list_prepend(ptr noundef %.1.4, ptr noundef nonnull inttoptr (i64 5 to ptr)) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.5 = phi ptr [ %i.s, %bb.l ], [ %.1.4, %bb.k ] ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 376), align 8, !tbaa !135
  %i.u = and i32 %i.t, 1
  %.not.6 = icmp eq i32 %i.u, 0
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = tail call ptr @g_list_prepend(ptr noundef %.1.5, ptr noundef nonnull inttoptr (i64 6 to ptr)) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.6 = phi ptr [ %i.v, %bb.n ], [ %.1.5, %bb.m ] ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 432), align 16, !tbaa !135
  %i.x = and i32 %i.w, 1
  %.not.7 = icmp eq i32 %i.x, 0
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = tail call ptr @g_list_prepend(ptr noundef %.1.6, ptr noundef nonnull inttoptr (i64 7 to ptr)) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.7 = phi ptr [ %i.y, %bb.p ], [ %.1.6, %bb.o ] ; 2 uses
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 488), align 8, !tbaa !135
  %i.aa = and i32 %i.z, 1
  %.not.8 = icmp eq i32 %i.aa, 0
  br i1 %.not.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call ptr @g_list_prepend(ptr noundef %.1.7, ptr noundef nonnull inttoptr (i64 8 to ptr)) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.8 = phi ptr [ %i.ab, %bb.r ], [ %.1.7, %bb.q ] ; 2 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 544), align 16, !tbaa !135
  %i.ad = and i32 %i.ac, 1
  %.not.9 = icmp eq i32 %i.ad, 0
  br i1 %.not.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = tail call ptr @g_list_prepend(ptr noundef %.1.8, ptr noundef nonnull inttoptr (i64 9 to ptr)) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.9 = phi ptr [ %i.ae, %bb.t ], [ %.1.8, %bb.s ] ; 2 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 600), align 8, !tbaa !135
  %i.ag = and i32 %i.af, 1
  %.not.10 = icmp eq i32 %i.ag, 0
  br i1 %.not.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = tail call ptr @g_list_prepend(ptr noundef %.1.9, ptr noundef nonnull inttoptr (i64 10 to ptr)) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.10 = phi ptr [ %i.ah, %bb.v ], [ %.1.9, %bb.u ] ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 656), align 16, !tbaa !135
  %i.aj = and i32 %i.ai, 1
  %.not.11 = icmp eq i32 %i.aj, 0
  br i1 %.not.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = tail call ptr @g_list_prepend(ptr noundef %.1.10, ptr noundef nonnull inttoptr (i64 11 to ptr)) #30
  br label %bb.y

end_hunk_0
