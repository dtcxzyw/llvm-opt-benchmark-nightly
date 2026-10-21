Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@distort_backtransform:bb.a
  %broadcast.splatinsert132 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat133 = shufflevector <8 x float> %broadcast.splatinsert132, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert134 = insertelement <8 x float> poison, float %invariant.op104, i64 0
  %broadcast.splat135 = shufflevector <8 x float> %broadcast.splatinsert134, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat137 = shufflevector <8 x float> %broadcast.splatinsert136, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert138 = insertelement <8 x float> poison, float %i.bx, i64 0
  %broadcast.splat139 = shufflevector <8 x float> %broadcast.splatinsert138, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <8 x float> poison, float %i.by, i64 0
  %broadcast.splat141 = shufflevector <8 x float> %broadcast.splatinsert140, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <8 x float> poison, float %i.ca, i64 0
  %broadcast.splat143 = shufflevector <8 x float> %broadcast.splatinsert142, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <8 x float> poison, float %i.cc, i64 0
  %broadcast.splat145 = shufflevector <8 x float> %broadcast.splatinsert144, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x float> poison, float %i.ce, i64 0
  %broadcast.splat147 = shufflevector <8 x float> %broadcast.splatinsert146, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert148 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat149 = shufflevector <8 x float> %broadcast.splatinsert148, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x float> poison, float %i.ci, i64 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat153 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat155 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert156 = insertelement <8 x float> poison, float %i.cl, i64 0
  %broadcast.splat157 = shufflevector <8 x float> %broadcast.splatinsert156, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <8 x float> poison, float %i.cj, i64 0
  %broadcast.splat159 = shufflevector <8 x float> %broadcast.splatinsert158, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert160 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat161 = shufflevector <8 x float> %broadcast.splatinsert160, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert162 = insertelement <8 x float> poison, float %i.ck, i64 0
  %broadcast.splat163 = shufflevector <8 x float> %broadcast.splatinsert162, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <8 x float> poison, float %i.cm, i64 0
  %broadcast.splat165 = shufflevector <8 x float> %broadcast.splatinsert164, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert166 = insertelement <8 x float> poison, float %i.cn, i64 0
  %broadcast.splat167 = shufflevector <8 x float> %broadcast.splatinsert166, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <8 x float> poison, float %i.cr, i64 0
  %broadcast.splat169 = shufflevector <8 x float> %broadcast.splatinsert168, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert170 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat171 = shufflevector <8 x float> %broadcast.splatinsert170, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> poison, float %i.ap, i64 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph130
  %index175 = phi i64 [ 0, %vector.ph130 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %.idx184 = shl nuw i64 %index175, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx184 ; 2 uses
  %wide.vec176 = load <16 x float>, ptr %i.dp, align 4, !tbaa !13 ; 2 uses
  %strided.vec177 = shufflevector <16 x float> %wide.vec176, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec178 = shufflevector <16 x float> %wide.vec176, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec177, %broadcast.splat133 ; 2 uses
  %i.dr = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec178, %broadcast.splat135
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %i.dq, %broadcast.splat137
  %i.dt = fadd reassoc nsz arcp contract afn <8 x float> %i.ds, splat (float 1.000000e+00)
  %i.du = fdiv reassoc nsz arcp contract afn <8 x float> %i.dr, %i.dt ; 3 uses
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %i.du, %broadcast.splat139
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %i.dv, splat (float 1.000000e+00)
  %i.dx = fdiv reassoc nsz arcp contract afn <8 x float> %i.dq, %i.dw ; 2 uses
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, %broadcast.splat141
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat143, %i.du
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dy, %i.dz
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, %broadcast.splat145
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat147, %i.du
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %i.eb, %i.ec
  %i.ee = fadd reassoc nsz arcp contract afn <8 x float> %i.ea, %broadcast.splat149
  %i.ef = fadd reassoc nsz arcp contract afn <8 x float> %i.ed, %broadcast.splat151
  %i.eg = fsub reassoc nsz arcp contract afn <8 x float> %i.ee, %broadcast.splat153 ; 2 uses
  %i.eh = fsub reassoc nsz arcp contract afn <8 x float> %i.ef, %broadcast.splat155 ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat157, %i.eg
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat159, %i.eh
  %i.ek = fsub reassoc nsz arcp contract afn <8 x float> %i.ei, %i.ej ; 2 uses
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat161, %i.ek
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat163, %i.eh ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat165, %i.eg ; 2 uses
  %i.eo = fsub reassoc nsz arcp contract afn <8 x float> %i.em, %i.en
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %i.eo, %broadcast.splat167
  %i.eq = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat169, %i.ep
  %i.er = fadd reassoc nsz arcp contract afn <8 x float> %i.eq, %i.el ; 2 uses
  %i.es = fsub reassoc nsz arcp contract afn <8 x float> %i.en, %i.em
  %i.et = fdiv reassoc nsz arcp contract afn <8 x float> %i.es, %i.er
  %i.eu = fadd reassoc nsz arcp contract afn <8 x float> %i.et, %broadcast.splat171
  %i.ev = fdiv reassoc nsz arcp contract afn <8 x float> %i.ek, %i.er
  %i.ew = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat173, %i.ev
  %interleaved.vec179 = shufflevector <8 x float> %i.eu, <8 x float> %i.ew, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec179, ptr %i.dp, align 4, !tbaa !13
  %index.next180 = add nuw i64 %index175, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next180, %n.vec131
  br i1 %i.ex, label %middle.block181, label %vector.body174, !llvm.loop !281

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.cu, %n.vec131
  br i1 %cmp.n182, label %._crit_edge, label %.lr.ph.split.us.preheader185

.lr.ph.split.us.preheader185:                     ; preds = %.lr.ph.split.us.preheader, %middle.block181
  %.0103.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.do, %middle.block181 ]
  %i.ey = extractelement <4 x float> %i.ad, i64 0
  %i.ez = extractelement <4 x float> %i.ad, i64 1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader185, %.lr.ph.split.us
  %.0103.us = phi i64 [ %i.gj, %.lr.ph.split.us ], [ %.0103.us.ph, %.lr.ph.split.us.preheader185 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0103.us ; 3 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !13
  %.sroa.093.0.reass.us = fadd reassoc nsz arcp contract afn float %i.fb, %invariant.op ; 2 uses
  %.sroa.10.0.reass.us = fadd reassoc nsz arcp contract afn float %i.fd, %invariant.op104
  %i.fe = fmul reassoc nsz arcp contract afn float %.sroa.093.0.reass.us, %i.bv
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, 1.000000e+00
  %i.fg = fdiv reassoc nsz arcp contract afn float %.sroa.10.0.reass.us, %i.ff ; 3 uses
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.bx
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, 1.000000e+00
  %i.fj = fdiv reassoc nsz arcp contract afn float %.sroa.093.0.reass.us, %i.fi ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.by
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ca, %i.fg
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fj, %i.cc
  %i.fo = fmul reassoc nsz arcp contract afn float %i.ce, %i.fg
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fm, %i.cg
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fp, %i.ci
  %i.fs = fsub reassoc nsz arcp contract afn float %i.fq, %i.ey ; 2 uses
  %i.ft = fsub reassoc nsz arcp contract afn float %i.fr, %i.ez ; 2 uses
  %i.fu = fmul reassoc nsz arcp contract afn float %i.cl, %i.fs
  %i.fv = fmul reassoc nsz arcp contract afn float %i.cj, %i.ft
  %i.fw = fsub reassoc nsz arcp contract afn float %i.fu, %i.fv ; 2 uses
  %i.fx = fmul reassoc nsz arcp contract afn float %i.co, %i.fw
  %i.fy = fmul reassoc nsz arcp contract afn float %i.ck, %i.ft ; 2 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %i.cm, %i.fs ; 2 uses
  %i.ga = fsub reassoc nsz arcp contract afn float %i.fy, %i.fz
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, %i.cn
  %i.gc = fadd reassoc nsz arcp contract afn float %i.cr, %i.gb
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.fx ; 2 uses
  %i.ge = fsub reassoc nsz arcp contract afn float %i.fz, %i.fy
  %i.gf = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gd
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, %i.ah
  %i.gh = fdiv reassoc nsz arcp contract afn float %i.fw, %i.gd
  %i.gi = fsub reassoc nsz arcp contract afn float %i.ap, %i.gh
  store float %i.gg, ptr %i.fa, align 4, !tbaa !13
  store float %i.gi, ptr %i.fc, align 4, !tbaa !13
  %i.gj = add nuw i64 %.0103.us, 2                ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.be
  br i1 %i.gk, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !282

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block181, %bb.c
  %i.gl = fcmp reassoc nsz arcp contract afn une float %spec.select, 1.000000e+00
  br i1 %i.gl, label %bb.d, label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader186, %.lr.ph.split
  %.0103 = phi i64 [ %i.he, %.lr.ph.split ], [ %.0103.ph, %.lr.ph.split.preheader186 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0103 ; 3 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !13
  %.sroa.093.0.reass = fadd reassoc nsz arcp contract afn float %i.gn, %invariant.op ; 2 uses
  %.sroa.10.0.reass = fadd reassoc nsz arcp contract afn float %i.gp, %invariant.op104
  %i.gq = fmul reassoc nsz arcp contract afn float %.sroa.093.0.reass, %i.bv
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, 1.000000e+00
  %i.gs = fdiv reassoc nsz arcp contract afn float %.sroa.10.0.reass, %i.gr ; 3 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, %i.bx
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, 1.000000e+00
  %i.gv = fdiv reassoc nsz arcp contract afn float %.sroa.093.0.reass, %i.gu ; 2 uses
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.by
  %i.gx = fmul reassoc nsz arcp contract afn float %i.ca, %i.gs
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gw, %i.gx
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gv, %i.cc
  %i.ha = fmul reassoc nsz arcp contract afn float %i.ce, %i.gs
  %i.hb = fadd reassoc nsz arcp contract afn float %i.gz, %i.ha
  %i.hc = fadd reassoc nsz arcp contract afn float %i.gy, %i.cg
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hb, %i.ci
  store float %i.hc, ptr %i.gm, align 4, !tbaa !13
  store float %i.hd, ptr %i.go, align 4, !tbaa !13
  %i.he = add nuw i64 %.0103, 2                   ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.be
  br i1 %i.hf, label %.lr.ph.split, label %._crit_edge, !llvm.loop !283

bb.d:                                             ; preds = %._crit_edge
  %i.hg = extractelement <2 x i32> %i.z, i64 0
  store i32 %i.hg, ptr %i.m, align 4, !tbaa !78
  %i.hh = extractelement <2 x i32> %i.z, i64 1
  store i32 %i.hh, ptr %i.n, align 4, !tbaa !79
  %i.hi = load ptr, ptr %i.u, align 16, !tbaa !61
  call void %i.hi(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
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

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !62  ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = load float, ptr %i.i, align 4, !tbaa !83
  %i.m = fcmp reassoc nsz arcp contract afn oeq float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.o = load i32, ptr %i.n, align 4, !tbaa !84
  %.not114 = icmp eq i32 %i.o, 0
  br i1 %.not114, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !78   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !79   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %i.q to i64
  %i.aa = sext i32 %i.v to i64
  %i.ab = mul nsw i64 %i.aa, %i.z
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ab) #25
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ac = tail call ptr @dt_interpolation_new(i32 noundef 3) #25 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 100
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 124
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 132
  %i.am = load float, ptr %i.al, align 4, !tbaa !65
  %i.an = load <2 x i32>, ptr %i.ad, align 16, !tbaa !14
  %i.ao = sitofp <2 x i32> %i.an to <2 x float>
  %i.ap = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ao ; 5 uses
  %i.as = load <2 x float>, ptr %i.ag, align 4, !tbaa !13
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.as, %i.ar ; 2 uses
  store <2 x float> %i.at, ptr %i.a, align 16, !tbaa !13
  %7 = load <2 x float>, ptr %i.ah, align 4, !tbaa !13
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %7, %i.ar
  store <2 x float> %8, ptr %6, align 8, !tbaa !13
  %i.au = load <2 x float>, ptr %i.ai, align 4, !tbaa !13
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.au, %i.ar ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.ax = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.aw, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 172 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !66
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = shufflevector <5 x float> %i.ax, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.bc = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.be = fmul reassoc nsz arcp contract afn <4 x float> %i.bb, %i.bd ; 4 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.am, %i.bc
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ak, %i.bc
  %i.bh = extractelement <4 x float> %i.be, i64 0
  %i.bi = extractelement <4 x float> %i.be, i64 1
  %i.bj = extractelement <4 x float> %i.be, i64 2
  %i.bk = extractelement <4 x float> %i.be, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.bg, float noundef %i.bf, float noundef %i.bj, float noundef %i.bh, float noundef %i.bi, float noundef %i.bk, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !79 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 180
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.ca = load float, ptr %i.b, align 4           ; 2 uses
  %i.cb = load float, ptr %i.c, align 4           ; 2 uses
  %i.cc = load float, ptr %i.d, align 4           ; 2 uses
  %i.cd = load float, ptr %i.e, align 4           ; 2 uses
  %i.ce = load float, ptr %i.f, align 4
  %i.cf = load float, ptr %i.g, align 4
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cd, %i.ca
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cb, %i.cc
  %i.ci = fsub reassoc nsz arcp contract afn float %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.cl = load i32, ptr %i.bo, align 4, !tbaa !78 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph156.split.preheader, label %._crit_edge157

.lr.ph156.split.preheader:                        ; preds = %.lr.ph156
  %i.cn = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cc, i64 1
  %i.cp = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.ca, i64 1
  br label %.lr.ph156.split

._crit_edge157:                                   ; preds = %._crit_edge, %.lr.ph156, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.p

.lr.ph156.split:                                  ; preds = %.lr.ph156.split.preheader, %._crit_edge
  %i.cr = phi i32 [ %i.da, %._crit_edge ], [ %i.bm, %.lr.ph156.split.preheader ]
  %i.cs = phi i32 [ %i.db, %._crit_edge ], [ %i.cl, %.lr.ph156.split.preheader ] ; 3 uses
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %._crit_edge ], [ 0, %.lr.ph156.split.preheader ] ; 3 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %indvars.iv160, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cu
  %i.cw = icmp sgt i32 %i.cs, 0
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph156.split
  %i.cx = trunc nuw nsw i64 %indvars.iv160 to i32
  %i.cy = uitofp nsz nneg i32 %i.cx to float
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, 5.000000e-01
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load i32, ptr %i.bl, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph156.split
  %i.da = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cr, %.lr.ph156.split ] ; 2 uses
  %i.db = phi i32 [ %i.gg, %._crit_edge.loopexit ], [ %i.cs, %.lr.ph156.split ]
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.dc = sext i32 %i.da to i64
  %i.dd = icmp slt i64 %indvars.iv.next161, %i.dc
  br i1 %i.dd, label %.lr.ph156.split, label %._crit_edge157, !llvm.loop !284

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.de = load float, ptr %i.bp, align 4, !tbaa !85 ; 4 uses
  %i.df = load float, ptr %i.bq, align 4, !tbaa !73
  %i.dg = load float, ptr %i.br, align 4, !tbaa !72
  %i.dh = trunc nuw nsw i64 %indvars.iv to i32
  %i.di = uitofp nsz nneg i32 %i.dh to float
  %i.dj = load <2 x i32>, ptr %5, align 4, !tbaa !14
  %i.dk = sitofp <2 x i32> %i.dj to <2 x float>   ; 2 uses
  %i.dl = load float, ptr %i.bs, align 4, !tbaa !75
  %i.dm = load float, ptr %i.bt, align 4, !tbaa !74
  %i.dn = load i32, ptr %i.bu, align 4, !tbaa !71
  %.not115 = icmp eq i32 %i.dn, 0                 ; 2 uses
  %. = select i1 %.not115, ptr %i.bw, ptr %i.bv
  %.139 = select i1 %.not115, ptr %i.bv, ptr %i.bw
  %.pn138 = load float, ptr %.139, align 4, !tbaa !13
  %reass.add145 = fadd reassoc nsz arcp contract afn float %.pn138, %i.df
  %reass.add141 = fsub reassoc nsz arcp contract afn float %i.dg, %reass.add145
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add141, %i.de
  %i.do = fadd reassoc nsz arcp contract afn float %i.di, 5.000000e-01
  %i.dp = extractelement <2 x float> %i.dk, i64 0
  %i.dq = fadd reassoc nsz arcp contract afn float %i.do, %i.dp
  %.sroa.0128.0 = fadd reassoc nsz arcp contract afn float %i.dq, %reass.mul
  %.pn136 = load float, ptr %., align 4, !tbaa !13
  %reass.add147 = fadd reassoc nsz arcp contract afn float %.pn136, %i.dl
  %reass.add143 = fsub reassoc nsz arcp contract afn float %i.dm, %reass.add147
  %reass.mul144 = fmul reassoc nsz arcp contract afn float %reass.add143, %i.de
  %i.dr = extractelement <2 x float> %i.dk, i64 1
  %i.ds = fadd reassoc nsz arcp contract afn float %i.cz, %i.dr
  %.sroa.13.0 = fadd reassoc nsz arcp contract afn float %i.ds, %reass.mul144
  %i.dt = fdiv reassoc nsz arcp contract afn float %.sroa.0128.0, %i.de ; 2 uses
  %i.du = load float, ptr %i.by, align 4, !tbaa !69
  %i.dv = load float, ptr %i.bz, align 4, !tbaa !70
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dt, %i.du
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, 1.000000e+00
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.de
  %i.dz = load float, ptr %i.ae, align 4, !tbaa !85
  %i.ea = fdiv reassoc nsz arcp contract afn float %.sroa.13.0, %i.dy ; 2 uses
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dv
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, 1.000000e+00
  %i.ed = fdiv reassoc nsz arcp contract afn float %i.dt, %i.ec
  %i.ee = load <4 x float>, ptr %i.bx, align 4, !tbaa !13 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <4 x float> %i.ee, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ei = fmul reassoc nsz arcp contract afn <2 x float> %i.eg, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <4 x float> %i.ee, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.em = fmul reassoc nsz arcp contract afn <2 x float> %i.ek, %i.el
  %i.en = load <2 x float>, ptr %i.bv, align 4, !tbaa !13
  %i.eo = fadd reassoc nsz arcp contract afn <2 x float> %i.en, %i.em
  %i.ep = fadd reassoc nsz arcp contract afn <2 x float> %i.eo, %i.ei
  %i.eq = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul reassoc nsz arcp contract afn <2 x float> %i.ep, %i.er ; 2 uses
  %i.et = load i32, ptr %i.ay, align 4, !tbaa !66
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ev = fsub reassoc nsz arcp contract afn <2 x float> %i.es, %i.at ; 2 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, %i.ew ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.ey ; 2 uses
  %i.fa = fsub reassoc nsz arcp contract afn <2 x float> %i.ez, %i.ex ; 2 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 1
  %i.fc = fmul reassoc nsz arcp contract afn float %i.cf, %i.fb
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.ex, %i.ez
  %i.fd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.ce
  %i.ff = fadd reassoc nsz arcp contract afn float %i.ci, %i.fe
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.fc
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fdiv reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fi ; 2 uses
  %i.fk = fadd reassoc nsz arcp contract afn <2 x float> %i.av, %i.fj
  %i.fl = fsub reassoc nsz arcp contract afn <2 x float> %i.av, %i.fj
  %i.fm = shufflevector <2 x float> %i.fk, <2 x float> %i.fl, <2 x i32> <i32 0, i32 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fn = phi <2 x float> [ %i.fm, %bb.k ], [ %i.es, %bb.j ]
  %i.fo = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>   ; 2 uses
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.fn, splat (float -5.000000e-01) ; 2 uses
  %foldExtExtBinop168 = fsub reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fp
  %i.fr = extractelement <2 x float> %foldExtExtBinop168, i64 0 ; 3 uses
  %foldExtExtBinop170 = fsub reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fp
  %i.fs = extractelement <2 x float> %foldExtExtBinop170, i64 1 ; 3 uses
  %i.ft = load i32, ptr %i.cj, align 4, !tbaa !78 ; 2 uses
  %i.fu = load i32, ptr %i.ck, align 4, !tbaa !79
  %i.fv = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fr, float noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fu, i32 noundef 1, i32 noundef %i.ft) #25
  %i.fw = fcmp reassoc nsz arcp contract afn ult float %i.fv, 0.000000e+00
  br i1 %i.fw, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fx = load i32, ptr %i.cj, align 4, !tbaa !78 ; 2 uses
  %i.fy = load i32, ptr %i.ck, align 4, !tbaa !79
  %i.fz = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fr, float noundef %i.fs, i32 noundef %i.fx, i32 noundef %i.fy, i32 noundef 1, i32 noundef %i.fx) #25
  %i.ga = fcmp reassoc nsz arcp contract afn ugt float %i.fz, 1.000000e+00
  br i1 %i.ga, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gb = load i32, ptr %i.cj, align 4, !tbaa !78 ; 2 uses
  %i.gc = load i32, ptr %i.ck, align 4, !tbaa !79
  %i.gd = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fr, float noundef %i.fs, i32 noundef %i.gb, i32 noundef %i.gc, i32 noundef 1, i32 noundef %i.gb) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.ge = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %i.gd, %bb.n ], [ 0.000000e+00, %bb.l ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  store float %i.ge, ptr %i.gf, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gg = load i32, ptr %i.bo, align 4, !tbaa !78 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next, %i.gh
  br i1 %i.gi, label %bb.j, label %._crit_edge.loopexit

bb.p:                                             ; preds = %._crit_edge157, %bb.f
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 37 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !83 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %i.d = fneg reassoc nsz arcp contract afn float %sin
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00 ; 3 uses
  %.sroa.9344.0 = select i1 %i.e, float 1.000000e+00, float %cos ; 9 uses
  %.sroa.7.0 = select i1 %i.e, float 0.000000e+00, float %i.d ; 5 uses
  %.sroa.5343.0 = select i1 %i.e, float 0.000000e+00, float %sin ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store float %.sroa.9344.0, ptr %i.f, align 4, !tbaa !13
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.sroa.5343.0, ptr %.sroa.5343.0..sroa_idx, align 4, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !13
  %.sroa.9344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.sroa.9344.0, ptr %.sroa.9344.0..sroa_idx, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  store float %i.j, ptr %i.f, align 4, !tbaa !13
  %i.k = fneg reassoc nsz arcp contract afn float %.sroa.7.0 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.k, ptr %i.l, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi float [ %i.k, %bb.b ], [ %.sroa.7.0, %bb.a ] ; 2 uses
  %i.n = phi float [ %i.j, %bb.b ], [ %.sroa.9344.0, %bb.a ] ; 2 uses
  %i.o = and i32 %i.h, 2
  %.not271 = icmp eq i32 %i.o, 0
  br i1 %.not271, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fneg reassoc nsz arcp contract afn float %.sroa.5343.0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.p, ptr %i.q, align 4, !tbaa !13
  %i.r = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi float [ %i.p, %bb.d ], [ %.sroa.5343.0, %bb.c ] ; 2 uses
  %i.u = phi float [ %i.r, %bb.d ], [ %.sroa.9344.0, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.u, %i.n
  %i.x = fmul reassoc nsz arcp contract afn float %i.m, %i.t
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.x
  %i.z = fneg reassoc nsz arcp contract afn float %i.t
  %i.aa = fneg reassoc nsz arcp contract afn float %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ac = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.n, i64 3
  %i.ag = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.af, %i.ah
  store <4 x float> %i.ai, ptr %i.v, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.ap = fmul reassoc nsz arcp contract afn float %.sroa.9344.0, %.sroa.9344.0
  %i.aq = fmul reassoc nsz arcp contract afn float %.sroa.5343.0, %.sroa.7.0
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.az = load <2 x i32>, ptr %i.as, align 8, !tbaa !14 ; 3 uses
  %i.ba = sitofp <2 x i32> %i.az to <2 x float>   ; 7 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.ba, i64 1
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bb, float %i.bc)
  %i.be = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bd ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.au ; 2 uses
  store float %i.bf, ptr %i.av, align 4, !tbaa !69
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ax, %i.be ; 2 uses
  store float %i.bg, ptr %i.ay, align 4, !tbaa !70
  %i.bh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ba, splat (float 5.000000e-01) ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ar ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.bm, %i.bg
  %i.bn = shufflevector <2 x float> %i.bh, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bo = fmul reassoc nnan arcp contract afn <2 x float> %i.bn, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %.sroa.9344.0, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bq
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bt = insertelement <2 x float> poison, float %.sroa.7.0, i64 0
  %i.bu = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.bv
  %i.bx = shufflevector <2 x float> %i.bh, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.by = fmul reassoc nnan arcp contract afn <2 x float> %i.bx, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %.sroa.5343.0, i64 0
  %i.ca = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <4 x float> %i.ca, %i.cb
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.by, %i.bq
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cf = fsub reassoc nsz arcp contract afn <4 x float> %i.bs, %i.cc
  %i.cg = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = fdiv reassoc nsz arcp contract afn <4 x float> %i.cf, %i.ch ; 2 uses
  %i.cj = fsub reassoc nsz arcp contract afn <4 x float> %i.ce, %i.bw
  %i.ck = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fmul reassoc nsz arcp contract afn <4 x float> %i.ci, %i.cl
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %i.cm, splat (float 1.000000e+00)
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %i.cn, %i.cj ; 2 uses
  %i.cp = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.cq
  %i.cs = fadd reassoc nsz arcp contract afn <4 x float> %i.cr, splat (float 1.000000e+00)
  %i.ct = shufflevector <4 x float> %i.co, <4 x float> %i.ci, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cu = insertelement <8 x float> poison, float %i.bm, i64 0
  %i.cv = shufflevector <8 x float> %i.cu, <8 x float> poison, <8 x i32> <i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cx = shufflevector <8 x float> %i.cw, <8 x float> %i.cv, <8 x i32> <i32 8, i32 0, i32 10, i32 1, i32 12, i32 2, i32 14, i32 3>
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cx ; 10 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cy, zeroinitializer ; 8 uses
  %i.da = extractelement <8 x i1> %i.cz, i64 7    ; 2 uses
  %i.db = extractelement <8 x i1> %i.cz, i64 6    ; 2 uses
  %i.dc = extractelement <8 x i1> %i.cz, i64 5    ; 2 uses
  %i.dd = extractelement <8 x i1> %i.cz, i64 4    ; 2 uses
  %i.de = extractelement <8 x i1> %i.cz, i64 3    ; 2 uses
  %i.df = extractelement <8 x i1> %i.cz, i64 2    ; 2 uses
  %i.dg = extractelement <8 x i1> %i.cz, i64 1    ; 2 uses
  %i.dh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cy)
  %i.di = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.dh, splat (float 1.000000e-03) ; 8 uses
  %i.dj = extractelement <8 x i1> %i.cz, i64 0    ; 2 uses
  %i.dk = shufflevector <2 x i32> %i.az, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = extractelement <8 x float> %i.cy, i64 0 ; 2 uses
  %i.dm = extractelement <8 x float> %i.cy, i64 1 ; 2 uses
  %i.dn = extractelement <8 x float> %i.cy, i64 2 ; 2 uses
  %i.do = extractelement <8 x float> %i.cy, i64 3 ; 2 uses
  %i.dp = extractelement <8 x float> %i.cy, i64 4 ; 2 uses
  %i.dq = extractelement <8 x float> %i.cy, i64 5 ; 2 uses
  %i.dr = extractelement <8 x float> %i.cy, i64 6 ; 2 uses
  %i.ds = extractelement <8 x float> %i.cy, i64 7 ; 2 uses
  %i.dt = extractelement <8 x i1> %i.di, i64 0    ; 2 uses
  %i.du = extractelement <8 x i1> %i.di, i64 1    ; 2 uses
  %i.dv = extractelement <8 x i1> %i.di, i64 2    ; 2 uses
  %i.dw = extractelement <8 x i1> %i.di, i64 3    ; 2 uses
  %i.dx = extractelement <8 x i1> %i.di, i64 4    ; 2 uses
  %i.dy = extractelement <8 x i1> %i.di, i64 5    ; 2 uses
  %i.dz = extractelement <8 x i1> %i.di, i64 6    ; 2 uses
  %i.ea = extractelement <8 x i1> %i.di, i64 7    ; 2 uses
  %i.eb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ec = sitofp <4 x i32> %i.eb to <4 x float>
  %i.ed = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ec, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.ea, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract470 = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated455 = select i1 %i.da, float %.sroa.0.8.vec.extract, float %.sroa.0.0.vec.extract470
  %i.ee = fdiv reassoc nsz arcp contract afn float %.sroa.speculated455, %i.ds
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ee, float 1.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi nsz float [ %i.ef, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  br i1 %i.dz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated431 = select i1 %i.db, float %.sroa.0.12.vec.extract, float %.sroa.0.4.vec.extract
  %i.eg = fdiv reassoc nsz arcp contract afn float %.sroa.speculated431, %i.dr
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2, float %i.eg)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi nsz float [ %i.eh, %bb.j ], [ %.2, %bb.i ] ; 2 uses
  br i1 %i.dy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract490 = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract466 = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated449 = select i1 %i.dc, float %.sroa.0.8.vec.extract490, float %.sroa.0.0.vec.extract466
  %i.ei = fdiv reassoc nsz arcp contract afn float %.sroa.speculated449, %i.dq
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1, float %i.ei)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.1309 = phi nsz float [ %i.ej, %bb.l ], [ %.2.1, %bb.k ] ; 2 uses
  br i1 %i.dx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.12.vec.extract504 = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract476 = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated425 = select i1 %i.dd, float %.sroa.0.12.vec.extract504, float %.sroa.0.4.vec.extract476
  %i.ek = fdiv reassoc nsz arcp contract afn float %.sroa.speculated425, %i.dp
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309, float %i.ek)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.1.1 = phi nsz float [ %i.el, %bb.n ], [ %.2.1309, %bb.m ] ; 2 uses
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.8.vec.extract494 = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract462 = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated443 = select i1 %i.de, float %.sroa.0.8.vec.extract494, float %.sroa.0.0.vec.extract462
  %i.em = fdiv reassoc nsz arcp contract afn float %.sroa.speculated443, %i.do
  %i.en = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1, float %i.em)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.2 = phi nsz float [ %i.en, %bb.p ], [ %.2.1.1, %bb.o ] ; 2 uses
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.12.vec.extract508 = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract480 = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated419 = select i1 %i.df, float %.sroa.0.12.vec.extract508, float %.sroa.0.4.vec.extract480
  %i.eo = fdiv reassoc nsz arcp contract afn float %.sroa.speculated419, %i.dn
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2, float %i.eo)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.1.2 = phi nsz float [ %i.ep, %bb.r ], [ %.2.2, %bb.q ] ; 2 uses
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.0.8.vec.extract498 = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated437 = select i1 %i.dg, float %.sroa.0.8.vec.extract498, float %.sroa.0.0.vec.extract
  %i.eq = fdiv reassoc nsz arcp contract afn float %.sroa.speculated437, %i.dm
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2, float %i.eq)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.3 = phi nsz float [ %i.er, %bb.t ], [ %.2.1.2, %bb.s ] ; 2 uses
  br i1 %i.dt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.12.vec.extract512 = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract484 = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated = select i1 %i.dj, float %.sroa.0.12.vec.extract512, float %.sroa.0.4.vec.extract484
  %i.es = fdiv reassoc nsz arcp contract afn float %.sroa.speculated, %i.dl
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3, float %i.es)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.1.3 = phi nsz float [ %i.et, %bb.v ], [ %.2.3, %bb.u ] ; 3 uses
  %i.eu = fcmp reassoc nsz arcp contract afn ult float %.2.1.3, -1.000000e+00
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !13
  store i32 0, ptr %i.bj, align 4, !tbaa !71
  %i.ev = insertelement <2 x float> poison, float %.2.1.3, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul reassoc nsz arcp contract afn <2 x float> %i.ew, %i.ba ; 2 uses
  %i.ey = load <2 x float>, ptr %i.bk, align 4, !tbaa !13
  %i.ez = load <2 x float>, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.fa = fsub reassoc nsz arcp contract afn <2 x float> %i.ey, %i.ez
  %i.fb = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.ez
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.ex, %i.fb
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.bh, %i.fc
  %6 = fptosi <2 x float> %i.fd to <2 x i32>
  store <2 x i32> %6, ptr %2, align 4, !tbaa !14
  %7 = fmul reassoc nsz arcp contract afn <2 x float> %i.ex, %i.fa
  %8 = fptosi <2 x float> %7 to <2 x i32>
  store <2 x i32> %8, ptr %5, align 4, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1259 = phi nsz float [ -1.000000e+00, %bb.w ], [ %.2.1.3, %bb.x ]
  %i.fe = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ff = sitofp <4 x i32> %i.fe to <4 x float>
  %i.fg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ff, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.8.vec.extract488 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract472 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated458 = select i1 %i.da, float %.sroa.0.8.vec.extract488, float %.sroa.0.0.vec.extract472
  %i.fh = fdiv reassoc nsz arcp contract afn float %.sroa.speculated458, %i.ds
  %i.fi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fh, float 1.000000e+00)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.1390 = phi nsz float [ %i.fi, %bb.z ], [ 1.000000e+00, %bb.y ] ; 2 uses
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.12.vec.extract502 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract474 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated434 = select i1 %i.db, float %.sroa.0.12.vec.extract502, float %.sroa.0.4.vec.extract474
  %i.fj = fdiv reassoc nsz arcp contract afn float %.sroa.speculated434, %i.dr
  %i.fk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1390, float %i.fj)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.1.1391 = phi nsz float [ %i.fk, %bb.ab ], [ %.2.1390, %bb.aa ] ; 2 uses
  br i1 %i.dy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.8.vec.extract492 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract468 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated452 = select i1 %i.dc, float %.sroa.0.8.vec.extract492, float %.sroa.0.0.vec.extract468
  %i.fl = fdiv reassoc nsz arcp contract afn float %.sroa.speculated452, %i.dq
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1391, float %i.fl)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.1309.1 = phi nsz float [ %i.fm, %bb.ad ], [ %.2.1.1391, %bb.ac ] ; 2 uses
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.12.vec.extract506 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract478 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated428 = select i1 %i.dd, float %.sroa.0.12.vec.extract506, float %.sroa.0.4.vec.extract478
  %i.fn = fdiv reassoc nsz arcp contract afn float %.sroa.speculated428, %i.dp
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309.1, float %i.fn)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1.1.1 = phi nsz float [ %i.fo, %bb.af ], [ %.2.1309.1, %bb.ae ] ; 2 uses
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.8.vec.extract496 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract464 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated446 = select i1 %i.de, float %.sroa.0.8.vec.extract496, float %.sroa.0.0.vec.extract464
  %i.fp = fdiv reassoc nsz arcp contract afn float %.sroa.speculated446, %i.do
  %i.fq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1.1, float %i.fp)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.2.1 = phi nsz float [ %i.fq, %bb.ah ], [ %.2.1.1.1, %bb.ag ] ; 2 uses
  br i1 %i.dv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.12.vec.extract510 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract482 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated422 = select i1 %i.df, float %.sroa.0.12.vec.extract510, float %.sroa.0.4.vec.extract482
  %i.fr = fdiv reassoc nsz arcp contract afn float %.sroa.speculated422, %i.dn
  %i.fs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2.1, float %i.fr)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.1.2.1 = phi nsz float [ %i.fs, %bb.aj ], [ %.2.2.1, %bb.ai ] ; 2 uses
  br i1 %i.du, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.8.vec.extract500 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract460 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated440 = select i1 %i.dg, float %.sroa.0.8.vec.extract500, float %.sroa.0.0.vec.extract460
  %i.ft = fdiv reassoc nsz arcp contract afn float %.sroa.speculated440, %i.dm
  %i.fu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2.1, float %i.ft)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.3.1 = phi nsz float [ %i.fu, %bb.al ], [ %.2.1.2.1, %bb.ak ] ; 2 uses
  br i1 %i.dt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.12.vec.extract514 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract486 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated416 = select i1 %i.dj, float %.sroa.0.12.vec.extract514, float %.sroa.0.4.vec.extract486
  %i.fv = fdiv reassoc nsz arcp contract afn float %.sroa.speculated416, %i.dl
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3.1, float %i.fv)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.1.3.1 = phi nsz float [ %i.fw, %bb.an ], [ %.2.3.1, %bb.am ] ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ult float %.2.1.3.1, %.1259
  br i1 %i.fx, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.ao
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !13
  store i32 1, ptr %i.bj, align 4, !tbaa !71
  %i.fy = load <2 x float>, ptr %i.bk, align 4, !tbaa !13
  %i.fz = load <2 x float>, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.ga = fsub reassoc nsz arcp contract afn <2 x float> %i.fy, %i.fz
  %i.gb = insertelement <2 x float> poison, float %.2.1.3.1, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, %i.ba ; 2 uses
  %i.ge = shufflevector <2 x float> %i.bh, <2 x float> %i.gd, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gf = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.gg = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gh = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.fz
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gg, %i.gi
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.gl = fsub reassoc nsz arcp contract afn <4 x float> %i.ge, %i.gk
  %i.gm = fmul reassoc nsz arcp contract afn <4 x float> %i.ge, %i.gk
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>
  store <4 x i32> %i.go, ptr %2, align 4, !tbaa !14
  br label %.loopexit

