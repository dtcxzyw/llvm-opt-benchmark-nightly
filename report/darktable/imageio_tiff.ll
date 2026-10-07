Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_tiff?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_read_chunky_8_Lab:bb.a
  %i.ew = icmp eq i32 %i.es, 1
  br i1 %i.ew, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i32 %i.es, -2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter95 = and i32 %i.es, 3                  ; 3 uses
  %i.ex = icmp ult i32 %i.es, 4
  br i1 %i.ex, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter98 = and i32 %i.es, -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.04254.us = phi ptr [ %i.eo, %.lr.ph.split.us.preheader.new ], [ %i.fz, %.lr.ph.split.us ] ; 13 uses
  %.04353.us = phi ptr [ %i.ei, %.lr.ph.split.us.preheader.new ], [ %i.fy, %.lr.ph.split.us ] ; 2 uses
  %niter99 = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter99.next.3, %.lr.ph.split.us ]
  %i.ey = load i8, ptr %.04353.us, align 1, !tbaa !74
  %i.ez = uitofp reassoc nsz arcp contract afn i8 %i.ey to float
  %i.fa = fmul reassoc nnan nsz arcp contract afn float %i.ez, f0x3EC8C8C9
  store float %i.fa, ptr %.04254.us, align 4, !tbaa !75
  %i.fb = getelementptr inbounds nuw i8, ptr %.04254.us, i64 4
  store <2 x float> zeroinitializer, ptr %i.fb, align 4, !tbaa !75
  %i.fc = getelementptr inbounds nuw i8, ptr %.04254.us, i64 12
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !75
  %i.fd = getelementptr inbounds nuw i8, ptr %.04353.us, i64 %i.ev ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.04254.us, i64 16
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !74
  %i.fg = uitofp reassoc nsz arcp contract afn i8 %i.ff to float
  %i.fh = fmul reassoc nnan nsz arcp contract afn float %i.fg, f0x3EC8C8C9
  store float %i.fh, ptr %i.fe, align 4, !tbaa !75
  %i.fi = getelementptr inbounds nuw i8, ptr %.04254.us, i64 20
  store <2 x float> zeroinitializer, ptr %i.fi, align 4, !tbaa !75
  %i.fj = getelementptr inbounds nuw i8, ptr %.04254.us, i64 28
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !75
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.04254.us, i64 32
  %i.fm = load i8, ptr %i.fk, align 1, !tbaa !74
  %i.fn = uitofp reassoc nsz arcp contract afn i8 %i.fm to float
  %i.fo = fmul reassoc nnan nsz arcp contract afn float %i.fn, f0x3EC8C8C9
  store float %i.fo, ptr %i.fl, align 4, !tbaa !75
  %i.fp = getelementptr inbounds nuw i8, ptr %.04254.us, i64 36
  store <2 x float> zeroinitializer, ptr %i.fp, align 4, !tbaa !75
  %i.fq = getelementptr inbounds nuw i8, ptr %.04254.us, i64 44
  store float 0.000000e+00, ptr %i.fq, align 4, !tbaa !75
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ev ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.04254.us, i64 48
  %i.ft = load i8, ptr %i.fr, align 1, !tbaa !74
  %i.fu = uitofp reassoc nsz arcp contract afn i8 %i.ft to float
  %i.fv = fmul reassoc nnan nsz arcp contract afn float %i.fu, f0x3EC8C8C9
  store float %i.fv, ptr %i.fs, align 4, !tbaa !75
  %i.fw = getelementptr inbounds nuw i8, ptr %.04254.us, i64 52
  store <2 x float> zeroinitializer, ptr %i.fw, align 4, !tbaa !75
  %i.fx = getelementptr inbounds nuw i8, ptr %.04254.us, i64 60
  store float 0.000000e+00, ptr %i.fx, align 4, !tbaa !75
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ev ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.04254.us, i64 64 ; 2 uses
  %niter99.next.3 = add nuw i32 %niter99, 4       ; 2 uses
  %niter99.ncmp.3 = icmp eq i32 %niter99.next.3, %unroll_iter98
  br i1 %niter99.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.04254 = phi ptr [ %i.eo, %.lr.ph.split.preheader.new ], [ %i.hf, %.lr.ph.split ] ; 9 uses
  %.04353 = phi ptr [ %i.ei, %.lr.ph.split.preheader.new ], [ %i.he, %.lr.ph.split ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ga = load i8, ptr %.04353, align 1, !tbaa !74
  %i.gb = uitofp reassoc nsz arcp contract afn i8 %i.ga to float
  %i.gc = fmul reassoc nnan nsz arcp contract afn float %i.gb, f0x3EC8C8C9
  store float %i.gc, ptr %.04254, align 4, !tbaa !75
  %i.gd = getelementptr inbounds nuw i8, ptr %.04353, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !74
  %i.gf = uitofp reassoc nsz arcp contract afn i8 %i.ge to float
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, -1.280000e+02
  %i.gh = getelementptr inbounds nuw i8, ptr %.04254, i64 4
  store float %i.gg, ptr %i.gh, align 4, !tbaa !75
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
  %2 = select i1 %i.j, float f0x3AC800C8, float f0x3AC8C8C9 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  br i1 %i.j, label %.lr.ph65.split.us.preheader, label %.lr.ph65.split.preheader

.lr.ph65.split.preheader:                         ; preds = %.lr.ph65
  %3 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %2, i64 0
  %4 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %2, i64 0
  %5 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %2, i64 0
  %6 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %2, i64 0
  %7 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float -0.000000e+00>, float %2, i64 0
  br label %.lr.ph65.split

.lr.ph65.split.us.preheader:                      ; preds = %.lr.ph65
  %8 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %2, i64 0
  %9 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %2, i64 0
  %10 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %2, i64 0
  %11 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %2, i64 0
  %12 = insertelement <4 x float> <float poison, float 3.906250e-03, float 3.906250e-03, float 0.000000e+00>, float %2, i64 0
  br label %.lr.ph65.split.us

.lr.ph65.split.us:                                ; preds = %.lr.ph65.split.us.preheader, %._crit_edge.us
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %._crit_edge.us ], [ 0, %.lr.ph65.split.us.preheader ] ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !71   ; 5 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.q = shl nuw nsw i64 %indvars.iv80, 2
  %i.r = load i32, ptr %i.m, align 8, !tbaa !66
  %i.s = zext i32 %i.r to i64
  %i.t = mul i64 %i.q, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t ; 6 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !22
  %i.w = trunc nuw i64 %indvars.iv80 to i32
  %i.x = tail call i32 @TIFFReadScanline(ptr noundef %i.v, ptr noundef %i.o, i32 noundef %i.w, i16 noundef zeroext 0) #11
  %.not.us = icmp eq i32 %i.x, -1
  br i1 %.not.us, label %.thread51, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph65.split.us
  %i.y = load i32, ptr %i.m, align 8, !tbaa !66   ; 8 uses
  %.not71 = icmp eq i32 %i.y, 0
  br i1 %.not71, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.z = load i16, ptr %i.n, align 2, !tbaa !68   ; 2 uses
  %i.aa = icmp ult i16 %i.z, 3
  %i.ab = zext i16 %i.z to i64                    ; 10 uses
  br i1 %i.aa, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us67.preheader

