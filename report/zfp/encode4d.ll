Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4d?download=true
inline.NumInlined: 61
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 48
begin_hunk_0_@zfp_encode_block_strided_double_4:bb.a
  store double %i.ce, ptr %i.cc, align 8, !tbaa !11
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %2
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 200
  store double %i.ci, ptr %i.cf, align 8, !tbaa !11
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %2 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 208
  store double %i.cl, ptr %i.cj, align 8, !tbaa !11
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %2 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 216
  store double %i.co, ptr %i.cm, align 8, !tbaa !11
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %2 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 224
  store double %i.cr, ptr %i.cp, align 8, !tbaa !11
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %2
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.c ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 232
  store double %i.cv, ptr %i.cs, align 8, !tbaa !11
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %2 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 240
  store double %i.cy, ptr %i.cw, align 8, !tbaa !11
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %2 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 248
  store double %i.db, ptr %i.cz, align 8, !tbaa !11
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %2 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.02340.i, i64 256
  store double %i.de, ptr %i.dc, align 8, !tbaa !11
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %2
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.c
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.e ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %.02340.i, i64 264
  store double %i.dj, ptr %i.df, align 8, !tbaa !11
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %2 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.02340.i, i64 272
  store double %i.dm, ptr %i.dk, align 8, !tbaa !11
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %2 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 280
  store double %i.dp, ptr %i.dn, align 8, !tbaa !11
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.do, i64 %2 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %.02340.i, i64 288
  store double %i.ds, ptr %i.dq, align 8, !tbaa !11
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %2
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.c ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %.02340.i, i64 296
  store double %i.dw, ptr %i.dt, align 8, !tbaa !11
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %2 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %.02340.i, i64 304
  store double %i.dz, ptr %i.dx, align 8, !tbaa !11
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %2 ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %.02340.i, i64 312
  store double %i.ec, ptr %i.ea, align 8, !tbaa !11
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %2 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 320
  store double %i.ef, ptr %i.ed, align 8, !tbaa !11
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %2
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.c ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %.02340.i, i64 328
  store double %i.ej, ptr %i.eg, align 8, !tbaa !11
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %2 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.02340.i, i64 336
  store double %i.em, ptr %i.ek, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %2 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 344
  store double %i.ep, ptr %i.en, align 8, !tbaa !11
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %2 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %.02340.i, i64 352
  store double %i.es, ptr %i.eq, align 8, !tbaa !11
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %2
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.c ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %.02340.i, i64 360
  store double %i.ew, ptr %i.et, align 8, !tbaa !11
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %2 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !11
  %i.fa = getelementptr inbounds nuw i8, ptr %.02340.i, i64 368
  store double %i.ez, ptr %i.ex, align 8, !tbaa !11
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %2 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11
  %i.fd = getelementptr inbounds nuw i8, ptr %.02340.i, i64 376
  store double %i.fc, ptr %i.fa, align 8, !tbaa !11
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %2 ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 384
  store double %i.ff, ptr %i.fd, align 8, !tbaa !11
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %2
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.c
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.e ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 392
  store double %i.fk, ptr %i.fg, align 8, !tbaa !11
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %2 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %.02340.i, i64 400
  store double %i.fn, ptr %i.fl, align 8, !tbaa !11
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %2 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 408
  store double %i.fq, ptr %i.fo, align 8, !tbaa !11
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %2 ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !11
  %i.fu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 416
  store double %i.ft, ptr %i.fr, align 8, !tbaa !11
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %2
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.c ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 424
  store double %i.fx, ptr %i.fu, align 8, !tbaa !11
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %2 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 432
  store double %i.ga, ptr %i.fy, align 8, !tbaa !11
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %2 ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %.02340.i, i64 440
  store double %i.gd, ptr %i.gb, align 8, !tbaa !11
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %2 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 448
  store double %i.gg, ptr %i.ge, align 8, !tbaa !11
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %2
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.c ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 456
  store double %i.gk, ptr %i.gh, align 8, !tbaa !11
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %2 ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %.02340.i, i64 464
  store double %i.gn, ptr %i.gl, align 8, !tbaa !11
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %2 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 472
  store double %i.gq, ptr %i.go, align 8, !tbaa !11
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %2 ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !11
  %i.gu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 480
  store double %i.gt, ptr %i.gr, align 8, !tbaa !11
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %2
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.c ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !11
  %i.gy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 488
  store double %i.gx, ptr %i.gu, align 8, !tbaa !11
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %2 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !11
  %i.hb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 496
  store double %i.ha, ptr %i.gy, align 8, !tbaa !11
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %2 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !11
  %i.he = getelementptr inbounds nuw i8, ptr %.02340.i, i64 504
  store double %i.hd, ptr %i.hb, align 8, !tbaa !11
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %2 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !11
  %i.hh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 512
  store double %i.hg, ptr %i.he, align 8, !tbaa !11
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %2
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.c
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.e
  %i.hl = add nuw nsw i32 %.041.i, 1              ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.g
  %exitcond.not.i = icmp eq i32 %i.hl, 4
  br i1 %exitcond.not.i, label %gather_double_4.exit, label %.preheader29.i