bb.ap:                                            ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.gq, align 4, !tbaa !71
  %i.gr = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.gs = icmp eq i32 %i.gr, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !69 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !70 ; 6 uses
  %i.gx = load <2 x i32>, ptr %i.gp, align 8, !tbaa !14 ; 2 uses
  %i.gy = shufflevector <2 x i32> %i.gx, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gz = sitofp <4 x i32> %i.gy to <4 x float>   ; 11 uses
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ha, splat (float 5.000000e-01) ; 5 uses
  %i.hc = load <2 x float>, ptr %i.v, align 4, !tbaa !13 ; 6 uses
  %i.hd = load <2 x float>, ptr %i.ab, align 4, !tbaa !13 ; 2 uses
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br i1 %i.gs, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ap
  %i.hf = fneg reassoc nsz arcp contract afn <2 x float> %i.hb
  %i.hg = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hh = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> %i.hg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hj = fmul reassoc nsz arcp contract afn <4 x float> %i.hi, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.hk = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.hl = shufflevector <4 x float> %i.hh, <4 x float> %i.hk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hm = fmul reassoc nsz arcp contract afn <4 x float> %i.hl, <float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.hn = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ho = insertelement <4 x float> %i.hn, float -0.000000e+00, i64 3
  %i.hp = fmul reassoc arcp contract afn <4 x float> %i.ho, %i.hm ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.hr = insertelement <4 x float> %i.hq, float 1.000000e+00, i64 3
  %i.hs = shufflevector <4 x float> %i.hh, <4 x float> %i.hj, <4 x i32> <i32 1, i32 1, i32 7, i32 poison>
  %i.ht = insertelement <4 x float> %i.hs, float 1.000000e+00, i64 3
  %i.hu = fmul reassoc nsz arcp contract afn <4 x float> %i.hr, %i.ht ; 2 uses
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %i.hu, %i.hp ; 3 uses
  %shift = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %shift, %i.hp
  %i.hw = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %i.he, %i.hj ; 2 uses
  %i.hy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.gu, i64 0
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ia = fmul reassoc arcp contract afn <4 x float> %i.hz, %i.hv
  %i.ib = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, splat (float 1.000000e+00)
  %i.ic = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.id = fadd reassoc nsz arcp contract afn <4 x float> %i.hx, %i.ic
  %i.ie = fmul reassoc nsz arcp contract afn <4 x float> %i.id, %i.ib ; 3 uses
  %i.if = extractelement <4 x float> %i.ie, i64 0
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, %i.gw
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, 1.000000e+00
  %i.ii = extractelement <4 x float> %i.hv, i64 0
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ih, %i.ii
  %i.ik = shufflevector <4 x float> %i.ie, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.il = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, %i.im
  %i.io = fadd reassoc nsz arcp contract afn <2 x float> %i.in, splat (float 1.000000e+00)
  %i.ip = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iq = fmul reassoc nsz arcp contract afn <2 x float> %i.io, %i.ip ; 2 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 0
  %i.is = extractelement <2 x float> %i.iq, i64 1
  br label %.split297.us

