Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4f?download=true
inline.NumInlined: 61
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 49
begin_hunk_0_@zfp_encode_block_strided_float_4:bb.a
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %2
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.c ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 116
  store float %i.cv, ptr %i.cs, align 16, !tbaa !11
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %2 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 120
  store float %i.cy, ptr %i.cw, align 4, !tbaa !11
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %2 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 124
  store float %i.db, ptr %i.cz, align 8, !tbaa !11
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.da, i64 %2 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.02340.i, i64 128
  store float %i.de, ptr %i.dc, align 4, !tbaa !11
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %2
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.c
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.e ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %.02340.i, i64 132
  store float %i.dj, ptr %i.df, align 128, !tbaa !11
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.di, i64 %2 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.02340.i, i64 136
  store float %i.dm, ptr %i.dk, align 4, !tbaa !11
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %2 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 140
  store float %i.dp, ptr %i.dn, align 8, !tbaa !11
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %2 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %.02340.i, i64 144
  store float %i.ds, ptr %i.dq, align 4, !tbaa !11
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %2
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.c ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %.02340.i, i64 148
  store float %i.dw, ptr %i.dt, align 16, !tbaa !11
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %2 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %.02340.i, i64 152
  store float %i.dz, ptr %i.dx, align 4, !tbaa !11
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %2 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %.02340.i, i64 156
  store float %i.ec, ptr %i.ea, align 8, !tbaa !11
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %2 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 160
  store float %i.ef, ptr %i.ed, align 4, !tbaa !11
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %2
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.c ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %.02340.i, i64 164
  store float %i.ej, ptr %i.eg, align 32, !tbaa !11
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %2 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.02340.i, i64 168
  store float %i.em, ptr %i.ek, align 4, !tbaa !11
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %2 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 172
  store float %i.ep, ptr %i.en, align 8, !tbaa !11
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %2 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %.02340.i, i64 176
  store float %i.es, ptr %i.eq, align 4, !tbaa !11
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.er, i64 %2
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.c ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %.02340.i, i64 180
  store float %i.ew, ptr %i.et, align 16, !tbaa !11
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %2 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !11
  %i.fa = getelementptr inbounds nuw i8, ptr %.02340.i, i64 184
  store float %i.ez, ptr %i.ex, align 4, !tbaa !11
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %2 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !11
  %i.fd = getelementptr inbounds nuw i8, ptr %.02340.i, i64 188
  store float %i.fc, ptr %i.fa, align 8, !tbaa !11
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %2 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %.02340.i, i64 192
  store float %i.ff, ptr %i.fd, align 4, !tbaa !11
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %2
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.c
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.e ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 196
  store float %i.fk, ptr %i.fg, align 64, !tbaa !11
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %2 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %.02340.i, i64 200
  store float %i.fn, ptr %i.fl, align 4, !tbaa !11
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %2 ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 204
  store float %i.fq, ptr %i.fo, align 8, !tbaa !11
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %2 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !11
  %i.fu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 208
  store float %i.ft, ptr %i.fr, align 4, !tbaa !11
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %2
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.c ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 212
  store float %i.fx, ptr %i.fu, align 16, !tbaa !11
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %2 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 216
  store float %i.ga, ptr %i.fy, align 4, !tbaa !11
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %2 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %.02340.i, i64 220
  store float %i.gd, ptr %i.gb, align 8, !tbaa !11
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %2 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 224
  store float %i.gg, ptr %i.ge, align 4, !tbaa !11
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %2
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.c ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %.02340.i, i64 228
  store float %i.gk, ptr %i.gh, align 32, !tbaa !11
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %2 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %.02340.i, i64 232
  store float %i.gn, ptr %i.gl, align 4, !tbaa !11
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %2 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %.02340.i, i64 236
  store float %i.gq, ptr %i.go, align 8, !tbaa !11
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %2 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !11
  %i.gu = getelementptr inbounds nuw i8, ptr %.02340.i, i64 240
  store float %i.gt, ptr %i.gr, align 4, !tbaa !11
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %2
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.c ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !11
  %i.gy = getelementptr inbounds nuw i8, ptr %.02340.i, i64 244
  store float %i.gx, ptr %i.gu, align 16, !tbaa !11
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %2 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !11
  %i.hb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 248
  store float %i.ha, ptr %i.gy, align 4, !tbaa !11
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %2 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !11
  %i.he = getelementptr inbounds nuw i8, ptr %.02340.i, i64 252
  store float %i.hd, ptr %i.hb, align 8, !tbaa !11
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %2 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !11
  %i.hh = getelementptr inbounds nuw i8, ptr %.02340.i, i64 256
  store float %i.hg, ptr %i.he, align 4, !tbaa !11
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %2
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.c
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.e
  %i.hl = add nuw nsw i32 %.041.i, 1              ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.g
  %exitcond.not.i = icmp eq i32 %i.hl, 4
  br i1 %exitcond.not.i, label %gather_float_4.exit, label %.preheader29.i