.lr.ph.split.us67.preheader:                      ; preds = %.lr.ph.us
  %xtraiter103 = and i32 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i32 %i.y, 4
  br i1 %i.ac, label %.lr.ph.split.us67.epil.preheader, label %.lr.ph.split.us67.preheader.new

.lr.ph.split.us67.preheader.new:                  ; preds = %.lr.ph.split.us67.preheader
  %unroll_iter107 = and i32 %i.y, -4
  br label %.lr.ph.split.us67

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %xtraiter109 = and i32 %i.y, 3                  ; 3 uses
  %i.ad = icmp ult i32 %i.y, 4
  br i1 %i.ad, label %.lr.ph.split.us.us.epil.preheader, label %.lr.ph.split.us.us.preheader.new

.lr.ph.split.us.us.preheader.new:                 ; preds = %.lr.ph.split.us.us.preheader
  %unroll_iter113 = and i32 %i.y, -4
  br label %.lr.ph.split.us.us

.lr.ph.split.us67:                                ; preds = %.lr.ph.split.us67, %.lr.ph.split.us67.preheader.new
  %.04456.us59.us = phi ptr [ %i.u, %.lr.ph.split.us67.preheader.new ], [ %i.bv, %.lr.ph.split.us67 ] ; 5 uses
  %.04555.us60.us = phi ptr [ %i.o, %.lr.ph.split.us67.preheader.new ], [ %i.bu, %.lr.ph.split.us67 ] ; 3 uses
  %niter108 = phi i32 [ 0, %.lr.ph.split.us67.preheader.new ], [ %niter108.next.3, %.lr.ph.split.us67 ]
  %i.ae = load i16, ptr %.04555.us60.us, align 2, !tbaa !23
  %i.af = uitofp reassoc nsz arcp contract afn i16 %i.ae to float
  %i.ag = getelementptr inbounds nuw i8, ptr %.04555.us60.us, i64 2
  %i.ah = load <2 x i16>, ptr %i.ag, align 2, !tbaa !23
  %i.ai = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.af, i64 0
  %i.aj = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = sitofp <4 x i16> %i.aj to <4 x float>
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.am = fmul reassoc nnan nsz arcp contract afn <4 x float> %8, %i.al
  store <4 x float> %i.am, ptr %.04456.us59.us, align 4, !tbaa !75
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.04555.us60.us, i64 %i.ab ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 16
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !23
  %i.aq = uitofp reassoc nsz arcp contract afn i16 %i.ap to float
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.as = load <2 x i16>, ptr %i.ar, align 2, !tbaa !23
  %i.at = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aq, i64 0
  %i.au = shufflevector <2 x i16> %i.as, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = sitofp <4 x i16> %i.au to <4 x float>
  %i.aw = shufflevector <4 x float> %i.at, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ax = fmul reassoc nnan nsz arcp contract afn <4 x float> %9, %i.aw
  store <4 x float> %i.ax, ptr %i.ao, align 4, !tbaa !75
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ab ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 32
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !23
  %i.bb = uitofp reassoc nsz arcp contract afn i16 %i.ba to float
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bd = load <2 x i16>, ptr %i.bc, align 2, !tbaa !23
  %i.be = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bb, i64 0
  %i.bf = shufflevector <2 x i16> %i.bd, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = sitofp <4 x i16> %i.bf to <4 x float>
  %i.bh = shufflevector <4 x float> %i.be, <4 x float> %i.bg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bi = fmul reassoc nnan nsz arcp contract afn <4 x float> %10, %i.bh
  store <4 x float> %i.bi, ptr %i.az, align 4, !tbaa !75
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ab ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 48
  %i.bl = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bm = uitofp reassoc nsz arcp contract afn i16 %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load <2 x i16>, ptr %i.bn, align 2, !tbaa !23
  %i.bp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bm, i64 0
  %i.bq = shufflevector <2 x i16> %i.bo, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = sitofp <4 x i16> %i.bq to <4 x float>
  %i.bs = shufflevector <4 x float> %i.bp, <4 x float> %i.br, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bt = fmul reassoc nnan nsz arcp contract afn <4 x float> %11, %i.bs
  store <4 x float> %i.bt, ptr %i.bk, align 4, !tbaa !75
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.ab ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.04456.us59.us, i64 64 ; 2 uses
  %niter108.next.3 = add nuw i32 %niter108, 4     ; 2 uses
  %niter108.ncmp.3 = icmp eq i32 %niter108.next.3, %unroll_iter107
  br i1 %niter108.ncmp.3, label %._crit_edge.us.loopexit92.unr-lcssa, label %.lr.ph.split.us67

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.us.preheader.new
  %.04456.us.us = phi ptr [ %i.u, %.lr.ph.split.us.us.preheader.new ], [ %i.cx, %.lr.ph.split.us.us ] ; 13 uses
  %.04555.us.us = phi ptr [ %i.o, %.lr.ph.split.us.us.preheader.new ], [ %i.cw, %.lr.ph.split.us.us ] ; 2 uses
  %niter114 = phi i32 [ 0, %.lr.ph.split.us.us.preheader.new ], [ %niter114.next.3, %.lr.ph.split.us.us ]
  %i.bw = load i16, ptr %.04555.us.us, align 2, !tbaa !23
  %i.bx = uitofp reassoc nsz arcp contract afn i16 %i.bw to float
  %i.by = fmul reassoc nnan nsz arcp contract afn float %2, %i.bx
  store float %i.by, ptr %.04456.us.us, align 4, !tbaa !75
  %i.bz = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 4
  store <2 x float> zeroinitializer, ptr %i.bz, align 4, !tbaa !75
  %i.ca = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 12
  store float 0.000000e+00, ptr %i.ca, align 4, !tbaa !75
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.04555.us.us, i64 %i.ab ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 16
  %i.cd = load i16, ptr %i.cb, align 2, !tbaa !23
  %i.ce = uitofp reassoc nsz arcp contract afn i16 %i.cd to float
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %2, %i.ce
  store float %i.cf, ptr %i.cc, align 4, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 20
  store <2 x float> zeroinitializer, ptr %i.cg, align 4, !tbaa !75
  %i.ch = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 28
  store float 0.000000e+00, ptr %i.ch, align 4, !tbaa !75
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ab ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 32
  %i.ck = load i16, ptr %i.ci, align 2, !tbaa !23
  %i.cl = uitofp reassoc nsz arcp contract afn i16 %i.ck to float
  %i.cm = fmul reassoc nnan nsz arcp contract afn float %2, %i.cl
  store float %i.cm, ptr %i.cj, align 4, !tbaa !75
  %i.cn = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 36
  store <2 x float> zeroinitializer, ptr %i.cn, align 4, !tbaa !75
  %i.co = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 44
  store float 0.000000e+00, ptr %i.co, align 4, !tbaa !75
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.ab ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 48
  %i.cr = load i16, ptr %i.cp, align 2, !tbaa !23
  %i.cs = uitofp reassoc nsz arcp contract afn i16 %i.cr to float
  %i.ct = fmul reassoc nnan nsz arcp contract afn float %2, %i.cs
  store float %i.ct, ptr %i.cq, align 4, !tbaa !75
  %i.cu = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 52
  store <2 x float> zeroinitializer, ptr %i.cu, align 4, !tbaa !75
  %i.cv = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 60
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !75
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.ab ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.04456.us.us, i64 64 ; 2 uses
  %niter114.next.3 = add nuw i32 %niter114, 4     ; 2 uses
  %niter114.ncmp.3 = icmp eq i32 %niter114.next.3, %unroll_iter113
  br i1 %niter114.ncmp.3, label %._crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.split.us.us

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.us
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %._crit_edge.us, label %.lr.ph.split.us.us.epil.preheader