.split.us:                                        ; preds = %bb.ap
  %i.it = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iu = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 116
end_hunk_0
begin_hunk_1_@modify_roi_in:bb.a
  %i.fe = fmul reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fd
  %i.ff = fsub reassoc nsz arcp contract afn <4 x float> %i.er, %i.eu
  %i.fg = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fi = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, %i.fh
  %i.fj = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fadd reassoc nsz arcp contract afn <4 x float> %i.fk, %i.fi
  %i.fm = fadd reassoc nsz arcp contract afn <4 x float> %i.fl, %i.fe ; 2 uses
  %i.fn = fdiv reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fm
  %i.fo = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = fsub reassoc nsz arcp contract afn <4 x float> %i.fp, %i.fn
  %i.fr = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fq, %i.fr ; 4 uses
  %i.ft = fsub reassoc nsz arcp contract afn <4 x float> %i.eu, %i.er
  %i.fu = fdiv reassoc nsz arcp contract afn <4 x float> %i.ft, %i.fm
  %i.fv = insertelement <4 x float> poison, float %i.by, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fadd reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fw
  %i.fy = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fz = fmul reassoc nsz arcp contract afn <4 x float> %i.fx, %i.fy ; 4 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.gb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ga, <2 x float> splat (float f0x7F7FFFFF))
  %i.gc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ga, <2 x float> splat (float f0xFF7FFFFF))
  %i.gd = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.ge = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gb, <2 x float> %i.gd)
  %i.gf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gc, <2 x float> %i.gd)
  %i.gg = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.gh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ge, <2 x float> %i.gg)
  %i.gi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gf, <2 x float> %i.gg)
  %i.gj = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gi, <2 x float> %i.gj)
  br label %.split160.us

