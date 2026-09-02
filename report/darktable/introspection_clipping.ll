Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@distort_transform:bb.a
  %broadcast.splat141 = shufflevector <8 x float> %broadcast.splatinsert140, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat143 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <8 x float> poison, float %i.be, i64 0
  %broadcast.splat145 = shufflevector <8 x float> %broadcast.splatinsert144, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x float> poison, float %i.bf, i64 0
  %broadcast.splat147 = shufflevector <8 x float> %broadcast.splatinsert146, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat149 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert150 = insertelement <8 x float> poison, float %i.bk, i64 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert152 = insertelement <8 x float> poison, float %i.bn, i64 0
  %broadcast.splat153 = shufflevector <8 x float> %broadcast.splatinsert152, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert154 = insertelement <8 x float> poison, float %i.bt, i64 0
  %broadcast.splat155 = shufflevector <8 x float> %broadcast.splatinsert154, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat157 = shufflevector <8 x float> %broadcast.splatinsert156, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <8 x float> poison, float %i.bx, i64 0
  %broadcast.splat159 = shufflevector <8 x float> %broadcast.splatinsert158, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert160 = insertelement <8 x float> poison, float %i.bz, i64 0
  %broadcast.splat161 = shufflevector <8 x float> %broadcast.splatinsert160, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert162 = insertelement <8 x float> poison, float %i.bq, i64 0
  %broadcast.splat163 = shufflevector <8 x float> %broadcast.splatinsert162, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <8 x float> poison, float %i.bs, i64 0
  %broadcast.splat165 = shufflevector <8 x float> %broadcast.splatinsert164, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert166 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splatinsert168 = insertelement <8 x float> poison, float %invariant.op101, i64 0
  %i.dj = shufflevector <8 x float> %broadcast.splatinsert166, <8 x float> %broadcast.splatinsert168, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph128
  %index171 = phi i64 [ 0, %vector.ph128 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %.idx180 = shl nuw i64 %index171, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx180 ; 2 uses
  %wide.vec172 = load <16 x float>, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %strided.vec173 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec174 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec173, %broadcast.splat131 ; 3 uses
  %i.dm = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec174, %broadcast.splat133 ; 3 uses
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat135, %i.dl
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat137, %i.dm
  %i.dp = fadd reassoc nsz arcp contract afn <8 x float> %i.dn, splat (float 1.000000e+00)
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.dp, %i.do ; 2 uses
  %i.dr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat139, %i.dl
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat141, %i.dm
  %i.dt = fadd reassoc nsz arcp contract afn <8 x float> %i.ds, %i.dr
  %i.du = fdiv reassoc nsz arcp contract afn <8 x float> %i.dt, %i.dq
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %i.du, %broadcast.splat143
  %i.dw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat145, %i.dl
  %i.dx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat147, %i.dm
  %i.dy = fadd reassoc nsz arcp contract afn <8 x float> %i.dx, %i.dw
  %i.dz = fdiv reassoc nsz arcp contract afn <8 x float> %i.dy, %i.dq
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, %broadcast.splat149
  %i.eb = fsub reassoc nsz arcp contract afn <8 x float> %i.dv, %broadcast.splat151 ; 2 uses
  %i.ec = fsub reassoc nsz arcp contract afn <8 x float> %i.ea, %broadcast.splat153 ; 2 uses
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat155, %i.eb
  %i.ee = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat157, %i.ec
  %i.ef = fadd reassoc nsz arcp contract afn <8 x float> %i.ee, %i.ed ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat159, %i.eb
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat161, %i.ec
  %i.ei = fadd reassoc nsz arcp contract afn <8 x float> %i.eh, %i.eg
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %broadcast.splat163
  %i.ek = fadd reassoc nsz arcp contract afn <8 x float> %i.ej, splat (float 1.000000e+00)
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, %i.ek ; 2 uses
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %i.el, %broadcast.splat165
  %i.en = fadd reassoc nsz arcp contract afn <8 x float> %i.em, splat (float 1.000000e+00)
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.en, %i.ef
  %i.ep = shufflevector <8 x float> %i.eo, <8 x float> %i.el, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec175 = fadd reassoc nsz arcp contract afn <16 x float> %i.ep, %i.dj
  store <16 x float> %interleaved.vec175, ptr %i.dk, align 4, !tbaa !13
  %index.next176 = add nuw i64 %index171, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next176, %n.vec129
  br i1 %i.eq, label %middle.block177, label %vector.body170, !llvm.loop !277

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.co, %n.vec129
  br i1 %cmp.n178, label %._crit_edge, label %.lr.ph.split.us.preheader181

.lr.ph.split.us.preheader181:                     ; preds = %.lr.ph.split.us.preheader, %middle.block177
  %.0100.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.di, %middle.block177 ]
  %i.er = extractelement <4 x float> %i.ad, i64 0
  %i.es = insertelement <2 x float> poison, float %i.be, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.bd, i64 1
  %i.eu = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.bf, i64 1
  %i.ew = extractelement <4 x float> %i.ad, i64 1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader181, %.lr.ph.split.us
  %.0100.us = phi i64 [ %i.gg, %.lr.ph.split.us ], [ %.0100.us.ph, %.lr.ph.split.us.preheader181 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0100.us ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load <2 x float>, ptr %i.ex, align 4, !tbaa !13
  %i.fa = fsub reassoc nsz arcp contract afn <2 x float> %i.ez, %i.al ; 4 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  %i.fc = fmul reassoc nsz arcp contract afn float %i.bg, %i.fb
  %i.fd = extractelement <2 x float> %i.fa, i64 1
  %i.fe = fmul reassoc nsz arcp contract afn float %i.bh, %i.fd
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fc, 1.000000e+00
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.fe
  %i.fh = fmul reassoc nsz arcp contract afn <2 x float> %i.et, %i.fa
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.fa
  %i.fk = fadd reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fi
  %i.fl = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fdiv reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fm ; 2 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.er
  %i.fq = extractelement <2 x float> %i.fn, i64 1
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %i.ew
  %i.fs = fsub reassoc nsz arcp contract afn float %i.fp, %i.bk ; 2 uses
  %i.ft = fsub reassoc nsz arcp contract afn float %i.fr, %i.bn ; 2 uses
  %i.fu = fmul reassoc nsz arcp contract afn float %i.bt, %i.fs
  %i.fv = fmul reassoc nsz arcp contract afn float %i.bv, %i.ft
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, %i.fu ; 2 uses
  %i.fx = fmul reassoc nsz arcp contract afn float %i.bx, %i.fs
  %i.fy = fmul reassoc nsz arcp contract afn float %i.bz, %i.ft
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.fx
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fw, %i.bq
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, 1.000000e+00
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fz, %i.gb ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, %i.bs
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, 1.000000e+00
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.fw
  %.reass.us = fadd reassoc nsz arcp contract afn float %i.gf, %invariant.op
  store float %.reass.us, ptr %i.ex, align 4, !tbaa !13
  %.reass102.us = fadd reassoc nsz arcp contract afn float %i.gc, %invariant.op101
  store float %.reass102.us, ptr %i.ey, align 4, !tbaa !13
  %i.gg = add nuw i64 %.0100.us, 2                ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.bb
  br i1 %i.gh, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !278

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block177, %bb.c
  %i.gi = fcmp reassoc nsz arcp contract afn une float %spec.select, 1.000000e+00
  br i1 %i.gi, label %bb.d, label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader182, %.lr.ph.split
  %.0100 = phi i64 [ %i.hb, %.lr.ph.split ], [ %.0100.ph, %.lr.ph.split.preheader182 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0100 ; 3 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !13
  %i.gn = fsub reassoc nsz arcp contract afn float %i.gk, %i.bk ; 2 uses
  %i.go = fsub reassoc nsz arcp contract afn float %i.gm, %i.bn ; 2 uses
  %i.gp = fmul reassoc nsz arcp contract afn float %i.bt, %i.gn
  %i.gq = fmul reassoc nsz arcp contract afn float %i.bv, %i.go
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.gp ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.bx, %i.gn
  %i.gt = fmul reassoc nsz arcp contract afn float %i.bz, %i.go
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, %i.gs
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gr, %i.bq
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gv, 1.000000e+00
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gu, %i.gw ; 2 uses
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.bs
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gy, 1.000000e+00
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gr
  %.reass = fadd reassoc nsz arcp contract afn float %i.ha, %invariant.op
  store float %.reass, ptr %i.gj, align 4, !tbaa !13
  %.reass102 = fadd reassoc nsz arcp contract afn float %i.gx, %invariant.op101
  store float %.reass102, ptr %i.gl, align 4, !tbaa !13
  %i.hb = add nuw i64 %.0100, 2                   ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.bb
  br i1 %i.hc, label %.lr.ph.split, label %._crit_edge, !llvm.loop !279

bb.d:                                             ; preds = %._crit_edge
  %i.hd = extractelement <2 x i32> %i.z, i64 0
  store i32 %i.hd, ptr %i.m, align 4, !tbaa !78
  %i.he = extractelement <2 x i32> %i.z, i64 1
  store i32 %i.he, ptr %i.n, align 4, !tbaa !79
  %i.hf = load ptr, ptr %i.u, align 16, !tbaa !61
  call void %i.hf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @keystone_get_matrix(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %11, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %12) unnamed_addr #7 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %6, %6 ; 3 uses
  %i.b = fmul reassoc nsz arcp contract afn float %6, %5 ; 5 uses
  %i.c = fsub reassoc nsz arcp contract afn float %i.a, %i.b ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %1
  %i.e = fmul reassoc nsz arcp contract afn float %6, %2 ; 4 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, %6 ; 3 uses
  %i.g = fsub reassoc nsz arcp contract afn float %i.d, %i.f
  %i.h = fmul reassoc nsz arcp contract afn float %6, %3 ; 2 uses
  %i.i = fsub reassoc nsz arcp contract afn float %i.e, %i.h
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, %4
  %i.k = fmul reassoc nsz arcp contract afn float %5, %3 ; 6 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %6 ; 2 uses
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.j
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !13
  %i.q = fneg reassoc nsz arcp contract afn float %i.n
  %i.r = fmul reassoc nsz arcp contract afn float %i.p, %i.q
  %i.s = fsub reassoc nsz arcp contract afn float %i.f, %i.l
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %1
  %i.u = fmul reassoc nsz arcp contract afn float %3, %3 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %5, %i.u ; 4 uses
  %i.w = fmul reassoc nsz arcp contract afn float %3, %2 ; 5 uses
  %i.x = fmul reassoc nsz arcp contract afn float %6, %i.w ; 2 uses
  %i.y = fsub reassoc nsz arcp contract afn float %i.v, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %4
  %i.aa = fadd reassoc nsz arcp contract afn float %i.t, %i.z ; 2 uses
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.r, %i.aa
  store float %i.ab, ptr %7, align 4, !tbaa !13
  %i.ac = fsub reassoc nsz arcp contract afn float %i.h, %i.k
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %1
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ad, %i.x
  %i.af = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %4
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.v
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ae
  %i.aj = load float, ptr %i.o, align 4, !tbaa !13
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ai
  %i.al = fdiv reassoc nsz arcp contract afn float %i.ak, %i.aa
  store float %i.al, ptr %8, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !13 ; 2 uses
  %i.ao = fsub reassoc nsz arcp contract afn float %6, %5 ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %1
  %reass.add = fadd reassoc nsz arcp contract afn float %i.ap, %i.k
  %i.aq = fsub reassoc nsz arcp contract afn float %reass.add, %i.e
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.an
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %4
  %i.at = fmul reassoc nsz arcp contract afn float %4, %4 ; 5 uses
  %i.au = fsub reassoc nsz arcp contract afn float %2, %3 ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.an
  %i.ax = fadd reassoc nsz arcp contract afn float %i.as, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %4, %1 ; 3 uses
  %i.az = fneg reassoc nsz arcp contract afn float %2
  %i.ba = fmul reassoc nsz arcp contract afn float %6, %i.az
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ba, %i.k
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.ay
  %i.bd = fmul reassoc nsz arcp contract afn float %1, %1 ; 5 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.b, %i.bd
  %i.bf = fmul reassoc nsz arcp contract afn float %i.at, %i.w
  %i.bg = fadd reassoc nsz arcp contract afn float %i.be, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.bc ; 2 uses
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.ax, %i.bh
  store float %i.bi, ptr %9, align 4, !tbaa !13
  %i.bj = load float, ptr %i.am, align 4, !tbaa !13
  %i.bk = fsub reassoc nsz arcp contract afn float %i.k, %i.e
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %1
  %i.bm = fmul reassoc nsz arcp contract afn float %i.ao, %i.bd
  %i.bn = fmul reassoc nsz arcp contract afn float %i.ay, %i.au
  %reass.add273 = fadd reassoc nsz arcp contract afn float %i.bn, %i.bl
  %reass.add274 = fadd reassoc nsz arcp contract afn float %reass.add273, %i.bm
  %reass.mul275 = fneg reassoc nsz arcp contract afn float %i.bj
  %i.bo = fmul reassoc nsz arcp contract afn float %reass.add274, %reass.mul275
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bo, %i.bh
  store float %i.bp, ptr %10, align 4, !tbaa !13
  %i.bq = fmul reassoc nsz arcp contract afn float %2, 2.000000e+00 ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.c, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %1
  %i.bt = fmul reassoc nsz arcp contract afn float %2, %2 ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %6, %i.bt ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %6 ; 2 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bq, %3 ; 2 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %i.b, %i.bw ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.v, %5 ; 3 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bx, %i.bs
  %13 = fadd reassoc nsz arcp contract afn float %i.by, %i.bv
  %14 = fsub reassoc nsz arcp contract afn float %i.bz, %13
  %i.ca = fmul reassoc nsz arcp contract afn float %14, %4
  %i.cb = fmul reassoc nsz arcp contract afn float %5, %5
  %i.cc = fsub reassoc nsz arcp contract afn float %i.cb, %i.b
  %i.cd = fmul reassoc nsz arcp contract afn float %6, %i.bd
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.cc
  %i.cf = fmul reassoc nsz arcp contract afn float %i.w, -2.000000e+00
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %6
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.bu
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %i.v
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, %i.at
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %i.ce
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.ca
  %i.cm = fneg reassoc nsz arcp contract afn float %i.cl
  %i.cn = fmul reassoc nsz arcp contract afn float %i.k, %5 ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %6
  %i.cp = fmul reassoc nsz arcp contract afn float %i.a, %2
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %5
  %i.cr = fsub reassoc nsz arcp contract afn float %i.co, %i.cq
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.bd
  %i.ct = fsub reassoc nsz arcp contract afn float %i.bv, %i.by
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.ay
  %i.cv = fmul reassoc nsz arcp contract afn float %i.w, %3 ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %5, %i.cv
  %i.cx = fmul reassoc nsz arcp contract afn float %i.bt, %3 ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %6, %i.cx
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cw, %i.cy
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.at
  %i.db = fadd reassoc nsz arcp contract afn float %i.cu, %i.da
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.cs ; 2 uses
  %i.dd = fdiv reassoc nsz arcp contract afn float %i.cm, %i.dc
  store float %i.dd, ptr %11, align 4, !tbaa !13
  %i.de = fmul reassoc nsz arcp contract afn float %i.bt, %i.a
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.by
  %i.dg = fsub reassoc nsz arcp contract afn float %i.bx, %i.df
  %i.dh = fmul reassoc nsz arcp contract afn float %3, 2.000000e+00 ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.b
  %i.dj = fsub reassoc nsz arcp contract afn float %i.cn, %i.di
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dj, %i.f
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.bd
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dh, %3
  %i.dn = fsub reassoc nsz arcp contract afn float %i.dm, %i.bw
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %4
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %5
  %i.dq = fsub reassoc nsz arcp contract afn float %i.cx, %i.cv
  %i.dr = fmul reassoc nsz arcp contract afn float %i.at, %i.dq
  %reass.add280 = fadd reassoc nsz arcp contract afn float %i.dg, %i.dp
  %reass.mul281 = fmul reassoc nsz arcp contract afn float %reass.add280, %1
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dl, %i.dr
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %reass.mul281
  %i.du = fdiv reassoc nsz arcp contract afn float %i.dt, %i.dc
  store float %i.du, ptr %12, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @distort_backtransform(ptr noundef %0, ptr noundef %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 4       ; 4 uses
  %5 = alloca %struct.dt_iop_roi_t, align 4       ; 6 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr i8, ptr %i.i, i64 644
  %.val = load i32, ptr %i.j, align 4, !tbaa !50
  %i.k = and i32 %.val, 4
  %.not = icmp eq i32 %i.k, 0
  %spec.select = select nsz i1 %.not, float 1.000000e+00, float 1.000000e+02 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.o = load <2 x i32>, ptr %i.l, align 8, !tbaa !14
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.r, %i.p
  %i.t = fptosi <2 x float> %i.s to <2 x i32>
  store <2 x i32> %i.t, ptr %i.m, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !61
  call void %i.v(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !62  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.z = load <2 x i32>, ptr %i.l, align 16, !tbaa !14 ; 3 uses
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = sitofp <4 x i32> %i.aa to <4 x float>   ; 4 uses
  %i.ac = load <4 x float>, ptr %i.y, align 4, !tbaa !13
  %i.ad = fmul reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ab ; 5 uses
  store <4 x float> %i.ad, ptr %i.a, align 16, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.af = load float, ptr %i.ae, align 4, !tbaa !80
  %i.ag = extractelement <4 x float> %i.ab, i64 0 ; 3 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 132
  %i.al = load float, ptr %i.ak, align 4, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.an = load float, ptr %i.am, align 4, !tbaa !81
  %i.ao = extractelement <4 x float> %i.ab, i64 1
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ar = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.aq, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 172
  %i.at = load i32, ptr %i.as, align 4, !tbaa !66
  %i.au = icmp eq i32 %i.at, 1                    ; 2 uses
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = shufflevector <5 x float> %i.ar, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.aw = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ax = fmul reassoc nsz arcp contract afn <4 x float> %i.av, %i.aw ; 4 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.al, %i.ag
  %i.az = fmul reassoc nsz arcp contract afn float %i.aj, %i.ag
  %i.ba = extractelement <4 x float> %i.ax, i64 0
  %i.bb = extractelement <4 x float> %i.ax, i64 1
  %i.bc = extractelement <4 x float> %i.ax, i64 2
  %i.bd = extractelement <4 x float> %i.ax, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.az, float noundef %i.ay, float noundef %i.bc, float noundef %i.ba, float noundef %i.bb, float noundef %i.bd, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.be = shl i64 %3, 1                           ; 4 uses
  %.not105 = icmp eq i64 %i.be, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 180
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !71
  %.not86 = icmp eq i32 %i.bi, 0                  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 3 uses
  %. = select i1 %.not86, ptr %i.bk, ptr %i.bj
  %.102 = select i1 %.not86, ptr %i.bj, ptr %i.bk
  %.pn101 = load float, ptr %.102, align 4, !tbaa !13
  %.pn99 = load float, ptr %., align 4, !tbaa !13
  %i.bl = load <2 x float>, ptr %i.bf, align 4, !tbaa !13
  %i.bm = load <2 x float>, ptr %i.bg, align 4, !tbaa !13
  %i.bn = insertelement <2 x float> poison, float %.pn101, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %.pn99, i64 1
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bo
  %i.bq = fsub reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bp ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %invariant.op = fdiv reassoc nsz arcp contract afn float %i.br, %spec.select ; 4 uses
  %i.bs = extractelement <2 x float> %i.bq, i64 1
  %invariant.op104 = fdiv reassoc nsz arcp contract afn float %i.bs, %spec.select ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !69 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !70 ; 4 uses
  %i.by = load float, ptr %i.bt, align 4, !tbaa !13 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !13 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !13 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !13 ; 4 uses
  %i.cf = load float, ptr %i.bj, align 4, !tbaa !67
  %i.cg = fdiv reassoc nsz arcp contract afn float %i.cf, %spec.select ; 4 uses
  %i.ch = load float, ptr %i.bk, align 4, !tbaa !68
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.ch, %spec.select ; 4 uses
  %i.cj = load float, ptr %i.b, align 4           ; 3 uses
  %i.ck = load float, ptr %i.c, align 4           ; 3 uses
  %i.cl = load float, ptr %i.d, align 4           ; 3 uses
  %i.cm = load float, ptr %i.e, align 4           ; 3 uses
  %i.cn = load float, ptr %i.f, align 4           ; 2 uses
  %i.co = load float, ptr %i.g, align 4           ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cm, %i.cj
  %i.cq = fmul reassoc nsz arcp contract afn float %i.ck, %i.cl
  %i.cr = fsub reassoc nsz arcp contract afn float %i.cp, %i.cq ; 2 uses
  %i.cs = add i64 %i.be, -2                       ; 2 uses
  %i.ct = lshr exact i64 %i.cs, 1
  %i.cu = add nuw i64 %i.ct, 1                    ; 4 uses
  %min.iters.check129 = icmp ult i64 %i.cs, 14    ; 2 uses
  br i1 %i.au, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check129, label %.lr.ph.split.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.cu, -8                      ; 3 uses
  %i.cv = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <8 x float> poison, float %invariant.op104, i64 0
  %broadcast.splat110 = shufflevector <8 x float> %broadcast.splatinsert109, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat112 = shufflevector <8 x float> %broadcast.splatinsert111, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <8 x float> poison, float %i.bx, i64 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.by, i64 0
end_hunk_0