gather_float_4.exit:                              ; preds = %.preheader29.i
  %i.hn = call i64 @zfp_encode_block_float_4(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.hn
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_partial_block_strided_float_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x float], align 256          ; 174 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %.preheader106.us.preheader.i, label %.preheader113.lr.ph.i

.preheader113.lr.ph.i:                            ; preds = %bb.a
  %.not216.i = icmp eq i64 %4, 0
  %.not217.i = icmp eq i64 %3, 0
  %.not218.i = icmp eq i64 %2, 0
  %i.b = mul i64 %6, %2                           ; 2 uses
  %i.c = sub nsw i64 %7, %i.b                     ; 2 uses
  %i.d = mul i64 %7, %3                           ; 2 uses
  %i.e = sub nsw i64 %8, %i.d                     ; 2 uses
  %i.f = mul nsw i64 %8, %4
  %i.g = sub nsw i64 %9, %i.f
  br i1 %.not216.i, label %.preheader113.i.us.preheader, label %.preheader113.i.preheader

.preheader113.i.us.preheader:                     ; preds = %.preheader113.lr.ph.i
  %xtraiter32 = and i64 %5, 7                     ; 3 uses
  %i.h = icmp ult i64 %5, 8
  br i1 %i.h, label %.preheader113.i.us.epil.preheader, label %.preheader113.i.us.preheader.new

.preheader113.i.us.preheader.new:                 ; preds = %.preheader113.i.us.preheader
  %unroll_iter36 = and i64 %5, -8
  br label %.preheader113.i.us

.preheader113.i.preheader:                        ; preds = %.preheader113.lr.ph.i
  %i.i = shl nuw i64 %3, 4
  %i.j = sub i64 %7, %i.b
  %i.k = shl i64 %i.j, 2
  %i.l = add i64 %3, -1
  %i.m = mul i64 %i.k, %i.l
  %i.n = shl nuw i64 %4, 6
  %i.o = sub i64 %8, %i.d
  %i.p = shl i64 %i.o, 2
  %i.q = add i64 %4, -1
  %i.r = mul i64 %i.p, %i.q
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.s = icmp ult i64 %2, 4
  %unroll_iter = and i64 %2, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  br label %.preheader113.i

.preheader113.i.us:                               ; preds = %.preheader113.i.us, %.preheader113.i.us.preheader.new
  %.0149.i.us = phi i64 [ 0, %.preheader113.i.us.preheader.new ], [ %i.ap, %.preheader113.i.us ] ; 9 uses
  %niter37 = phi i64 [ 0, %.preheader113.i.us.preheader.new ], [ %niter37.next.7, %.preheader113.i.us ]
  %.pre.i.us = shl i64 %.0149.i.us, 8
  %i.t = getelementptr i8, ptr %i.a, i64 %.pre.i.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.t, i8 0, i64 256, i1 false)
  %i.u = shl i64 %.0149.i.us, 8
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.w, i8 0, i64 256, i1 false)
  %i.x = shl i64 %.0149.i.us, 8
  %i.y = getelementptr i8, ptr %i.a, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.z, i8 0, i64 256, i1 false)
  %i.aa = shl i64 %.0149.i.us, 8
  %i.ab = getelementptr i8, ptr %i.a, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.ac, i8 0, i64 256, i1 false)
  %i.ad = shl i64 %.0149.i.us, 8
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 1024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.af, i8 0, i64 256, i1 false)
  %i.ag = shl i64 %.0149.i.us, 8
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 1280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.ai, i8 0, i64 256, i1 false)
  %i.aj = shl i64 %.0149.i.us, 8
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 1536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.al, i8 0, i64 256, i1 false)
  %i.am = shl i64 %.0149.i.us, 8
  %i.an = getelementptr i8, ptr %i.a, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 1792
  %i.ap = add nuw i64 %.0149.i.us, 8              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(256) %i.ao, i8 0, i64 256, i1 false)
  %niter37.next.7 = add nuw i64 %niter37, 8       ; 2 uses
  %niter37.ncmp.7 = icmp eq i64 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %.preheader107.i.loopexit.unr-lcssa, label %.preheader113.i.us