.split:                                           ; preds = %bb.a
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.an
  %foldExtExtBinop188 = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.an
  %i.gm = insertelement <2 x float> poison, float %i.z, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.ac, i64 1
  %i.go = insertelement <2 x float> poison, float %.pn149, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fsub reassoc nsz arcp contract afn <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.ae, i64 1
  %i.gt = insertelement <2 x float> poison, float %.pn, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fsub reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gu
  %i.gw = fpext <2 x float> %i.gq to <2 x double>
  %i.gx = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.gw
  %i.ha = fptrunc <2 x double> %i.gz to <2 x float> ; 2 uses
  %i.hb = insertelement <2 x float> poison, float %i.as, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.he = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %i.hd
  %i.hf = fadd reassoc nsz arcp contract afn <4 x float> %i.he, splat (float 1.000000e+00)
  %i.hg = fpext <2 x float> %i.gv to <2 x double>
  %i.hh = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.hg
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hj = fptrunc <4 x double> %i.hi to <4 x float>
  %i.hk = fdiv reassoc nsz arcp contract afn <4 x float> %i.hj, %i.hf ; 3 uses
  %i.hl = insertelement <4 x float> poison, float %i.au, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.hm
  %i.ho = fadd reassoc nsz arcp contract afn <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hq = fdiv reassoc nsz arcp contract afn <4 x float> %i.hp, %i.ho ; 2 uses
  %i.hr = insertelement <4 x float> poison, float %i.az, i64 0
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, %i.hs
  %i.hu = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.hv
  %i.hx = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fadd reassoc nsz arcp contract afn <4 x float> %i.hy, %i.hw
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.ht ; 4 uses
  %i.ib = shufflevector <2 x float> %foldExtExtBinop188, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.ic = insertelement <4 x float> poison, float %i.av, i64 0
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ie = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, %i.id
  %i.if = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.ig
  %i.ii = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = fadd reassoc nsz arcp contract afn <4 x float> %i.ih, %i.ij
  %i.il = fadd reassoc nsz arcp contract afn <4 x float> %i.ik, %i.ie ; 4 uses
  %i.im = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.in = shufflevector <4 x float> %i.il, <4 x float> %i.ia, <2 x i32> <i32 0, i32 4>
  %i.io = shufflevector <4 x float> %i.im, <4 x float> %i.ib, <2 x i32> <i32 0, i32 4>
  %i.ip = fmul reassoc nsz arcp contract afn <2 x float> %i.in, %i.io ; 2 uses
  %i.iq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ip, <2 x float> splat (float f0x7F7FFFFF))
  %i.ir = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ip, <2 x float> splat (float f0xFF7FFFFF))
  %i.is = shufflevector <4 x float> %i.il, <4 x float> %i.ia, <2 x i32> <i32 2, i32 6>
  %i.it = shufflevector <4 x float> %i.im, <4 x float> %i.ib, <2 x i32> <i32 0, i32 4>
  %i.iu = fmul reassoc nsz arcp contract afn <2 x float> %i.is, %i.it ; 2 uses
  %i.iv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.iq, <2 x float> %i.iu)
  %i.iw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ir, <2 x float> %i.iu)
  %i.ix = shufflevector <4 x float> %i.il, <4 x float> %i.ia, <2 x i32> <i32 1, i32 5>
  %i.iy = shufflevector <4 x float> %i.im, <4 x float> %i.ib, <2 x i32> <i32 0, i32 4>
  %i.iz = fmul reassoc nsz arcp contract afn <2 x float> %i.ix, %i.iy ; 2 uses
  %i.ja = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.iv, <2 x float> %i.iz)
  %i.jb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.iw, <2 x float> %i.iz)
  %i.jc = shufflevector <4 x float> %i.il, <4 x float> %i.ia, <2 x i32> <i32 3, i32 7>
  %i.jd = shufflevector <4 x float> %i.im, <4 x float> %i.ib, <2 x i32> <i32 0, i32 4>
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.jc, %i.jd ; 2 uses
  %i.jf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ja, <2 x float> %i.je)
  %i.jg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jb, <2 x float> %i.je)
  br label %.split160.us

