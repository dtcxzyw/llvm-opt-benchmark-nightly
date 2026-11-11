Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_toneequal?download=true
inline.NumInlined: 273
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 53
begin_hunk_0_@luminance_mask:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.er = getelementptr [4 x i8], ptr %0, i64 %.070102 ; 3 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !13, !alias.scope !492
  %i.et = getelementptr i8, ptr %i.er, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !13, !alias.scope !492
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.es
  %i.ew = getelementptr i8, ptr %i.er, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !13, !alias.scope !492
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ev, %i.ex
  %i.ez = fmul reassoc nsz arcp contract afn float %i.eb, %i.ey
  %i.fa = fsub reassoc nsz arcp contract afn float %i.ez, %6
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, %7
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fb, %6 ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn ogt float %i.fc, f0x37800000
  %..i.i = select reassoc nsz arcp contract afn i1 %i.fd, float %i.fc, float f0x37800000
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %.070102
  store float %..i.i, ptr %i.fe, align 4, !tbaa !13, !alias.scope !493
  %i.ff = add nuw i64 %.070102, 4                 ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.b
  br i1 %i.fg, label %scalar.ph244, label %.loopexit, !llvm.loop !473

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %.069100 = phi i64 [ %i.fz, %scalar.ph225 ], [ %.069100.ph, %scalar.ph225.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.069100 ; 3 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !13, !alias.scope !490 ; 4 uses
  %i.fj = getelementptr i8, ptr %i.fh, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !13, !alias.scope !490 ; 4 uses
  %i.fl = fcmp reassoc nsz arcp contract afn ogt float %i.fi, %i.fk
  %..i = select reassoc nsz arcp contract afn i1 %i.fl, float %i.fi, float %i.fk ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fh, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !13, !alias.scope !490 ; 4 uses
  %i.fo = fcmp reassoc nsz arcp contract afn ogt float %..i, %i.fn
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.fo, float %..i, float %i.fn
  %i.fp = fcmp reassoc nsz arcp contract afn olt float %i.fi, %i.fk
  %.56.i = select reassoc nsz arcp contract afn i1 %i.fp, float %i.fi, float %i.fk ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn olt float %.56.i, %i.fn
  %i.fr = select reassoc nsz arcp contract afn i1 %i.fq, float %.56.i, float %i.fn
  %i.fs = fadd reassoc nsz arcp contract afn float %spec.select.i, %i.fr
  %i.ft = fmul reassoc nsz arcp contract afn float %i.da, %i.fs
  %i.fu = fsub reassoc nsz arcp contract afn float %i.ft, %6
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %7
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, %6 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ogt float %i.fw, f0x37800000
  %..i.i71 = select reassoc nsz arcp contract afn i1 %i.fx, float %i.fw, float f0x37800000
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %.069100
  store float %..i.i71, ptr %i.fy, align 4, !tbaa !13, !alias.scope !491
  %i.fz = add nuw i64 %.069100, 4                 ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.b
  br i1 %i.ga, label %scalar.ph225, label %.loopexit, !llvm.loop !474

.lr.ph99:                                         ; preds = %.lr.ph99.preheader278, %.lr.ph99
  %.06898 = phi i64 [ %i.gp, %.lr.ph99 ], [ %.06898.ph, %.lr.ph99.preheader278 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06898 ; 3 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !13, !alias.scope !488 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gb, i64 4
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !13, !alias.scope !488 ; 2 uses
  %i.gf = fcmp reassoc nsz arcp contract afn ogt float %i.gc, %i.ge
  %..i72 = select reassoc nsz arcp contract afn i1 %i.gf, float %i.gc, float %i.ge ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gb, i64 8
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !13, !alias.scope !488 ; 2 uses
  %i.gi = fcmp reassoc nsz arcp contract afn ogt float %..i72, %i.gh
  %spec.select.i73 = select reassoc nsz arcp contract afn i1 %i.gi, float %..i72, float %i.gh
  %i.gj = fmul reassoc nsz arcp contract afn float %spec.select.i73, %5
  %i.gk = fsub reassoc nsz arcp contract afn float %i.gj, %6
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %7
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gl, %6 ; 2 uses
  %i.gn = fcmp reassoc nsz arcp contract afn ogt float %i.gm, f0x37800000
  %..i.i74 = select reassoc nsz arcp contract afn i1 %i.gn, float %i.gm, float f0x37800000
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %.06898
  store float %..i.i74, ptr %i.go, align 4, !tbaa !13, !alias.scope !489
  %i.gp = add nuw i64 %.06898, 4                  ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.b
  br i1 %i.gq, label %.lr.ph99, label %.loopexit, !llvm.loop !475

.lr.ph97:                                         ; preds = %.lr.ph97.preheader280, %.lr.ph97
  %.06796 = phi i64 [ %i.he, %.lr.ph97 ], [ %.06796.ph, %.lr.ph97.preheader280 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.gr = getelementptr [4 x i8], ptr %0, i64 %.06796 ; 2 uses
  %i.gs = load <2 x float>, ptr %i.gr, align 4, !tbaa !13, !alias.scope !486
  %i.gt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gs)
  %i.gu = getelementptr i8, ptr %i.gr, i64 8
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !13, !alias.scope !486
  %i.gw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gv)
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.gw, <2 x float> %i.gt)
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %5
  %i.gz = fsub reassoc nsz arcp contract afn float %i.gy, %6
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %7
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, %6 ; 2 uses
  %i.hc = fcmp reassoc nsz arcp contract afn ogt float %i.hb, f0x37800000
  %..i.i75 = select reassoc nsz arcp contract afn i1 %i.hc, float %i.hb, float f0x37800000
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %.06796
  store float %..i.i75, ptr %i.hd, align 4, !tbaa !13, !alias.scope !487
  %i.he = add nuw i64 %.06796, 4                  ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.b
  br i1 %i.hf, label %.lr.ph97, label %.loopexit, !llvm.loop !476