.lr.ph.split.us.us.epil.preheader:                ; preds = %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph.split.us.us.preheader
  %.04456.us.us.epil.init = phi ptr [ %i.u, %.lr.ph.split.us.us.preheader ], [ %i.cx, %._crit_edge.us.loopexit.unr-lcssa ]
  %.04555.us.us.epil.init = phi ptr [ %i.o, %.lr.ph.split.us.us.preheader ], [ %i.cw, %._crit_edge.us.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i32 %xtraiter109, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.split.us.us.epil

.lr.ph.split.us.us.epil:                          ; preds = %.lr.ph.split.us.us.epil, %.lr.ph.split.us.us.epil.preheader
  %.04456.us.us.epil = phi ptr [ %i.de, %.lr.ph.split.us.us.epil ], [ %.04456.us.us.epil.init, %.lr.ph.split.us.us.epil.preheader ] ; 4 uses
  %.04555.us.us.epil = phi ptr [ %i.dd, %.lr.ph.split.us.us.epil ], [ %.04555.us.us.epil.init, %.lr.ph.split.us.us.epil.preheader ] ; 2 uses
  %epil.iter110 = phi i32 [ %epil.iter110.next, %.lr.ph.split.us.us.epil ], [ 0, %.lr.ph.split.us.us.epil.preheader ]
  %i.cy = load i16, ptr %.04555.us.us.epil, align 2, !tbaa !23
  %i.cz = uitofp reassoc nsz arcp contract afn i16 %i.cy to float
  %i.da = fmul reassoc nnan nsz arcp contract afn float %2, %i.cz
  store float %i.da, ptr %.04456.us.us.epil, align 4, !tbaa !75
  %i.db = getelementptr inbounds nuw i8, ptr %.04456.us.us.epil, i64 4
  store <2 x float> zeroinitializer, ptr %i.db, align 4, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %.04456.us.us.epil, i64 12
  store float 0.000000e+00, ptr %i.dc, align 4, !tbaa !75
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.04555.us.us.epil, i64 %i.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.04456.us.us.epil, i64 16
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %._crit_edge.us, label %.lr.ph.split.us.us.epil, !llvm.loop !99

._crit_edge.us.loopexit92.unr-lcssa:              ; preds = %.lr.ph.split.us67
  %lcmp.mod105.not = icmp eq i32 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %._crit_edge.us, label %.lr.ph.split.us67.epil.preheader

.lr.ph.split.us67.epil.preheader:                 ; preds = %._crit_edge.us.loopexit92.unr-lcssa, %.lr.ph.split.us67.preheader
  %.04456.us59.us.epil.init = phi ptr [ %i.u, %.lr.ph.split.us67.preheader ], [ %i.bv, %._crit_edge.us.loopexit92.unr-lcssa ]
  %.04555.us60.us.epil.init = phi ptr [ %i.o, %.lr.ph.split.us67.preheader ], [ %i.bu, %._crit_edge.us.loopexit92.unr-lcssa ]
  %lcmp.mod106 = icmp ne i32 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.split.us67.epil

.lr.ph.split.us67.epil:                           ; preds = %.lr.ph.split.us67.epil, %.lr.ph.split.us67.epil.preheader
  %.04456.us59.us.epil = phi ptr [ %i.dp, %.lr.ph.split.us67.epil ], [ %.04456.us59.us.epil.init, %.lr.ph.split.us67.epil.preheader ] ; 2 uses
  %.04555.us60.us.epil = phi ptr [ %i.do, %.lr.ph.split.us67.epil ], [ %.04555.us60.us.epil.init, %.lr.ph.split.us67.epil.preheader ] ; 3 uses
  %epil.iter104 = phi i32 [ %epil.iter104.next, %.lr.ph.split.us67.epil ], [ 0, %.lr.ph.split.us67.epil.preheader ]
  %i.df = load i16, ptr %.04555.us60.us.epil, align 2, !tbaa !23
  %i.dg = uitofp reassoc nsz arcp contract afn i16 %i.df to float
  %i.dh = getelementptr inbounds nuw i8, ptr %.04555.us60.us.epil, i64 2
  %i.di = load <2 x i16>, ptr %i.dh, align 2, !tbaa !23
  %i.dj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.dg, i64 0
  %i.dk = shufflevector <2 x i16> %i.di, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = sitofp <4 x i16> %i.dk to <4 x float>
  %i.dm = shufflevector <4 x float> %i.dj, <4 x float> %i.dl, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dn = fmul reassoc nnan nsz arcp contract afn <4 x float> %12, %i.dm
  store <4 x float> %i.dn, ptr %.04456.us59.us.epil, align 4, !tbaa !75
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.04555.us60.us.epil, i64 %i.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %.04456.us59.us.epil, i64 16
  %epil.iter104.next = add i32 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i32 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %._crit_edge.us, label %.lr.ph.split.us67.epil, !llvm.loop !100

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit92.unr-lcssa, %.lr.ph.split.us67.epil, %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph.split.us.us.epil, %.preheader.us
  tail call void @cmsDoTransform(ptr noundef %i.g, ptr noundef %i.u, ptr noundef %i.u, i32 noundef %i.y) #11
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dq = load i32, ptr %i.h, align 4, !tbaa !67
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp samesign ult i64 %indvars.iv.next81, %i.dr
  br i1 %i.ds, label %.lr.ph65.split.us, label %.thread51

.lr.ph65.split:                                   ; preds = %.lr.ph65.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph65.split.preheader ] ; 3 uses
  %i.dt = load ptr, ptr %i.k, align 8, !tbaa !71  ; 5 uses
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.dv = shl nuw nsw i64 %indvars.iv, 2
  %i.dw = load i32, ptr %i.m, align 8, !tbaa !66
  %i.dx = zext i32 %i.dw to i64
  %i.dy = mul i64 %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dy ; 6 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !22
  %i.eb = trunc nuw i64 %indvars.iv to i32
  %i.ec = tail call i32 @TIFFReadScanline(ptr noundef %i.ea, ptr noundef %i.dt, i32 noundef %i.eb, i16 noundef zeroext 0) #11
  %.not = icmp eq i32 %i.ec, -1
  br i1 %.not, label %.thread51, label %.preheader