gather_double_4.exit:                             ; preds = %.preheader29.i
  %i.hn = call i64 @zfp_encode_block_double_4(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.hn
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_partial_block_strided_double_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x double], align 256         ; 334 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %.preheader106.us.preheader.i, label %.preheader113.lr.ph.i

.preheader113.lr.ph.i:                            ; preds = %bb.a
  %.not216.i = icmp eq i64 %4, 0
  %.not217.i = icmp eq i64 %3, 0
  %.not218.i = icmp eq i64 %2, 0
  %i.b = mul nsw i64 %6, %2
  %i.c = sub nsw i64 %7, %i.b                     ; 5 uses
  %i.d = mul i64 %7, %3                           ; 2 uses
  %i.e = sub nsw i64 %8, %i.d                     ; 2 uses
  %i.f = mul nsw i64 %8, %4
  %i.g = sub nsw i64 %9, %i.f
  br i1 %.not216.i, label %.preheader113.i.us.preheader, label %.preheader113.i.preheader

.preheader113.i.us.preheader:                     ; preds = %.preheader113.lr.ph.i
  %xtraiter41 = and i64 %5, 7                     ; 3 uses
  %i.h = icmp ult i64 %5, 8
  br i1 %i.h, label %.preheader113.i.us.epil.preheader, label %.preheader113.i.us.preheader.new

.preheader113.i.us.preheader.new:                 ; preds = %.preheader113.i.us.preheader
  %unroll_iter45 = and i64 %5, -8
  br label %.preheader113.i.us

.preheader113.i.preheader:                        ; preds = %.preheader113.lr.ph.i
  %i.i = shl nuw i64 %4, 7
  %i.j = sub i64 %8, %i.d
  %i.k = shl i64 %i.j, 3
  %i.l = add i64 %4, -1
  %i.m = mul i64 %i.k, %i.l
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.n = icmp ult i64 %2, 4
  %unroll_iter = and i64 %2, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  %xtraiter34 = and i64 %3, 7                     ; 3 uses
  %i.o = icmp ult i64 %3, 8
  %unroll_iter39 = and i64 %3, -8
  %10 = shl i64 %7, 5
  %.idx = shl i64 %7, 4
  %lcmp.mod36.not = icmp eq i64 %xtraiter34, 0
  %lcmp.mod38 = icmp ne i64 %xtraiter34, 0
  br label %.preheader113.i

