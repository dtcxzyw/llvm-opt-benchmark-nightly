Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/pdqsort2?download=true
inline.NumInlined: 44
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pdqsort_loop:bb.a
  %.0230.i = phi ptr [ %i.do, %bb.ab ], [ %.0114239, %.preheader76 ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0230.i, i64 2 ; 6 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !38 ; 2 uses
  %i.dq = icmp ult i16 %i.dp, %.pre
  br i1 %i.dq, label %bb.ab, label %bb.ac, !llvm.loop !21

bb.ac:                                            ; preds = %bb.ab
  %i.dr = icmp eq ptr %.0230.i, %.0114239
  br i1 %i.dr, label %.preheader257.i, label %.preheader258.i

.preheader257.i:                                  ; preds = %bb.ac, %bb.ad
  %.0225.i = phi ptr [ %i.dt, %bb.ad ], [ %1, %bb.ac ] ; 3 uses
  %i.ds = icmp ult ptr %i.do, %.0225.i
  br i1 %i.ds, label %bb.ad, label %.critedge.i150

bb.ad:                                            ; preds = %.preheader257.i
  %i.dt = getelementptr inbounds i8, ptr %.0225.i, i64 -2 ; 3 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !38
  %.not243.i = icmp ult i16 %i.du, %.pre
  br i1 %.not243.i, label %.critedge.i150, label %.preheader257.i, !llvm.loop !22

.preheader258.i:                                  ; preds = %bb.ac, %.preheader258.i
  %.1226.i = phi ptr [ %i.dv, %.preheader258.i ], [ %1, %bb.ac ]
  %i.dv = getelementptr inbounds i8, ptr %.1226.i, i64 -2 ; 3 uses
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !38
  %.not.i149 = icmp ult i16 %i.dw, %.pre
  br i1 %.not.i149, label %.critedge.i150, label %.preheader258.i, !llvm.loop !23

.critedge.i150:                                   ; preds = %.preheader258.i, %bb.ad, %.preheader257.i
  %.2227.i = phi ptr [ %i.dt, %bb.ad ], [ %.0225.i, %.preheader257.i ], [ %i.dv, %.preheader258.i ] ; 6 uses
  %.not = icmp ult ptr %i.do, %.2227.i            ; 2 uses
  br i1 %.not, label %bb.ae, label %partition_right_branchless.exit

bb.ae:                                            ; preds = %.critedge.i150
  %i.dx = load i16, ptr %.2227.i, align 2, !tbaa !38
  store i16 %i.dx, ptr %i.do, align 2, !tbaa !38
  store i16 %i.dp, ptr %.2227.i, align 2, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %.0230.i, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.dz = icmp ult ptr %i.dy, %.2227.i
  br i1 %i.dz, label %.lr.ph289.i, label %.loopexit.i

.lr.ph289.i:                                      ; preds = %bb.ae, %swap_offsets.exit.i
  %.0211288.i = phi i64 [ %.1.i, %swap_offsets.exit.i ], [ 0, %bb.ae ] ; 2 uses
  %.0212287.i = phi i64 [ %spec.select248.i, %swap_offsets.exit.i ], [ 0, %bb.ae ] ; 2 uses
  %.0214286.i = phi i64 [ %i.og, %swap_offsets.exit.i ], [ 0, %bb.ae ] ; 5 uses
  %.0216285.i = phi i64 [ %i.of, %swap_offsets.exit.i ], [ 0, %bb.ae ] ; 5 uses
  %.0221283.i = phi ptr [ %.1222.i, %swap_offsets.exit.i ], [ %.2227.i, %bb.ae ] ; 11 uses
  %.0223281.i = phi ptr [ %spec.select.i, %swap_offsets.exit.i ], [ %i.dy, %bb.ae ] ; 11 uses
  %.3228280.i = phi ptr [ %.6.i, %swap_offsets.exit.i ], [ %.2227.i, %bb.ae ] ; 5 uses
  %.1231279.i = phi ptr [ %.4234.i, %swap_offsets.exit.i ], [ %i.dy, %bb.ae ] ; 5 uses
  %i.ea = ptrtoint ptr %.3228280.i to i64
  %i.eb = ptrtoint ptr %.1231279.i to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 1                 ; 2 uses
  %i.ee = icmp eq i64 %.0216285.i, 0
  %i.ef = icmp eq i64 %.0214286.i, 0              ; 2 uses
  %i.eg = zext i1 %i.ef to i64
  %i.eh = lshr i64 %i.ed, %i.eg
  %i.ei = select i1 %i.ee, i64 %i.eh, i64 0       ; 7 uses
  %i.ej = sub i64 %i.ed, %i.ei
  %i.ek = select i1 %i.ef, i64 %i.ej, i64 0       ; 6 uses
  %i.el = icmp ugt i64 %i.ei, 63
  br i1 %i.el, label %.preheader253.i, label %.preheader255.i

.preheader255.i:                                  ; preds = %.lr.ph289.i
  %.not302.i = icmp eq i64 %i.ei, 0
  br i1 %.not302.i, label %.loopexit254.i, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %.preheader255.i
  %xtraiter = and i64 %i.ei, 1
  %i.em = icmp eq i64 %i.ei, 1
  br i1 %i.em, label %.lr.ph.i151.epil.preheader, label %.lr.ph.i151.preheader.new

.lr.ph.i151.preheader.new:                        ; preds = %.lr.ph.i151.preheader
  %unroll_iter = and i64 %i.ei, 62
  br label %.lr.ph.i151

.preheader253.i:                                  ; preds = %.lr.ph289.i, %.preheader253.i
  %.0210269.i = phi i64 [ %i.gk, %.preheader253.i ], [ 0, %.lr.ph289.i ] ; 3 uses
  %.1217268.i = phi i64 [ %i.gq, %.preheader253.i ], [ %.0216285.i, %.lr.ph289.i ] ; 2 uses
  %.2232267.i = phi ptr [ %i.gr, %.preheader253.i ], [ %.1231279.i, %.lr.ph289.i ] ; 9 uses
  %i.en = trunc nuw nsw i64 %.0210269.i to i8     ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 %.1217268.i
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !40
  %i.ep = load i16, ptr %.2232267.i, align 2, !tbaa !38
  %i.eq = icmp uge i16 %i.ep, %.pre
  %i.er = zext i1 %i.eq to i64
  %i.es = add i64 %.1217268.i, %i.er              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 2
  %i.eu = or disjoint i8 %i.en, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.es
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !40
  %i.ew = load i16, ptr %i.et, align 2, !tbaa !38
  %i.ex = icmp uge i16 %i.ew, %.pre
  %i.ey = zext i1 %i.ex to i64
  %i.ez = add i64 %i.es, %i.ey                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 4
  %i.fb = or disjoint i8 %i.en, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ez
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !40
  %i.fd = load i16, ptr %i.fa, align 2, !tbaa !38
  %i.fe = icmp uge i16 %i.fd, %.pre
  %i.ff = zext i1 %i.fe to i64
  %i.fg = add i64 %i.ez, %i.ff                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 6
  %i.fi = or disjoint i8 %i.en, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !40
  %i.fk = load i16, ptr %i.fh, align 2, !tbaa !38
  %i.fl = icmp uge i16 %i.fk, %.pre
  %i.fm = zext i1 %i.fl to i64
  %i.fn = add i64 %i.fg, %i.fm                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 8
  %i.fp = or disjoint i8 %i.en, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.fn
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !40
  %i.fr = load i16, ptr %i.fo, align 2, !tbaa !38
  %i.fs = icmp uge i16 %i.fr, %.pre
  %i.ft = zext i1 %i.fs to i64
  %i.fu = add i64 %i.fn, %i.ft                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 10
  %i.fw = or disjoint i8 %i.en, 5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.fu
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !40
  %i.fy = load i16, ptr %i.fv, align 2, !tbaa !38
  %i.fz = icmp uge i16 %i.fy, %.pre
  %i.ga = zext i1 %i.fz to i64
  %i.gb = add i64 %i.fu, %i.ga                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 12
  %i.gd = or disjoint i8 %i.en, 6
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.gb
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !40
  %i.gf = load i16, ptr %i.gc, align 2, !tbaa !38
  %i.gg = icmp uge i16 %i.gf, %.pre
  %i.gh = zext i1 %i.gg to i64
  %i.gi = add i64 %i.gb, %i.gh                    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 14
  %i.gk = add nuw nsw i64 %.0210269.i, 8
  %i.gl = or disjoint i8 %i.en, 7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.gi
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !40
  %i.gn = load i16, ptr %i.gj, align 2, !tbaa !38
  %i.go = icmp uge i16 %i.gn, %.pre
  %i.gp = zext i1 %i.go to i64
  %i.gq = add i64 %i.gi, %i.gp                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.2232267.i, i64 16 ; 2 uses
  %i.gs = icmp samesign ult i64 %.0210269.i, 56
  br i1 %i.gs, label %.preheader253.i, label %.loopexit254.i, !llvm.loop !24

.lr.ph.i151:                                      ; preds = %.lr.ph.i151, %.lr.ph.i151.preheader.new
  %.0209265.i = phi i64 [ 0, %.lr.ph.i151.preheader.new ], [ %i.ha, %.lr.ph.i151 ] ; 3 uses
  %.2218264.i = phi i64 [ %.0216285.i, %.lr.ph.i151.preheader.new ], [ %i.hh, %.lr.ph.i151 ] ; 2 uses
  %.3233263.i = phi ptr [ %.1231279.i, %.lr.ph.i151.preheader.new ], [ %i.hi, %.lr.ph.i151 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i151.preheader.new ], [ %niter.next.1, %.lr.ph.i151 ]
  %i.gt = trunc nuw nsw i64 %.0209265.i to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.n, i64 %.2218264.i
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !40
  %i.gv = load i16, ptr %.3233263.i, align 2, !tbaa !38
  %i.gw = icmp uge i16 %i.gv, %.pre
  %i.gx = zext i1 %i.gw to i64
  %i.gy = add i64 %.2218264.i, %i.gx              ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.3233263.i, i64 2
  %i.ha = add nuw nsw i64 %.0209265.i, 2          ; 2 uses
  %i.hb = trunc i64 %.0209265.i to i8
  %i.hc = or disjoint i8 %i.hb, 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.gy
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !40
  %i.he = load i16, ptr %i.gz, align 2, !tbaa !38
  %i.hf = icmp uge i16 %i.he, %.pre
  %i.hg = zext i1 %i.hf to i64
  %i.hh = add i64 %i.gy, %i.hg                    ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.3233263.i, i64 4 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit254.i.loopexit72.unr-lcssa, label %.lr.ph.i151, !llvm.loop !25

.loopexit254.i.loopexit72.unr-lcssa:              ; preds = %.lr.ph.i151
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit254.i, label %.lr.ph.i151.epil.preheader

.lr.ph.i151.epil.preheader:                       ; preds = %.loopexit254.i.loopexit72.unr-lcssa, %.lr.ph.i151.preheader
  %.0209265.i.epil.init = phi i64 [ 0, %.lr.ph.i151.preheader ], [ %i.ha, %.loopexit254.i.loopexit72.unr-lcssa ]
  %.2218264.i.epil.init = phi i64 [ %.0216285.i, %.lr.ph.i151.preheader ], [ %i.hh, %.loopexit254.i.loopexit72.unr-lcssa ] ; 2 uses
  %.3233263.i.epil.init = phi ptr [ %.1231279.i, %.lr.ph.i151.preheader ], [ %i.hi, %.loopexit254.i.loopexit72.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i64 %i.ei to i1
  call void @llvm.assume(i1 %lcmp.mod128)
  %i.hj = trunc nuw nsw i64 %.0209265.i.epil.init to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.n, i64 %.2218264.i.epil.init
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !40
  %i.hl = load i16, ptr %.3233263.i.epil.init, align 2, !tbaa !38
  %i.hm = icmp uge i16 %i.hl, %.pre
  %i.hn = zext i1 %i.hm to i64
  %i.ho = add i64 %.2218264.i.epil.init, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %.3233263.i.epil.init, i64 2
  br label %.loopexit254.i

.loopexit254.i:                                   ; preds = %.lr.ph.i151.epil.preheader, %.loopexit254.i.loopexit72.unr-lcssa, %.preheader253.i, %.preheader255.i
  %.4234.i = phi ptr [ %i.gr, %.preheader253.i ], [ %.1231279.i, %.preheader255.i ], [ %i.hi, %.loopexit254.i.loopexit72.unr-lcssa ], [ %i.hp, %.lr.ph.i151.epil.preheader ] ; 4 uses
  %.3219.i = phi i64 [ %i.gq, %.preheader253.i ], [ %.0216285.i, %.preheader255.i ], [ %i.hh, %.loopexit254.i.loopexit72.unr-lcssa ], [ %i.ho, %.lr.ph.i151.epil.preheader ] ; 6 uses
  %i.hq = icmp ugt i64 %i.ek, 63
  br i1 %i.hq, label %.preheader.i152, label %.preheader251.i

.preheader251.i:                                  ; preds = %.loopexit254.i
  %.not303.i = icmp eq i64 %i.ek, 0
  br i1 %.not303.i, label %.loopexit250.i, label %.lr.ph273.i.preheader

.lr.ph273.i.preheader:                            ; preds = %.preheader251.i
  %xtraiter129 = and i64 %i.ek, 1
  %i.hr = icmp eq i64 %i.ek, 1
  br i1 %i.hr, label %.lr.ph273.i.epil.preheader, label %.lr.ph273.i.preheader.new

.lr.ph273.i.preheader.new:                        ; preds = %.lr.ph273.i.preheader
  %unroll_iter134 = and i64 %i.ek, 62
  br label %.lr.ph273.i

.preheader.i152:                                  ; preds = %.loopexit254.i, %.preheader.i152
  %.0208278.i = phi i64 [ %i.jq, %.preheader.i152 ], [ 0, %.loopexit254.i ] ; 3 uses
  %.1215277.i = phi i64 [ %i.jx, %.preheader.i152 ], [ %.0214286.i, %.loopexit254.i ] ; 2 uses
  %.4229276.i = phi ptr [ %i.jt, %.preheader.i152 ], [ %.3228280.i, %.loopexit254.i ] ; 8 uses
  %i.hs = trunc nuw nsw i64 %.0208278.i to i8     ; 7 uses
  %i.ht = or disjoint i8 %i.hs, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1215277.i
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !40
  %i.hv = getelementptr inbounds i8, ptr %.4229276.i, i64 -2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !38
  %i.hx = icmp ult i16 %i.hw, %.pre
  %i.hy = zext i1 %i.hx to i64
  %i.hz = add i64 %.1215277.i, %i.hy              ; 2 uses
  %i.ia = or disjoint i8 %i.hs, 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.hz
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !40
  %i.ic = getelementptr inbounds i8, ptr %.4229276.i, i64 -4
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !38
  %i.ie = icmp ult i16 %i.id, %.pre
  %i.if = zext i1 %i.ie to i64
  %i.ig = add i64 %i.hz, %i.if                    ; 2 uses
  %i.ih = or disjoint i8 %i.hs, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ig
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !40
  %i.ij = getelementptr inbounds i8, ptr %.4229276.i, i64 -6
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !38
  %i.il = icmp ult i16 %i.ik, %.pre
  %i.im = zext i1 %i.il to i64
  %i.in = add i64 %i.ig, %i.im                    ; 2 uses
  %i.io = or disjoint i8 %i.hs, 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.in
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !40
  %i.iq = getelementptr inbounds i8, ptr %.4229276.i, i64 -8
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !38
  %i.is = icmp ult i16 %i.ir, %.pre
  %i.it = zext i1 %i.is to i64
  %i.iu = add i64 %i.in, %i.it                    ; 2 uses
  %i.iv = or disjoint i8 %i.hs, 5
  %i.iw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.iu
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !40
  %i.ix = getelementptr inbounds i8, ptr %.4229276.i, i64 -10
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !38
  %i.iz = icmp ult i16 %i.iy, %.pre
  %i.ja = zext i1 %i.iz to i64
  %i.jb = add i64 %i.iu, %i.ja                    ; 2 uses
  %i.jc = or disjoint i8 %i.hs, 6
  %i.jd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jb
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !40
  %i.je = getelementptr inbounds i8, ptr %.4229276.i, i64 -12
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !38
  %i.jg = icmp ult i16 %i.jf, %.pre
  %i.jh = zext i1 %i.jg to i64
  %i.ji = add i64 %i.jb, %i.jh                    ; 2 uses
  %i.jj = or disjoint i8 %i.hs, 7
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ji
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !40
  %i.jl = getelementptr inbounds i8, ptr %.4229276.i, i64 -14
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !38
  %i.jn = icmp ult i16 %i.jm, %.pre
  %i.jo = zext i1 %i.jn to i64
  %i.jp = add i64 %i.ji, %i.jo                    ; 2 uses
  %i.jq = add nuw nsw i64 %.0208278.i, 8          ; 2 uses
  %i.jr = trunc nuw nsw i64 %i.jq to i8
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jp
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !40
  %i.jt = getelementptr inbounds i8, ptr %.4229276.i, i64 -16 ; 3 uses
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !38
  %i.jv = icmp ult i16 %i.ju, %.pre
  %i.jw = zext i1 %i.jv to i64
  %i.jx = add i64 %i.jp, %i.jw                    ; 2 uses
  %i.jy = icmp samesign ult i64 %.0208278.i, 56
  br i1 %i.jy, label %.preheader.i152, label %.loopexit250.i, !llvm.loop !26

.lr.ph273.i:                                      ; preds = %.lr.ph273.i, %.lr.ph273.i.preheader.new
  %.0272.i = phi i64 [ 0, %.lr.ph273.i.preheader.new ], [ %i.kh, %.lr.ph273.i ] ; 2 uses
  %.2271.i = phi i64 [ %.0214286.i, %.lr.ph273.i.preheader.new ], [ %i.ko, %.lr.ph273.i ] ; 2 uses
  %.5270.i = phi ptr [ %.3228280.i, %.lr.ph273.i.preheader.new ], [ %i.kk, %.lr.ph273.i ] ; 2 uses
  %niter135 = phi i64 [ 0, %.lr.ph273.i.preheader.new ], [ %niter135.next.1, %.lr.ph273.i ]
  %i.jz = trunc i64 %.0272.i to i8
  %i.ka = or disjoint i8 %i.jz, 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.r, i64 %.2271.i
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !40
  %i.kc = getelementptr inbounds i8, ptr %.5270.i, i64 -2
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !38
  %i.ke = icmp ult i16 %i.kd, %.pre
  %i.kf = zext i1 %i.ke to i64
  %i.kg = add i64 %.2271.i, %i.kf                 ; 2 uses
  %i.kh = add nuw nsw i64 %.0272.i, 2             ; 3 uses
  %i.ki = trunc nuw nsw i64 %i.kh to i8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.kg
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !40
  %i.kk = getelementptr inbounds i8, ptr %.5270.i, i64 -4 ; 4 uses
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !38
  %i.km = icmp ult i16 %i.kl, %.pre
  %i.kn = zext i1 %i.km to i64
  %i.ko = add i64 %i.kg, %i.kn                    ; 3 uses
  %niter135.next.1 = add nuw nsw i64 %niter135, 2 ; 2 uses
  %niter135.ncmp.1 = icmp eq i64 %niter135.next.1, %unroll_iter134
  br i1 %niter135.ncmp.1, label %.loopexit250.i.loopexit71.unr-lcssa, label %.lr.ph273.i, !llvm.loop !27

.loopexit250.i.loopexit71.unr-lcssa:              ; preds = %.lr.ph273.i
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.loopexit250.i, label %.lr.ph273.i.epil.preheader

.lr.ph273.i.epil.preheader:                       ; preds = %.loopexit250.i.loopexit71.unr-lcssa, %.lr.ph273.i.preheader
  %.0272.i.epil.init = phi i64 [ 0, %.lr.ph273.i.preheader ], [ %i.kh, %.loopexit250.i.loopexit71.unr-lcssa ]
  %.2271.i.epil.init = phi i64 [ %.0214286.i, %.lr.ph273.i.preheader ], [ %i.ko, %.loopexit250.i.loopexit71.unr-lcssa ] ; 2 uses
  %.5270.i.epil.init = phi ptr [ %.3228280.i, %.lr.ph273.i.preheader ], [ %i.kk, %.loopexit250.i.loopexit71.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.kp = trunc i64 %.0272.i.epil.init to i8
  %i.kq = add i8 %i.kp, 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.r, i64 %.2271.i.epil.init
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !40
  %i.ks = getelementptr inbounds i8, ptr %.5270.i.epil.init, i64 -2 ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !38
  %i.ku = icmp ult i16 %i.kt, %.pre
  %i.kv = zext i1 %i.ku to i64
  %i.kw = add i64 %.2271.i.epil.init, %i.kv
  br label %.loopexit250.i

.loopexit250.i:                                   ; preds = %.lr.ph273.i.epil.preheader, %.loopexit250.i.loopexit71.unr-lcssa, %.preheader.i152, %.preheader251.i
  %.6.i = phi ptr [ %i.jt, %.preheader.i152 ], [ %.3228280.i, %.preheader251.i ], [ %i.kk, %.loopexit250.i.loopexit71.unr-lcssa ], [ %i.ks, %.lr.ph273.i.epil.preheader ] ; 5 uses
  %.3.i = phi i64 [ %i.jx, %.preheader.i152 ], [ %.0214286.i, %.preheader251.i ], [ %i.ko, %.loopexit250.i.loopexit71.unr-lcssa ], [ %i.kw, %.lr.ph273.i.epil.preheader ] ; 6 uses
  %i.kx = call i64 @llvm.umin.i64(i64 %.3219.i, i64 %.3.i) ; 12 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0212287.i ; 7 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0211288.i ; 7 uses
  %i.la = icmp eq i64 %.3219.i, %.3.i
  %.not40.i.i = icmp eq i64 %i.kx, 0              ; 2 uses
  br i1 %i.la, label %.preheader.i.i, label %bb.af

.preheader.i.i:                                   ; preds = %.loopexit250.i
  br i1 %.not40.i.i, label %swap_offsets.exit.i, label %.lr.ph38.i.i.preheader

.lr.ph38.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter142 = and i64 %i.kx, 1
  %i.lb = icmp eq i64 %i.kx, 1
  br i1 %i.lb, label %.lr.ph38.i.i.epil.preheader, label %.lr.ph38.i.i.preheader.new

.lr.ph38.i.i.preheader.new:                       ; preds = %.lr.ph38.i.i.preheader
  %unroll_iter145 = and i64 %i.kx, -2
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i, %.lr.ph38.i.i.preheader.new
  %.03337.i.i = phi i64 [ 0, %.lr.ph38.i.i.preheader.new ], [ %i.lz, %.lr.ph38.i.i ] ; 4 uses
  %niter146 = phi i64 [ 0, %.lr.ph38.i.i.preheader.new ], [ %niter146.next.1, %.lr.ph38.i.i ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.03337.i.i
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !40
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.03337.i.i
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !40
  %i.li = zext i8 %i.lh to i64
  %i.lj = sub nsw i64 0, %i.li
  %i.lk = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.lj ; 2 uses
  %i.ll = load i16, ptr %i.lf, align 2, !tbaa !38
  %i.lm = load i16, ptr %i.lk, align 2, !tbaa !38
  store i16 %i.lm, ptr %i.lf, align 2, !tbaa !38
  store i16 %i.ll, ptr %i.lk, align 2, !tbaa !38
  %i.ln = or disjoint i64 %.03337.i.i, 1          ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !40
  %i.lq = zext i8 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.ln
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !40
  %i.lu = zext i8 %i.lt to i64
  %i.lv = sub nsw i64 0, %i.lu
  %i.lw = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.lv ; 2 uses
  %i.lx = load i16, ptr %i.lr, align 2, !tbaa !38
  %i.ly = load i16, ptr %i.lw, align 2, !tbaa !38
  store i16 %i.ly, ptr %i.lr, align 2, !tbaa !38
  store i16 %i.lx, ptr %i.lw, align 2, !tbaa !38
  %i.lz = add nuw i64 %.03337.i.i, 2              ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %swap_offsets.exit.i.loopexit.unr-lcssa, label %.lr.ph38.i.i, !llvm.loop !28

bb.af:                                            ; preds = %.loopexit250.i
  br i1 %.not40.i.i, label %swap_offsets.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ma = load i8, ptr %i.ky, align 1, !tbaa !40
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.mb ; 2 uses
  %i.md = load i8, ptr %i.kz, align 1, !tbaa !40
  %i.me = zext i8 %i.md to i64
  %i.mf = sub nsw i64 0, %i.me
  %i.mg = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.mf ; 4 uses
  %i.mh = load i16, ptr %i.mc, align 2, !tbaa !38
  %i.mi = load i16, ptr %i.mg, align 2, !tbaa !38
  store i16 %i.mi, ptr %i.mc, align 2, !tbaa !38
  %.not39.i.i = icmp eq i64 %i.kx, 1
  br i1 %.not39.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ag
  %i.mj = add i64 %i.kx, -1                       ; 3 uses
  %xtraiter136 = and i64 %i.mj, 1
  %i.mk = icmp eq i64 %i.kx, 2
  br i1 %i.mk, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter140 = and i64 %i.mj, -2
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.036.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.nt, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.03235.i.i.epil.init = phi ptr [ %i.mg, %.lr.ph.i.i.preheader ], [ %i.nr, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %i.mj to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.036.i.i.epil.init
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !40
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.mn ; 2 uses
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !38
  store i16 %i.mp, ptr %.03235.i.i.epil.init, align 2, !tbaa !38
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.036.i.i.epil.init
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !40
  %i.ms = zext i8 %i.mr to i64
  %i.mt = sub nsw i64 0, %i.ms
  %i.mu = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.mt ; 2 uses
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !38
  store i16 %i.mv, ptr %i.mo, align 2, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.ag
  %.032.lcssa.i.i = phi ptr [ %i.mg, %bb.ag ], [ %i.nr, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.mu, %.lr.ph.i.i.epil.preheader ]
  store i16 %i.mh, ptr %.032.lcssa.i.i, align 2, !tbaa !38
  br label %swap_offsets.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.036.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %i.nt, %.lr.ph.i.i ] ; 4 uses
  %.03235.i.i = phi ptr [ %i.mg, %.lr.ph.i.i.preheader.new ], [ %i.nr, %.lr.ph.i.i ]
  %niter141 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter141.next.1, %.lr.ph.i.i ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.036.i.i
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !40
  %i.my = zext i8 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.my ; 2 uses
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !38
  store i16 %i.na, ptr %.03235.i.i, align 2, !tbaa !38
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.036.i.i
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !40
  %i.nd = zext i8 %i.nc to i64
  %i.ne = sub nsw i64 0, %i.nd
  %i.nf = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.ne ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !38
  store i16 %i.ng, ptr %i.mz, align 2, !tbaa !38
  %i.nh = add nuw i64 %.036.i.i, 1                ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !40
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.nk ; 2 uses
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !38
  store i16 %i.nm, ptr %i.nf, align 2, !tbaa !38
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.nh
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !40
  %i.np = zext i8 %i.no to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.nq ; 4 uses
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !38
  store i16 %i.ns, ptr %i.nl, align 2, !tbaa !38
  %i.nt = add nuw i64 %.036.i.i, 2                ; 2 uses
  %niter141.next.1 = add nuw i64 %niter141, 2     ; 2 uses
  %niter141.ncmp.1 = icmp eq i64 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !29

swap_offsets.exit.i.loopexit.unr-lcssa:           ; preds = %.lr.ph38.i.i
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %swap_offsets.exit.i, label %.lr.ph38.i.i.epil.preheader

.lr.ph38.i.i.epil.preheader:                      ; preds = %swap_offsets.exit.i.loopexit.unr-lcssa, %.lr.ph38.i.i.preheader
  %.03337.i.i.epil.init = phi i64 [ 0, %.lr.ph38.i.i.preheader ], [ %i.lz, %swap_offsets.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod144 = trunc i64 %i.kx to i1
  call void @llvm.assume(i1 %lcmp.mod144)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.03337.i.i.epil.init
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !40
  %i.nw = zext i8 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.nw ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.03337.i.i.epil.init
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !40
  %i.oa = zext i8 %i.nz to i64
  %i.ob = sub nsw i64 0, %i.oa
  %i.oc = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.ob ; 2 uses
  %i.od = load i16, ptr %i.nx, align 2, !tbaa !38
  %i.oe = load i16, ptr %i.oc, align 2, !tbaa !38
  store i16 %i.oe, ptr %i.nx, align 2, !tbaa !38
  store i16 %i.od, ptr %i.oc, align 2, !tbaa !38
  br label %swap_offsets.exit.i

swap_offsets.exit.i:                              ; preds = %.lr.ph38.i.i.epil.preheader, %swap_offsets.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i, %bb.af, %.preheader.i.i
  %i.of = sub i64 %.3219.i, %i.kx                 ; 5 uses
  %i.og = sub i64 %.3.i, %i.kx                    ; 5 uses
  %i.oh = add i64 %i.kx, %.0212287.i              ; 2 uses
  %i.oi = add i64 %i.kx, %.0211288.i              ; 2 uses
  %i.oj = icmp eq i64 %i.of, 0                    ; 3 uses
  %spec.select.i = select i1 %i.oj, ptr %.4234.i, ptr %.0223281.i
  %spec.select248.i = select i1 %i.oj, i64 0, i64 %i.oh
  %i.ok = icmp eq i64 %i.og, 0                    ; 3 uses
  %.1222.i = select i1 %i.ok, ptr %.6.i, ptr %.0221283.i
  %.1.i = select i1 %i.ok, i64 0, i64 %i.oi
  %i.ol = icmp ult ptr %.4234.i, %.6.i
  br i1 %i.ol, label %.lr.ph289.i, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %swap_offsets.exit.i
  br i1 %i.oj, label %.loopexit249.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.oh ; 3 uses
  %umin = call i64 @llvm.umin.i64(i64 %.3.i, i64 %.3219.i)
  %.neg = add i64 %umin, 1
  %xtraiter147 = and i64 %i.of, 1
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ah
  %i.on = add nsw i64 %i.of, -1                   ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !40
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.oq ; 2 uses
  %i.os = getelementptr inbounds i8, ptr %.6.i, i64 -2 ; 4 uses
  %i.ot = load i16, ptr %i.or, align 2, !tbaa !38
  %i.ou = load i16, ptr %i.os, align 2, !tbaa !38
  store i16 %i.ou, ptr %i.or, align 2, !tbaa !38
  store i16 %i.ot, ptr %i.os, align 2, !tbaa !38
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ah
  %.lcssa109.unr = phi ptr [ poison, %bb.ah ], [ %i.os, %.prol.loopexit.unr-lcssa ]
  %.4220299.i.unr = phi i64 [ %i.of, %bb.ah ], [ %i.on, %.prol.loopexit.unr-lcssa ]
  %.7298.i.unr = phi ptr [ %.6.i, %bb.ah ], [ %i.os, %.prol.loopexit.unr-lcssa ]
  %i.ov = icmp eq i64 %.3219.i, %.neg
  br i1 %i.ov, label %.loopexit249.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.4220299.i = phi i64 [ %i.pe, %.new ], [ %.4220299.i.unr, %.prol.loopexit ] ; 2 uses
  %.7298.i = phi ptr [ %i.pj, %.new ], [ %.7298.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ow = getelementptr i8, ptr %i.om, i64 %.4220299.i
  %i.ox = getelementptr i8, ptr %i.ow, i64 -1
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !40
  %i.oz = zext i8 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.oz ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %.7298.i, i64 -2 ; 2 uses
  %i.pc = load i16, ptr %i.pa, align 2, !tbaa !38
  %i.pd = load i16, ptr %i.pb, align 2, !tbaa !38
  store i16 %i.pd, ptr %i.pa, align 2, !tbaa !38
  store i16 %i.pc, ptr %i.pb, align 2, !tbaa !38
  %i.pe = add i64 %.4220299.i, -2                 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !40
  %i.ph = zext i8 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.0223281.i, i64 %i.ph ; 2 uses
  %i.pj = getelementptr inbounds i8, ptr %.7298.i, i64 -4 ; 4 uses
  %i.pk = load i16, ptr %i.pi, align 2, !tbaa !38
  %i.pl = load i16, ptr %i.pj, align 2, !tbaa !38
  store i16 %i.pl, ptr %i.pi, align 2, !tbaa !38
  store i16 %i.pk, ptr %i.pj, align 2, !tbaa !38
  %.not245.i.1 = icmp eq i64 %i.pe, 0
  br i1 %.not245.i.1, label %.loopexit249.i, label %.new, !llvm.loop !31

.loopexit249.i:                                   ; preds = %.prol.loopexit, %.new, %._crit_edge.i
  %.5235.i = phi ptr [ %.4234.i, %._crit_edge.i ], [ %.lcssa109.unr, %.prol.loopexit ], [ %i.pj, %.new ] ; 5 uses
  br i1 %i.ok, label %.loopexit.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit249.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.oi ; 3 uses
  %umin154 = call i64 @llvm.umin.i64(i64 %.3.i, i64 %.3219.i)
  %.neg157 = add i64 %umin154, 1
  %xtraiter155 = and i64 %i.og, 1
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %.prol.loopexit150, label %.prol.loopexit150.unr-lcssa

.prol.loopexit150.unr-lcssa:                      ; preds = %bb.ai
  %i.pn = add nsw i64 %i.og, -1                   ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !40
  %i.pq = zext i8 %i.pp to i64
  %i.pr = sub nsw i64 0, %i.pq
  %i.ps = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.pr ; 2 uses
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !38
  %i.pu = load i16, ptr %.5235.i, align 2, !tbaa !38
  store i16 %i.pu, ptr %i.ps, align 2, !tbaa !38
  store i16 %i.pt, ptr %.5235.i, align 2, !tbaa !38
  %i.pv = getelementptr inbounds nuw i8, ptr %.5235.i, i64 2 ; 2 uses
  br label %.prol.loopexit150

.prol.loopexit150:                                ; preds = %.prol.loopexit150.unr-lcssa, %bb.ai
  %.lcssa110.unr = phi ptr [ poison, %bb.ai ], [ %i.pv, %.prol.loopexit150.unr-lcssa ]
  %.4301.i.unr = phi i64 [ %i.og, %bb.ai ], [ %i.pn, %.prol.loopexit150.unr-lcssa ]
  %.6236300.i.unr = phi ptr [ %.5235.i, %bb.ai ], [ %i.pv, %.prol.loopexit150.unr-lcssa ]
  %i.pw = icmp eq i64 %.3.i, %.neg157
  br i1 %i.pw, label %.loopexit.i, label %.new151

.new151:                                          ; preds = %.prol.loopexit150, %.new151
  %.4301.i = phi i64 [ %i.qg, %.new151 ], [ %.4301.i.unr, %.prol.loopexit150 ] ; 2 uses
  %.6236300.i = phi ptr [ %i.qo, %.new151 ], [ %.6236300.i.unr, %.prol.loopexit150 ] ; 4 uses
  %i.px = getelementptr i8, ptr %i.pm, i64 %.4301.i
  %i.py = getelementptr i8, ptr %i.px, i64 -1
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !40
  %i.qa = zext i8 %i.pz to i64
  %i.qb = sub nsw i64 0, %i.qa
  %i.qc = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.qb ; 2 uses
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !38
  %i.qe = load i16, ptr %.6236300.i, align 2, !tbaa !38
  store i16 %i.qe, ptr %i.qc, align 2, !tbaa !38
  store i16 %i.qd, ptr %.6236300.i, align 2, !tbaa !38
  %i.qf = getelementptr inbounds nuw i8, ptr %.6236300.i, i64 2 ; 2 uses
  %i.qg = add i64 %.4301.i, -2                    ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !40
  %i.qj = zext i8 %i.qi to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds [2 x i8], ptr %.0221283.i, i64 %i.qk ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !38
  %i.qn = load i16, ptr %i.qf, align 2, !tbaa !38
  store i16 %i.qn, ptr %i.ql, align 2, !tbaa !38
  store i16 %i.qm, ptr %i.qf, align 2, !tbaa !38
  %i.qo = getelementptr inbounds nuw i8, ptr %.6236300.i, i64 4 ; 2 uses
  %.not247.i.1 = icmp eq i64 %i.qg, 0
  br i1 %.not247.i.1, label %.loopexit.i, label %.new151, !llvm.loop !32

.loopexit.i:                                      ; preds = %.prol.loopexit150, %.new151, %.loopexit249.i, %bb.ae
  %.7237.i = phi ptr [ %.5235.i, %.loopexit249.i ], [ %i.dy, %bb.ae ], [ %.lcssa110.unr, %.prol.loopexit150 ], [ %i.qo, %.new151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %partition_right_branchless.exit

partition_right_branchless.exit:                  ; preds = %.critedge.i150, %.loopexit.i
  %.8.i = phi ptr [ %i.do, %.critedge.i150 ], [ %.7237.i, %.loopexit.i ] ; 16 uses
  %i.qp = getelementptr inbounds i8, ptr %.8.i, i64 -2 ; 10 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !38
  store i16 %i.qq, ptr %.0114239, align 2, !tbaa !38
  store i16 %.pre, ptr %i.qp, align 2, !tbaa !38
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = sub i64 %i.qr, %i.am
  %i.qt = ashr exact i64 %i.qs, 1                 ; 4 uses
  %i.qu = ptrtoint ptr %.8.i to i64               ; 4 uses
  %i.qv = sub i64 %i.c, %i.qu
  %i.qw = ashr exact i64 %i.qv, 1                 ; 5 uses
  %i.qx = lshr i64 %i.al, 3                       ; 2 uses
  %i.qy = icmp ult i64 %i.qt, %i.qx
  %i.qz = icmp ult i64 %i.qw, %i.qx
  %i.ra = select i1 %i.qy, i1 true, i1 %i.qz
  br i1 %i.ra, label %bb.aj, label %bb.bi

bb.aj:                                            ; preds = %partition_right_branchless.exit
  %i.rb = add nsw i32 %.0110242, -1               ; 4 uses
  %i.rc = icmp eq i32 %i.rb, 0
  br i1 %i.rc, label %bb.ak, label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  %.not.i153.not = icmp ugt ptr %1, %.0114239
  br i1 %.not.i153.not, label %bb.al, label %partial_insertion_sort.exit178.thread

bb.al:                                            ; preds = %bb.ak
  %.not2024.i = icmp eq i64 %i.an, 0
  br i1 %.not2024.i, label %heapify.exit23.preheader.i.preheader, label %.lr.ph.i155

heapify.exit23.preheader.i.preheader:             ; preds = %heapify.exit.loopexit.i, %bb.al
  br label %heapify.exit23.preheader.i

heapify.exit.loopexit.i:                          ; preds = %bb.as
  %.not20.i = icmp eq i64 %i.rd, 0
  br i1 %.not20.i, label %heapify.exit23.preheader.i.preheader, label %.lr.ph.i155, !llvm.loop !33

.lr.ph.i155:                                      ; preds = %bb.al, %heapify.exit.loopexit.i
  %.01625.i = phi i64 [ %i.rd, %heapify.exit.loopexit.i ], [ %i.an, %bb.al ]
  %i.rd = add nsw i64 %.01625.i, -1               ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.at, %.lr.ph.i155
  %.025.i.i = phi i64 [ %i.rd, %.lr.ph.i155 ], [ %i.ru, %bb.at ] ; 5 uses
  %i.re = shl i64 %.025.i.i, 1                    ; 2 uses
  %i.rf = or disjoint i64 %i.re, 1                ; 3 uses
  %i.rg = add i64 %i.re, 2                        ; 3 uses
  %i.rh = icmp ult i64 %i.rf, %i.al
  br i1 %i.rh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %.025.i.i
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !38
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.rf
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !38
  %i.rm = icmp ult i16 %i.rj, %i.rl
  br i1 %i.rm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.rn = phi i64 [ %.025.i.i, %bb.ao ], [ %i.rf, %bb.an ] ; 2 uses
  %i.ro = icmp ult i64 %i.rg, %i.al
  br i1 %i.ro, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.rn
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !38
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.rg
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !38
  %i.rt = icmp ult i16 %i.rq, %i.rs
  br i1 %i.rt, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ru = phi i64 [ %i.rn, %bb.ar ], [ %i.rg, %bb.aq ] ; 3 uses
  %i.rv = icmp eq i64 %i.ru, %.025.i.i
  br i1 %i.rv, label %heapify.exit.loopexit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %.025.i.i ; 2 uses
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.ru ; 2 uses
  %i.ry = load i16, ptr %i.rw, align 2, !tbaa !38
  %i.rz = load i16, ptr %i.rx, align 2, !tbaa !38
  store i16 %i.rz, ptr %i.rw, align 2, !tbaa !38
  store i16 %i.ry, ptr %i.rx, align 2, !tbaa !38
  br label %bb.am

heapify.exit23.loopexit.i:                        ; preds = %bb.ba
  %.not21.i = icmp eq i64 %i.sa, 0
  br i1 %.not21.i, label %partial_insertion_sort.exit178.thread, label %heapify.exit23.preheader.i, !llvm.loop !34

heapify.exit23.preheader.i:                       ; preds = %heapify.exit23.preheader.i.preheader, %heapify.exit23.loopexit.i
  %.026.i156 = phi i64 [ %i.sa, %heapify.exit23.loopexit.i ], [ %i.al, %heapify.exit23.preheader.i.preheader ]
  %i.sa = add i64 %.026.i156, -1                  ; 5 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.sa ; 2 uses
  %i.sc = load i16, ptr %.0114239, align 2, !tbaa !38
  %i.sd = load i16, ptr %i.sb, align 2, !tbaa !38
  store i16 %i.sd, ptr %.0114239, align 2, !tbaa !38
  store i16 %i.sc, ptr %i.sb, align 2, !tbaa !38
  br label %bb.au

bb.au:                                            ; preds = %bb.bb, %heapify.exit23.preheader.i
  %.025.i22.i = phi i64 [ 0, %heapify.exit23.preheader.i ], [ %i.su, %bb.bb ] ; 5 uses
  %i.se = shl i64 %.025.i22.i, 1                  ; 2 uses
  %i.sf = or disjoint i64 %i.se, 1                ; 3 uses
  %i.sg = add i64 %i.se, 2                        ; 3 uses
  %i.sh = icmp ult i64 %i.sf, %i.sa
  br i1 %i.sh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %.025.i22.i
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !38
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.sf
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !38
  %i.sm = icmp ult i16 %i.sj, %i.sl
  br i1 %i.sm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.sn = phi i64 [ %.025.i22.i, %bb.aw ], [ %i.sf, %bb.av ] ; 2 uses
  %i.so = icmp ult i64 %i.sg, %i.sa
  br i1 %i.so, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.sn
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !38
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.sg
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !38
  %i.st = icmp ult i16 %i.sq, %i.ss
  br i1 %i.st, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.su = phi i64 [ %i.sn, %bb.az ], [ %i.sg, %bb.ay ] ; 3 uses
  %i.sv = icmp eq i64 %i.su, %.025.i22.i
  br i1 %i.sv, label %heapify.exit23.loopexit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %.025.i22.i ; 2 uses
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.su ; 2 uses
  %i.sy = load i16, ptr %i.sw, align 2, !tbaa !38
  %i.sz = load i16, ptr %i.sx, align 2, !tbaa !38
  store i16 %i.sz, ptr %i.sw, align 2, !tbaa !38
  store i16 %i.sy, ptr %i.sx, align 2, !tbaa !38
  br label %bb.au

bb.bc:                                            ; preds = %bb.aj
  %i.ta = icmp ugt i64 %i.qt, 23
  br i1 %i.ta, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.tb = lshr i64 %i.qt, 2                       ; 4 uses
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %.0114239, i64 %i.tb ; 4 uses
  %i.td = load i16, ptr %.0114239, align 2, !tbaa !38
  %i.te = load i16, ptr %i.tc, align 2, !tbaa !38
end_hunk_0