.preheader113.i:                                  ; preds = %.preheader113.i.preheader, %.split.us.3.i
  %.0149.i = phi i64 [ %i.ni, %.split.us.3.i ], [ 0, %.preheader113.i.preheader ] ; 2 uses
  %.069148.i = phi ptr [ %i.nj, %.split.us.3.i ], [ %1, %.preheader113.i.preheader ] ; 2 uses
  %.pre.i = shl i64 %.0149.i, 8
  %i.aq = getelementptr i8, ptr %i.a, i64 %.pre.i ; 50 uses
  br i1 %.not217.i, label %pad_block_float.exit93.3.i.preheader, label %.preheader111.us.i

pad_block_float.exit93.3.i.preheader:             ; preds = %.preheader113.i
  call void @llvm.memset.p0.i64(ptr align 256 %i.aq, i8 0, i64 %i.n, i1 false), !tbaa !11
  %scevgep17 = getelementptr i8, ptr %.069148.i, i64 %i.r
  br label %.preheader112.i

.preheader111.us.i:                               ; preds = %.preheader113.i, %pad_block_float.exit93.us.3.i
  %.063121.us.i = phi i64 [ %i.ct, %pad_block_float.exit93.us.3.i ], [ 0, %.preheader113.i ] ; 2 uses
  %.170120.us.i = phi ptr [ %i.cu, %pad_block_float.exit93.us.3.i ], [ %.069148.i, %.preheader113.i ] ; 2 uses
  %.idx86.us.i = shl i64 %.063121.us.i, 6
  %i.ar = getelementptr i8, ptr %i.aq, i64 %.idx86.us.i ; 23 uses
  br i1 %.not218.i, label %pad_block_float.exit.us132.i.preheader, label %.preheader108.us.us.i

pad_block_float.exit.us132.i.preheader:           ; preds = %.preheader111.us.i
  call void @llvm.memset.p0.i64(ptr align 64 %i.ar, i8 0, i64 %i.i, i1 false), !tbaa !11
  %scevgep = getelementptr i8, ptr %.170120.us.i, i64 %i.m
  br label %..preheader110_crit_edge.us.i

.preheader108.us.us.i:                            ; preds = %.preheader111.us.i, %pad_block_float.exit.us.us.i
  %.064117.us.us.i = phi i64 [ %i.bs, %pad_block_float.exit.us.us.i ], [ 0, %.preheader111.us.i ] ; 2 uses
  %.271116.us.us.i = phi ptr [ %i.bt, %pad_block_float.exit.us.us.i ], [ %.170120.us.i, %.preheader111.us.i ] ; 2 uses
  %.idx87.us.us.i = shl i64 %.064117.us.us.i, 4
  %i.as = getelementptr i8, ptr %i.ar, i64 %.idx87.us.us.i ; 11 uses
  br i1 %i.s, label %.epil.preheader, label %.preheader108.us.us.i.new