.preheader113.i.us:                               ; preds = %.preheader113.i.us, %.preheader113.i.us.preheader.new
  %.0149.i.us = phi i64 [ 0, %.preheader113.i.us.preheader.new ], [ %i.al, %.preheader113.i.us ] ; 9 uses
  %niter46 = phi i64 [ 0, %.preheader113.i.us.preheader.new ], [ %niter46.next.7, %.preheader113.i.us ]
  %.pre.i.us = shl i64 %.0149.i.us, 9
  %i.p = getelementptr i8, ptr %i.a, i64 %.pre.i.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.p, i8 0, i64 512, i1 false)
  %i.q = shl i64 %.0149.i.us, 9
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.s, i8 0, i64 512, i1 false)
  %i.t = shl i64 %.0149.i.us, 9
  %i.u = getelementptr i8, ptr %i.a, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 1024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.v, i8 0, i64 512, i1 false)
  %i.w = shl i64 %.0149.i.us, 9
  %i.x = getelementptr i8, ptr %i.a, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 1536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.y, i8 0, i64 512, i1 false)
  %i.z = shl i64 %.0149.i.us, 9
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ab, i8 0, i64 512, i1 false)
  %i.ac = shl i64 %.0149.i.us, 9
  %i.ad = getelementptr i8, ptr %i.a, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 2560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ae, i8 0, i64 512, i1 false)
  %i.af = shl i64 %.0149.i.us, 9
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 3072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ah, i8 0, i64 512, i1 false)
  %i.ai = shl i64 %.0149.i.us, 9
  %i.aj = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 3584
  %i.al = add nuw i64 %.0149.i.us, 8              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(512) %i.ak, i8 0, i64 512, i1 false)
  %niter46.next.7 = add nuw i64 %niter46, 8       ; 2 uses
  %niter46.ncmp.7 = icmp eq i64 %niter46.next.7, %unroll_iter45
  br i1 %niter46.ncmp.7, label %.preheader107.i.loopexit.unr-lcssa, label %.preheader113.i.us

.preheader113.i:                                  ; preds = %.preheader113.i.preheader, %.split.us.3.i
  %.0149.i = phi i64 [ %i.xy, %.split.us.3.i ], [ 0, %.preheader113.i.preheader ] ; 2 uses
  %.069148.i = phi ptr [ %i.xz, %.split.us.3.i ], [ %1, %.preheader113.i.preheader ] ; 2 uses
  %.pre.i = shl i64 %.0149.i, 9
  %i.am = getelementptr i8, ptr %i.a, i64 %.pre.i ; 85 uses
  br i1 %.not217.i, label %pad_block_double.exit93.3.i.preheader, label %.preheader111.us.i

pad_block_double.exit93.3.i.preheader:            ; preds = %.preheader113.i
  call void @llvm.memset.p0.i64(ptr align 256 %i.am, i8 0, i64 %i.i, i1 false), !tbaa !11
  %scevgep = getelementptr i8, ptr %.069148.i, i64 %i.m
  br label %.preheader112.i

.preheader111.us.i:                               ; preds = %.preheader113.i, %pad_block_double.exit93.us.3.i
  %.063121.us.i = phi i64 [ %i.dr, %pad_block_double.exit93.us.3.i ], [ 0, %.preheader113.i ] ; 2 uses
  %.170120.us.i = phi ptr [ %i.ds, %pad_block_double.exit93.us.3.i ], [ %.069148.i, %.preheader113.i ] ; 3 uses
  %.idx86.us.i = shl i64 %.063121.us.i, 7
  %i.an = getelementptr i8, ptr %i.am, i64 %.idx86.us.i ; 31 uses
  br i1 %.not218.i, label %pad_block_double.exit.us132.i.preheader, label %.preheader108.us.us.i

pad_block_double.exit.us132.i.preheader:          ; preds = %.preheader111.us.i
  br i1 %i.o, label %pad_block_double.exit.us132.i.epil.preheader, label %pad_block_double.exit.us132.i