.lr.ph95:                                         ; preds = %.lr.ph95.preheader282, %.lr.ph95
  %.06694 = phi i64 [ %i.hy, %.lr.ph95 ], [ %.06694.ph, %.lr.ph95.preheader282 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.hg = getelementptr [4 x i8], ptr %0, i64 %.06694 ; 3 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !13, !alias.scope !484 ; 2 uses
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, %i.hh
  %i.hj = getelementptr i8, ptr %i.hg, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !13, !alias.scope !484 ; 2 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, %i.hk
  %i.hm = fadd reassoc nsz arcp contract afn float %i.hl, %i.hi
  %i.hn = getelementptr i8, ptr %i.hg, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !13, !alias.scope !484 ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, %i.ho
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hm, %i.hp
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hq)
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, %5
  %i.ht = fsub reassoc nsz arcp contract afn float %i.hs, %6
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %7
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hu, %6 ; 2 uses
  %i.hw = fcmp reassoc nsz arcp contract afn ogt float %i.hv, f0x37800000
  %..i.i76 = select reassoc nsz arcp contract afn i1 %i.hw, float %i.hv, float f0x37800000
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %.06694
  store float %..i.i76, ptr %i.hx, align 4, !tbaa !13, !alias.scope !485
  %i.hy = add nuw i64 %.06694, 4                  ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.b
  br i1 %i.hz, label %.lr.ph95, label %.loopexit, !llvm.loop !477

