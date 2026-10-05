Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@process:bb.a
  %.pre = load i32, ptr %i.bq, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph151.split
  %i.dg = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cw, %.lr.ph151.split ] ; 2 uses
  %i.dh = phi i32 [ %i.gd, %._crit_edge.loopexit ], [ %i.cx, %.lr.ph151.split ]
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.di = sext i32 %i.dg to i64
  %i.dj = icmp slt i64 %indvars.iv.next156, %i.di
  br i1 %i.dj, label %.lr.ph151.split, label %._crit_edge152, !llvm.loop !296

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.dk = load float, ptr %i.bu, align 4, !tbaa !85 ; 4 uses
  %i.dl = load float, ptr %i.bv, align 4, !tbaa !73
  %i.dm = load float, ptr %i.bw, align 4, !tbaa !72
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = uitofp nsz nneg i32 %i.dn to float
  %i.dp = load <2 x i32>, ptr %5, align 4, !tbaa !14
  %i.dq = sitofp <2 x i32> %i.dp to <2 x float>   ; 2 uses
  %i.dr = load float, ptr %i.bx, align 4, !tbaa !75
  %i.ds = load float, ptr %i.by, align 4, !tbaa !74
  %i.dt = load i32, ptr %i.bz, align 4, !tbaa !71
  %.not113 = icmp eq i32 %i.dt, 0                 ; 2 uses
  %. = select i1 %.not113, ptr %i.cb, ptr %i.ca
  %.134 = select i1 %.not113, ptr %i.ca, ptr %i.cb
  %.pn133 = load float, ptr %.134, align 4, !tbaa !13
  %reass.add140 = fadd reassoc nsz arcp contract afn float %.pn133, %i.dl
  %reass.add136 = fsub reassoc nsz arcp contract afn float %i.dm, %reass.add140
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add136, %i.dk
  %i.du = fadd reassoc nsz arcp contract afn float %i.do, 5.000000e-01
  %i.dv = extractelement <2 x float> %i.dq, i64 0
  %i.dw = fadd reassoc nsz arcp contract afn float %i.du, %i.dv
  %.sroa.0122.0 = fadd reassoc nsz arcp contract afn float %i.dw, %reass.mul
  %.pn131 = load float, ptr %., align 4, !tbaa !13
  %reass.add142 = fadd reassoc nsz arcp contract afn float %.pn131, %i.dr
  %reass.add138 = fsub reassoc nsz arcp contract afn float %i.ds, %reass.add142
  %reass.mul139 = fmul reassoc nsz arcp contract afn float %reass.add138, %i.dk
  %i.dx = extractelement <2 x float> %i.dq, i64 1
  %i.dy = fadd reassoc nsz arcp contract afn float %i.df, %i.dx
  %.sroa.12127.0 = fadd reassoc nsz arcp contract afn float %i.dy, %reass.mul139
  %i.dz = fdiv reassoc nsz arcp contract afn float %.sroa.0122.0, %i.dk ; 2 uses
  %i.ea = load float, ptr %i.cd, align 4, !tbaa !69
  %i.eb = load float, ptr %i.ce, align 4, !tbaa !70
  %i.ec = fmul reassoc nsz arcp contract afn float %i.dz, %i.ea
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, 1.000000e+00
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dk
  %i.ef = load float, ptr %i.aj, align 4, !tbaa !85
  %i.eg = fdiv reassoc nsz arcp contract afn float %.sroa.12127.0, %i.ee ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.eb
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, 1.000000e+00
  %i.ej = fdiv reassoc nsz arcp contract afn float %i.dz, %i.ei
  %i.ek = load <4 x float>, ptr %i.cc, align 4, !tbaa !13 ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.eo = fmul reassoc nsz arcp contract afn <2 x float> %i.em, %i.en
  %i.ep = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.es = fmul reassoc nsz arcp contract afn <2 x float> %i.eq, %i.er
  %i.et = load <2 x float>, ptr %i.ca, align 4, !tbaa !13
  %i.eu = fadd reassoc nsz arcp contract afn <2 x float> %i.et, %i.es
  %i.ev = fadd reassoc nsz arcp contract afn <2 x float> %i.eu, %i.eo
  %i.ew = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.bd, align 4, !tbaa !66
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fb = fsub reassoc nsz arcp contract afn <2 x float> %i.ey, %i.cr ; 2 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, %i.fc ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.fe ; 2 uses
  %i.fg = fsub reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fd ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 1
  %i.fi = fmul reassoc nsz arcp contract afn float %i.ck, %i.fh
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fd, %i.ff
  %i.fj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.cj
  %i.fl = fadd reassoc nsz arcp contract afn float %i.cn, %i.fk
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.fi
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fdiv reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fo ; 2 uses
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.fp
  %i.fr = fsub reassoc nsz arcp contract afn <2 x float> %i.ba, %i.fp
  %i.fs = shufflevector <2 x float> %i.fq, <2 x float> %i.fr, <2 x i32> <i32 0, i32 3>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ft = phi <2 x float> [ %i.fs, %bb.l ], [ %i.ey, %bb.k ]
  %i.fu = fadd reassoc nsz arcp contract afn <2 x float> %i.ft, splat (float -5.000000e-01)
  %i.fv = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fw = sitofp <2 x i32> %i.fv to <2 x float>
  %i.fx = fsub reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fw ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx
  %i.fz = load i32, ptr %i.m, align 4, !tbaa !78
  %i.ga = load i32, ptr %i.co, align 4, !tbaa !79
  %i.gb = extractelement <2 x float> %i.fx, i64 0
  %i.gc = extractelement <2 x float> %i.fx, i64 1
  tail call void @dt_interpolation_compute_pixel4c(ptr noundef %i.ah, ptr noundef %2, ptr noundef %i.fy, float noundef %i.gb, float noundef %i.gc, i32 noundef %i.fz, i32 noundef %i.ga, i32 noundef %i.o) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = load i32, ptr %i.bt, align 4, !tbaa !78 ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next, %i.ge
  br i1 %i.gf, label %bb.k, label %._crit_edge.loopexit