pad_block_double.exit.us132.i:                    ; preds = %pad_block_double.exit.us132.i.preheader, %pad_block_double.exit.us132.i
  %.064117.us124.i = phi i64 [ %i.bl, %pad_block_double.exit.us132.i ], [ 0, %pad_block_double.exit.us132.i.preheader ] ; 9 uses
  %.271116.us125.i = phi ptr [ %i.bm, %pad_block_double.exit.us132.i ], [ %.170120.us.i, %pad_block_double.exit.us132.i.preheader ]
  %niter40 = phi i64 [ %niter40.next.7, %pad_block_double.exit.us132.i ], [ 0, %pad_block_double.exit.us132.i.preheader ]
  %.idx84.us126.i = shl i64 %.064117.us124.i, 5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx84.us126.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  %i.ap = shl i64 %.064117.us124.i, 5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  %i.as = shl i64 %.064117.us124.i, 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %i.av = shl i64 %.064117.us124.i, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %11 = getelementptr inbounds i8, ptr %.271116.us125.i, i64 %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  %i.ay = shl i64 %.064117.us124.i, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bb = shl i64 %.064117.us124.i, 5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  %12 = getelementptr inbounds i8, ptr %11, i64 %.idx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  %i.be = shl i64 %.064117.us124.i, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  %i.bh = getelementptr inbounds [8 x i8], ptr %12, i64 %i.c ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  %i.bi = shl i64 %.064117.us124.i, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bl = add nuw i64 %.064117.us124.i, 8         ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.c ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %niter40.next.7 = add nuw i64 %niter40, 8       ; 2 uses
  %niter40.ncmp.7 = icmp eq i64 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %..preheader110_crit_edge.us.i.loopexit.unr-lcssa, label %pad_block_double.exit.us132.i

.preheader108.us.us.i:                            ; preds = %.preheader111.us.i, %pad_block_double.exit.us.us.i
  %.064117.us.us.i = phi i64 [ %i.cn, %pad_block_double.exit.us.us.i ], [ 0, %.preheader111.us.i ] ; 2 uses
  %.271116.us.us.i = phi ptr [ %i.co, %pad_block_double.exit.us.us.i ], [ %.170120.us.i, %.preheader111.us.i ] ; 2 uses
  %.idx87.us.us.i = shl i64 %.064117.us.us.i, 5
  %i.bn = getelementptr i8, ptr %i.an, i64 %.idx87.us.us.i ; 11 uses
  br i1 %i.n, label %.epil.preheader, label %.preheader108.us.us.i.new