.lr.ph93:                                         ; preds = %.lr.ph93.preheader284, %.lr.ph93
  %.06592 = phi i64 [ %i.ix, %.lr.ph93 ], [ %.06592.ph, %.lr.ph93.preheader284 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.ia = getelementptr [4 x i8], ptr %0, i64 %.06592 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !13, !alias.scope !482 ; 3 uses
  %i.ic = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ib)
  %i.id = fmul reassoc nsz arcp contract afn float %i.ib, %i.ib ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, %i.ic
  %i.if = getelementptr i8, ptr %i.ia, i64 4
  %i.ig = load <2 x float>, ptr %i.if, align 4, !tbaa !13, !alias.scope !482 ; 5 uses
  %foldExtExtBinop269 = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, %i.ig ; 2 uses
  %i.ih = extractelement <2 x float> %foldExtExtBinop269, i64 0
  %i.ii = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ig) ; 2 uses
  %foldExtExtBinop271 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop269, %i.ii
  %i.ij = extractelement <2 x float> %foldExtExtBinop271, i64 0
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ij, %i.ie
  %i.il = fadd reassoc nsz arcp contract afn float %i.ih, %i.id
  %foldExtExtBinop273 = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, %i.ig ; 2 uses
  %i.im = extractelement <2 x float> %foldExtExtBinop273, i64 1
  %foldExtExtBinop275 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop273, %i.ii
  %i.in = extractelement <2 x float> %foldExtExtBinop275, i64 1
  %i.io = fadd reassoc nsz arcp contract afn float %i.ik, %i.in
  %i.ip = fadd reassoc nsz arcp contract afn float %i.il, %i.im
  %i.iq = fmul reassoc nsz arcp contract afn float %i.io, %5
  %i.ir = fdiv reassoc nsz arcp contract afn float %i.iq, %i.ip
  %i.is = fsub reassoc nsz arcp contract afn float %i.ir, %6
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %7
  %i.iu = fadd reassoc nsz arcp contract afn float %i.it, %6 ; 2 uses
  %i.iv = fcmp reassoc nsz arcp contract afn ogt float %i.iu, f0x37800000
  %..i.i77 = select reassoc nsz arcp contract afn i1 %i.iv, float %i.iu, float f0x37800000
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 %.06592
  store float %..i.i77, ptr %i.iw, align 4, !tbaa !13, !alias.scope !483
  %i.ix = add nuw i64 %.06592, 4                  ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.b
  br i1 %i.iy, label %.lr.ph93, label %.loopexit, !llvm.loop !478