bb.n:                                             ; preds = %bb.g, %._crit_edge152, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
  store <4 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.b) #25
  store ptr null, ptr %i.a, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 33 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <2 x float> zeroinitializer, ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 132 ; 2 uses
  store <4 x float> <float 6.000000e-01, float 6.000000e-01, float 0.000000e+00, float 6.000000e-01>, ptr %i.m, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store <8 x float> <float 2.000000e-01, float 2.000000e-01, float 6.000000e-01, float 6.000000e-01, float 0.000000e+00, float 0.000000e+00, float 6.000000e-01, float 0.000000e+00>, ptr %i.o, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store <2 x float> zeroinitializer, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.u, align 4, !tbaa !71
  %i.v = load float, ptr %1, align 4, !tbaa !139
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, f0x3C8EFA36
  store float %i.w, ptr %i.b, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load float, ptr %i.x, align 4, !tbaa !140
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.y, 0.000000e+00
  %i.aa = select i1 %i.z, i32 2, i32 0
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !141
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 0.000000e+00
  %i.ae = zext i1 %i.ad to i32
  %i.af = or disjoint i32 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !298
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !142 ; 3 uses
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !143 ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ap) ; 2 uses
  %i.ar = fpext reassoc nsz arcp contract afn float %i.aq to double
  %i.as = fcmp reassoc nsz arcp contract afn ult double %i.ar, 1.000000e-04
  %spec.store.select = zext i1 %i.as to i32
  store i32 %spec.store.select, ptr %i.an, align 4, !tbaa !84
  %or.cond = fcmp reassoc nsz arcp contract afn ugt float %i.aq, 1.000000e+00
  %storemerge = select i1 %or.cond, float 0.000000e+00, float %i.ap
  store float %storemerge, ptr %i.e, align 4, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load float, ptr %i.at, align 4, !tbaa !144 ; 2 uses
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.au) ; 2 uses
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double
  %i.ax = fcmp reassoc nsz arcp contract afn ult double %i.aw, 1.000000e-04
  br i1 %i.ax, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.an, align 4, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %or.cond261 = fcmp reassoc nsz arcp contract afn ugt float %i.av, 1.000000e+00
  br i1 %or.cond261, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float %i.au, ptr %i.d, align 4, !tbaa !90
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !90
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.ay = icmp sgt i32 %i.al, -1
  br i1 %i.ay, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !145
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !146 ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !147 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !148 ; 9 uses
  %i.bj = load <2 x float>, ptr %i.bc, align 4, !tbaa !13 ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 1 ; 10 uses
  %i.bl = extractelement <2 x float> %i.bj, i64 0 ; 10 uses
  store <2 x float> %i.bj, ptr %i.j, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !149 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !150 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !151 ; 9 uses
  switch i32 %i.al, label %bb.v [
    i32 1, label %bb.j
    i32 2, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  %i.bs = fsub reassoc nsz arcp contract afn float %i.bi, %i.bl
  %i.bt = fsub reassoc nsz arcp contract afn float %i.br, %i.bk
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.bs, %i.bt ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bk
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bl, %i.bv ; 2 uses
  %i.bx = fsub reassoc nsz arcp contract afn float %i.bg, %i.be
  %i.by = fsub reassoc nsz arcp contract afn float %i.bp, %i.bn
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bx, %i.by ; 3 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bn
  %i.cb = fsub reassoc nsz arcp contract afn float %i.be, %i.ca ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.bk, %i.bn
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.bn, ptr %i.h, align 4, !tbaa !81
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bu, %i.bn
  %i.ce = fadd reassoc nsz arcp contract afn float %i.bw, %i.cd ; 2 uses
  store float %i.ce, ptr %i.j, align 4, !tbaa !80
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store float %i.bk, ptr %i.g, align 4, !tbaa !299
  %i.cf = fmul reassoc nsz arcp contract afn float %i.bz, %i.bk
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cb, %i.cf ; 2 uses
  store float %i.cg, ptr %i.n, align 4, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ch = phi float [ %i.cg, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %i.ci = phi float [ %i.bk, %bb.l ], [ %i.bn, %bb.k ] ; 4 uses
  %i.cj = phi float [ %i.bl, %bb.l ], [ %i.ce, %bb.k ] ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt float %i.bp, %i.br
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = fmul reassoc nsz arcp contract afn float %i.bu, %i.bp
  %i.cm = fadd reassoc nsz arcp contract afn float %i.bw, %i.cl
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.cn = fmul reassoc nsz arcp contract afn float %i.bz, %i.br
  %i.co = fadd reassoc nsz arcp contract afn float %i.cb, %i.cn
  br label %bb.v

bb.p:                                             ; preds = %bb.i
  %i.cp = fsub reassoc nsz arcp contract afn float %i.bn, %i.bk
  %i.cq = fsub reassoc nsz arcp contract afn float %i.be, %i.bl
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cp, %i.cq ; 3 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.bl
  %i.ct = fsub reassoc nsz arcp contract afn float %i.bk, %i.cs ; 2 uses
  %i.cu = fsub reassoc nsz arcp contract afn float %i.bp, %i.br
  %i.cv = fsub reassoc nsz arcp contract afn float %i.bg, %i.bi
  %i.cw = fdiv reassoc nsz arcp contract afn float %i.cu, %i.cv ; 3 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.bi
  %i.cy = fsub reassoc nsz arcp contract afn float %i.br, %i.cx ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt float %i.bl, %i.bi
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.bi, ptr %i.j, align 4, !tbaa !80
  %i.da = fmul reassoc nsz arcp contract afn float %i.cr, %i.bi
  %i.db = fadd reassoc nsz arcp contract afn float %i.ct, %i.da ; 2 uses
  store float %i.db, ptr %i.h, align 4, !tbaa !81
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store float %i.bl, ptr %i.i, align 4, !tbaa !300
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cw, %i.bl
  %i.dd = fadd reassoc nsz arcp contract afn float %i.cy, %i.dc ; 2 uses
  store float %i.dd, ptr %i.k, align 4, !tbaa !301
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.de = phi float [ %i.dd, %bb.r ], [ %i.br, %bb.q ] ; 2 uses
  %i.df = phi float [ %i.bk, %bb.r ], [ %i.db, %bb.q ] ; 2 uses
  %i.dg = phi float [ %i.bl, %bb.r ], [ %i.bi, %bb.q ] ; 4 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ogt float %i.bg, %i.be
  br i1 %i.dh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.di = fmul reassoc nsz arcp contract afn float %i.cr, %i.bg
  %i.dj = fadd reassoc nsz arcp contract afn float %i.ct, %i.di
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = fmul reassoc nsz arcp contract afn float %i.cw, %i.be
  %i.dl = fadd reassoc nsz arcp contract afn float %i.cy, %i.dk
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.i, %bb.n, %bb.o
  %i.dm = phi float [ %i.de, %bb.t ], [ %i.de, %bb.u ], [ %i.br, %bb.i ], [ %i.bp, %bb.n ], [ %i.br, %bb.o ] ; 2 uses
  %i.dn = phi float [ %i.bp, %bb.t ], [ %i.dl, %bb.u ], [ %i.bp, %bb.i ], [ %i.bp, %bb.n ], [ %i.br, %bb.o ] ; 2 uses
  %i.do = phi float [ %i.bg, %bb.t ], [ %i.be, %bb.u ], [ %i.bg, %bb.i ], [ %i.bg, %bb.n ], [ %i.co, %bb.o ] ; 2 uses
  %i.dp = phi float [ %i.bg, %bb.t ], [ %i.be, %bb.u ], [ %i.be, %bb.i ], [ %i.ch, %bb.n ], [ %i.ch, %bb.o ] ; 2 uses
  %i.dq = phi float [ %i.dj, %bb.t ], [ %i.bn, %bb.u ], [ %i.bn, %bb.i ], [ %i.ci, %bb.n ], [ %i.ci, %bb.o ] ; 2 uses
  %i.dr = phi float [ %i.df, %bb.t ], [ %i.df, %bb.u ], [ %i.bk, %bb.i ], [ %i.ci, %bb.n ], [ %i.ci, %bb.o ] ; 4 uses
  %i.ds = phi float [ %i.dg, %bb.t ], [ %i.dg, %bb.u ], [ %i.bi, %bb.i ], [ %i.cm, %bb.n ], [ %i.bi, %bb.o ] ; 2 uses
  %i.dt = phi float [ %i.dg, %bb.t ], [ %i.dg, %bb.u ], [ %i.bl, %bb.i ], [ %i.cj, %bb.n ], [ %i.cj, %bb.o ] ; 4 uses
  %i.du = fadd reassoc nsz arcp contract afn float %i.ds, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 5.000000e-01
  %i.dw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv) ; 2 uses
  store float %i.dw, ptr %i.o, align 4, !tbaa !13
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dq, %i.dr
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, 5.000000e-01
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dy) ; 2 uses
  store float %i.dz, ptr %i.p, align 4, !tbaa !13
  %i.ea = fadd reassoc nsz arcp contract afn float %i.do, %i.dp
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, 5.000000e-01
  %i.ec = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eb)
  %i.ed = fsub reassoc nsz arcp contract afn float %i.ec, %i.dw
  store float %i.ed, ptr %i.r, align 4, !tbaa !13
  %i.ee = fadd reassoc nsz arcp contract afn float %i.dm, %i.dn
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 5.000000e-01
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ef)
  %i.eh = fsub reassoc nsz arcp contract afn float %i.eg, %i.dz
  store float %i.eh, ptr %i.q, align 4, !tbaa !13
  %i.ei = fsub reassoc nsz arcp contract afn float %i.dp, %i.dt ; 2 uses
  store float %i.ei, ptr %i.n, align 4, !tbaa !64
  %i.ej = fsub reassoc nsz arcp contract afn float %i.do, %i.dt ; 2 uses
  store float %i.ej, ptr %i.m, align 4, !tbaa !65
  %i.ek = fsub reassoc nsz arcp contract afn float %i.ds, %i.dt ; 2 uses
  store float %i.ek, ptr %i.i, align 4, !tbaa !300
  %i.el = fsub reassoc nsz arcp contract afn float %i.dq, %i.dr ; 2 uses
  store float %i.el, ptr %i.g, align 4, !tbaa !299
  %i.em = fsub reassoc nsz arcp contract afn float %i.dn, %i.dr ; 2 uses
  store float %i.em, ptr %i.l, align 4, !tbaa !302
  %i.en = fsub reassoc nsz arcp contract afn float %i.dm, %i.dr ; 2 uses
  store float %i.en, ptr %i.k, align 4, !tbaa !301
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.o, float noundef %i.ei, float noundef %i.ej, float noundef %i.ek, float noundef %i.el, float noundef %i.em, float noundef %i.en, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es, ptr noundef nonnull %i.et)
  store i32 1, ptr %i.s, align 4, !tbaa !66
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.eu, align 4, !tbaa !84
  store i32 0, ptr %i.aj, align 4, !tbaa !88
  br label %bb.x

end_hunk_0