.preheader108.us.us.i.new:                        ; preds = %.preheader108.us.us.i, %.preheader108.us.us.i.new
  %.066115.us.us.i = phi i64 [ %i.cc, %.preheader108.us.us.i.new ], [ 0, %.preheader108.us.us.i ] ; 5 uses
  %.372114.us.us.i = phi ptr [ %i.cd, %.preheader108.us.us.i.new ], [ %.271116.us.us.i, %.preheader108.us.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.preheader108.us.us.i.new ], [ 0, %.preheader108.us.us.i ]
  %i.bo = load double, ptr %.372114.us.us.i, align 8, !tbaa !11
  %i.bp = getelementptr [8 x i8], ptr %i.bn, i64 %.066115.us.us.i
  store double %i.bo, ptr %i.bp, align 32, !tbaa !11
  %i.bq = getelementptr inbounds [8 x i8], ptr %.372114.us.us.i, i64 %6 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr [8 x i8], ptr %i.bn, i64 %.066115.us.us.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store double %i.br, ptr %i.bt, align 8, !tbaa !11
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %6 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr [8 x i8], ptr %i.bn, i64 %.066115.us.us.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store double %i.bv, ptr %i.bx, align 16, !tbaa !11
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %6 ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr [8 x i8], ptr %i.bn, i64 %.066115.us.us.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  store double %i.bz, ptr %i.cb, align 8, !tbaa !11
  %i.cc = add nuw i64 %.066115.us.us.i, 4         ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %6 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader108.us.us.i.new

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader108.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader108.us.us.i
  %.066115.us.us.i.epil.init = phi i64 [ 0, %.preheader108.us.us.i ], [ %i.cc, %._crit_edge.us.us.i.unr-lcssa ]
  %.372114.us.us.i.epil.init = phi ptr [ %.271116.us.us.i, %.preheader108.us.us.i ], [ %i.cd, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.066115.us.us.i.epil = phi i64 [ %.066115.us.us.i.epil.init, %.epil.preheader ], [ %i.cg, %bb.b ] ; 2 uses
  %.372114.us.us.i.epil = phi ptr [ %.372114.us.us.i.epil.init, %.epil.preheader ], [ %i.ch, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ce = load double, ptr %.372114.us.us.i.epil, align 8, !tbaa !11
  %i.cf = getelementptr [8 x i8], ptr %i.bn, i64 %.066115.us.us.i.epil
  store double %i.ce, ptr %i.cf, align 8, !tbaa !11
  %i.cg = add nuw i64 %.066115.us.us.i.epil, 1
  %i.ch = getelementptr inbounds [8 x i8], ptr %.372114.us.us.i.epil, i64 %6 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !56

._crit_edge.us.us.i:                              ; preds = %bb.b, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi ptr [ %i.cd, %._crit_edge.us.us.i.unr-lcssa ], [ %i.ch, %bb.b ] ; 2 uses
  switch i64 %2, label %pad_block_double.exit.us.us.i [
    i64 3, label %bb.d
    i64 1, label %._crit_edge.i.us.us.i
    i64 2, label %._crit_edge15.i.us.us.i
  ]

._crit_edge15.i.us.us.i:                          ; preds = %._crit_edge.us.us.i
  %.phi.trans.insert.i.us.us.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.pre16.i.us.us.i = load double, ptr %.phi.trans.insert.i.us.us.i, align 8, !tbaa !11
  br label %bb.c

._crit_edge.i.us.us.i:                            ; preds = %._crit_edge.us.us.i
  %.pre.i.us.us.i = load double, ptr %i.bn, align 32, !tbaa !11 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %.pre.i.us.us.i, ptr %i.ci, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.us.us.i, %._crit_edge15.i.us.us.i
  %i.cj = phi double [ %.pre16.i.us.us.i, %._crit_edge15.i.us.us.i ], [ %.pre.i.us.us.i, %._crit_edge.i.us.us.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store double %i.cj, ptr %i.ck, align 16, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.us.us.i
  %i.cl = load double, ptr %i.bn, align 32, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !11
  br label %pad_block_double.exit.us.us.i

pad_block_double.exit.us.us.i:                    ; preds = %bb.d, %._crit_edge.us.us.i
  %i.cn = add nuw i64 %.064117.us.us.i, 1         ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.lcssa, i64 %i.c
  %exitcond231.not.i = icmp eq i64 %i.cn, %3
  br i1 %exitcond231.not.i, label %..preheader110_crit_edge.us.i, label %.preheader108.us.us.i

..preheader110_crit_edge.us.i.loopexit.unr-lcssa: ; preds = %pad_block_double.exit.us132.i
  br i1 %lcmp.mod36.not, label %..preheader110_crit_edge.us.i, label %pad_block_double.exit.us132.i.epil.preheader

pad_block_double.exit.us132.i.epil.preheader:     ; preds = %..preheader110_crit_edge.us.i.loopexit.unr-lcssa, %pad_block_double.exit.us132.i.preheader
  %.064117.us124.i.epil.init = phi i64 [ 0, %pad_block_double.exit.us132.i.preheader ], [ %i.bl, %..preheader110_crit_edge.us.i.loopexit.unr-lcssa ]
  %.271116.us125.i.epil.init = phi ptr [ %.170120.us.i, %pad_block_double.exit.us132.i.preheader ], [ %i.bm, %..preheader110_crit_edge.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %pad_block_double.exit.us132.i.epil

pad_block_double.exit.us132.i.epil:               ; preds = %pad_block_double.exit.us132.i.epil, %pad_block_double.exit.us132.i.epil.preheader
  %.064117.us124.i.epil = phi i64 [ %i.cq, %pad_block_double.exit.us132.i.epil ], [ %.064117.us124.i.epil.init, %pad_block_double.exit.us132.i.epil.preheader ] ; 2 uses
  %.271116.us125.i.epil = phi ptr [ %i.cr, %pad_block_double.exit.us132.i.epil ], [ %.271116.us125.i.epil.init, %pad_block_double.exit.us132.i.epil.preheader ] ; 2 uses
  %epil.iter35 = phi i64 [ %epil.iter35.next, %pad_block_double.exit.us132.i.epil ], [ 0, %pad_block_double.exit.us132.i.epil.preheader ]
  %.idx84.us126.i.epil = shl i64 %.064117.us124.i.epil, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx84.us126.i.epil
  %i.cq = add nuw i64 %.064117.us124.i.epil, 1
  %i.cr = getelementptr inbounds [8 x i8], ptr %.271116.us125.i.epil, i64 %i.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.cp, i8 0, i64 32, i1 false)
  %epil.iter35.next = add i64 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i64 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %..preheader110_crit_edge.us.i, label %pad_block_double.exit.us132.i.epil, !llvm.loop !57

..preheader110_crit_edge.us.i:                    ; preds = %pad_block_double.exit.us.us.i, %..preheader110_crit_edge.us.i.loopexit.unr-lcssa, %pad_block_double.exit.us132.i.epil
  %i.cs = phi ptr [ %.271116.us125.i.epil, %pad_block_double.exit.us132.i.epil ], [ %i.bh, %..preheader110_crit_edge.us.i.loopexit.unr-lcssa ], [ %.lcssa, %pad_block_double.exit.us.us.i ]
  switch i64 %3, label %pad_block_double.exit93.us.i [
    i64 3, label %bb.f
    i64 1, label %._crit_edge.i91.us.i
    i64 2, label %._crit_edge15.i88.us.i
  ]

._crit_edge15.i88.us.i:                           ; preds = %..preheader110_crit_edge.us.i
  %.phi.trans.insert.i89.us.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.pre16.i90.us.i = load double, ptr %.phi.trans.insert.i89.us.i, align 32, !tbaa !11
  br label %bb.e

._crit_edge.i91.us.i:                             ; preds = %..preheader110_crit_edge.us.i
  %.pre.i92.us.i = load double, ptr %i.an, align 128, !tbaa !11 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store double %.pre.i92.us.i, ptr %i.ct, align 32, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i91.us.i, %._crit_edge15.i88.us.i
  %i.cu = phi double [ %.pre16.i90.us.i, %._crit_edge15.i88.us.i ], [ %.pre.i92.us.i, %._crit_edge.i91.us.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store double %i.cu, ptr %i.cv, align 64, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %..preheader110_crit_edge.us.i
  %i.cw = load double, ptr %i.an, align 128, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store double %i.cw, ptr %i.cx, align 32, !tbaa !11
  br label %pad_block_double.exit93.us.i

pad_block_double.exit93.us.i:                     ; preds = %bb.f, %..preheader110_crit_edge.us.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  switch i64 %3, label %pad_block_double.exit93.us.1.i [
    i64 3, label %bb.h
    i64 1, label %._crit_edge.i91.us.1.i
    i64 2, label %._crit_edge15.i88.us.1.i
  ]

._crit_edge15.i88.us.1.i:                         ; preds = %pad_block_double.exit93.us.i
  %.phi.trans.insert.i89.us.1.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.pre16.i90.us.1.i = load double, ptr %.phi.trans.insert.i89.us.1.i, align 8, !tbaa !11
  br label %bb.g

._crit_edge.i91.us.1.i:                           ; preds = %pad_block_double.exit93.us.i
  %.pre.i92.us.1.i = load double, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store double %.pre.i92.us.1.i, ptr %i.cz, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i91.us.1.i, %._crit_edge15.i88.us.1.i
  %i.da = phi double [ %.pre16.i90.us.1.i, %._crit_edge15.i88.us.1.i ], [ %.pre.i92.us.1.i, %._crit_edge.i91.us.1.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store double %i.da, ptr %i.db, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %pad_block_double.exit93.us.i
  %i.dc = load double, ptr %i.cy, align 8, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  store double %i.dc, ptr %i.dd, align 8, !tbaa !11
  br label %pad_block_double.exit93.us.1.i

pad_block_double.exit93.us.1.i:                   ; preds = %bb.h, %pad_block_double.exit93.us.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  switch i64 %3, label %pad_block_double.exit93.us.2.i [
    i64 3, label %bb.j
    i64 1, label %._crit_edge.i91.us.2.i
    i64 2, label %._crit_edge15.i88.us.2.i
  ]

._crit_edge15.i88.us.2.i:                         ; preds = %pad_block_double.exit93.us.1.i
  %.phi.trans.insert.i89.us.2.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.pre16.i90.us.2.i = load double, ptr %.phi.trans.insert.i89.us.2.i, align 16, !tbaa !11
end_hunk_0
