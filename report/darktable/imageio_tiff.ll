Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_tiff?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_read_chunky_8_Lab:bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %.04353, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !74
  %i.gk = uitofp reassoc nsz arcp contract afn i8 %i.gj to float
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, -1.280000e+02
  %i.gm = getelementptr inbounds nuw i8, ptr %.04254, i64 8
  store float %i.gl, ptr %i.gm, align 4, !tbaa !75
  %i.gn = getelementptr inbounds nuw i8, ptr %.04254, i64 12
  store float 0.000000e+00, ptr %i.gn, align 4, !tbaa !75
  %i.go = getelementptr inbounds nuw i8, ptr %.04353, i64 %i.ev ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.04254, i64 16
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !74
  %i.gr = uitofp reassoc nsz arcp contract afn i8 %i.gq to float
  %i.gs = fmul reassoc nnan nsz arcp contract afn float %i.gr, f0x3EC8C8C9
  store float %i.gs, ptr %i.gp, align 4, !tbaa !75
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !74
  %i.gv = uitofp reassoc nsz arcp contract afn i8 %i.gu to float
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gv, -1.280000e+02
  %i.gx = getelementptr inbounds nuw i8, ptr %.04254, i64 20
  store float %i.gw, ptr %i.gx, align 4, !tbaa !75
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !74
  %i.ha = uitofp reassoc nsz arcp contract afn i8 %i.gz to float
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, -1.280000e+02
  %i.hc = getelementptr inbounds nuw i8, ptr %.04254, i64 24
  store float %i.hb, ptr %i.hc, align 4, !tbaa !75
  %i.hd = getelementptr inbounds nuw i8, ptr %.04254, i64 28
  store float 0.000000e+00, ptr %i.hd, align 4, !tbaa !75
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.ev ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.04254, i64 32 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit91.unr-lcssa, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod96.not = icmp eq i32 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.04254.us.epil.init = phi ptr [ %i.eo, %.lr.ph.split.us.preheader ], [ %i.fz, %._crit_edge.loopexit.unr-lcssa ]
  %.04353.us.epil.init = phi ptr [ %i.ei, %.lr.ph.split.us.preheader ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod97 = icmp ne i32 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.04254.us.epil = phi ptr [ %i.hm, %.lr.ph.split.us.epil ], [ %.04254.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 4 uses
  %.04353.us.epil = phi ptr [ %i.hl, %.lr.ph.split.us.epil ], [ %.04353.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.hg = load i8, ptr %.04353.us.epil, align 1, !tbaa !74
  %i.hh = uitofp reassoc nsz arcp contract afn i8 %i.hg to float
  %i.hi = fmul reassoc nnan nsz arcp contract afn float %i.hh, f0x3EC8C8C9
  store float %i.hi, ptr %.04254.us.epil, align 4, !tbaa !75
  %i.hj = getelementptr inbounds nuw i8, ptr %.04254.us.epil, i64 4
  store <2 x float> zeroinitializer, ptr %i.hj, align 4, !tbaa !75
  %i.hk = getelementptr inbounds nuw i8, ptr %.04254.us.epil, i64 12
  store float 0.000000e+00, ptr %i.hk, align 4, !tbaa !75
  %i.hl = getelementptr inbounds nuw i8, ptr %.04353.us.epil, i64 %i.ev
  %i.hm = getelementptr inbounds nuw i8, ptr %.04254.us.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !98

._crit_edge.loopexit91.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit91.unr-lcssa, %.lr.ph.split.preheader
  %.04254.epil.init = phi ptr [ %i.eo, %.lr.ph.split.preheader ], [ %i.hf, %._crit_edge.loopexit91.unr-lcssa ] ; 4 uses
  %.04353.epil.init = phi ptr [ %i.ei, %.lr.ph.split.preheader ], [ %i.he, %._crit_edge.loopexit91.unr-lcssa ] ; 3 uses
  %lcmp.mod94 = trunc i32 %i.es to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.hn = load i8, ptr %.04353.epil.init, align 1, !tbaa !74
  %i.ho = uitofp reassoc nsz arcp contract afn i8 %i.hn to float
  %i.hp = fmul reassoc nnan nsz arcp contract afn float %i.ho, f0x3EC8C8C9
  store float %i.hp, ptr %.04254.epil.init, align 4, !tbaa !75
  %i.hq = getelementptr inbounds nuw i8, ptr %.04353.epil.init, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !74
  %i.hs = uitofp reassoc nsz arcp contract afn i8 %i.hr to float
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, -1.280000e+02
  %i.hu = getelementptr inbounds nuw i8, ptr %.04254.epil.init, i64 4
  store float %i.ht, ptr %i.hu, align 4, !tbaa !75
  %i.hv = getelementptr inbounds nuw i8, ptr %.04353.epil.init, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !74
  %i.hx = uitofp reassoc nsz arcp contract afn i8 %i.hw to float
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, -1.280000e+02
  %i.hz = getelementptr inbounds nuw i8, ptr %.04254.epil.init, i64 8
  store float %i.hy, ptr %i.hz, align 4, !tbaa !75
  %i.ia = getelementptr inbounds nuw i8, ptr %.04254.epil.init, i64 12
  store float 0.000000e+00, ptr %i.ia, align 4, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit91.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %.preheader
  tail call void @cmsDoTransform(ptr noundef %i.g, ptr noundef %i.eo, ptr noundef %i.eo, i32 noundef %i.es) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ib = load i32, ptr %i.h, align 4, !tbaa !67
  %i.ic = zext i32 %i.ib to i64
  %i.id = icmp samesign ult i64 %indvars.iv.next, %i.ic
  br i1 %i.id, label %.lr.ph63.split, label %.thread49

.thread49:                                        ; preds = %.lr.ph63.split, %._crit_edge, %.lr.ph63.split.us, %._crit_edge.us, %bb.a
  %.046 = phi i32 [ 1, %bb.a ], [ 1, %._crit_edge.us ], [ -1, %.lr.ph63.split.us ], [ 1, %._crit_edge ], [ -1, %.lr.ph63.split ]
  tail call void @cmsDeleteTransform(ptr noundef %i.g) #11
  ret i32 %.046
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @_read_chunky_16_Lab(ptr nofree noundef nonnull readonly captures(none) %0, i16 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.12, i32 noundef 63) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = tail call ptr @dt_colorspaces_get_profile(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 63) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = tail call ptr @cmsCreateTransform(ptr noundef %i.c, i32 noundef 4849820, ptr noundef %i.f, i32 noundef 4456604, i32 noundef 0, i32 noundef 0) #11 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %.not69 = icmp eq i32 %i.i, 0
  br i1 %.not69, label %.thread51, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.a
  %i.j = icmp eq i16 %1, 8                        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = select i1 %i.j, float f0x3AC800C8, float f0x3AC8C8C9 ; 20 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  br i1 %i.j, label %.lr.ph65.split.us.preheader, label %.lr.ph65.split.preheader

.lr.ph65.split.preheader:                         ; preds = %.lr.ph65
  %i.p = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %i.n, i64 0
  %i.q = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %i.n, i64 0
  %i.r = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %i.n, i64 0
  %i.s = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %i.n, i64 0
  %i.t = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %i.n, i64 0
  br label %.lr.ph65.split

.lr.ph65.split.us.preheader:                      ; preds = %.lr.ph65
  %i.u = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %i.n, i64 0
  %i.v = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %i.n, i64 0
  %i.w = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %i.n, i64 0
  %i.x = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %i.n, i64 0
  %i.y = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %i.n, i64 0
  br label %.lr.ph65.split.us

.lr.ph65.split.us:                                ; preds = %.lr.ph65.split.us.preheader, %._crit_edge.us
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %._crit_edge.us ], [ 0, %.lr.ph65.split.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !71   ; 5 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.ab = shl nuw nsw i64 %indvars.iv80, 2
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !66
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul i64 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ae ; 6 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !22
  %i.ah = trunc nuw i64 %indvars.iv80 to i32
  %i.ai = tail call i32 @TIFFReadScanline(ptr noundef %i.ag, ptr noundef %i.z, i32 noundef %i.ah, i16 noundef zeroext 0) #11
  %.not.us = icmp eq i32 %i.ai, -1
  br i1 %.not.us, label %.thread51, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph65.split.us
  %i.aj = load i32, ptr %i.m, align 8, !tbaa !66  ; 8 uses
  %.not71 = icmp eq i32 %i.aj, 0
  br i1 %.not71, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ak = load i16, ptr %i.o, align 2, !tbaa !68  ; 2 uses
  %i.al = icmp ult i16 %i.ak, 3
  %i.am = zext i16 %i.ak to i64                   ; 10 uses
  br i1 %i.al, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us67.preheader

.lr.ph.split.us67.preheader:                      ; preds = %.lr.ph.us
  %xtraiter103 = and i32 %i.aj, 3                 ; 3 uses
  %i.an = icmp ult i32 %i.aj, 4
  br i1 %i.an, label %.lr.ph.split.us67.epil.preheader, label %.lr.ph.split.us67.preheader.new

.lr.ph.split.us67.preheader.new:                  ; preds = %.lr.ph.split.us67.preheader
  %unroll_iter107 = and i32 %i.aj, -4
  br label %.lr.ph.split.us67

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %xtraiter109 = and i32 %i.aj, 3                 ; 3 uses
  %i.ao = icmp ult i32 %i.aj, 4
  br i1 %i.ao, label %.lr.ph.split.us.us.epil.preheader, label %.lr.ph.split.us.us.preheader.new

.lr.ph.split.us.us.preheader.new:                 ; preds = %.lr.ph.split.us.us.preheader
  %unroll_iter113 = and i32 %i.aj, -4
  br label %.lr.ph.split.us.us

.lr.ph.split.us67:                                ; preds = %.lr.ph.split.us67, %.lr.ph.split.us67.preheader.new
  %.04456.us59.us = phi ptr [ %i.af, %.lr.ph.split.us67.preheader.new ], [ %i.cg, %.lr.ph.split.us67 ] ; 5 uses
  %.04555.us60.us = phi ptr [ %i.z, %.lr.ph.split.us67.preheader.new ], [ %i.cf, %.lr.ph.split.us67 ] ; 3 uses
  %niter108 = phi i32 [ 0, %.lr.ph.split.us67.preheader.new ], [ %niter108.next.3, %.lr.ph.split.us67 ]
  %i.ap = load i16, ptr %.04555.us60.us, align 2, !tbaa !23
  %i.aq = uitofp reassoc nsz arcp contract afn i16 %i.ap to float
  %i.ar = getelementptr inbounds nuw i8, ptr %.04555.us60.us, i64 2
  %i.as = load <2 x i16>, ptr %i.ar, align 2, !tbaa !23
  %i.at = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aq, i64 0
  %i.au = shufflevector <2 x i16> %i.as, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = sitofp <4 x i16> %i.au to <4 x float>
  %i.aw = shufflevector <4 x float> %i.at, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ax = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.u, %i.aw
  store <4 x float> %i.ax, ptr %.04456.us59.us, align 4, !tbaa !75
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.04555.us60.us, i64 %i.am ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 16
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !23
  %i.bb = uitofp reassoc nsz arcp contract afn i16 %i.ba to float
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bd = load <2 x i16>, ptr %i.bc, align 2, !tbaa !23
  %i.be = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bb, i64 0
  %i.bf = shufflevector <2 x i16> %i.bd, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = sitofp <4 x i16> %i.bf to <4 x float>
  %i.bh = shufflevector <4 x float> %i.be, <4 x float> %i.bg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bi = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.v, %i.bh
  store <4 x float> %i.bi, ptr %i.az, align 4, !tbaa !75
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.am ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 32
  %i.bl = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bm = uitofp reassoc nsz arcp contract afn i16 %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load <2 x i16>, ptr %i.bn, align 2, !tbaa !23
  %i.bp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bm, i64 0
  %i.bq = shufflevector <2 x i16> %i.bo, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = sitofp <4 x i16> %i.bq to <4 x float>
  %i.bs = shufflevector <4 x float> %i.bp, <4 x float> %i.br, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bt = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.w, %i.bs
  store <4 x float> %i.bt, ptr %i.bk, align 4, !tbaa !75
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.am ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 48
  %i.bw = load i16, ptr %i.bu, align 2, !tbaa !23
  %i.bx = uitofp reassoc nsz arcp contract afn i16 %i.bw to float
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bz = load <2 x i16>, ptr %i.by, align 2, !tbaa !23
  %i.ca = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bx, i64 0
  %i.cb = shufflevector <2 x i16> %i.bz, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = sitofp <4 x i16> %i.cb to <4 x float>
  %i.cd = shufflevector <4 x float> %i.ca, <4 x float> %i.cc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ce = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.x, %i.cd
  store <4 x float> %i.ce, ptr %i.bv, align 4, !tbaa !75
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.am ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 64 ; 2 uses
  %niter108.next.3 = add nuw i32 %niter108, 4     ; 2 uses
  %niter108.ncmp.3 = icmp eq i32 %niter108.next.3, %unroll_iter107
  br i1 %niter108.ncmp.3, label %._crit_edge.us.loopexit92.unr-lcssa, label %.lr.ph.split.us67

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.us.preheader.new
  %.04456.us.us = phi ptr [ %i.af, %.lr.ph.split.us.us.preheader.new ], [ %i.di, %.lr.ph.split.us.us ] ; 13 uses
  %.04555.us.us = phi ptr [ %i.z, %.lr.ph.split.us.us.preheader.new ], [ %i.dh, %.lr.ph.split.us.us ] ; 2 uses
  %niter114 = phi i32 [ 0, %.lr.ph.split.us.us.preheader.new ], [ %niter114.next.3, %.lr.ph.split.us.us ]
  %i.ch = load i16, ptr %.04555.us.us, align 2, !tbaa !23
  %i.ci = uitofp reassoc nsz arcp contract afn i16 %i.ch to float
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.ci
  store float %i.cj, ptr %.04456.us.us, align 4, !tbaa !75
  %i.ck = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 4
  store <2 x float> zeroinitializer, ptr %i.ck, align 4, !tbaa !75
  %i.cl = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 12
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !75
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.04555.us.us, i64 %i.am ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 16
  %i.co = load i16, ptr %i.cm, align 2, !tbaa !23
  %i.cp = uitofp reassoc nsz arcp contract afn i16 %i.co to float
  %i.cq = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.cp
  store float %i.cq, ptr %i.cn, align 4, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 20
  store <2 x float> zeroinitializer, ptr %i.cr, align 4, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 28
  store float 0.000000e+00, ptr %i.cs, align 4, !tbaa !75
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.am ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 32
  %i.cv = load i16, ptr %i.ct, align 2, !tbaa !23
  %i.cw = uitofp reassoc nsz arcp contract afn i16 %i.cv to float
  %i.cx = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.cw
  store float %i.cx, ptr %i.cu, align 4, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 36
  store <2 x float> zeroinitializer, ptr %i.cy, align 4, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 44
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !75
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.am ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 48
  %i.dc = load i16, ptr %i.da, align 2, !tbaa !23
  %i.dd = uitofp reassoc nsz arcp contract afn i16 %i.dc to float
  %i.de = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.dd
  store float %i.de, ptr %i.db, align 4, !tbaa !75
  %i.df = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 52
  store <2 x float> zeroinitializer, ptr %i.df, align 4, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 60
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !75
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.am ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 64 ; 2 uses
  %niter114.next.3 = add nuw i32 %niter114, 4     ; 2 uses
  %niter114.ncmp.3 = icmp eq i32 %niter114.next.3, %unroll_iter113
  br i1 %niter114.ncmp.3, label %._crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.split.us.us

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.us
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %._crit_edge.us, label %.lr.ph.split.us.us.epil.preheader

.lr.ph.split.us.us.epil.preheader:                ; preds = %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph.split.us.us.preheader
  %.04456.us.us.epil.init = phi ptr [ %i.af, %.lr.ph.split.us.us.preheader ], [ %i.di, %._crit_edge.us.loopexit.unr-lcssa ]
  %.04555.us.us.epil.init = phi ptr [ %i.z, %.lr.ph.split.us.us.preheader ], [ %i.dh, %._crit_edge.us.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i32 %xtraiter109, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.split.us.us.epil

.lr.ph.split.us.us.epil:                          ; preds = %.lr.ph.split.us.us.epil, %.lr.ph.split.us.us.epil.preheader
  %.04456.us.us.epil = phi ptr [ %i.dp, %.lr.ph.split.us.us.epil ], [ %.04456.us.us.epil.init, %.lr.ph.split.us.us.epil.preheader ] ; 4 uses
  %.04555.us.us.epil = phi ptr [ %i.do, %.lr.ph.split.us.us.epil ], [ %.04555.us.us.epil.init, %.lr.ph.split.us.us.epil.preheader ] ; 2 uses
  %epil.iter110 = phi i32 [ %epil.iter110.next, %.lr.ph.split.us.us.epil ], [ 0, %.lr.ph.split.us.us.epil.preheader ]
  %i.dj = load i16, ptr %.04555.us.us.epil, align 2, !tbaa !23
  %i.dk = uitofp reassoc nsz arcp contract afn i16 %i.dj to float
  %i.dl = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.dk
  store float %i.dl, ptr %.04456.us.us.epil, align 4, !tbaa !75
  %i.dm = getelementptr inbounds nuw i8, ptr %.04456.us.us.epil, i64 4
  store <2 x float> zeroinitializer, ptr %i.dm, align 4, !tbaa !75
  %i.dn = getelementptr inbounds nuw i8, ptr %.04456.us.us.epil, i64 12
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !75
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.04555.us.us.epil, i64 %i.am
  %i.dp = getelementptr inbounds nuw i8, ptr %.04456.us.us.epil, i64 16
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %._crit_edge.us, label %.lr.ph.split.us.us.epil, !llvm.loop !99

._crit_edge.us.loopexit92.unr-lcssa:              ; preds = %.lr.ph.split.us67
  %lcmp.mod105.not = icmp eq i32 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %._crit_edge.us, label %.lr.ph.split.us67.epil.preheader

.lr.ph.split.us67.epil.preheader:                 ; preds = %._crit_edge.us.loopexit92.unr-lcssa, %.lr.ph.split.us67.preheader
  %.04456.us59.us.epil.init = phi ptr [ %i.af, %.lr.ph.split.us67.preheader ], [ %i.cg, %._crit_edge.us.loopexit92.unr-lcssa ]
  %.04555.us60.us.epil.init = phi ptr [ %i.z, %.lr.ph.split.us67.preheader ], [ %i.cf, %._crit_edge.us.loopexit92.unr-lcssa ]
  %lcmp.mod106 = icmp ne i32 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.split.us67.epil

.lr.ph.split.us67.epil:                           ; preds = %.lr.ph.split.us67.epil, %.lr.ph.split.us67.epil.preheader
  %.04456.us59.us.epil = phi ptr [ %i.ea, %.lr.ph.split.us67.epil ], [ %.04456.us59.us.epil.init, %.lr.ph.split.us67.epil.preheader ] ; 2 uses
  %.04555.us60.us.epil = phi ptr [ %i.dz, %.lr.ph.split.us67.epil ], [ %.04555.us60.us.epil.init, %.lr.ph.split.us67.epil.preheader ] ; 3 uses
  %epil.iter104 = phi i32 [ %epil.iter104.next, %.lr.ph.split.us67.epil ], [ 0, %.lr.ph.split.us67.epil.preheader ]
  %i.dq = load i16, ptr %.04555.us60.us.epil, align 2, !tbaa !23
  %i.dr = uitofp reassoc nsz arcp contract afn i16 %i.dq to float
  %i.ds = getelementptr inbounds nuw i8, ptr %.04555.us60.us.epil, i64 2
  %i.dt = load <2 x i16>, ptr %i.ds, align 2, !tbaa !23
  %i.du = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.dr, i64 0
  %i.dv = shufflevector <2 x i16> %i.dt, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dw = sitofp <4 x i16> %i.dv to <4 x float>
  %i.dx = shufflevector <4 x float> %i.du, <4 x float> %i.dw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dy = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.y, %i.dx
  store <4 x float> %i.dy, ptr %.04456.us59.us.epil, align 4, !tbaa !75
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.04555.us60.us.epil, i64 %i.am
  %i.ea = getelementptr inbounds nuw i8, ptr %.04456.us59.us.epil, i64 16
  %epil.iter104.next = add i32 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i32 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %._crit_edge.us, label %.lr.ph.split.us67.epil, !llvm.loop !100

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit92.unr-lcssa, %.lr.ph.split.us67.epil, %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph.split.us.us.epil, %.preheader.us
  tail call void @cmsDoTransform(ptr noundef %i.g, ptr noundef %i.af, ptr noundef %i.af, i32 noundef %i.aj) #11
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.eb = load i32, ptr %i.h, align 4, !tbaa !67
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp samesign ult i64 %indvars.iv.next81, %i.ec
  br i1 %i.ed, label %.lr.ph65.split.us, label %.thread51

.lr.ph65.split:                                   ; preds = %.lr.ph65.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph65.split.preheader ] ; 3 uses
  %i.ee = load ptr, ptr %i.k, align 8, !tbaa !71  ; 5 uses
  %i.ef = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.eg = shl nuw nsw i64 %indvars.iv, 2
  %i.eh = load i32, ptr %i.m, align 8, !tbaa !66
  %i.ei = zext i32 %i.eh to i64
  %i.ej = mul i64 %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ej ; 6 uses
  %i.el = load ptr, ptr %0, align 8, !tbaa !22
  %i.em = trunc nuw i64 %indvars.iv to i32
  %i.en = tail call i32 @TIFFReadScanline(ptr noundef %i.el, ptr noundef %i.ee, i32 noundef %i.em, i16 noundef zeroext 0) #11
  %.not = icmp eq i32 %i.en, -1
  br i1 %.not, label %.thread51, label %.preheader

.preheader:                                       ; preds = %.lr.ph65.split
  %i.eo = load i32, ptr %i.m, align 8, !tbaa !66  ; 8 uses
  %.not70 = icmp eq i32 %i.eo, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ep = load i16, ptr %i.o, align 2, !tbaa !68  ; 2 uses
  %i.eq = icmp ult i16 %i.ep, 3
  %i.er = zext i16 %i.ep to i64                   ; 10 uses
  br i1 %i.eq, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i32 %i.eo, 3                    ; 3 uses
  %i.es = icmp ult i32 %i.eo, 4
  br i1 %i.es, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i32 %i.eo, -4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter97 = and i32 %i.eo, 3                  ; 3 uses
  %i.et = icmp ult i32 %i.eo, 4
  br i1 %i.et, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter101 = and i32 %i.eo, -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.04456.us = phi ptr [ %i.ek, %.lr.ph.split.us.preheader.new ], [ %i.fv, %.lr.ph.split.us ] ; 13 uses
  %.04555.us = phi ptr [ %i.ee, %.lr.ph.split.us.preheader.new ], [ %i.fu, %.lr.ph.split.us ] ; 2 uses
  %niter102 = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter102.next.3, %.lr.ph.split.us ]
  %i.eu = load i16, ptr %.04555.us, align 2, !tbaa !23
  %i.ev = uitofp reassoc nsz arcp contract afn i16 %i.eu to float
  %i.ew = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.ev
  store float %i.ew, ptr %.04456.us, align 4, !tbaa !75
  %i.ex = getelementptr inbounds nuw i8, ptr %.04456.us, i64 4
  store <2 x float> zeroinitializer, ptr %i.ex, align 4, !tbaa !75
  %i.ey = getelementptr inbounds nuw i8, ptr %.04456.us, i64 12
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !75
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.04555.us, i64 %i.er ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.04456.us, i64 16
  %i.fb = load i16, ptr %i.ez, align 2, !tbaa !23
  %i.fc = uitofp reassoc nsz arcp contract afn i16 %i.fb to float
  %i.fd = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.fc
  store float %i.fd, ptr %i.fa, align 4, !tbaa !75
  %i.fe = getelementptr inbounds nuw i8, ptr %.04456.us, i64 20
  store <2 x float> zeroinitializer, ptr %i.fe, align 4, !tbaa !75
  %i.ff = getelementptr inbounds nuw i8, ptr %.04456.us, i64 28
  store float 0.000000e+00, ptr %i.ff, align 4, !tbaa !75
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.er ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.04456.us, i64 32
  %i.fi = load i16, ptr %i.fg, align 2, !tbaa !23
  %i.fj = uitofp reassoc nsz arcp contract afn i16 %i.fi to float
  %i.fk = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.fj
  store float %i.fk, ptr %i.fh, align 4, !tbaa !75
  %i.fl = getelementptr inbounds nuw i8, ptr %.04456.us, i64 36
  store <2 x float> zeroinitializer, ptr %i.fl, align 4, !tbaa !75
  %i.fm = getelementptr inbounds nuw i8, ptr %.04456.us, i64 44
  store float 0.000000e+00, ptr %i.fm, align 4, !tbaa !75
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.er ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.04456.us, i64 48
  %i.fp = load i16, ptr %i.fn, align 2, !tbaa !23
  %i.fq = uitofp reassoc nsz arcp contract afn i16 %i.fp to float
  %i.fr = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.fq
  store float %i.fr, ptr %i.fo, align 4, !tbaa !75
  %i.fs = getelementptr inbounds nuw i8, ptr %.04456.us, i64 52
  store <2 x float> zeroinitializer, ptr %i.fs, align 4, !tbaa !75
  %i.ft = getelementptr inbounds nuw i8, ptr %.04456.us, i64 60
  store float 0.000000e+00, ptr %i.ft, align 4, !tbaa !75
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.er ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.04456.us, i64 64 ; 2 uses
  %niter102.next.3 = add nuw i32 %niter102, 4     ; 2 uses
  %niter102.ncmp.3 = icmp eq i32 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.04456 = phi ptr [ %i.ek, %.lr.ph.split.preheader.new ], [ %i.hr, %.lr.ph.split ] ; 5 uses
  %.04555 = phi ptr [ %i.ee, %.lr.ph.split.preheader.new ], [ %i.hq, %.lr.ph.split ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.fw = load i16, ptr %.04555, align 2, !tbaa !23
  %i.fx = uitofp reassoc nsz arcp contract afn i16 %i.fw to float
  %i.fy = getelementptr inbounds nuw i8, ptr %.04555, i64 2
  %i.fz = load <2 x i16>, ptr %i.fy, align 2, !tbaa !23
  %i.ga = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fx, i64 0
  %i.gb = shufflevector <2 x i16> %i.fz, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gc = uitofp <4 x i16> %i.gb to <4 x float>
  %i.gd = shufflevector <4 x float> %i.ga, <4 x float> %i.gc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ge = fmul reassoc nnan arcp contract afn <4 x float> %i.p, %i.gd
  %i.gf = fadd reassoc nsz arcp contract afn <4 x float> %i.ge, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.gf, ptr %.04456, align 4, !tbaa !75
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.04555, i64 %i.er ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.04456, i64 16
  %i.gi = load i16, ptr %i.gg, align 2, !tbaa !23
  %i.gj = uitofp reassoc nsz arcp contract afn i16 %i.gi to float
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gl = load <2 x i16>, ptr %i.gk, align 2, !tbaa !23
  %i.gm = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.gj, i64 0
  %i.gn = shufflevector <2 x i16> %i.gl, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = uitofp <4 x i16> %i.gn to <4 x float>
  %i.gp = shufflevector <4 x float> %i.gm, <4 x float> %i.go, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gq = fmul reassoc nnan arcp contract afn <4 x float> %i.q, %i.gp
  %i.gr = fadd reassoc nsz arcp contract afn <4 x float> %i.gq, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.gr, ptr %i.gh, align 4, !tbaa !75
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.er ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.04456, i64 32
  %i.gu = load i16, ptr %i.gs, align 2, !tbaa !23
  %i.gv = uitofp reassoc nsz arcp contract afn i16 %i.gu to float
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gx = load <2 x i16>, ptr %i.gw, align 2, !tbaa !23
  %i.gy = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.gv, i64 0
  %i.gz = shufflevector <2 x i16> %i.gx, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ha = uitofp <4 x i16> %i.gz to <4 x float>
  %i.hb = shufflevector <4 x float> %i.gy, <4 x float> %i.ha, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.hc = fmul reassoc nnan arcp contract afn <4 x float> %i.r, %i.hb
  %i.hd = fadd reassoc nsz arcp contract afn <4 x float> %i.hc, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.hd, ptr %i.gt, align 4, !tbaa !75
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.er ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.04456, i64 48
  %i.hg = load i16, ptr %i.he, align 2, !tbaa !23
  %i.hh = uitofp reassoc nsz arcp contract afn i16 %i.hg to float
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hj = load <2 x i16>, ptr %i.hi, align 2, !tbaa !23
  %i.hk = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.hh, i64 0
  %i.hl = shufflevector <2 x i16> %i.hj, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hm = uitofp <4 x i16> %i.hl to <4 x float>
  %i.hn = shufflevector <4 x float> %i.hk, <4 x float> %i.hm, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ho = fmul reassoc nnan arcp contract afn <4 x float> %i.s, %i.hn
  %i.hp = fadd reassoc nsz arcp contract afn <4 x float> %i.ho, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.hp, ptr %i.hf, align 4, !tbaa !75
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.er ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.04456, i64 64 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit93.unr-lcssa, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod99.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.04456.us.epil.init = phi ptr [ %i.ek, %.lr.ph.split.us.preheader ], [ %i.fv, %._crit_edge.loopexit.unr-lcssa ]
  %.04555.us.epil.init = phi ptr [ %i.ee, %.lr.ph.split.us.preheader ], [ %i.fu, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i32 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.04456.us.epil = phi ptr [ %i.hy, %.lr.ph.split.us.epil ], [ %.04456.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 4 uses
  %.04555.us.epil = phi ptr [ %i.hx, %.lr.ph.split.us.epil ], [ %.04555.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter98 = phi i32 [ %epil.iter98.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.hs = load i16, ptr %.04555.us.epil, align 2, !tbaa !23
  %i.ht = uitofp reassoc nsz arcp contract afn i16 %i.hs to float
  %i.hu = fmul reassoc nnan nsz arcp contract afn float %i.n, %i.ht
  store float %i.hu, ptr %.04456.us.epil, align 4, !tbaa !75
  %i.hv = getelementptr inbounds nuw i8, ptr %.04456.us.epil, i64 4
  store <2 x float> zeroinitializer, ptr %i.hv, align 4, !tbaa !75
  %i.hw = getelementptr inbounds nuw i8, ptr %.04456.us.epil, i64 12
  store float 0.000000e+00, ptr %i.hw, align 4, !tbaa !75
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %.04555.us.epil, i64 %i.er
  %i.hy = getelementptr inbounds nuw i8, ptr %.04456.us.epil, i64 16
  %epil.iter98.next = add i32 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i32 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !101

._crit_edge.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit93.unr-lcssa, %.lr.ph.split.preheader
  %.04456.epil.init = phi ptr [ %i.ek, %.lr.ph.split.preheader ], [ %i.hr, %._crit_edge.loopexit93.unr-lcssa ]
  %.04555.epil.init = phi ptr [ %i.ee, %.lr.ph.split.preheader ], [ %i.hq, %._crit_edge.loopexit93.unr-lcssa ]
  %lcmp.mod96 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %.04456.epil = phi ptr [ %i.ik, %.lr.ph.split.epil ], [ %.04456.epil.init, %.lr.ph.split.epil.preheader ] ; 2 uses
  %.04555.epil = phi ptr [ %i.ij, %.lr.ph.split.epil ], [ %.04555.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.hz = load i16, ptr %.04555.epil, align 2, !tbaa !23
  %i.ia = uitofp reassoc nsz arcp contract afn i16 %i.hz to float
  %i.ib = getelementptr inbounds nuw i8, ptr %.04555.epil, i64 2
  %i.ic = load <2 x i16>, ptr %i.ib, align 2, !tbaa !23
  %i.id = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ia, i64 0
  %i.ie = shufflevector <2 x i16> %i.ic, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.if = uitofp <4 x i16> %i.ie to <4 x float>
  %i.ig = shufflevector <4 x float> %i.id, <4 x float> %i.if, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ih = fmul reassoc nnan arcp contract afn <4 x float> %i.t, %i.ig
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.ih, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.ii, ptr %.04456.epil, align 4, !tbaa !75
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.04555.epil, i64 %i.er
  %i.ik = getelementptr inbounds nuw i8, ptr %.04456.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !102

._crit_edge:                                      ; preds = %._crit_edge.loopexit93.unr-lcssa, %.lr.ph.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %.preheader
  tail call void @cmsDoTransform(ptr noundef %i.g, ptr noundef %i.ek, ptr noundef %i.ek, i32 noundef %i.eo) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.il = load i32, ptr %i.h, align 4, !tbaa !67
  %i.im = zext i32 %i.il to i64
  %i.in = icmp samesign ult i64 %indvars.iv.next, %i.im
  br i1 %i.in, label %.lr.ph65.split, label %.thread51

.thread51:                                        ; preds = %.lr.ph65.split, %._crit_edge, %.lr.ph65.split.us, %._crit_edge.us, %bb.a
  %.048 = phi i32 [ 1, %bb.a ], [ 1, %._crit_edge.us ], [ -1, %.lr.ph65.split.us ], [ 1, %._crit_edge ], [ -1, %.lr.ph65.split ]
  tail call void @cmsDeleteTransform(ptr noundef %i.g) #11
  ret i32 %.048
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @_read_chunky_8(ptr nofree noundef nonnull readonly captures(none) %0, i16 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i16 %1, 0                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67
  %.not3946.not = icmp eq i32 %i.d, 0
  br i1 %.not3946.not, label %.critedge, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.pre = load i32, ptr %i.f, align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %._crit_edge
  %i.h = phi i32 [ %.pre, %.lr.ph49 ], [ %i.r, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !71   ; 9 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = tail call i32 @TIFFReadScanline(ptr noundef %i.k, ptr noundef %i.i, i32 noundef %i.l, i16 noundef zeroext 0) #11
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = shl nuw nsw i64 %indvars.iv, 2
  %i.o = zext i32 %i.h to i64
  %i.p = mul i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p ; 8 uses
  %i.r = load i32, ptr %i.f, align 8, !tbaa !66   ; 16 uses
  %.not52 = icmp eq i32 %i.r, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = load i16, ptr %i.g, align 2, !tbaa !68   ; 2 uses
  %i.t = icmp ult i16 %i.s, 3
  %i.u = zext i16 %i.s to i64                     ; 14 uses
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.a, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter75 = and i32 %i.r, 3                   ; 3 uses
  %i.v = icmp ult i32 %i.r, 4
  br i1 %i.v, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter78 = and i32 %i.r, -4
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %xtraiter80 = and i32 %i.r, 3                   ; 3 uses
  %i.w = icmp ult i32 %i.r, 4
  br i1 %i.w, label %.lr.ph.split.us.split.us.epil.preheader, label %.lr.ph.split.us.split.us.preheader.new

.lr.ph.split.us.split.us.preheader.new:           ; preds = %.lr.ph.split.us.split.us.preheader
  %unroll_iter84 = and i32 %i.r, -4
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.preheader.new
  %.03341.us.us = phi ptr [ %i.q, %.lr.ph.split.us.split.us.preheader.new ], [ %i.bc, %.lr.ph.split.us.split.us ] ; 5 uses
  %.03440.us.us = phi ptr [ %i.i, %.lr.ph.split.us.split.us.preheader.new ], [ %i.bb, %.lr.ph.split.us.split.us ] ; 2 uses
  %niter85 = phi i32 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %niter85.next.3, %.lr.ph.split.us.split.us ]
  %i.x = load i8, ptr %.03440.us.us, align 1, !tbaa !74
  %i.y = uitofp reassoc nsz arcp contract afn i8 %i.x to float
  %i.z = fmul reassoc nnan nsz arcp contract afn float %i.y, f0x3B808081
  %i.aa = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ab = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aa, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ac, ptr %.03341.us.us, align 4, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %.03440.us.us, i64 %i.u ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03341.us.us, i64 16
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !74
  %i.ag = uitofp reassoc nsz arcp contract afn i8 %i.af to float
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %i.ag, f0x3B808081
  %i.ai = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ah
  %i.aj = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ai, i64 0
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ak, ptr %i.ae, align 4, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03341.us.us, i64 32
  %i.an = load i8, ptr %i.al, align 1, !tbaa !74
  %i.ao = uitofp reassoc nsz arcp contract afn i8 %i.an to float
  %i.ap = fmul reassoc nnan nsz arcp contract afn float %i.ao, f0x3B808081
  %i.aq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ap
  %i.ar = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aq, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.as, ptr %i.am, align 4, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.u ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03341.us.us, i64 48
  %i.av = load i8, ptr %i.at, align 1, !tbaa !74
  %i.aw = uitofp reassoc nsz arcp contract afn i8 %i.av to float
  %i.ax = fmul reassoc nnan nsz arcp contract afn float %i.aw, f0x3B808081
  %i.ay = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ax
  %i.az = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ay, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ba, ptr %i.au, align 4, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.u ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03341.us.us, i64 64 ; 2 uses
  %niter85.next.3 = add nuw i32 %niter85, 4       ; 2 uses
  %niter85.ncmp.3 = icmp eq i32 %niter85.next.3, %unroll_iter84
  br i1 %niter85.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.preheader.new
  %.03341.us = phi ptr [ %i.q, %.lr.ph.split.us.split.preheader.new ], [ %i.ca, %.lr.ph.split.us.split ] ; 5 uses
  %.03440.us = phi ptr [ %i.i, %.lr.ph.split.us.split.preheader.new ], [ %i.bz, %.lr.ph.split.us.split ] ; 2 uses
  %niter79 = phi i32 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter79.next.3, %.lr.ph.split.us.split ]
  %i.bd = load i8, ptr %.03440.us, align 1, !tbaa !74
  %i.be = uitofp reassoc nsz arcp contract afn i8 %i.bd to float
  %.scalar = fmul reassoc nnan nsz arcp contract afn float %i.be, f0x3B808081
  %i.bf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bg, ptr %.03341.us, align 4, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %.03440.us, i64 %i.u ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03341.us, i64 16
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !74
  %i.bk = uitofp reassoc nsz arcp contract afn i8 %i.bj to float
  %.scalar.1 = fmul reassoc nnan nsz arcp contract afn float %i.bk, f0x3B808081
  %i.bl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.1, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bm, ptr %i.bi, align 4, !tbaa !75
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.u ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.03341.us, i64 32
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !74
  %i.bq = uitofp reassoc nsz arcp contract afn i8 %i.bp to float
  %.scalar.2 = fmul reassoc nnan nsz arcp contract afn float %i.bq, f0x3B808081
  %i.br = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.2, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bs, ptr %i.bo, align 4, !tbaa !75
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.u ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.03341.us, i64 48
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !74
  %i.bw = uitofp reassoc nsz arcp contract afn i8 %i.bv to float
  %.scalar.3 = fmul reassoc nnan nsz arcp contract afn float %i.bw, f0x3B808081
  %i.bx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.3, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.by, ptr %i.bu, align 4, !tbaa !75
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.u ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03341.us, i64 64 ; 2 uses
  %niter79.next.3 = add nuw i32 %niter79, 4       ; 2 uses
  %niter79.ncmp.3 = icmp eq i32 %niter79.next.3, %unroll_iter78
  br i1 %niter79.ncmp.3, label %._crit_edge.loopexit66.unr-lcssa, label %.lr.ph.split.us.split

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.a, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %xtraiter = and i32 %i.r, 1
  %i.cb = icmp eq i32 %i.r, 1
  br i1 %i.cb, label %.lr.ph.split.split.epil.preheader, label %.lr.ph.split.split.preheader.new

.lr.ph.split.split.preheader.new:                 ; preds = %.lr.ph.split.split.preheader
  %unroll_iter = and i32 %i.r, -2
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %xtraiter70 = and i32 %i.r, 1
  %i.cc = icmp eq i32 %i.r, 1
  br i1 %i.cc, label %.lr.ph.split.split.us.epil.preheader, label %.lr.ph.split.split.us.preheader.new

.lr.ph.split.split.us.preheader.new:              ; preds = %.lr.ph.split.split.us.preheader
  %unroll_iter73 = and i32 %i.r, -2
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.us.preheader.new
  %.03341.us44 = phi ptr [ %i.q, %.lr.ph.split.split.us.preheader.new ], [ %i.dk, %.lr.ph.split.split.us ] ; 9 uses
  %.03440.us45 = phi ptr [ %i.i, %.lr.ph.split.split.us.preheader.new ], [ %i.dj, %.lr.ph.split.split.us ] ; 4 uses
  %niter74 = phi i32 [ 0, %.lr.ph.split.split.us.preheader.new ], [ %niter74.next.1, %.lr.ph.split.split.us ]
  %i.cd = load i8, ptr %.03440.us45, align 1, !tbaa !74
  %i.ce = uitofp reassoc nsz arcp contract afn i8 %i.cd to float
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.ce, f0x3B808081
end_hunk_0
begin_hunk_1_@_read_chunky_8:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.split.us.split.epil

.lr.ph.split.us.split.epil:                       ; preds = %.lr.ph.split.us.split.epil, %.lr.ph.split.us.split.epil.preheader
  %.03341.us.epil = phi ptr [ %i.fe, %.lr.ph.split.us.split.epil ], [ %.03341.us.epil.init, %.lr.ph.split.us.split.epil.preheader ] ; 2 uses
  %.03440.us.epil = phi ptr [ %i.fd, %.lr.ph.split.us.split.epil ], [ %.03440.us.epil.init, %.lr.ph.split.us.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.us.split.epil ], [ 0, %.lr.ph.split.us.split.epil.preheader ]
  %i.ez = load i8, ptr %.03440.us.epil, align 1, !tbaa !74
  %i.fa = uitofp reassoc nsz arcp contract afn i8 %i.ez to float
  %.scalar.epil = fmul reassoc nnan nsz arcp contract afn float %i.fa, f0x3B808081
  %i.fb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.epil, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.fc, ptr %.03341.us.epil, align 4, !tbaa !75
  %i.fd = getelementptr inbounds nuw i8, ptr %.03440.us.epil, i64 %i.u
  %i.fe = getelementptr inbounds nuw i8, ptr %.03341.us.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter75
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.split.epil, !llvm.loop !104

._crit_edge.loopexit67.unr-lcssa:                 ; preds = %.lr.ph.split.split.us
  %lcmp.mod71.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %._crit_edge, label %.lr.ph.split.split.us.epil.preheader

.lr.ph.split.split.us.epil.preheader:             ; preds = %._crit_edge.loopexit67.unr-lcssa, %.lr.ph.split.split.us.preheader
  %.03341.us44.epil.init = phi ptr [ %i.q, %.lr.ph.split.split.us.preheader ], [ %i.dk, %._crit_edge.loopexit67.unr-lcssa ] ; 4 uses
  %.03440.us45.epil.init = phi ptr [ %i.i, %.lr.ph.split.split.us.preheader ], [ %i.dj, %._crit_edge.loopexit67.unr-lcssa ] ; 3 uses
  %lcmp.mod72 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.ff = load i8, ptr %.03440.us45.epil.init, align 1, !tbaa !74
  %i.fg = uitofp reassoc nsz arcp contract afn i8 %i.ff to float
  %i.fh = fmul reassoc nnan nsz arcp contract afn float %i.fg, f0x3B808081
  %i.fi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fh
  store float %i.fi, ptr %.03341.us44.epil.init, align 4, !tbaa !75
  %i.fj = getelementptr inbounds nuw i8, ptr %.03440.us45.epil.init, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !74
  %i.fl = uitofp reassoc nsz arcp contract afn i8 %i.fk to float
  %i.fm = fmul reassoc nnan nsz arcp contract afn float %i.fl, f0x3B808081
  %i.fn = getelementptr inbounds nuw i8, ptr %.03341.us44.epil.init, i64 4
  store float %i.fm, ptr %i.fn, align 4, !tbaa !75
  %i.fo = getelementptr inbounds nuw i8, ptr %.03440.us45.epil.init, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !74
  %i.fq = uitofp reassoc nsz arcp contract afn i8 %i.fp to float
  %i.fr = fmul reassoc nnan nsz arcp contract afn float %i.fq, f0x3B808081
  %i.fs = getelementptr inbounds nuw i8, ptr %.03341.us44.epil.init, i64 8
  store float %i.fr, ptr %i.fs, align 4, !tbaa !75
  %i.ft = getelementptr inbounds nuw i8, ptr %.03341.us44.epil.init, i64 12
  store float 0.000000e+00, ptr %i.ft, align 4, !tbaa !75
  br label %._crit_edge

._crit_edge.loopexit68.unr-lcssa:                 ; preds = %.lr.ph.split.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.loopexit68.unr-lcssa, %.lr.ph.split.split.preheader
  %.03341.epil.init = phi ptr [ %i.q, %.lr.ph.split.split.preheader ], [ %i.eq, %._crit_edge.loopexit68.unr-lcssa ] ; 4 uses
  %.03440.epil.init = phi ptr [ %i.i, %.lr.ph.split.split.preheader ], [ %i.ep, %._crit_edge.loopexit68.unr-lcssa ] ; 3 uses
  %lcmp.mod69 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.fu = load i8, ptr %.03440.epil.init, align 1, !tbaa !74
  %i.fv = uitofp reassoc nsz arcp contract afn i8 %i.fu to float
  %i.fw = fmul reassoc nnan nsz arcp contract afn float %i.fv, f0x3B808081
  store float %i.fw, ptr %.03341.epil.init, align 4, !tbaa !75
  %i.fx = getelementptr inbounds nuw i8, ptr %.03440.epil.init, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !74
  %i.fz = uitofp reassoc nsz arcp contract afn i8 %i.fy to float
  %i.ga = fmul reassoc nnan nsz arcp contract afn float %i.fz, f0x3B808081
  %i.gb = getelementptr inbounds nuw i8, ptr %.03341.epil.init, i64 4
  store float %i.ga, ptr %i.gb, align 4, !tbaa !75
  %i.gc = getelementptr inbounds nuw i8, ptr %.03440.epil.init, i64 2
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !74
  %i.ge = uitofp reassoc nsz arcp contract afn i8 %i.gd to float
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.ge, f0x3B808081
  %i.gg = getelementptr inbounds nuw i8, ptr %.03341.epil.init, i64 8
  store float %i.gf, ptr %i.gg, align 4, !tbaa !75
  %i.gh = getelementptr inbounds nuw i8, ptr %.03341.epil.init, i64 12
  store float 0.000000e+00, ptr %i.gh, align 4, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.split.epil.preheader, %._crit_edge.loopexit68.unr-lcssa, %.lr.ph.split.split.us.epil.preheader, %._crit_edge.loopexit67.unr-lcssa, %._crit_edge.loopexit66.unr-lcssa, %.lr.ph.split.us.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.epil, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gi = load i32, ptr %i.c, align 4, !tbaa !67
  %i.gj = zext i32 %i.gi to i64
  %.not39 = icmp samesign ult i64 %indvars.iv.next, %i.gj
  br i1 %.not39, label %bb.b, label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  %spec.select = phi i32 [ 1, %bb.a ], [ -1, %bb.b ], [ 1, %._crit_edge ]
  ret i32 %spec.select
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @_read_chunky_16(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !67
  %.not44 = icmp eq i32 %i.c, 0
  br i1 %.not44, label %.critedge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.pre = load i32, ptr %i.e, align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41, %._crit_edge
  %i.g = phi i32 [ %.pre, %.lr.ph41 ], [ %i.m, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = tail call i32 @TIFFReadScanline(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.k, i16 noundef zeroext 0) #11
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.e, align 8, !tbaa !66   ; 8 uses
  %.not45 = icmp eq i32 %i.m, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = shl nuw nsw i64 %indvars.iv, 2
  %i.o = zext i32 %i.g to i64
  %i.p = mul i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 4 uses
  %i.r = load i16, ptr %i.f, align 2, !tbaa !68   ; 2 uses
  %i.s = icmp ult i16 %i.r, 3
  %i.t = zext i16 %i.r to i64                     ; 10 uses
  br i1 %i.s, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i32 %i.m, 3                     ; 3 uses
  %i.u = icmp ult i32 %i.m, 4
  br i1 %i.u, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i32 %i.m, -4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter53 = and i32 %i.m, 3                   ; 3 uses
  %i.v = icmp ult i32 %i.m, 4
  br i1 %i.v, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter57 = and i32 %i.m, -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.02937.us = phi ptr [ %i.q, %.lr.ph.split.us.preheader.new ], [ %i.at, %.lr.ph.split.us ] ; 5 uses
  %.03036.us = phi ptr [ %i.h, %.lr.ph.split.us.preheader.new ], [ %i.as, %.lr.ph.split.us ] ; 2 uses
  %niter58 = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter58.next.3, %.lr.ph.split.us ]
  %i.w = load i16, ptr %.03036.us, align 2, !tbaa !23
  %i.x = uitofp reassoc nsz arcp contract afn i16 %i.w to float
  %.scalar = fmul reassoc nnan nsz arcp contract afn float %i.x, f0x37800080
  %i.y = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.z, ptr %.02937.us, align 4, !tbaa !75
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.03036.us, i64 %i.t ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02937.us, i64 16
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !23
  %i.ad = uitofp reassoc nsz arcp contract afn i16 %i.ac to float
  %.scalar.1 = fmul reassoc nnan nsz arcp contract afn float %i.ad, f0x37800080
  %i.ae = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.1, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.af, ptr %i.ab, align 4, !tbaa !75
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.t ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02937.us, i64 32
  %i.ai = load i16, ptr %i.ag, align 2, !tbaa !23
  %i.aj = uitofp reassoc nsz arcp contract afn i16 %i.ai to float
  %.scalar.2 = fmul reassoc nnan nsz arcp contract afn float %i.aj, f0x37800080
  %i.ak = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.2, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.al, ptr %i.ah, align 4, !tbaa !75
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.t ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02937.us, i64 48
  %i.ao = load i16, ptr %i.am, align 2, !tbaa !23
  %i.ap = uitofp reassoc nsz arcp contract afn i16 %i.ao to float
  %.scalar.3 = fmul reassoc nnan nsz arcp contract afn float %i.ap, f0x37800080
  %i.aq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.3, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ar, ptr %i.an, align 4, !tbaa !75
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.t ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02937.us, i64 64 ; 2 uses
  %niter58.next.3 = add nuw i32 %niter58, 4       ; 2 uses
  %niter58.ncmp.3 = icmp eq i32 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.02937 = phi ptr [ %i.q, %.lr.ph.split.preheader.new ], [ %i.cl, %.lr.ph.split ] ; 5 uses
  %.03036 = phi ptr [ %i.h, %.lr.ph.split.preheader.new ], [ %i.ck, %.lr.ph.split ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.au = load i16, ptr %.03036, align 2, !tbaa !23
  %i.av = uitofp reassoc nsz arcp contract afn i16 %i.au to float
  %i.aw = getelementptr inbounds nuw i8, ptr %.03036, i64 2
  %i.ax = load <2 x i16>, ptr %i.aw, align 2, !tbaa !23
  %i.ay = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.av, i64 0
  %i.az = shufflevector <2 x i16> %i.ax, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = uitofp <4 x i16> %i.az to <4 x float>
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> %i.ba, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bb, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.bc, ptr %.02937, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.03036, i64 %i.t ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02937, i64 16
  %i.bf = load i16, ptr %i.bd, align 2, !tbaa !23
  %i.bg = uitofp reassoc nsz arcp contract afn i16 %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bi = load <2 x i16>, ptr %i.bh, align 2, !tbaa !23
  %i.bj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bg, i64 0
  %i.bk = shufflevector <2 x i16> %i.bi, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bl = uitofp <4 x i16> %i.bk to <4 x float>
  %i.bm = shufflevector <4 x float> %i.bj, <4 x float> %i.bl, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bn = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bm, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.bn, ptr %i.be, align 4, !tbaa !75
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.t ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02937, i64 32
  %i.bq = load i16, ptr %i.bo, align 2, !tbaa !23
  %i.br = uitofp reassoc nsz arcp contract afn i16 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bt = load <2 x i16>, ptr %i.bs, align 2, !tbaa !23
  %i.bu = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.br, i64 0
  %i.bv = shufflevector <2 x i16> %i.bt, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = uitofp <4 x i16> %i.bv to <4 x float>
  %i.bx = shufflevector <4 x float> %i.bu, <4 x float> %i.bw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.by = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bx, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.by, ptr %i.bp, align 4, !tbaa !75
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.t ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02937, i64 48
  %i.cb = load i16, ptr %i.bz, align 2, !tbaa !23
  %i.cc = uitofp reassoc nsz arcp contract afn i16 %i.cb to float
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.ce = load <2 x i16>, ptr %i.cd, align 2, !tbaa !23
  %i.cf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.cc, i64 0
  %i.cg = shufflevector <2 x i16> %i.ce, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = uitofp <4 x i16> %i.cg to <4 x float>
  %i.ci = shufflevector <4 x float> %i.cf, <4 x float> %i.ch, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ci, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.cj, ptr %i.ca, align 4, !tbaa !75
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.t ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02937, i64 64 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit51.unr-lcssa, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod55.not = icmp eq i32 %xtraiter53, 0
  br i1 %lcmp.mod55.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.02937.us.epil.init = phi ptr [ %i.q, %.lr.ph.split.us.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %.03036.us.epil.init = phi ptr [ %i.h, %.lr.ph.split.us.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter53, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.02937.us.epil = phi ptr [ %i.cr, %.lr.ph.split.us.epil ], [ %.02937.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %.03036.us.epil = phi ptr [ %i.cq, %.lr.ph.split.us.epil ], [ %.03036.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter54 = phi i32 [ %epil.iter54.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cm = load i16, ptr %.03036.us.epil, align 2, !tbaa !23
  %i.cn = uitofp reassoc nsz arcp contract afn i16 %i.cm to float
  %.scalar.epil = fmul reassoc nnan nsz arcp contract afn float %i.cn, f0x37800080
  %i.co = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.epil, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.cp, ptr %.02937.us.epil, align 4, !tbaa !75
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.03036.us.epil, i64 %i.t
  %i.cr = getelementptr inbounds nuw i8, ptr %.02937.us.epil, i64 16
  %epil.iter54.next = add i32 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i32 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !105

._crit_edge.loopexit51.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit51.unr-lcssa, %.lr.ph.split.preheader
  %.02937.epil.init = phi ptr [ %i.q, %.lr.ph.split.preheader ], [ %i.cl, %._crit_edge.loopexit51.unr-lcssa ]
  %.03036.epil.init = phi ptr [ %i.h, %.lr.ph.split.preheader ], [ %i.ck, %._crit_edge.loopexit51.unr-lcssa ]
  %lcmp.mod52 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %.02937.epil = phi ptr [ %i.dc, %.lr.ph.split.epil ], [ %.02937.epil.init, %.lr.ph.split.epil.preheader ] ; 2 uses
  %.03036.epil = phi ptr [ %i.db, %.lr.ph.split.epil ], [ %.03036.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.cs = load i16, ptr %.03036.epil, align 2, !tbaa !23
  %i.ct = uitofp reassoc nsz arcp contract afn i16 %i.cs to float
  %i.cu = getelementptr inbounds nuw i8, ptr %.03036.epil, i64 2
  %i.cv = load <2 x i16>, ptr %i.cu, align 2, !tbaa !23
  %i.cw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ct, i64 0
  %i.cx = shufflevector <2 x i16> %i.cv, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cy = uitofp <4 x i16> %i.cx to <4 x float>
  %i.cz = shufflevector <4 x float> %i.cw, <4 x float> %i.cy, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.da = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.cz, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.da, ptr %.02937.epil, align 4, !tbaa !75
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.03036.epil, i64 %i.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.02937.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !106

._crit_edge:                                      ; preds = %._crit_edge.loopexit51.unr-lcssa, %.lr.ph.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !67
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  %i.dg = phi i32 [ 1, %bb.a ], [ 1, %._crit_edge ], [ -1, %bb.b ]
  ret i32 %i.dg
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @_read_chunky_h(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !67
  %.not44 = icmp eq i32 %i.c, 0
  br i1 %.not44, label %.critedge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.pre = load i32, ptr %i.e, align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41, %._crit_edge
  %i.g = phi i32 [ %.pre, %.lr.ph41 ], [ %i.m, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = tail call i32 @TIFFReadScanline(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.k, i16 noundef zeroext 0) #11
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.e, align 8, !tbaa !66   ; 8 uses
  %.not45 = icmp eq i32 %i.m, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = shl nuw nsw i64 %indvars.iv, 2
  %i.o = zext i32 %i.g to i64
  %i.p = mul i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 4 uses
  %i.r = load i16, ptr %i.f, align 2, !tbaa !68   ; 2 uses
  %i.s = icmp ult i16 %i.r, 3
  %i.t = zext i16 %i.r to i64                     ; 14 uses
  br i1 %i.s, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i32 %i.m, 3                     ; 3 uses
  %i.u = icmp ult i32 %i.m, 4
  br i1 %i.u, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i32 %i.m, -4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter53 = and i32 %i.m, 7                   ; 3 uses
  %i.v = icmp ult i32 %i.m, 8
  br i1 %i.v, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter57 = and i32 %i.m, -8
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.02937.us = phi ptr [ %i.q, %.lr.ph.split.us.preheader.new ], [ %i.br, %.lr.ph.split.us ] ; 9 uses
  %.03036.us = phi ptr [ %i.h, %.lr.ph.split.us.preheader.new ], [ %i.bq, %.lr.ph.split.us ] ; 2 uses
  %niter58 = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter58.next.7, %.lr.ph.split.us ]
  %i.w = load half, ptr %.03036.us, align 2, !tbaa !23
  %i.x = fpext reassoc nsz arcp contract afn half %i.w to float
  %i.y = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.x, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.z, ptr %.02937.us, align 4, !tbaa !75
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.03036.us, i64 %i.t ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02937.us, i64 16
  %i.ac = load half, ptr %i.aa, align 2, !tbaa !23
  %i.ad = fpext reassoc nsz arcp contract afn half %i.ac to float
  %i.ae = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ad, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.af, ptr %i.ab, align 4, !tbaa !75
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.t ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02937.us, i64 32
  %i.ai = load half, ptr %i.ag, align 2, !tbaa !23
  %i.aj = fpext reassoc nsz arcp contract afn half %i.ai to float
  %i.ak = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aj, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.al, ptr %i.ah, align 4, !tbaa !75
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.t ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02937.us, i64 48
  %i.ao = load half, ptr %i.am, align 2, !tbaa !23
  %i.ap = fpext reassoc nsz arcp contract afn half %i.ao to float
  %i.aq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ap, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ar, ptr %i.an, align 4, !tbaa !75
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.t ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02937.us, i64 64
  %i.au = load half, ptr %i.as, align 2, !tbaa !23
  %i.av = fpext reassoc nsz arcp contract afn half %i.au to float
  %i.aw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.av, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ax, ptr %i.at, align 4, !tbaa !75
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.t ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02937.us, i64 80
  %i.ba = load half, ptr %i.ay, align 2, !tbaa !23
  %i.bb = fpext reassoc nsz arcp contract afn half %i.ba to float
  %i.bc = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bb, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bd, ptr %i.az, align 4, !tbaa !75
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.t ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02937.us, i64 96
  %i.bg = load half, ptr %i.be, align 2, !tbaa !23
  %i.bh = fpext reassoc nsz arcp contract afn half %i.bg to float
  %i.bi = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bh, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bj, ptr %i.bf, align 4, !tbaa !75
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.t ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02937.us, i64 112
  %i.bm = load half, ptr %i.bk, align 2, !tbaa !23
  %i.bn = fpext reassoc nsz arcp contract afn half %i.bm to float
  %i.bo = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bn, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bp, ptr %i.bl, align 4, !tbaa !75
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.t ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02937.us, i64 128 ; 2 uses
  %niter58.next.7 = add nuw i32 %niter58, 8       ; 2 uses
  %niter58.ncmp.7 = icmp eq i32 %niter58.next.7, %unroll_iter57
  br i1 %niter58.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.02937 = phi ptr [ %i.q, %.lr.ph.split.preheader.new ], [ %i.db, %.lr.ph.split ] ; 13 uses
  %.03036 = phi ptr [ %i.h, %.lr.ph.split.preheader.new ], [ %i.da, %.lr.ph.split ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.bs = load <2 x half>, ptr %.03036, align 2, !tbaa !23
  %i.bt = fpext <2 x half> %i.bs to <2 x float>
  store <2 x float> %i.bt, ptr %.02937, align 4, !tbaa !75
  %i.bu = getelementptr inbounds nuw i8, ptr %.03036, i64 4
  %i.bv = load half, ptr %i.bu, align 2, !tbaa !23
  %i.bw = fpext reassoc nsz arcp contract afn half %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %.02937, i64 8
  store float %i.bw, ptr %i.bx, align 4, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %.02937, i64 12
  store float 0.000000e+00, ptr %i.by, align 4, !tbaa !75
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.03036, i64 %i.t ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02937, i64 16
  %i.cb = load <2 x half>, ptr %i.bz, align 2, !tbaa !23
  %i.cc = fpext <2 x half> %i.cb to <2 x float>
  store <2 x float> %i.cc, ptr %i.ca, align 4, !tbaa !75
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.ce = load half, ptr %i.cd, align 2, !tbaa !23
  %i.cf = fpext reassoc nsz arcp contract afn half %i.ce to float
  %i.cg = getelementptr inbounds nuw i8, ptr %.02937, i64 24
  store float %i.cf, ptr %i.cg, align 4, !tbaa !75
  %i.ch = getelementptr inbounds nuw i8, ptr %.02937, i64 28
  store float 0.000000e+00, ptr %i.ch, align 4, !tbaa !75
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.t ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02937, i64 32
  %i.ck = load <2 x half>, ptr %i.ci, align 2, !tbaa !23
  %i.cl = fpext <2 x half> %i.ck to <2 x float>
  store <2 x float> %i.cl, ptr %i.cj, align 4, !tbaa !75
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cn = load half, ptr %i.cm, align 2, !tbaa !23
  %i.co = fpext reassoc nsz arcp contract afn half %i.cn to float
  %i.cp = getelementptr inbounds nuw i8, ptr %.02937, i64 40
  store float %i.co, ptr %i.cp, align 4, !tbaa !75
  %i.cq = getelementptr inbounds nuw i8, ptr %.02937, i64 44
  store float 0.000000e+00, ptr %i.cq, align 4, !tbaa !75
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.t ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.02937, i64 48
  %i.ct = load <2 x half>, ptr %i.cr, align 2, !tbaa !23
  %i.cu = fpext <2 x half> %i.ct to <2 x float>
  store <2 x float> %i.cu, ptr %i.cs, align 4, !tbaa !75
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cw = load half, ptr %i.cv, align 2, !tbaa !23
  %i.cx = fpext reassoc nsz arcp contract afn half %i.cw to float
  %i.cy = getelementptr inbounds nuw i8, ptr %.02937, i64 56
  store float %i.cx, ptr %i.cy, align 4, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %.02937, i64 60
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !75
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.t ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02937, i64 64 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit51.unr-lcssa, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod55.not = icmp eq i32 %xtraiter53, 0
  br i1 %lcmp.mod55.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.02937.us.epil.init = phi ptr [ %i.q, %.lr.ph.split.us.preheader ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ]
  %.03036.us.epil.init = phi ptr [ %i.h, %.lr.ph.split.us.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter53, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.02937.us.epil = phi ptr [ %i.dh, %.lr.ph.split.us.epil ], [ %.02937.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %.03036.us.epil = phi ptr [ %i.dg, %.lr.ph.split.us.epil ], [ %.03036.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter54 = phi i32 [ %epil.iter54.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.dc = load half, ptr %.03036.us.epil, align 2, !tbaa !23
  %i.dd = fpext reassoc nsz arcp contract afn half %i.dc to float
  %i.de = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dd, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.df, ptr %.02937.us.epil, align 4, !tbaa !75
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.03036.us.epil, i64 %i.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.02937.us.epil, i64 16
  %epil.iter54.next = add i32 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i32 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !107

._crit_edge.loopexit51.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit51.unr-lcssa, %.lr.ph.split.preheader
  %.02937.epil.init = phi ptr [ %i.q, %.lr.ph.split.preheader ], [ %i.db, %._crit_edge.loopexit51.unr-lcssa ]
  %.03036.epil.init = phi ptr [ %i.h, %.lr.ph.split.preheader ], [ %i.da, %._crit_edge.loopexit51.unr-lcssa ]
  %lcmp.mod52 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %.02937.epil = phi ptr [ %i.dq, %.lr.ph.split.epil ], [ %.02937.epil.init, %.lr.ph.split.epil.preheader ] ; 4 uses
  %.03036.epil = phi ptr [ %i.dp, %.lr.ph.split.epil ], [ %.03036.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.di = load <2 x half>, ptr %.03036.epil, align 2, !tbaa !23
  %i.dj = fpext <2 x half> %i.di to <2 x float>
  store <2 x float> %i.dj, ptr %.02937.epil, align 4, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %.03036.epil, i64 4
  %i.dl = load half, ptr %i.dk, align 2, !tbaa !23
  %i.dm = fpext reassoc nsz arcp contract afn half %i.dl to float
  %i.dn = getelementptr inbounds nuw i8, ptr %.02937.epil, i64 8
  store float %i.dm, ptr %i.dn, align 4, !tbaa !75
  %i.do = getelementptr inbounds nuw i8, ptr %.02937.epil, i64 12
  store float 0.000000e+00, ptr %i.do, align 4, !tbaa !75
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.03036.epil, i64 %i.t
  %i.dq = getelementptr inbounds nuw i8, ptr %.02937.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !108

._crit_edge:                                      ; preds = %._crit_edge.loopexit51.unr-lcssa, %.lr.ph.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = load i32, ptr %i.b, align 4, !tbaa !67
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  %i.du = phi i32 [ 1, %bb.a ], [ 1, %._crit_edge ], [ -1, %bb.b ]
  ret i32 %i.du
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @_read_chunky_f(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !67
  %.not44 = icmp eq i32 %i.c, 0
  br i1 %.not44, label %.critedge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.pre = load i32, ptr %i.e, align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41, %._crit_edge
  %i.g = phi i32 [ %.pre, %.lr.ph41 ], [ %i.m, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = tail call i32 @TIFFReadScanline(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.k, i16 noundef zeroext 0) #11
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.e, align 8, !tbaa !66   ; 8 uses
  %.not45 = icmp eq i32 %i.m, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = shl nuw nsw i64 %indvars.iv, 2
  %i.o = zext i32 %i.g to i64
  %i.p = mul i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 4 uses
  %i.r = load i16, ptr %i.f, align 2, !tbaa !68   ; 2 uses
  %i.s = icmp ult i16 %i.r, 3
  %i.t = zext i16 %i.r to i64                     ; 14 uses
  br i1 %i.s, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i32 %i.m, 3                     ; 3 uses
  %i.u = icmp ult i32 %i.m, 4
  br i1 %i.u, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i32 %i.m, -4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter53 = and i32 %i.m, 7                   ; 3 uses
  %i.v = icmp ult i32 %i.m, 8
  br i1 %i.v, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter57 = and i32 %i.m, -8
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.02937.us = phi ptr [ %i.q, %.lr.ph.split.us.preheader.new ], [ %i.bj, %.lr.ph.split.us ] ; 9 uses
  %.03036.us = phi ptr [ %i.h, %.lr.ph.split.us.preheader.new ], [ %i.bi, %.lr.ph.split.us ] ; 2 uses
  %niter58 = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter58.next.7, %.lr.ph.split.us ]
  %i.w = load float, ptr %.03036.us, align 4, !tbaa !75
  %i.x = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.y, ptr %.02937.us, align 4, !tbaa !75
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.03036.us, i64 %i.t ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02937.us, i64 16
  %i.ab = load float, ptr %i.z, align 4, !tbaa !75
  %i.ac = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ab, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ad, ptr %i.aa, align 4, !tbaa !75
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.t ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02937.us, i64 32
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !75
  %i.ah = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ag, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ai, ptr %i.af, align 4, !tbaa !75
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.t ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02937.us, i64 48
  %i.al = load float, ptr %i.aj, align 4, !tbaa !75
  %i.am = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.al, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.an, ptr %i.ak, align 4, !tbaa !75
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.t ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02937.us, i64 64
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !75
  %i.ar = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aq, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.as, ptr %i.ap, align 4, !tbaa !75
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.t ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02937.us, i64 80
  %i.av = load float, ptr %i.at, align 4, !tbaa !75
  %i.aw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.av, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ax, ptr %i.au, align 4, !tbaa !75
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.t ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02937.us, i64 96
  %i.ba = load float, ptr %i.ay, align 4, !tbaa !75
  %i.bb = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ba, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bc, ptr %i.az, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.t ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02937.us, i64 112
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !75
  %i.bg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bf, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bh, ptr %i.be, align 4, !tbaa !75
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.t ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02937.us, i64 128 ; 2 uses
  %niter58.next.7 = add nuw i32 %niter58, 8       ; 2 uses
  %niter58.ncmp.7 = icmp eq i32 %niter58.next.7, %unroll_iter57
  br i1 %niter58.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.02937 = phi ptr [ %i.q, %.lr.ph.split.preheader.new ], [ %i.cx, %.lr.ph.split ] ; 13 uses
  %.03036 = phi ptr [ %i.h, %.lr.ph.split.preheader.new ], [ %i.cw, %.lr.ph.split ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.bk = load float, ptr %.03036, align 4, !tbaa !75
  store float %i.bk, ptr %.02937, align 4, !tbaa !75
  %i.bl = getelementptr inbounds nuw i8, ptr %.03036, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !75
  %i.bn = getelementptr inbounds nuw i8, ptr %.02937, i64 4
  store float %i.bm, ptr %i.bn, align 4, !tbaa !75
  %i.bo = getelementptr inbounds nuw i8, ptr %.03036, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %.02937, i64 8
  %i.br = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bp, i64 0
  store <2 x float> %i.br, ptr %i.bq, align 4, !tbaa !75
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.03036, i64 %i.t ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02937, i64 16
  %i.bu = load float, ptr %i.bs, align 4, !tbaa !75
  store float %i.bu, ptr %i.bt, align 4, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %.02937, i64 20
  store float %i.bw, ptr %i.bx, align 4, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !75
  %i.ca = getelementptr inbounds nuw i8, ptr %.02937, i64 24
  %i.cb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  store <2 x float> %i.cb, ptr %i.ca, align 4, !tbaa !75
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.t ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.02937, i64 32
  %i.ce = load float, ptr %i.cc, align 4, !tbaa !75
  store float %i.ce, ptr %i.cd, align 4, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !75
  %i.ch = getelementptr inbounds nuw i8, ptr %.02937, i64 36
  store float %i.cg, ptr %i.ch, align 4, !tbaa !75
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !75
  %i.ck = getelementptr inbounds nuw i8, ptr %.02937, i64 40
  %i.cl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  store <2 x float> %i.cl, ptr %i.ck, align 4, !tbaa !75
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.t ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02937, i64 48
  %i.co = load float, ptr %i.cm, align 4, !tbaa !75
  store float %i.co, ptr %i.cn, align 4, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %.02937, i64 52
  store float %i.cq, ptr %i.cr, align 4, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !75
  %i.cu = getelementptr inbounds nuw i8, ptr %.02937, i64 56
  %i.cv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ct, i64 0
  store <2 x float> %i.cv, ptr %i.cu, align 4, !tbaa !75
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.t ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.02937, i64 64 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
end_hunk_1