.split160.us:                                     ; preds = %.split, %.split.us
  %i.jh = phi <2 x float> [ %i.gl, %.split.us ], [ %i.jg, %.split ]
  %i.ji = phi <2 x float> [ %i.gk, %.split.us ], [ %i.jf, %.split ] ; 3 uses
  %i.jj = extractelement <2 x float> %i.ji, i64 0 ; 2 uses
  %i.jk = fadd reassoc nsz arcp contract afn float %i.jj, -1.000000e+00 ; 2 uses
  %i.jl = extractelement <2 x float> %i.ji, i64 1 ; 2 uses
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jl, -1.000000e+00 ; 2 uses
  %i.jn = fadd reassoc nsz arcp contract afn <2 x float> %i.jh, splat (float 2.000000e+00)
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.jp = fsub reassoc nsz arcp contract afn <2 x float> %i.jn, %i.ji
  %i.jq = fptosi <2 x float> %i.jp to <2 x i32>   ; 2 uses
  %i.jr = extractelement <2 x i32> %i.jq, i64 0   ; 3 uses
  store i32 %i.jr, ptr %i.jo, align 4, !tbaa !78
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.jt = extractelement <2 x i32> %i.jq, i64 1   ; 3 uses
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !79
  %i.ju = load float, ptr %i.b, align 4, !tbaa !83
  %i.jv = fcmp reassoc nsz arcp contract afn oeq float %i.ju, 0.000000e+00
  br i1 %i.jv, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split160.us
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !84
  %.not = icmp eq i32 %i.jx, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.jy = load i32, ptr %i.r, align 4, !tbaa !78  ; 2 uses
  store i32 %i.jy, ptr %i.jo, align 4, !tbaa !78
  %i.jz = load i32, ptr %i.s, align 4, !tbaa !79  ; 2 uses
  store i32 %i.jz, ptr %i.js, align 4, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split160.us
  %i.ka = phi i32 [ %i.jz, %bb.c ], [ %i.jt, %bb.b ], [ %i.jt, %.split160.us ] ; 2 uses
  %i.kb = phi i32 [ %i.jy, %bb.c ], [ %i.jr, %bb.b ], [ %i.jr, %.split160.us ] ; 2 uses
  %.in = phi float [ %i.jl, %bb.c ], [ %i.jm, %bb.b ], [ %i.jm, %.split160.us ]
  %.in186 = phi float [ %i.jj, %bb.c ], [ %i.jk, %bb.b ], [ %i.jk, %.split160.us ]
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.kd = fptosi float %.in186 to i32             ; 2 uses
  %i.ke = fptosi float %.in to i32                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kg = load i32, ptr %i.e, align 16, !tbaa !290
  %i.kh = sitofp reassoc nsz arcp contract afn i32 %i.kg to float
  %i.ki = fmul reassoc nsz arcp contract afn float %i.d, %i.kh ; 2 uses
  %i.kj = load i32, ptr %i.kc, align 4, !tbaa !291
  %i.kk = sitofp reassoc nsz arcp contract afn i32 %i.kj to float
  %i.kl = fmul reassoc nsz arcp contract afn float %i.d, %i.kk ; 2 uses
  %i.km = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ki)
  %i.kn = fptosi float %i.km to i32               ; 2 uses
  %i.ko = icmp sgt i32 %i.kd, %i.kn
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.kd, i32 0)
  %i.kp = select i1 %i.ko, i32 %i.kn, i32 %spec.select ; 2 uses
  store i32 %i.kp, ptr %3, align 4, !tbaa !93
  %i.kq = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.kl)
  %i.kr = fptosi float %i.kq to i32               ; 2 uses
  %i.ks = icmp sgt i32 %i.ke, %i.kr
  %spec.select117 = tail call i32 @llvm.smax.i32(i32 %i.ke, i32 0)
  %i.kt = select i1 %i.ks, i32 %i.kr, i32 %spec.select117 ; 2 uses
  store i32 %i.kt, ptr %i.kf, align 4, !tbaa !94
  %i.ku = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ki)
  %i.kv = fptosi float %i.ku to i32
  %i.kw = sub nsw i32 %i.kv, %i.kp                ; 2 uses
  %i.kx = icmp sgt i32 %i.kb, %i.kw
  %spec.select118 = tail call i32 @llvm.smax.i32(i32 %i.kb, i32 1)
  %i.ky = select i1 %i.kx, i32 %i.kw, i32 %spec.select118
  store i32 %i.ky, ptr %i.jo, align 4, !tbaa !78
  %i.kz = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.kl)
  %i.la = fptosi float %i.kz to i32
  %i.lb = sub nsw i32 %i.la, %i.kt                ; 2 uses
  %i.lc = icmp sgt i32 %i.ka, %i.lb
  %spec.select119 = tail call i32 @llvm.smax.i32(i32 %i.ka, i32 1)
  %i.ld = select i1 %i.lc, i32 %i.lb, i32 %spec.select119
  store i32 %i.ld, ptr %i.js, align 4, !tbaa !79
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !293
  %i.j = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #25
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !62  ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78   ; 3 uses
  %i.o = shl nsw i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82
  %.not111 = icmp eq i32 %i.q, 0
  br i1 %.not111, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load float, ptr %i.l, align 4, !tbaa !83
  %i.s = fcmp reassoc nsz arcp contract afn oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.u = load i32, ptr %i.t, align 4, !tbaa !84
  %.not112 = icmp eq i32 %i.u, 0
  br i1 %.not112, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
  %i.x = icmp eq i32 %i.n, %i.w
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = sext i32 %i.n to i64
  %i.ae = sext i32 %i.z to i64
  %i.af = shl nsw i64 %i.ad, 2
  %i.ag = mul i64 %i.af, %i.ae
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ag) #25
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ah = tail call ptr @dt_interpolation_new(i32 noundef 3) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !65
  %i.as = load <2 x i32>, ptr %i.ai, align 16, !tbaa !14
  %i.at = sitofp <2 x i32> %i.as to <2 x float>
  %i.au = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul reassoc nsz arcp contract afn <2 x float> %i.av, %i.at ; 5 uses
  %i.ax = load <2 x float>, ptr %i.al, align 4, !tbaa !13
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.ax, %i.aw ; 2 uses
  store <2 x float> %i.ay, ptr %i.a, align 16, !tbaa !13
  %7 = load <2 x float>, ptr %i.am, align 4, !tbaa !13
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %7, %i.aw
  store <2 x float> %8, ptr %6, align 8, !tbaa !13
  %i.az = load <2 x float>, ptr %i.an, align 4, !tbaa !13
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.az, %i.aw ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.bc = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.bb, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 172 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !66
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = shufflevector <5 x float> %i.bc, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.bh = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.bj = fmul reassoc nsz arcp contract afn <4 x float> %i.bg, %i.bi ; 4 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.ar, %i.bh
  %i.bl = fmul reassoc nsz arcp contract afn float %i.ap, %i.bh
  %i.bm = extractelement <4 x float> %i.bj, i64 0
  %i.bn = extractelement <4 x float> %i.bj, i64 1
  %i.bo = extractelement <4 x float> %i.bj, i64 2
  %i.bp = extractelement <4 x float> %i.bj, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.bl, float noundef %i.bk, float noundef %i.bo, float noundef %i.bm, float noundef %i.bn, float noundef %i.bp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !79 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 180
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.cf = load float, ptr %i.b, align 4           ; 2 uses
  %i.cg = load float, ptr %i.c, align 4           ; 2 uses
  %i.ch = load float, ptr %i.d, align 4           ; 2 uses
  %i.ci = load float, ptr %i.e, align 4           ; 2 uses
  %i.cj = load float, ptr %i.f, align 4
  %i.ck = load float, ptr %i.g, align 4
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ci, %i.cf
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cg, %i.ch
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cp = load i32, ptr %i.bt, align 4, !tbaa !78 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph151.split.preheader, label %._crit_edge152