.lr.ph:                                           ; preds = %.lr.ph.preheader286, %.lr.ph
  %.091 = phi i64 [ %i.jp, %.lr.ph ], [ %.091.ph, %.lr.ph.preheader286 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.iz = getelementptr [4 x i8], ptr %0, i64 %.091 ; 3 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !13, !alias.scope !480
  %i.jb = getelementptr i8, ptr %i.iz, i64 4
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !13, !alias.scope !480
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, %i.ja
  %i.je = getelementptr i8, ptr %i.iz, i64 8
  %i.jf = load float, ptr %i.je, align 4, !tbaa !13, !alias.scope !480
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jd, %i.jf
  %i.jh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jg)
  %i.ji = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jh, float f0x3EAAAAAB)
  %i.jj = fmul reassoc nsz arcp contract afn float %i.ji, %5
  %i.jk = fsub reassoc nsz arcp contract afn float %i.jj, %6
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, %7
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jl, %6 ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ogt float %i.jm, f0x37800000
  %..i.i78 = select reassoc nsz arcp contract afn i1 %i.jn, float %i.jm, float f0x37800000
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.091
  store float %..i.i78, ptr %i.jo, align 4, !tbaa !13, !alias.scope !481
  %i.jp = add nuw i64 %.091, 4                    ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.b
  br i1 %i.jq, label %.lr.ph, label %.loopexit, !llvm.loop !479

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph93, %.lr.ph95, %.lr.ph97, %.lr.ph99, %scalar.ph225, %scalar.ph244, %middle.block, %middle.block157, %middle.block181, %middle.block205, %middle.block265, %.preheader89, %.preheader87, %.preheader85, %.preheader83, %.preheader81, %.preheader79, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fast_surface_blur(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i32 noundef %3, float noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, float noundef %7) unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %3, 4
  %8 = sitofp reassoc nsz arcp contract afn i32 %3 to float
  %i.b = fmul reassoc nnan nsz arcp contract afn float %8, 2.500000e-01
  %i.c = fptosi float %i.b to i32
  %i.d = select i1 %i.a, i32 1, i32 %i.c
  %i.e = uitofp reassoc nsz arcp contract afn i64 %2 to float ; 3 uses
  %i.f = fmul reassoc nnan nsz arcp contract afn float %i.e, 2.500000e-01
  %i.g = fptoui float %i.f to i64                 ; 12 uses
  %i.h = uitofp reassoc nsz arcp contract afn i64 %1 to float ; 5 uses
  %i.i = fmul reassoc nnan nsz arcp contract afn float %i.h, 2.500000e-01
  %i.j = fptoui float %i.i to i64                 ; 19 uses
  %i.k = mul i64 %i.g, %i.j                       ; 29 uses
  %i.l = mul i64 %2, %1                           ; 14 uses
  %i.m = shl i64 %i.k, 2                          ; 2 uses
  %i.n = tail call ptr @dt_alloc_aligned(i64 noundef %i.m) #28 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 64) ]
  %i.o = tail call ptr @dt_alloc_aligned(i64 noundef %i.m) #28 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.p = shl i64 %i.k, 3
  %i.q = tail call ptr @dt_alloc_aligned(i64 noundef %i.p) #28 ; 21 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %i.r = shl i64 %i.l, 3
  %i.s = tail call ptr @dt_alloc_aligned(i64 noundef %i.r) #28 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.t = icmp ne ptr %i.n, null
  %i.u = icmp ne ptr %i.o, null
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  %i.v = icmp ne ptr %i.q, null
  %or.cond3 = select i1 %or.cond, i1 %i.v, i1 false
  %i.w = icmp ne ptr %i.s, null
  %or.cond5 = select i1 %or.cond3, i1 %i.w, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !173
  %i.y = and i32 %i.x, 33554432
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.124) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.125, i32 noundef 5) #28
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.z) #28
  br label %apply_linear_blending.exit106

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %interpolate_bilinear.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.e
  %.not91.i = icmp eq i64 %i.j, 0
  %i.aa = add nsw i64 %1, -1                      ; 3 uses
  %i.ab = add nsw i64 %2, -1                      ; 2 uses
  br i1 %.not91.i, label %interpolate_bilinear.exit, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ac = uitofp reassoc nsz arcp contract afn i64 %i.j to float ; 2 uses
  %i.ad = uitofp reassoc nsz arcp contract afn i64 %i.g to float
  %i.ae = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ad
  %min.iters.check = icmp ult i64 %i.j, 8
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %broadcast.splatinsert3 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat4 = shufflevector <8 x float> %broadcast.splatinsert3, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat6 = shufflevector <8 x float> %broadcast.splatinsert5, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert7 = insertelement <8 x i64> poison, i64 %1, i64 0
  %broadcast.splat8 = shufflevector <8 x i64> %broadcast.splatinsert7, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert9 = insertelement <8 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat10 = shufflevector <8 x i64> %broadcast.splatinsert9, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.af = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat6
  %cmp.n = icmp eq i64 %n.vec, %i.j
  %i.ag = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.08489.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ah = uitofp reassoc nsz arcp contract afn i64 %.08489.i to float
  %i.ai = fmul reassoc nnan nsz arcp contract afn float %i.e, %i.ah
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.ae ; 2 uses
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.aj)
  %i.al = fptoui float %i.ak to i64               ; 3 uses
  %i.am = add i64 %i.al, 1                        ; 2 uses
  %i.an = icmp ugt i64 %2, %i.al
  %i.ao = select i1 %i.an, i64 %i.al, i64 %i.ab
  %i.ap = icmp ult i64 %i.am, %2
  %i.aq = select i1 %i.ap, i64 %i.am, i64 %i.ab   ; 2 uses
  %i.ar = mul i64 %i.ao, %1
  %i.as = mul i64 %i.aq, %1
  %i.at = uitofp reassoc nsz arcp contract afn i64 %i.aq to float
  %i.au = fsub reassoc nsz arcp contract afn float %i.at, %i.aj ; 2 uses
  %i.av = mul i64 %.08489.i, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ar ; 4 uses
  %invariant.gep126 = getelementptr [4 x i8], ptr %0, i64 %i.as ; 4 uses
  %invariant.gep130 = getelementptr [4 x i8], ptr %i.n, i64 %i.av ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aw = uitofp <8 x i64> %vec.ind to <8 x float>
  %i.ax = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat4, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %i.af ; 2 uses
  %i.az = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.ay)
  %i.ba = fptoui <8 x float> %i.az to <8 x i64>   ; 3 uses
  %i.bb = add <8 x i64> %i.ba, splat (i64 1)      ; 2 uses
  %i.bc = icmp ugt <8 x i64> %broadcast.splat8, %i.ba
  %i.bd = select <8 x i1> %i.bc, <8 x i64> %i.ba, <8 x i64> %broadcast.splat10 ; 2 uses
  %i.be = icmp ult <8 x i64> %i.bb, %broadcast.splat8
  %i.bf = select <8 x i1> %i.be, <8 x i64> %i.bb, <8 x i64> %broadcast.splat10 ; 3 uses
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep, <8 x i64> %i.bd
  %wide.gep11 = getelementptr [4 x i8], ptr %invariant.gep, <8 x i64> %i.bf
  %wide.gep12 = getelementptr [4 x i8], ptr %invariant.gep126, <8 x i64> %i.bf
  %wide.gep13 = getelementptr [4 x i8], ptr %invariant.gep126, <8 x i64> %i.bd
  %i.bg = uitofp <8 x i64> %i.bf to <8 x float>
  %i.bh = fsub reassoc nsz arcp contract afn <8 x float> %i.bg, %i.ay ; 3 uses
  %i.bi = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bh ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %invariant.gep130, i64 %index
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep13, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !544
  %i.bk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.bh
  %wide.masked.gather14 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep12, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !544
  %i.bl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather14, %i.bi
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bk ; 2 uses
  %wide.masked.gather15 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !544
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather15, %i.bh
  %wide.masked.gather16 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep11, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !544
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather16, %i.bi
  %i.bp = fsub reassoc nsz arcp contract afn <8 x float> %i.bn, %i.bm
  %i.bq = fadd reassoc nsz arcp contract afn <8 x float> %i.bp, %i.bo
  %i.br = fmul reassoc nsz arcp contract afn <8 x float> %i.bq, %broadcast.splat
  %i.bs = fadd reassoc nsz arcp contract afn <8 x float> %i.br, %i.bm
  store <8 x float> %i.bs, ptr %i.bj, align 4, !tbaa !13, !alias.scope !545
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.08388.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.bu = add nuw i64 %.08489.i, 1                ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.bu, %i.g
  br i1 %exitcond93.not.i, label %interpolate_bilinear.exit, label %.preheader.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.08388.i = phi i64 [ %i.cv, %scalar.ph ], [ %.08388.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bv = uitofp reassoc nsz arcp contract afn i64 %.08388.i to float
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.h, %i.bv
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.ag ; 2 uses
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bx)
  %i.bz = fptoui float %i.by to i64               ; 3 uses
  %i.ca = add i64 %i.bz, 1                        ; 2 uses
  %i.cb = icmp ugt i64 %1, %i.bz
  %i.cc = select i1 %i.cb, i64 %i.bz, i64 %i.aa   ; 2 uses
  %i.cd = icmp ult i64 %i.ca, %1
  %i.ce = select i1 %i.cd, i64 %i.ca, i64 %i.aa   ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cc
  %gep125 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ce
  %gep127 = getelementptr [4 x i8], ptr %invariant.gep126, i64 %i.ce
  %gep129 = getelementptr [4 x i8], ptr %invariant.gep126, i64 %i.cc
  %i.cf = uitofp reassoc nsz arcp contract afn i64 %i.ce to float
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cf, %i.bx ; 3 uses
  %i.ch = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cg ; 2 uses
  %gep131 = getelementptr [4 x i8], ptr %invariant.gep130, i64 %.08388.i
  %i.ci = load float, ptr %gep129, align 4, !tbaa !13, !alias.scope !544
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, %i.cg
  %i.ck = load float, ptr %gep127, align 4, !tbaa !13, !alias.scope !544
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, %i.ch
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %i.cj ; 2 uses
  %i.cn = load float, ptr %gep, align 4, !tbaa !13, !alias.scope !544
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cg
  %i.cp = load float, ptr %gep125, align 4, !tbaa !13, !alias.scope !544
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.ch
  %i.cr = fsub reassoc nsz arcp contract afn float %i.co, %i.cm
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.cq
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.au
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cm
  store float %i.cu, ptr %gep131, align 4, !tbaa !13, !alias.scope !545
  %i.cv = add nuw i64 %.08388.i, 1                ; 2 uses
  %exitcond92.not.i = icmp eq i64 %i.cv, %i.j
  br i1 %exitcond92.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !498