.preheader:                                       ; preds = %.lr.ph65.split
  %i.ed = load i32, ptr %i.m, align 8, !tbaa !66  ; 8 uses
  %.not70 = icmp eq i32 %i.ed, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ee = load i16, ptr %i.n, align 2, !tbaa !68  ; 2 uses
  %i.ef = icmp ult i16 %i.ee, 3
  %i.eg = zext i16 %i.ee to i64                   ; 10 uses
  br i1 %i.ef, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i32 %i.ed, 3                    ; 3 uses
  %i.eh = icmp ult i32 %i.ed, 4
  br i1 %i.eh, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i32 %i.ed, -4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter97 = and i32 %i.ed, 3                  ; 3 uses
  %i.ei = icmp ult i32 %i.ed, 4
  br i1 %i.ei, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter101 = and i32 %i.ed, -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.04456.us = phi ptr [ %i.dz, %.lr.ph.split.us.preheader.new ], [ %i.fk, %.lr.ph.split.us ] ; 13 uses
  %.04555.us = phi ptr [ %i.dt, %.lr.ph.split.us.preheader.new ], [ %i.fj, %.lr.ph.split.us ] ; 2 uses
  %niter102 = phi i32 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter102.next.3, %.lr.ph.split.us ]
  %i.ej = load i16, ptr %.04555.us, align 2, !tbaa !23
  %i.ek = uitofp reassoc nsz arcp contract afn i16 %i.ej to float
  %i.el = fmul reassoc nnan nsz arcp contract afn float %2, %i.ek
  store float %i.el, ptr %.04456.us, align 4, !tbaa !75
  %i.em = getelementptr inbounds nuw i8, ptr %.04456.us, i64 4
  store <2 x float> zeroinitializer, ptr %i.em, align 4, !tbaa !75
  %i.en = getelementptr inbounds nuw i8, ptr %.04456.us, i64 12
  store float 0.000000e+00, ptr %i.en, align 4, !tbaa !75
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.04555.us, i64 %i.eg ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.04456.us, i64 16
  %i.eq = load i16, ptr %i.eo, align 2, !tbaa !23
  %i.er = uitofp reassoc nsz arcp contract afn i16 %i.eq to float
  %i.es = fmul reassoc nnan nsz arcp contract afn float %2, %i.er
  store float %i.es, ptr %i.ep, align 4, !tbaa !75
  %i.et = getelementptr inbounds nuw i8, ptr %.04456.us, i64 20
  store <2 x float> zeroinitializer, ptr %i.et, align 4, !tbaa !75
  %i.eu = getelementptr inbounds nuw i8, ptr %.04456.us, i64 28
  store float 0.000000e+00, ptr %i.eu, align 4, !tbaa !75
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.eg ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.04456.us, i64 32
  %i.ex = load i16, ptr %i.ev, align 2, !tbaa !23
  %i.ey = uitofp reassoc nsz arcp contract afn i16 %i.ex to float
  %i.ez = fmul reassoc nnan nsz arcp contract afn float %2, %i.ey
  store float %i.ez, ptr %i.ew, align 4, !tbaa !75
  %i.fa = getelementptr inbounds nuw i8, ptr %.04456.us, i64 36
  store <2 x float> zeroinitializer, ptr %i.fa, align 4, !tbaa !75
  %i.fb = getelementptr inbounds nuw i8, ptr %.04456.us, i64 44
  store float 0.000000e+00, ptr %i.fb, align 4, !tbaa !75
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.eg ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.04456.us, i64 48
  %i.fe = load i16, ptr %i.fc, align 2, !tbaa !23
  %i.ff = uitofp reassoc nsz arcp contract afn i16 %i.fe to float
  %i.fg = fmul reassoc nnan nsz arcp contract afn float %2, %i.ff
  store float %i.fg, ptr %i.fd, align 4, !tbaa !75
  %i.fh = getelementptr inbounds nuw i8, ptr %.04456.us, i64 52
  store <2 x float> zeroinitializer, ptr %i.fh, align 4, !tbaa !75
  %i.fi = getelementptr inbounds nuw i8, ptr %.04456.us, i64 60
  store float 0.000000e+00, ptr %i.fi, align 4, !tbaa !75
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.eg ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.04456.us, i64 64 ; 2 uses
  %niter102.next.3 = add nuw i32 %niter102, 4     ; 2 uses
  %niter102.ncmp.3 = icmp eq i32 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.04456 = phi ptr [ %i.dz, %.lr.ph.split.preheader.new ], [ %i.hg, %.lr.ph.split ] ; 5 uses
  %.04555 = phi ptr [ %i.dt, %.lr.ph.split.preheader.new ], [ %i.hf, %.lr.ph.split ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.fl = load i16, ptr %.04555, align 2, !tbaa !23
  %i.fm = uitofp reassoc nsz arcp contract afn i16 %i.fl to float
  %i.fn = getelementptr inbounds nuw i8, ptr %.04555, i64 2
  %i.fo = load <2 x i16>, ptr %i.fn, align 2, !tbaa !23
  %i.fp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fm, i64 0
  %i.fq = shufflevector <2 x i16> %i.fo, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fr = uitofp <4 x i16> %i.fq to <4 x float>
  %i.fs = shufflevector <4 x float> %i.fp, <4 x float> %i.fr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ft = fmul reassoc nnan nsz arcp contract afn <4 x float> %3, %i.fs
  %i.fu = fadd reassoc nsz arcp contract afn <4 x float> %i.ft, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.fu, ptr %.04456, align 4, !tbaa !75
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.04555, i64 %i.eg ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.04456, i64 16
  %i.fx = load i16, ptr %i.fv, align 2, !tbaa !23
  %i.fy = uitofp reassoc nsz arcp contract afn i16 %i.fx to float
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.ga = load <2 x i16>, ptr %i.fz, align 2, !tbaa !23
  %i.gb = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fy, i64 0
  %i.gc = shufflevector <2 x i16> %i.ga, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gd = uitofp <4 x i16> %i.gc to <4 x float>
  %i.ge = shufflevector <4 x float> %i.gb, <4 x float> %i.gd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gf = fmul reassoc nnan nsz arcp contract afn <4 x float> %4, %i.ge
  %i.gg = fadd reassoc nsz arcp contract afn <4 x float> %i.gf, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.gg, ptr %i.fw, align 4, !tbaa !75
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.eg ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.04456, i64 32
  %i.gj = load i16, ptr %i.gh, align 2, !tbaa !23
  %i.gk = uitofp reassoc nsz arcp contract afn i16 %i.gj to float
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gm = load <2 x i16>, ptr %i.gl, align 2, !tbaa !23
  %i.gn = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.gk, i64 0
  %i.go = shufflevector <2 x i16> %i.gm, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gp = uitofp <4 x i16> %i.go to <4 x float>
  %i.gq = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gr = fmul reassoc nnan nsz arcp contract afn <4 x float> %5, %i.gq
  %i.gs = fadd reassoc nsz arcp contract afn <4 x float> %i.gr, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.gs, ptr %i.gi, align 4, !tbaa !75
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.eg ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.04456, i64 48
  %i.gv = load i16, ptr %i.gt, align 2, !tbaa !23
  %i.gw = uitofp reassoc nsz arcp contract afn i16 %i.gv to float
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.gy = load <2 x i16>, ptr %i.gx, align 2, !tbaa !23
  %i.gz = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.gw, i64 0
  %i.ha = shufflevector <2 x i16> %i.gy, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hb = uitofp <4 x i16> %i.ha to <4 x float>
  %i.hc = shufflevector <4 x float> %i.gz, <4 x float> %i.hb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.hd = fmul reassoc nnan nsz arcp contract afn <4 x float> %6, %i.hc
  %i.he = fadd reassoc nsz arcp contract afn <4 x float> %i.hd, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.he, ptr %i.gu, align 4, !tbaa !75
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.eg ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.04456, i64 64 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit93.unr-lcssa, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod99.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.04456.us.epil.init = phi ptr [ %i.dz, %.lr.ph.split.us.preheader ], [ %i.fk, %._crit_edge.loopexit.unr-lcssa ]
  %.04555.us.epil.init = phi ptr [ %i.dt, %.lr.ph.split.us.preheader ], [ %i.fj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i32 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.04456.us.epil = phi ptr [ %i.hn, %.lr.ph.split.us.epil ], [ %.04456.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 4 uses
  %.04555.us.epil = phi ptr [ %i.hm, %.lr.ph.split.us.epil ], [ %.04555.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter98 = phi i32 [ %epil.iter98.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.hh = load i16, ptr %.04555.us.epil, align 2, !tbaa !23
  %i.hi = uitofp reassoc nsz arcp contract afn i16 %i.hh to float
  %i.hj = fmul reassoc nnan nsz arcp contract afn float %2, %i.hi
  store float %i.hj, ptr %.04456.us.epil, align 4, !tbaa !75
  %i.hk = getelementptr inbounds nuw i8, ptr %.04456.us.epil, i64 4
  store <2 x float> zeroinitializer, ptr %i.hk, align 4, !tbaa !75
  %i.hl = getelementptr inbounds nuw i8, ptr %.04456.us.epil, i64 12
  store float 0.000000e+00, ptr %i.hl, align 4, !tbaa !75
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.04555.us.epil, i64 %i.eg
  %i.hn = getelementptr inbounds nuw i8, ptr %.04456.us.epil, i64 16
  %epil.iter98.next = add i32 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i32 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !101

._crit_edge.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit93.unr-lcssa, %.lr.ph.split.preheader
  %.04456.epil.init = phi ptr [ %i.dz, %.lr.ph.split.preheader ], [ %i.hg, %._crit_edge.loopexit93.unr-lcssa ]
  %.04555.epil.init = phi ptr [ %i.dt, %.lr.ph.split.preheader ], [ %i.hf, %._crit_edge.loopexit93.unr-lcssa ]
  %lcmp.mod96 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %.04456.epil = phi ptr [ %i.hz, %.lr.ph.split.epil ], [ %.04456.epil.init, %.lr.ph.split.epil.preheader ] ; 2 uses
  %.04555.epil = phi ptr [ %i.hy, %.lr.ph.split.epil ], [ %.04555.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.ho = load i16, ptr %.04555.epil, align 2, !tbaa !23
  %i.hp = uitofp reassoc nsz arcp contract afn i16 %i.ho to float
  %i.hq = getelementptr inbounds nuw i8, ptr %.04555.epil, i64 2
  %i.hr = load <2 x i16>, ptr %i.hq, align 2, !tbaa !23
  %i.hs = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.hp, i64 0
  %i.ht = shufflevector <2 x i16> %i.hr, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hu = uitofp <4 x i16> %i.ht to <4 x float>
  %i.hv = shufflevector <4 x float> %i.hs, <4 x float> %i.hu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.hw = fmul reassoc nnan nsz arcp contract afn <4 x float> %7, %i.hv
  %i.hx = fadd reassoc nsz arcp contract afn <4 x float> %i.hw, <float -0.000000e+00, float -1.280000e+02, float -1.280000e+02, float 0.000000e+00>
  store <4 x float> %i.hx, ptr %.04456.epil, align 4, !tbaa !75
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.04555.epil, i64 %i.eg
  %i.hz = getelementptr inbounds nuw i8, ptr %.04456.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !102

._crit_edge:                                      ; preds = %._crit_edge.loopexit93.unr-lcssa, %.lr.ph.split.epil, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %.preheader
  tail call void @cmsDoTransform(ptr noundef %i.g, ptr noundef %i.dz, ptr noundef %i.dz, i32 noundef %i.ed) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ia = load i32, ptr %i.h, align 4, !tbaa !67
  %i.ib = zext i32 %i.ia to i64
  %i.ic = icmp samesign ult i64 %indvars.iv.next, %i.ib
  br i1 %i.ic, label %.lr.ph65.split, label %.thread51

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
  %i.cg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cf
  store float %i.cg, ptr %.03341.us44, align 4, !tbaa !75
end_hunk_0