.preheader108.us.us.i.new:                        ; preds = %.preheader108.us.us.i, %.preheader108.us.us.i.new
  %.066115.us.us.i = phi i64 [ %i.bh, %.preheader108.us.us.i.new ], [ 0, %.preheader108.us.us.i ] ; 5 uses
  %.372114.us.us.i = phi ptr [ %i.bi, %.preheader108.us.us.i.new ], [ %.271116.us.us.i, %.preheader108.us.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.preheader108.us.us.i.new ], [ 0, %.preheader108.us.us.i ]
  %i.at = load float, ptr %.372114.us.us.i, align 4, !tbaa !11
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %.066115.us.us.i
  store float %i.at, ptr %i.au, align 16, !tbaa !11
  %i.av = getelementptr inbounds [4 x i8], ptr %.372114.us.us.i, i64 %6 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11
  %i.ax = getelementptr [4 x i8], ptr %i.as, i64 %.066115.us.us.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  store float %i.aw, ptr %i.ay, align 4, !tbaa !11
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %6 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !11
  %i.bb = getelementptr [4 x i8], ptr %i.as, i64 %.066115.us.us.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store float %i.ba, ptr %i.bc, align 8, !tbaa !11
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %6 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11
  %i.bf = getelementptr [4 x i8], ptr %i.as, i64 %.066115.us.us.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 12
  store float %i.be, ptr %i.bg, align 4, !tbaa !11
  %i.bh = add nuw i64 %.066115.us.us.i, 4         ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %6 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader108.us.us.i.new

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader108.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader108.us.us.i
  %.066115.us.us.i.epil.init = phi i64 [ 0, %.preheader108.us.us.i ], [ %i.bh, %._crit_edge.us.us.i.unr-lcssa ]
  %.372114.us.us.i.epil.init = phi ptr [ %.271116.us.us.i, %.preheader108.us.us.i ], [ %i.bi, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.066115.us.us.i.epil = phi i64 [ %.066115.us.us.i.epil.init, %.epil.preheader ], [ %i.bl, %bb.b ] ; 2 uses
  %.372114.us.us.i.epil = phi ptr [ %.372114.us.us.i.epil.init, %.epil.preheader ], [ %i.bm, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bj = load float, ptr %.372114.us.us.i.epil, align 4, !tbaa !11
  %i.bk = getelementptr [4 x i8], ptr %i.as, i64 %.066115.us.us.i.epil
  store float %i.bj, ptr %i.bk, align 4, !tbaa !11
  %i.bl = add nuw i64 %.066115.us.us.i.epil, 1
  %i.bm = getelementptr inbounds [4 x i8], ptr %.372114.us.us.i.epil, i64 %6 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !56

._crit_edge.us.us.i:                              ; preds = %bb.b, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi ptr [ %i.bi, %._crit_edge.us.us.i.unr-lcssa ], [ %i.bm, %bb.b ] ; 2 uses
  switch i64 %2, label %pad_block_float.exit.us.us.i [
    i64 3, label %bb.d
    i64 1, label %._crit_edge.i.us.us.i
    i64 2, label %._crit_edge15.i.us.us.i
  ]

._crit_edge15.i.us.us.i:                          ; preds = %._crit_edge.us.us.i
  %.phi.trans.insert.i.us.us.i = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.pre16.i.us.us.i = load float, ptr %.phi.trans.insert.i.us.us.i, align 4, !tbaa !11
  br label %bb.c

._crit_edge.i.us.us.i:                            ; preds = %._crit_edge.us.us.i
  %.pre.i.us.us.i = load float, ptr %i.as, align 16, !tbaa !11 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %.pre.i.us.us.i, ptr %i.bn, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.us.us.i, %._crit_edge15.i.us.us.i
  %i.bo = phi float [ %.pre16.i.us.us.i, %._crit_edge15.i.us.us.i ], [ %.pre.i.us.us.i, %._crit_edge.i.us.us.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.bo, ptr %i.bp, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.us.us.i
  %i.bq = load float, ptr %i.as, align 16, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !11
  br label %pad_block_float.exit.us.us.i

pad_block_float.exit.us.us.i:                     ; preds = %bb.d, %._crit_edge.us.us.i
  %i.bs = add nuw i64 %.064117.us.us.i, 1         ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %.lcssa, i64 %i.c
  %exitcond231.not.i = icmp eq i64 %i.bs, %3
  br i1 %exitcond231.not.i, label %..preheader110_crit_edge.us.i, label %.preheader108.us.us.i

..preheader110_crit_edge.us.i:                    ; preds = %pad_block_float.exit.us.us.i, %pad_block_float.exit.us132.i.preheader
  %i.bu = phi ptr [ %scevgep, %pad_block_float.exit.us132.i.preheader ], [ %.lcssa, %pad_block_float.exit.us.us.i ]
  switch i64 %3, label %pad_block_float.exit93.us.i [
    i64 3, label %bb.f
    i64 1, label %._crit_edge.i91.us.i
    i64 2, label %._crit_edge15.i88.us.i
  ]

._crit_edge15.i88.us.i:                           ; preds = %..preheader110_crit_edge.us.i
  %.phi.trans.insert.i89.us.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.pre16.i90.us.i = load float, ptr %.phi.trans.insert.i89.us.i, align 16, !tbaa !11
  br label %bb.e

._crit_edge.i91.us.i:                             ; preds = %..preheader110_crit_edge.us.i
  %.pre.i92.us.i = load float, ptr %i.ar, align 64, !tbaa !11 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store float %.pre.i92.us.i, ptr %i.bv, align 16, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i91.us.i, %._crit_edge15.i88.us.i
  %i.bw = phi float [ %.pre16.i90.us.i, %._crit_edge15.i88.us.i ], [ %.pre.i92.us.i, %._crit_edge.i91.us.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store float %i.bw, ptr %i.bx, align 32, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %..preheader110_crit_edge.us.i
  %i.by = load float, ptr %i.ar, align 64, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store float %i.by, ptr %i.bz, align 16, !tbaa !11
  br label %pad_block_float.exit93.us.i

pad_block_float.exit93.us.i:                      ; preds = %bb.f, %..preheader110_crit_edge.us.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
end_hunk_0