interpolate_bilinear.exit:                        ; preds = %._crit_edge.i, %bb.e, %.preheader.lr.ph.i
  %i.cw = icmp sgt i32 %5, 0
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %interpolate_bilinear.exit
  %i.cx = fcmp reassoc nsz arcp contract afn oeq float %7, 0.000000e+00
  %i.cy = fcmp reassoc nsz arcp contract afn oeq float %7, 1.000000e+00
  %.not31.i = icmp eq i64 %i.k, 0                 ; 3 uses
  %i.cz = shl i64 %i.k, 4                         ; 3 uses
  %9 = sext i32 %i.d to i64                       ; 4 uses
  %i.da = add nsw i32 %5, -1
  %min.iters.check91 = icmp ult i64 %i.k, 8
  %n.vec93 = and i64 %i.k, -8                     ; 3 uses
  %broadcast.splatinsert94 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat95 = shufflevector <8 x float> %broadcast.splatinsert94, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.db = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat95
  %cmp.n101 = icmp eq i64 %i.k, %n.vec93
  %i.dc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %7
  %min.iters.check80 = icmp ult i64 %i.k, 8
  %n.vec82 = and i64 %i.k, -8                     ; 3 uses
  %cmp.n88 = icmp eq i64 %i.k, %n.vec82
  %min.iters.check67 = icmp ult i64 %i.k, 8
  %n.vec69 = and i64 %i.k, -8                     ; 3 uses
  %cmp.n77 = icmp eq i64 %i.k, %n.vec69
  %min.iters.check50 = icmp ult i64 %i.k, 8
  %n.vec52 = and i64 %i.k, -8                     ; 3 uses
  %broadcast.splatinsert53 = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat54 = shufflevector <8 x float> %broadcast.splatinsert53, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n64 = icmp eq i64 %i.k, %n.vec52
  %min.iters.check18 = icmp ult i64 %i.k, 4
  %min.iters.check19 = icmp ult i64 %i.k, 32
  %i.dd = and i64 %i.k, 28
  %n.vec21 = and i64 %i.k, -32                    ; 4 uses
  %cmp.n39 = icmp eq i64 %i.k, %n.vec21
  %min.epilog.iters.check = icmp eq i64 %i.dd, 0
  %n.vec40 = and i64 %i.k, -4                     ; 3 uses
  %cmp.n47 = icmp eq i64 %i.k, %n.vec40
  br label %bb.f