.lr.ph151.split.preheader:                        ; preds = %.lr.ph151
  %i.cr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.ch, i64 1
  %i.ct = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cf, i64 1
  br label %.lr.ph151.split

._crit_edge152:                                   ; preds = %._crit_edge, %.lr.ph151, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

.lr.ph151.split:                                  ; preds = %.lr.ph151.split.preheader, %._crit_edge
  %i.cv = phi i32 [ %i.df, %._crit_edge ], [ %i.br, %.lr.ph151.split.preheader ]
  %i.cw = phi i32 [ %i.dg, %._crit_edge ], [ %i.cp, %.lr.ph151.split.preheader ] ; 3 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge ], [ 0, %.lr.ph151.split.preheader ] ; 3 uses
  %i.cx = shl nuw nsw i64 %indvars.iv155, 2
  %i.cy = sext i32 %i.cw to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cz
  %i.db = icmp sgt i32 %i.cw, 0
  br i1 %i.db, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph151.split
  %i.dc = trunc nuw nsw i64 %indvars.iv155 to i32
  %i.dd = uitofp nsz nneg i32 %i.dc to float
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, 5.000000e-01
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load i32, ptr %i.bq, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph151.split
  %i.df = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cv, %.lr.ph151.split ] ; 2 uses
  %i.dg = phi i32 [ %i.gc, %._crit_edge.loopexit ], [ %i.cw, %.lr.ph151.split ]
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.dh = sext i32 %i.df to i64
  %i.di = icmp slt i64 %indvars.iv.next156, %i.dh
  br i1 %i.di, label %.lr.ph151.split, label %._crit_edge152, !llvm.loop !292

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.dj = load float, ptr %i.bu, align 4, !tbaa !85 ; 4 uses
  %i.dk = load float, ptr %i.bv, align 4, !tbaa !73
  %i.dl = load float, ptr %i.bw, align 4, !tbaa !72
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  %i.dn = uitofp nsz nneg i32 %i.dm to float
  %i.do = load <2 x i32>, ptr %5, align 4, !tbaa !14
  %i.dp = sitofp <2 x i32> %i.do to <2 x float>   ; 2 uses
  %i.dq = load float, ptr %i.bx, align 4, !tbaa !75
  %i.dr = load float, ptr %i.by, align 4, !tbaa !74
  %i.ds = load i32, ptr %i.bz, align 4, !tbaa !71
  %.not113 = icmp eq i32 %i.ds, 0                 ; 2 uses
  %. = select i1 %.not113, ptr %i.cb, ptr %i.ca
  %.134 = select i1 %.not113, ptr %i.ca, ptr %i.cb
  %.pn133 = load float, ptr %.134, align 4, !tbaa !13
  %reass.add140 = fadd reassoc nsz arcp contract afn float %.pn133, %i.dk
  %reass.add136 = fsub reassoc nsz arcp contract afn float %i.dl, %reass.add140
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add136, %i.dj
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dn, 5.000000e-01
  %i.du = extractelement <2 x float> %i.dp, i64 0
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dt, %i.du
  %.sroa.0122.0 = fadd reassoc nsz arcp contract afn float %i.dv, %reass.mul
  %.pn131 = load float, ptr %., align 4, !tbaa !13
  %reass.add142 = fadd reassoc nsz arcp contract afn float %.pn131, %i.dq
  %reass.add138 = fsub reassoc nsz arcp contract afn float %i.dr, %reass.add142
  %reass.mul139 = fmul reassoc nsz arcp contract afn float %reass.add138, %i.dj
  %i.dw = extractelement <2 x float> %i.dp, i64 1
  %i.dx = fadd reassoc nsz arcp contract afn float %i.de, %i.dw
  %.sroa.12127.0 = fadd reassoc nsz arcp contract afn float %i.dx, %reass.mul139
  %i.dy = fdiv reassoc nsz arcp contract afn float %.sroa.0122.0, %i.dj ; 2 uses
  %i.dz = load float, ptr %i.cd, align 4, !tbaa !69
  %i.ea = load float, ptr %i.ce, align 4, !tbaa !70
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dy, %i.dz
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, 1.000000e+00
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dj
  %i.ee = load float, ptr %i.aj, align 4, !tbaa !85
  %i.ef = fdiv reassoc nsz arcp contract afn float %.sroa.12127.0, %i.ed ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ea
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, 1.000000e+00
  %i.ei = fdiv reassoc nsz arcp contract afn float %i.dy, %i.eh
  %i.ej = load <4 x float>, ptr %i.cc, align 4, !tbaa !13 ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.en = fmul reassoc nsz arcp contract afn <2 x float> %i.el, %i.em
  %i.eo = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.er = fmul reassoc nsz arcp contract afn <2 x float> %i.ep, %i.eq
  %i.es = load <2 x float>, ptr %i.ca, align 4, !tbaa !13
  %i.et = fadd reassoc nsz arcp contract afn <2 x float> %i.es, %i.er
  %i.eu = fadd reassoc nsz arcp contract afn <2 x float> %i.et, %i.en
  %i.ev = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.bd, align 4, !tbaa !66
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fa = fsub reassoc nsz arcp contract afn <2 x float> %i.ex, %i.ay ; 2 uses
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %i.fb ; 2 uses
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, %i.fd ; 2 uses
  %i.ff = fsub reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fc ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 1
  %i.fh = fmul reassoc nsz arcp contract afn float %i.ck, %i.fg
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fe
  %i.fi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, %i.cj
  %i.fk = fadd reassoc nsz arcp contract afn float %i.cn, %i.fj
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fk, %i.fh
  %i.fm = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fdiv reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fn ; 2 uses
  %i.fp = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.fo
  %i.fq = fsub reassoc nsz arcp contract afn <2 x float> %i.ba, %i.fo
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 0, i32 3>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fs = phi <2 x float> [ %i.fr, %bb.l ], [ %i.ex, %bb.k ]
  %i.ft = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fu = sitofp <2 x i32> %i.ft to <2 x float>
  %i.fv = fadd reassoc nsz arcp contract afn <2 x float> %i.fs, splat (float -5.000000e-01)
  %i.fw = fsub reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fu ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx
  %i.fy = load i32, ptr %i.m, align 4, !tbaa !78
  %i.fz = load i32, ptr %i.co, align 4, !tbaa !79
end_hunk_1