._crit_edge:                                      ; preds = %apply_linear_blending.exit, %interpolate_bilinear.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %.not.i77 = icmp eq i64 %2, 0
  br i1 %.not.i77, label %interpolate_bilinear.exit89, label %.preheader.lr.ph.i78

.preheader.lr.ph.i78:                             ; preds = %._crit_edge
  %.not91.i79 = icmp eq i64 %1, 0
  %i.de = add i64 %i.j, -1                        ; 3 uses
  %i.df = add i64 %i.g, -1                        ; 2 uses
  br i1 %.not91.i79, label %interpolate_bilinear.exit89, label %.preheader.lr.ph.split.i80

.preheader.lr.ph.split.i80:                       ; preds = %.preheader.lr.ph.i78
  %i.dg = uitofp reassoc nsz arcp contract afn i64 %i.j to float ; 2 uses
  %i.dh = uitofp reassoc nsz arcp contract afn i64 %i.g to float
  %i.di = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  %min.iters.check104 = icmp ult i64 %1, 8
  %n.vec106 = and i64 %1, -8                      ; 3 uses
  %broadcast.splatinsert113 = insertelement <8 x float> poison, float %i.dg, i64 0
  %broadcast.splat114 = shufflevector <8 x float> %broadcast.splatinsert113, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <8 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat118 = shufflevector <8 x i64> %broadcast.splatinsert117, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert119 = insertelement <8 x i64> poison, i64 %i.de, i64 0
  %broadcast.splat120 = shufflevector <8 x i64> %broadcast.splatinsert119, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat116
  %cmp.n144 = icmp eq i64 %1, %n.vec106
  %i.dk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.h
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %._crit_edge.i87, %.preheader.lr.ph.split.i80
  %.08489.i82 = phi i64 [ 0, %.preheader.lr.ph.split.i80 ], [ %i.ft, %._crit_edge.i87 ] ; 3 uses
  %i.dl = uitofp reassoc nsz arcp contract afn i64 %.08489.i82 to float
  %i.dm = fmul reassoc nnan nsz arcp contract afn float %i.dh, %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.di ; 2 uses
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.dn)
  %i.dp = fptoui float %i.do to i64               ; 3 uses
  %i.dq = add i64 %i.dp, 1                        ; 2 uses
  %i.dr = icmp ugt i64 %i.g, %i.dp
  %i.ds = select i1 %i.dr, i64 %i.dp, i64 %i.df
  %i.dt = icmp ult i64 %i.dq, %i.g
  %i.du = select i1 %i.dt, i64 %i.dq, i64 %i.df   ; 2 uses
  %i.dv = mul i64 %i.ds, %i.j                     ; 3 uses
  %i.dw = mul i64 %i.du, %i.j                     ; 3 uses
  %i.dx = uitofp reassoc nsz arcp contract afn i64 %i.du to float
  %i.dy = fsub reassoc nsz arcp contract afn float %i.dx, %i.dn ; 2 uses
  %i.dz = mul i64 %.08489.i82, %1                 ; 2 uses
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.preheader.i81
  %broadcast.splatinsert107 = insertelement <8 x i64> poison, i64 %i.dv, i64 0
  %broadcast.splat108 = shufflevector <8 x i64> %broadcast.splatinsert107, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert109 = insertelement <8 x i64> poison, i64 %i.dw, i64 0
  %broadcast.splat110 = shufflevector <8 x i64> %broadcast.splatinsert109, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert111 = insertelement <8 x float> poison, float %i.dy, i64 0
  %broadcast.splat112 = shufflevector <8 x float> %broadcast.splatinsert111, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph105
  %index122 = phi i64 [ 0, %vector.ph105 ], [ %index.next141, %vector.body121 ] ; 2 uses
  %vec.ind123 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph105 ], [ %vec.ind.next142, %vector.body121 ] ; 2 uses
  %i.ea = uitofp <8 x i64> %vec.ind123 to <8 x float>
  %i.eb = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat114, %i.ea
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %i.eb, %i.dj ; 2 uses
  %i.ed = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.ec)
  %i.ee = fptoui <8 x float> %i.ed to <8 x i64>   ; 3 uses
  %i.ef = add <8 x i64> %i.ee, splat (i64 1)      ; 2 uses
  %i.eg = icmp ugt <8 x i64> %broadcast.splat118, %i.ee
  %i.eh = select <8 x i1> %i.eg, <8 x i64> %i.ee, <8 x i64> %broadcast.splat120 ; 2 uses
  %i.ei = icmp ult <8 x i64> %i.ef, %broadcast.splat118
  %i.ej = select <8 x i1> %i.ei, <8 x i64> %i.ef, <8 x i64> %broadcast.splat120 ; 3 uses
  %i.ek = add <8 x i64> %i.eh, %broadcast.splat108
  %i.el = shl <8 x i64> %i.ek, splat (i64 3)
  %wide.gep124 = getelementptr inbounds nuw i8, ptr %i.q, <8 x i64> %i.el ; 2 uses
  %i.em = add <8 x i64> %i.ej, %broadcast.splat108
  %i.en = shl <8 x i64> %i.em, splat (i64 3)
  %wide.gep125 = getelementptr inbounds nuw i8, ptr %i.q, <8 x i64> %i.en ; 2 uses
  %i.eo = add <8 x i64> %i.ej, %broadcast.splat110
  %i.ep = shl <8 x i64> %i.eo, splat (i64 3)
  %wide.gep126 = getelementptr inbounds nuw i8, ptr %i.q, <8 x i64> %i.ep ; 2 uses
  %i.eq = add <8 x i64> %i.eh, %broadcast.splat110
  %i.er = shl <8 x i64> %i.eq, splat (i64 3)
  %wide.gep127 = getelementptr inbounds nuw i8, ptr %i.q, <8 x i64> %i.er ; 2 uses
  %i.es = uitofp <8 x i64> %i.ej to <8 x float>
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %i.es, %i.ec ; 5 uses
  %i.eu = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.et ; 4 uses
  %i.ev = add i64 %index122, %i.dz
  %i.ew = shl i64 %i.ev, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ew
  %wide.masked.gather128 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep127, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather128, %i.et
  %wide.masked.gather129 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep126, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather129, %i.eu
  %i.fa = fadd reassoc nsz arcp contract afn <8 x float> %i.ez, %i.ey ; 2 uses
  %wide.masked.gather130 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep124, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.fb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather130, %i.et
  %wide.masked.gather131 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep125, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather131, %i.eu
  %i.fd = fsub reassoc nsz arcp contract afn <8 x float> %i.fb, %i.fa
  %i.fe = fadd reassoc nsz arcp contract afn <8 x float> %i.fd, %i.fc
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, %broadcast.splat112
  %i.fg = fadd reassoc nsz arcp contract afn <8 x float> %i.ff, %i.fa
  %wide.gep132 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep127, i64 4
  %wide.masked.gather133 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep132, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather133, %i.et
  %wide.gep134 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep126, i64 4
  %wide.masked.gather135 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep134, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather135, %i.eu
  %i.fj = fadd reassoc nsz arcp contract afn <8 x float> %i.fi, %i.fh ; 2 uses
  %wide.gep136 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep124, i64 4
  %wide.masked.gather137 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep136, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather137, %i.et
  %wide.gep138 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep125, i64 4
  %wide.masked.gather139 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep138, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !546
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather139, %i.eu
  %i.fm = fsub reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fj
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %i.fm, %i.fl
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %i.fn, %broadcast.splat112
  %i.fp = fadd reassoc nsz arcp contract afn <8 x float> %i.fo, %i.fj
  %interleaved.vec140 = shufflevector <8 x float> %i.fg, <8 x float> %i.fp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec140, ptr %i.ex, align 8, !tbaa !13, !alias.scope !547
  %index.next141 = add nuw i64 %index122, 8       ; 2 uses
  %vec.ind.next142 = add nuw <8 x i64> %vec.ind123, splat (i64 8)
  %i.fq = icmp eq i64 %index.next141, %n.vec106
  br i1 %i.fq, label %middle.block143, label %vector.body121, !llvm.loop !502

middle.block143:                                  ; preds = %vector.body121
  br i1 %cmp.n144, label %._crit_edge.i87, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.preheader.i81, %middle.block143
  %.08388.i83.ph = phi i64 [ 0, %.preheader.i81 ], [ %n.vec106, %middle.block143 ]
  %i.fr = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph103

._crit_edge.i87:                                  ; preds = %scalar.ph103, %middle.block143
  %i.ft = add nuw i64 %.08489.i82, 1              ; 2 uses
  %exitcond93.not.i88 = icmp eq i64 %i.ft, %2
  br i1 %exitcond93.not.i88, label %interpolate_bilinear.exit89, label %.preheader.i81

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %.08388.i83 = phi i64 [ %i.hi, %scalar.ph103 ], [ %.08388.i83.ph, %scalar.ph103.preheader ] ; 3 uses
  %i.fu = uitofp reassoc nsz arcp contract afn i64 %.08388.i83 to float
  %i.fv = fmul reassoc nnan nsz arcp contract afn float %i.dg, %i.fu
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.dk ; 2 uses
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.fw)
  %i.fy = fptoui float %i.fx to i64               ; 3 uses
  %i.fz = add i64 %i.fy, 1                        ; 2 uses
  %i.ga = icmp ugt i64 %i.j, %i.fy
  %i.gb = select i1 %i.ga, i64 %i.fy, i64 %i.de   ; 2 uses
  %i.gc = icmp ult i64 %i.fz, %i.j
  %i.gd = select i1 %i.gc, i64 %i.fz, i64 %i.de   ; 3 uses
  %i.ge = add i64 %i.gb, %i.dv
  %.idx = shl i64 %i.ge, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.gg = add i64 %i.gd, %i.dv
  %.idx116 = shl i64 %i.gg, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx116
  %i.gi = add i64 %i.gd, %i.dw
  %.idx117 = shl i64 %i.gi, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx117
  %i.gk = add i64 %i.gb, %i.dw
  %.idx118 = shl i64 %i.gk, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx118
  %i.gm = uitofp reassoc nsz arcp contract afn i64 %i.gd to float
  %i.gn = fsub reassoc nsz arcp contract afn float %i.gm, %i.fw ; 2 uses
  %i.go = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gn
  %i.gp = add i64 %.08388.i83, %i.dz
  %.idx119 = shl i64 %i.gp, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx119
end_hunk_0
