Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/amrnbdec?download=true
inline.NumInlined: 22
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@amrnb_decode_frame:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ba
  %indvars.iv193 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next194, %bb.ba ] ; 3 uses
  %.0123180 = phi i32 [ %i.r, %.lr.ph ], [ %i.aul, %bb.ba ] ; 2 uses
  %.0125179 = phi ptr [ %i.p, %.lr.ph ], [ %i.auk, %bb.ba ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [2392 x i8], ptr %i.n, i64 %indvars.iv193 ; 134 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.bq = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv193
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !78 ; 3 uses
  %i.bt = load i8, ptr %.0125179, align 1, !tbaa !31
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 3
  %i.bw = and i32 %i.bv, 15                       ; 7 uses
  %i.bx = and i32 %i.bu, 4
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 114
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !79
  %i.cb = icmp samesign ugt i32 %i.bw, 8
  br i1 %i.cb, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cc = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr @frame_sizes_nb, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !31
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %.not.i = icmp sgt i32 %.0123180, %i.cf
  br i1 %.not.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not12.i = icmp eq i32 %i.bw, 8
  br i1 %.not12.i, label %.loopexit163, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %.0125179, i64 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @amr_unpacking_bitmaps_per_mode, i64 %i.cc
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !78 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(114) %i.bp, i8 0, i64 114, i1 false)
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !31  ; 2 uses
  %.not20.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not20.i.i, label %.loopexit207, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.ck = phi i8 [ %i.ei, %bb.g ], [ %i.cj, %bb.e ] ; 4 uses
  %.021.i.i = phi ptr [ %scevgep23.i.i, %bb.g ], [ %i.ci, %bb.e ] ; 3 uses
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2 ; 2 uses
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !31
  %xtraiter = and i32 %i.cl, 1
  %i.cp = icmp eq i8 %i.ck, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.cl, 254
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.119.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.new ], [ %i.da, %bb.f ] ; 3 uses
  %.01318.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.dp, %bb.f ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.119.i.i, i64 1
  %i.cr = load i8, ptr %.119.i.i, align 1, !tbaa !31
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = lshr i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !31
  %i.cx = zext i8 %i.cw to i32
  %i.cy = and i32 %i.cs, 7
  %i.cz = lshr i32 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.119.i.i, i64 2 ; 2 uses
  %i.db = load i8, ptr %i.cq, align 1, !tbaa !31
  %i.dc = zext i8 %i.db to i32                    ; 2 uses
  %i.dd = shl i32 %.01318.i.i, 2
  %i.de = shl nuw nsw i32 %i.cz, 1
  %i.df = and i32 %i.de, 2
  %i.dg = or disjoint i32 %i.dd, %i.df
  %i.dh = lshr i32 %i.dc, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !31
  %i.dl = zext i8 %i.dk to i32
  %i.dm = and i32 %i.dc, 7
  %i.dn = lshr i32 %i.dl, %i.dm
  %i.do = and i32 %i.dn, 1
  %i.dp = or disjoint i32 %i.do, %i.dg            ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !59

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.119.i.i.epil.init = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %i.da, %.unr-lcssa ]
  %.01318.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dp, %.unr-lcssa ]
  %lcmp.mod233 = trunc i8 %i.ck to i1
  call void @llvm.assume(i1 %lcmp.mod233)
  %i.dq = load i8, ptr %.119.i.i.epil.init, align 1, !tbaa !31
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = shl i32 %.01318.i.i.epil.init, 1
  %i.dt = lshr i32 %i.dr, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !31
  %i.dx = zext i8 %i.dw to i32
  %i.dy = and i32 %i.dr, 7
  %i.dz = lshr i32 %i.dx, %i.dy
  %i.ea = and i32 %i.dz, 1
  %i.eb = or disjoint i32 %i.ea, %i.ds
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.dp, %.unr-lcssa ], [ %i.eb, %.epil.preheader ]
  %i.ec = zext i8 %i.ck to i64
  %i.ed = getelementptr i8, ptr %.021.i.i, i64 %i.ec
  %scevgep23.i.i = getelementptr i8, ptr %i.ed, i64 2 ; 2 uses
  %i.ee = trunc i32 %.lcssa to i16
  %i.ef = lshr i8 %i.co, 1
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.eg
  store i16 %i.ee, ptr %i.eh, align 2, !tbaa !43
  %i.ei = load i8, ptr %scevgep23.i.i, align 1, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i, label %.loopexit207, label %.lr.ph.i.i, !llvm.loop !60

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  store i32 15, ptr %i.ej, align 4, !tbaa !48
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %bb.bb

.loopexit163:                                     ; preds = %bb.d
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  store i32 8, ptr %i.ek, align 4, !tbaa !48
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  br label %bb.bb

.loopexit207:                                     ; preds = %bb.g, %bb.e
  %i.el = getelementptr inbounds nuw i8, ptr %i.bp, i64 116 ; 7 uses
  store i32 %i.bw, ptr %i.el, align 4, !tbaa !48
  %i.em = add nuw nsw i32 %i.cf, 1                ; 2 uses
  %i.en = icmp eq i32 %i.bw, 7
  br i1 %i.en, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.eo = load i16, ptr %i.bp, align 4, !tbaa !43
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_1, i64 %i.ep
  store ptr %i.eq, ptr %i.k, align 16, !tbaa !49
  %i.er = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !43
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_2, i64 %i.et
  store ptr %i.eu, ptr %i.aa, align 8, !tbaa !49
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 4, !tbaa !43 ; 2 uses
  %i.ex = lshr i16 %i.ew, 1
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_3, i64 %i.ey
  store ptr %i.ez, ptr %i.ab, align 16, !tbaa !49
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !43
  %i.fc = zext i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_4, i64 %i.fc
  store ptr %i.fd, ptr %i.ac, align 8, !tbaa !49
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ff = load i16, ptr %i.fe, align 4, !tbaa !43
  %i.fg = zext i16 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_5, i64 %i.fg
  store ptr %i.fh, ptr %i.ad, align 16, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.fj = load <4 x i16>, ptr %i.fi, align 4, !tbaa !43
  %i.fk = sitofp <4 x i16> %i.fj to <4 x double>
  %i.fl = fmul nnan nsz <4 x double> %i.fk, splat (double f0x3FCF400000000000)
  %i.fm = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fl, <4 x double> splat (double 6.500000e-01), <4 x double> <double f0x40751E4180000000, double f0x407FB147A0000000, double f0x408A17B020000000, double f0x40937C47A0000000>)
  %i.fn = fptrunc <4 x double> %i.fm to <4 x float>
  store <4 x float> %i.fn, ptr %i.j, align 16, !tbaa !44
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.fp = load <4 x i16>, ptr %i.fo, align 4, !tbaa !43
  %i.fq = sitofp <4 x i16> %i.fp to <4 x double>
  %i.fr = fmul nnan nsz <4 x double> %i.fq, splat (double f0x3FCF400000000000)
  %i.fs = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fr, <4 x double> splat (double 6.500000e-01), <4 x double> <double 1.646000e+03, double f0x409EFBA3E0000000, double f0x40A2CFEB80000000, double f0x40A5280520000000>)
  %i.ft = fptrunc <4 x double> %i.fs to <4 x float>
  store <4 x float> %i.ft, ptr %i.ae, align 16, !tbaa !44
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.fv = load <2 x i16>, ptr %i.fu, align 4, !tbaa !43
  %i.fw = sitofp <2 x i16> %i.fv to <2 x double>
  %i.fx = fmul nnan nsz <2 x double> %i.fw, splat (double f0x3FCF400000000000)
  %i.fy = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> splat (double 6.500000e-01), <2 x double> <double 3.104000e+03, double f0x40AA21F0A0000000>)
  %i.fz = fptrunc <2 x double> %i.fy to <2 x float>
  store <2 x float> %i.fz, ptr %i.af, align 16, !tbaa !44
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bp, i64 224 ; 2 uses
  %i.gc = and i16 %i.ew, 1
  %i.gd = zext nneg i16 %i.gc to i32
  call fastcc void @lsf2lsp_for_mode12k2(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.gb, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.gd, i32 noundef 0)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bp, i64 384 ; 2 uses
  %i.gf = load i16, ptr %i.ev, align 4, !tbaa !43
  %i.gg = and i16 %i.gf, 1
  %i.gh = zext nneg i16 %i.gg to i32
  call fastcc void @lsf2lsp_for_mode12k2(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.ge, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 2, i32 noundef %i.gh, i32 noundef 1)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bp, i64 464
  %i.gj = load <2 x double>, ptr %i.gi, align 8, !tbaa !41
  %i.gk = load <2 x double>, ptr %i.gb, align 8, !tbaa !41 ; 2 uses
  %i.gl = fmul nsz <2 x double> %i.gk, splat (double 5.000000e-01)
  %i.gm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gl)
  store <2 x double> %i.gm, ptr %i.ga, align 8, !tbaa !41
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bp, i64 480
  %i.go = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.gq = load <2 x double>, ptr %i.gn, align 8, !tbaa !41
  %i.gr = load <2 x double>, ptr %i.go, align 8, !tbaa !41 ; 2 uses
  %i.gs = fmul nsz <2 x double> %i.gr, splat (double 5.000000e-01)
  %i.gt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gs)
  store <2 x double> %i.gt, ptr %i.gp, align 8, !tbaa !41
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bp, i64 496
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bp, i64 176
  %i.gx = load <2 x double>, ptr %i.gu, align 8, !tbaa !41
  %i.gy = load <2 x double>, ptr %i.gv, align 8, !tbaa !41 ; 2 uses
  %i.gz = fmul nsz <2 x double> %i.gy, splat (double 5.000000e-01)
  %i.ha = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> splat (double 5.000000e-01), <2 x double> %i.gz)
  store <2 x double> %i.ha, ptr %i.gw, align 8, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bp, i64 512
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bp, i64 272
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bp, i64 192
  %i.he = load <2 x double>, ptr %i.hb, align 8, !tbaa !41
  %i.hf = load <2 x double>, ptr %i.hc, align 8, !tbaa !41 ; 2 uses
  %i.hg = fmul nsz <2 x double> %i.hf, splat (double 5.000000e-01)
  %i.hh = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hg)
  store <2 x double> %i.hh, ptr %i.hd, align 8, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bp, i64 528
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bp, i64 288
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
  %i.hl = load <2 x double>, ptr %i.hi, align 8, !tbaa !41
  %i.hm = load <2 x double>, ptr %i.hj, align 8, !tbaa !41 ; 2 uses
  %i.hn = fmul nsz <2 x double> %i.hm, splat (double 5.000000e-01)
  %i.ho = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hn)
  store <2 x double> %i.ho, ptr %i.hk, align 8, !tbaa !41
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bp, i64 304
  %i.hq = load <2 x double>, ptr %i.ge, align 8, !tbaa !41
  %i.hr = fmul nsz <2 x double> %i.hq, splat (double 5.000000e-01)
  %i.hs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hr)
  store <2 x double> %i.hs, ptr %i.hp, align 8, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bp, i64 400
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bp, i64 320
  %i.hv = load <2 x double>, ptr %i.ht, align 8, !tbaa !41
  %i.hw = fmul nsz <2 x double> %i.hv, splat (double 5.000000e-01)
  %i.hx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hw)
  store <2 x double> %i.hx, ptr %i.hu, align 8, !tbaa !41
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bp, i64 416
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bp, i64 336
  %i.ia = load <2 x double>, ptr %i.hy, align 8, !tbaa !41
  %i.ib = fmul nsz <2 x double> %i.ia, splat (double 5.000000e-01)
  %i.ic = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ib)
  store <2 x double> %i.ic, ptr %i.hz, align 8, !tbaa !41
  %i.id = getelementptr inbounds nuw i8, ptr %i.bp, i64 432
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bp, i64 352
  %i.if = load <2 x double>, ptr %i.id, align 8, !tbaa !41
  %i.ig = fmul nsz <2 x double> %i.if, splat (double 5.000000e-01)
  %i.ih = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ig)
  store <2 x double> %i.ih, ptr %i.ie, align 8, !tbaa !41
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bp, i64 448
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bp, i64 368
  %i.ik = load <2 x double>, ptr %i.ii, align 8, !tbaa !41
  %i.il = fmul nsz <2 x double> %i.ik, splat (double 5.000000e-01)
  %i.im = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> splat (double 5.000000e-01), <2 x double> %i.il)
  store <2 x double> %i.im, ptr %i.ij, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %.preheader

bb.i:                                             ; preds = %.loopexit207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.in = icmp eq i32 %i.bw, 5
  %i.io = select i1 %i.in, ptr @lsf_3_1_MODE_7k95, ptr @lsf_3_1
  %i.ip = load i16, ptr %i.bp, align 4, !tbaa !43
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [6 x i8], ptr %i.io, i64 %i.iq ; 4 uses
  %.sroa.5.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %.sroa.6.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %.sroa.6.0.copyload46.i = load i16, ptr %.sroa.6.0..sroa_idx45.i, align 2 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.it = load i16, ptr %i.is, align 2, !tbaa !43
  %i.iu = zext i16 %i.it to i32
  %i.iv = icmp samesign ult i32 %i.bw, 2          ; 2 uses
  %i.iw = zext i1 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iu, %i.iw
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [6 x i8], ptr @lsf_3_2, i64 %i.iy ; 3 uses
  %.sroa.7.6.copyload.i = load i16, ptr %i.iz, align 2 ; 2 uses
  %.sroa.9.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 2 ; 2 uses
  %.sroa.10.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.ja = select i1 %i.iv, ptr @lsf_3_3_MODE_5k15, ptr @lsf_3_3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.jc = load i16, ptr %i.jb, align 4, !tbaa !43
  %i.jd = zext i16 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jd
  %i.jf = load i64, ptr %i.je, align 8            ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bp, i64 120 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bp, i64 122
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bp, i64 126
  %i.jk = load <2 x i16>, ptr %i.ir, align 2
  %.sroa.5.0.copyload44.i = load i16, ptr %.sroa.5.0..sroa_idx43.i, align 2
  %.sroa.0.0.copyload42.i = load i16, ptr %i.ir, align 2
  %i.jl = shufflevector <2 x i16> %i.jk, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jm = insertelement <4 x i16> %i.jl, i16 %.sroa.6.0.copyload46.i, i64 2
  %i.jn = insertelement <4 x i16> %i.jm, i16 %.sroa.7.6.copyload.i, i64 3
  %i.jo = sitofp <4 x i16> %i.jn to <4 x float>
  %i.jp = load <4 x i16>, ptr %i.jg, align 4, !tbaa !43
  %i.jq = sitofp <4 x i16> %i.jp to <4 x float>
  %i.jr = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jq, <4 x float> <float 2.916260e-01, float 3.286440e-01, float 3.836360e-01, float 4.056400e-01>, <4 x float> %i.jo)
  %i.js = fpext <4 x float> %i.jr to <4 x double>
  %i.jt = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.js, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FA827FE56041894, double f0x3FB1C0010624DD2F, double f0x3FBD83FF5C28F5C3, double f0x3FC56FFC083126EA>)
  %i.ju = fptrunc <4 x double> %i.jt to <4 x float>
  store <4 x float> %i.ju, ptr %i.i, align 16, !tbaa !44
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bp, i64 128 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bp, i64 130
  %.sroa.11.12.extract.trunc.i = trunc i64 %i.jf to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bp, i64 132
  %.sroa.11.14.extract.shift.i = lshr i64 %i.jf, 16
  %.sroa.11.14.extract.trunc.i = trunc i64 %.sroa.11.14.extract.shift.i to i16
  %i.jy = load <2 x i16>, ptr %.sroa.9.6..sroa_idx.i, align 2
  %.sroa.10.6.copyload.i = load i16, ptr %.sroa.10.6..sroa_idx.i, align 2
  %.sroa.9.6.copyload.i = load i16, ptr %.sroa.9.6..sroa_idx.i, align 2
  %i.jz = shufflevector <2 x i16> %i.jy, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ka = insertelement <4 x i16> %i.jz, i16 %.sroa.11.12.extract.trunc.i, i64 2
  %i.kb = insertelement <4 x i16> %i.ka, i16 %.sroa.11.14.extract.trunc.i, i64 3
  %i.kc = sitofp <4 x i16> %i.kb to <4 x float>
  %i.kd = load <4 x i16>, ptr %i.jv, align 4, !tbaa !43
  %i.ke = sitofp <4 x i16> %i.kd to <4 x float>
  %i.kf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> <float 4.388730e-01, float 3.555600e-01, float 3.231200e-01, float 2.980650e-01>, <4 x float> %i.kc)
  %i.kg = fpext <4 x float> %i.kf to <4 x double>
  %i.kh = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kg, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FCB3C01A9FBE76D, double f0x3FD05F01BA5E3540, double f0x3FD39F7F7CED9169, double f0x3FD5EE828F5C28F6>)
  %i.ki = fptrunc <4 x double> %i.kh to <4 x float>
  store <4 x float> %i.ki, ptr %i.y, align 16, !tbaa !44
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.kk = bitcast i64 %i.jf to <4 x i16>
  %i.kl = shufflevector <4 x i16> %i.kk, <4 x i16> poison, <2 x i32> <i32 2, i32 3>
  %i.km = sitofp <2 x i16> %i.kl to <2 x float>
  %i.kn = load <2 x i16>, ptr %i.kj, align 4, !tbaa !43
  %i.ko = sitofp <2 x i16> %i.kn to <2 x float>
  %i.kp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> <float 2.622380e-01, float 1.978760e-01>, <2 x float> %i.km)
  %i.kq = fpext <2 x float> %i.kp to <2 x double>
  %i.kr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> splat (double f0x3F00000000000000), <2 x double> <double f0x3FD8EF00624DD2F2, double f0x3FDAC8FD916872B0>)
  %i.ks = fptrunc <2 x double> %i.kr to <2 x float>
  store <2 x float> %i.ks, ptr %i.z, align 16, !tbaa !44
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.i, double noundef 6.256100e-03, i32 noundef 10) #7
  %i.kt = getelementptr inbounds nuw i8, ptr %i.bp, i64 2360 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bp, i64 544
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bp, i64 664 ; 5 uses
  %i.kw = load ptr, ptr %i.kt, align 8, !tbaa !50
  call void %i.kw(ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kv, ptr noundef nonnull %i.i, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !61
  %i.kx = load ptr, ptr %i.kt, align 8, !tbaa !50
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bp, i64 584
  call void %i.kx(ptr noundef nonnull %i.ky, ptr noundef nonnull %i.kv, ptr noundef nonnull %i.i, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !61
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !50
  %i.la = getelementptr inbounds nuw i8, ptr %i.bp, i64 624
  call void %i.kz(ptr noundef nonnull %i.la, ptr noundef nonnull %i.kv, ptr noundef nonnull %i.i, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !61
  %i.lb = load ptr, ptr %i.kt, align 8, !tbaa !50
  call void %i.lb(ptr noundef nonnull %i.kv, ptr noundef nonnull %i.kv, ptr noundef nonnull %i.i, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 10) #7, !inline_history !61
  store i16 %.sroa.0.0.copyload42.i, ptr %i.jg, align 8
  store i16 %.sroa.5.0.copyload44.i, ptr %i.jh, align 2
  store i16 %.sroa.6.0.copyload46.i, ptr %i.ji, align 4
  store i16 %.sroa.7.6.copyload.i, ptr %i.jj, align 2
  store i16 %.sroa.9.6.copyload.i, ptr %i.jv, align 8
  store i16 %.sroa.10.6.copyload.i, ptr %i.jw, align 2
  store i64 %i.jf, ptr %i.jx, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bp, i64 384 ; 2 uses
  call void @ff_acelp_lsf2lspd(ptr noundef nonnull %i.lc, ptr noundef nonnull %i.i, i32 noundef 10) #7
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bp, i64 464
  %i.le = getelementptr i8, ptr %i.bp, i64 144
  %i.lf = load <2 x double>, ptr %i.ld, align 8, !tbaa !41 ; 4 uses
  %i.lg = load <2 x double>, ptr %i.lc, align 8, !tbaa !41
  %i.lh = fsub nsz <2 x double> %i.lg, %i.lf
  %i.li = fmul nsz <2 x double> %i.lh, splat (double 2.500000e-01) ; 3 uses
  %i.lj = fadd nsz <2 x double> %i.lf, %i.li
  store <2 x double> %i.lj, ptr %i.le, align 8, !tbaa !41
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bp, i64 480
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bp, i64 400
  %i.lm = getelementptr i8, ptr %i.bp, i64 160
  %i.ln = load <2 x double>, ptr %i.lk, align 8, !tbaa !41 ; 4 uses
  %i.lo = load <2 x double>, ptr %i.ll, align 8, !tbaa !41
  %i.lp = fsub nsz <2 x double> %i.lo, %i.ln
  %i.lq = fmul nsz <2 x double> %i.lp, splat (double 2.500000e-01) ; 3 uses
  %i.lr = fadd nsz <2 x double> %i.ln, %i.lq
  store <2 x double> %i.lr, ptr %i.lm, align 8, !tbaa !41
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bp, i64 496
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bp, i64 416
  %i.lu = getelementptr i8, ptr %i.bp, i64 176
  %i.lv = load <2 x double>, ptr %i.ls, align 8, !tbaa !41 ; 4 uses
  %i.lw = load <2 x double>, ptr %i.lt, align 8, !tbaa !41
  %i.lx = fsub nsz <2 x double> %i.lw, %i.lv
  %i.ly = fmul nsz <2 x double> %i.lx, splat (double 2.500000e-01) ; 3 uses
  %i.lz = fadd nsz <2 x double> %i.lv, %i.ly
  store <2 x double> %i.lz, ptr %i.lu, align 8, !tbaa !41
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bp, i64 512
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bp, i64 432
  %i.mc = getelementptr i8, ptr %i.bp, i64 192
  %i.md = load <2 x double>, ptr %i.ma, align 8, !tbaa !41 ; 4 uses
  %i.me = load <2 x double>, ptr %i.mb, align 8, !tbaa !41
  %i.mf = fsub nsz <2 x double> %i.me, %i.md
  %i.mg = fmul nsz <2 x double> %i.mf, splat (double 2.500000e-01) ; 3 uses
  %i.mh = fadd nsz <2 x double> %i.md, %i.mg
  store <2 x double> %i.mh, ptr %i.mc, align 8, !tbaa !41
  %i.mi = getelementptr inbounds nuw i8, ptr %i.bp, i64 528
  %i.mj = getelementptr inbounds nuw i8, ptr %i.bp, i64 448
  %i.mk = getelementptr i8, ptr %i.bp, i64 208
  %i.ml = load <2 x double>, ptr %i.mi, align 8, !tbaa !41 ; 4 uses
  %i.mm = load <2 x double>, ptr %i.mj, align 8, !tbaa !41
  %i.mn = fsub nsz <2 x double> %i.mm, %i.ml
  %i.mo = fmul nsz <2 x double> %i.mn, splat (double 2.500000e-01) ; 3 uses
  %i.mp = fadd nsz <2 x double> %i.ml, %i.mo
  store <2 x double> %i.mp, ptr %i.mk, align 8, !tbaa !41
  %i.mq = getelementptr i8, ptr %i.bp, i64 224
  %i.mr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> splat (double 2.000000e+00), <2 x double> %i.lf)
  store <2 x double> %i.mr, ptr %i.mq, align 8, !tbaa !41
  %i.ms = getelementptr i8, ptr %i.bp, i64 240
  %i.mt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ln)
  store <2 x double> %i.mt, ptr %i.ms, align 8, !tbaa !41
  %i.mu = getelementptr i8, ptr %i.bp, i64 256
  %i.mv = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> splat (double 2.000000e+00), <2 x double> %i.lv)
  store <2 x double> %i.mv, ptr %i.mu, align 8, !tbaa !41
  %i.mw = getelementptr i8, ptr %i.bp, i64 272
  %i.mx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> splat (double 2.000000e+00), <2 x double> %i.md)
  store <2 x double> %i.mx, ptr %i.mw, align 8, !tbaa !41
  %i.my = getelementptr i8, ptr %i.bp, i64 288
  %i.mz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ml)
  store <2 x double> %i.mz, ptr %i.my, align 8, !tbaa !41
  %i.na = getelementptr i8, ptr %i.bp, i64 304
  %i.nb = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> splat (double 3.000000e+00), <2 x double> %i.lf)
  store <2 x double> %i.nb, ptr %i.na, align 8, !tbaa !41
  %i.nc = getelementptr i8, ptr %i.bp, i64 320
  %i.nd = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ln)
  store <2 x double> %i.nd, ptr %i.nc, align 8, !tbaa !41
  %i.ne = getelementptr i8, ptr %i.bp, i64 336
  %i.nf = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> splat (double 3.000000e+00), <2 x double> %i.lv)
  store <2 x double> %i.nf, ptr %i.ne, align 8, !tbaa !41
  %i.ng = getelementptr i8, ptr %i.bp, i64 352
  %i.nh = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> splat (double 3.000000e+00), <2 x double> %i.md)
  store <2 x double> %i.nh, ptr %i.ng, align 8, !tbaa !41
  %i.ni = getelementptr i8, ptr %i.bp, i64 368
  %i.nj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ml)
  store <2 x double> %i.nj, ptr %i.ni, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bp, i64 744 ; 2 uses
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.nk, ptr noundef nonnull %i.nl, i32 noundef 5) #7
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bp, i64 784
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.nm, ptr noundef nonnull %i.nn, i32 noundef 5) #7
  %i.no = getelementptr inbounds nuw i8, ptr %i.bp, i64 304
  %i.np = getelementptr inbounds nuw i8, ptr %i.bp, i64 824
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.no, ptr noundef nonnull %i.np, i32 noundef 5) #7
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bp, i64 864
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nr, i32 noundef 5) #7
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.nt = getelementptr inbounds nuw i8, ptr %i.bp, i64 904 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bp, i64 2344
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bp, i64 1688 ; 5 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1696
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bp, i64 2048 ; 43 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 2072 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bp, i64 1856 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.bp, i64 2384 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bp, i64 2016
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bp, i64 2068 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bp, i64 544
  %i.od = getelementptr inbounds nuw i8, ptr %i.bp, i64 704 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bp, i64 712
  %i.of = getelementptr inbounds nuw i8, ptr %i.bp, i64 2076 ; 3 uses
  %.phi.trans.insert.i141 = getelementptr inbounds nuw i8, ptr %i.bp, i64 2077 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.bp, i64 2052 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bp, i64 2056 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.bp, i64 2060
  %i.oj = getelementptr inbounds nuw i8, ptr %i.bp, i64 2064
  %i.ok = getelementptr inbounds nuw i8, ptr %i.bp, i64 2032 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.bp, i64 2080 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.bp, i64 2085 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.bp, i64 2036
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bp, i64 2084 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.bp, i64 2184 ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2088 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.bp, i64 2368 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.bp, i64 2376
  %i.ot = getelementptr inbounds nuw i8, ptr %i.bp, i64 2128
  %i.ou = getelementptr inbounds nuw i8, ptr %i.bp, i64 2132
  %i.ov = getelementptr inbounds nuw i8, ptr %i.bp, i64 464
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bp, i64 908
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bp, i64 1068
  %i.oz = getelementptr inbounds nuw i8, ptr %i.bp, i64 2144
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bp, i64 2304
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 11 uses
  %i.pb = getelementptr inbounds nuw [26 x i8], ptr %i.ns, i64 %indvars.iv ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.pc = load i32, ptr %i.el, align 4, !tbaa !48 ; 4 uses
  %i.pd = icmp eq i32 %i.pc, 7
  %i.pe = load i16, ptr %i.pb, align 2, !tbaa !81 ; 2 uses
  %i.pf = zext i16 %i.pe to i32                   ; 6 uses
  br i1 %i.pd, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.pg = and i64 %indvars.iv, 1
  %or.cond.i.i = icmp eq i64 %i.pg, 0
  br i1 %or.cond.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ph = icmp ult i16 %i.pe, 463
  br i1 %i.ph, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.pi = mul nuw nsw i32 %i.pf, 10923
  %i.pj = add nuw nsw i32 %i.pi, 1168761
  %i.pk = lshr i32 %i.pj, 16                      ; 2 uses
  %.neg18.i.i = mul nsw i32 %i.pk, -6
  %i.pl = add nuw nsw i32 %i.pf, 105
  %i.pm = add nsw i32 %i.pl, %.neg18.i.i          ; 2 uses
  store i32 %i.pm, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.n:                                             ; preds = %bb.l
  %i.pn = add nsw i32 %i.pf, -368
  store i32 0, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.o:                                             ; preds = %bb.k
  %i.po = load i8, ptr %i.nt, align 8, !tbaa !82  ; 2 uses
  %i.pp = zext i8 %i.po to i32
  %i.pq = mul nuw nsw i32 %i.pf, 10923
  %i.pr = add nuw nsw i32 %i.pq, 54615
  %i.ps = lshr i32 %i.pr, 16
  %i.pt = add nsw i32 %i.ps, -1                   ; 2 uses
  %.neg.i.i = mul nsw i32 %i.pt, -6
  %i.pu = add nsw i32 %i.pf, -3
  %i.pv = add nsw i32 %i.pu, %.neg.i.i            ; 2 uses
  store i32 %i.pv, ptr %i.h, align 4, !tbaa !30
  %i.pw = add nsw i32 %i.pp, -5
end_hunk_0
begin_hunk_1_@amrnb_decode_frame:bb.a
  store float %i.agc, ptr %i.aga, align 4, !tbaa !44
  %i.agd = load float, ptr %i.nx, align 8, !tbaa !44
  %i.age = getelementptr inbounds nuw i8, ptr %i.aal, i64 148 ; 2 uses
  %i.agf = load float, ptr %i.age, align 4, !tbaa !44
  %i.agg = fmul nsz float %i.agd, %i.agf
  store float %i.agg, ptr %i.age, align 4, !tbaa !44
  %i.agh = load float, ptr %i.nx, align 8, !tbaa !44
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aal, i64 152 ; 2 uses
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !44
  %i.agk = fmul nsz float %i.agh, %i.agj
  store float %i.agk, ptr %i.agi, align 4, !tbaa !44
  %i.agl = load float, ptr %i.nx, align 8, !tbaa !44
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aal, i64 156 ; 2 uses
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !44
  %i.ago = fmul nsz float %i.agl, %i.agn
  store float %i.ago, ptr %i.agm, align 4, !tbaa !44
  %i.agp = load ptr, ptr %i.nv, align 8, !tbaa !39
  %i.agq = load float, ptr %i.ob, align 4, !tbaa !44
  call void @ff_set_fixed_vector(ptr noundef %i.agp, ptr noundef nonnull %4, float noundef %i.agq, i32 noundef 40) #7
  %i.agr = load ptr, ptr %i.nv, align 8, !tbaa !39 ; 41 uses
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !44
  %i.agt = call nsz float @llvm.trunc.f32(float %i.ags)
  store float %i.agt, ptr %i.agr, align 4, !tbaa !44
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 4 ; 2 uses
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !44
  %i.agw = call nsz float @llvm.trunc.f32(float %i.agv)
  store float %i.agw, ptr %i.agu, align 4, !tbaa !44
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agr, i64 8 ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !44
  %i.agz = call nsz float @llvm.trunc.f32(float %i.agy)
  store float %i.agz, ptr %i.agx, align 4, !tbaa !44
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agr, i64 12 ; 2 uses
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !44
  %i.ahc = call nsz float @llvm.trunc.f32(float %i.ahb)
  store float %i.ahc, ptr %i.aha, align 4, !tbaa !44
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agr, i64 16 ; 2 uses
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !44
  %i.ahf = call nsz float @llvm.trunc.f32(float %i.ahe)
  store float %i.ahf, ptr %i.ahd, align 4, !tbaa !44
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agr, i64 20 ; 2 uses
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !44
  %i.ahi = call nsz float @llvm.trunc.f32(float %i.ahh)
  store float %i.ahi, ptr %i.ahg, align 4, !tbaa !44
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agr, i64 24 ; 2 uses
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !44
  %i.ahl = call nsz float @llvm.trunc.f32(float %i.ahk)
  store float %i.ahl, ptr %i.ahj, align 4, !tbaa !44
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agr, i64 28 ; 2 uses
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !44
  %i.aho = call nsz float @llvm.trunc.f32(float %i.ahn)
  store float %i.aho, ptr %i.ahm, align 4, !tbaa !44
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agr, i64 32 ; 2 uses
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !44
  %i.ahr = call nsz float @llvm.trunc.f32(float %i.ahq)
  store float %i.ahr, ptr %i.ahp, align 4, !tbaa !44
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agr, i64 36 ; 2 uses
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !44
  %i.ahu = call nsz float @llvm.trunc.f32(float %i.aht)
  store float %i.ahu, ptr %i.ahs, align 4, !tbaa !44
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agr, i64 40 ; 2 uses
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !44
  %i.ahx = call nsz float @llvm.trunc.f32(float %i.ahw)
  store float %i.ahx, ptr %i.ahv, align 4, !tbaa !44
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.agr, i64 44 ; 2 uses
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !44
  %i.aia = call nsz float @llvm.trunc.f32(float %i.ahz)
  store float %i.aia, ptr %i.ahy, align 4, !tbaa !44
  %i.aib = getelementptr inbounds nuw i8, ptr %i.agr, i64 48 ; 2 uses
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !44
  %i.aid = call nsz float @llvm.trunc.f32(float %i.aic)
  store float %i.aid, ptr %i.aib, align 4, !tbaa !44
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agr, i64 52 ; 2 uses
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !44
  %i.aig = call nsz float @llvm.trunc.f32(float %i.aif)
  store float %i.aig, ptr %i.aie, align 4, !tbaa !44
  %i.aih = getelementptr inbounds nuw i8, ptr %i.agr, i64 56 ; 2 uses
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !44
  %i.aij = call nsz float @llvm.trunc.f32(float %i.aii)
  store float %i.aij, ptr %i.aih, align 4, !tbaa !44
  %i.aik = getelementptr inbounds nuw i8, ptr %i.agr, i64 60 ; 2 uses
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !44
  %i.aim = call nsz float @llvm.trunc.f32(float %i.ail)
  store float %i.aim, ptr %i.aik, align 4, !tbaa !44
  %i.ain = getelementptr inbounds nuw i8, ptr %i.agr, i64 64 ; 2 uses
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !44
  %i.aip = call nsz float @llvm.trunc.f32(float %i.aio)
  store float %i.aip, ptr %i.ain, align 4, !tbaa !44
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.agr, i64 68 ; 2 uses
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !44
  %i.ais = call nsz float @llvm.trunc.f32(float %i.air)
  store float %i.ais, ptr %i.aiq, align 4, !tbaa !44
  %i.ait = getelementptr inbounds nuw i8, ptr %i.agr, i64 72 ; 2 uses
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !44
  %i.aiv = call nsz float @llvm.trunc.f32(float %i.aiu)
  store float %i.aiv, ptr %i.ait, align 4, !tbaa !44
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.agr, i64 76 ; 2 uses
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !44
  %i.aiy = call nsz float @llvm.trunc.f32(float %i.aix)
  store float %i.aiy, ptr %i.aiw, align 4, !tbaa !44
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.agr, i64 80 ; 2 uses
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !44
  %i.ajb = call nsz float @llvm.trunc.f32(float %i.aja)
  store float %i.ajb, ptr %i.aiz, align 4, !tbaa !44
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.agr, i64 84 ; 2 uses
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !44
  %i.aje = call nsz float @llvm.trunc.f32(float %i.ajd)
  store float %i.aje, ptr %i.ajc, align 4, !tbaa !44
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.agr, i64 88 ; 2 uses
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !44
  %i.ajh = call nsz float @llvm.trunc.f32(float %i.ajg)
  store float %i.ajh, ptr %i.ajf, align 4, !tbaa !44
  %i.aji = getelementptr inbounds nuw i8, ptr %i.agr, i64 92 ; 2 uses
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !44
  %i.ajk = call nsz float @llvm.trunc.f32(float %i.ajj)
  store float %i.ajk, ptr %i.aji, align 4, !tbaa !44
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.agr, i64 96 ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !44
  %i.ajn = call nsz float @llvm.trunc.f32(float %i.ajm)
  store float %i.ajn, ptr %i.ajl, align 4, !tbaa !44
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.agr, i64 100 ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !44
  %i.ajq = call nsz float @llvm.trunc.f32(float %i.ajp)
  store float %i.ajq, ptr %i.ajo, align 4, !tbaa !44
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.agr, i64 104 ; 2 uses
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !44
  %i.ajt = call nsz float @llvm.trunc.f32(float %i.ajs)
  store float %i.ajt, ptr %i.ajr, align 4, !tbaa !44
  %i.aju = getelementptr inbounds nuw i8, ptr %i.agr, i64 108 ; 2 uses
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !44
  %i.ajw = call nsz float @llvm.trunc.f32(float %i.ajv)
  store float %i.ajw, ptr %i.aju, align 4, !tbaa !44
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.agr, i64 112 ; 2 uses
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !44
  %i.ajz = call nsz float @llvm.trunc.f32(float %i.ajy)
  store float %i.ajz, ptr %i.ajx, align 4, !tbaa !44
  %i.aka = getelementptr inbounds nuw i8, ptr %i.agr, i64 116 ; 2 uses
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !44
  %i.akc = call nsz float @llvm.trunc.f32(float %i.akb)
  store float %i.akc, ptr %i.aka, align 4, !tbaa !44
  %i.akd = getelementptr inbounds nuw i8, ptr %i.agr, i64 120 ; 2 uses
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !44
  %i.akf = call nsz float @llvm.trunc.f32(float %i.ake)
  store float %i.akf, ptr %i.akd, align 4, !tbaa !44
  %i.akg = getelementptr inbounds nuw i8, ptr %i.agr, i64 124 ; 2 uses
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !44
  %i.aki = call nsz float @llvm.trunc.f32(float %i.akh)
  store float %i.aki, ptr %i.akg, align 4, !tbaa !44
  %i.akj = getelementptr inbounds nuw i8, ptr %i.agr, i64 128 ; 2 uses
  %i.akk = load float, ptr %i.akj, align 4, !tbaa !44
  %i.akl = call nsz float @llvm.trunc.f32(float %i.akk)
  store float %i.akl, ptr %i.akj, align 4, !tbaa !44
  %i.akm = getelementptr inbounds nuw i8, ptr %i.agr, i64 132 ; 2 uses
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !44
  %i.ako = call nsz float @llvm.trunc.f32(float %i.akn)
  store float %i.ako, ptr %i.akm, align 4, !tbaa !44
  %i.akp = getelementptr inbounds nuw i8, ptr %i.agr, i64 136 ; 2 uses
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !44
  %i.akr = call nsz float @llvm.trunc.f32(float %i.akq)
  store float %i.akr, ptr %i.akp, align 4, !tbaa !44
  %i.aks = getelementptr inbounds nuw i8, ptr %i.agr, i64 140 ; 2 uses
  %i.akt = load float, ptr %i.aks, align 4, !tbaa !44
  %i.aku = call nsz float @llvm.trunc.f32(float %i.akt)
  store float %i.aku, ptr %i.aks, align 4, !tbaa !44
  %i.akv = getelementptr inbounds nuw i8, ptr %i.agr, i64 144 ; 2 uses
  %i.akw = load float, ptr %i.akv, align 4, !tbaa !44
  %i.akx = call nsz float @llvm.trunc.f32(float %i.akw)
  store float %i.akx, ptr %i.akv, align 4, !tbaa !44
  %i.aky = getelementptr inbounds nuw i8, ptr %i.agr, i64 148 ; 2 uses
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !44
  %i.ala = call nsz float @llvm.trunc.f32(float %i.akz)
  store float %i.ala, ptr %i.aky, align 4, !tbaa !44
  %i.alb = getelementptr inbounds nuw i8, ptr %i.agr, i64 152 ; 2 uses
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !44
  %i.ald = call nsz float @llvm.trunc.f32(float %i.alc)
  store float %i.ald, ptr %i.alb, align 4, !tbaa !44
  %i.ale = getelementptr inbounds nuw i8, ptr %i.agr, i64 156 ; 2 uses
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !44
  %i.alg = call nsz float @llvm.trunc.f32(float %i.alf)
  store float %i.alg, ptr %i.ale, align 4, !tbaa !44
  %i.alh = getelementptr inbounds nuw [40 x i8], ptr %i.oc, i64 %indvars.iv ; 2 uses
  %i.ali = load i32, ptr %i.el, align 4, !tbaa !48 ; 4 uses
  %i.alj = load <2 x float>, ptr %i.od, align 8, !tbaa !44 ; 3 uses
  %i.alk = load <2 x float>, ptr %i.alh, align 4, !tbaa !44
  %i.all = fsub nsz <2 x float> %i.alj, %i.alk
  %i.alm = extractelement <2 x float> %i.alj, i64 0
  %i.aln = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.all) ; 2 uses
  %i.alo = extractelement <2 x float> %i.aln, i64 0
  %i.alp = fdiv nsz float %i.alo, %i.alm
  %i.alq = extractelement <2 x float> %i.aln, i64 1
  %i.alr = fpext float %i.alq to double
  %i.als = extractelement <2 x float> %i.alj, i64 1
  %i.alt = fpext nsz float %i.als to double
  %i.alu = fdiv nsz double %i.alr, %i.alt
  %i.alv = fpext nsz float %i.alp to double
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %i.alx = load <8 x float>, ptr %i.oe, align 8, !tbaa !44 ; 2 uses
  %i.aly = load <8 x float>, ptr %i.alw, align 4, !tbaa !44
  %i.alz = fsub nsz <8 x float> %i.alx, %i.aly
  %i.ama = call nsz <8 x float> @llvm.fabs.v8f32(<8 x float> %i.alz)
  %i.amb = fpext <8 x float> %i.ama to <8 x double>
  %i.amc = fpext <8 x float> %i.alx to <8 x double>
  %i.amd = fdiv nsz <8 x double> %i.amb, %i.amc   ; 8 uses
  %op.rdx218 = fadd nsz double %i.alu, %i.alv
  %i.ame = fptrunc nsz double %op.rdx218 to float
  %i.amf = fpext nsz float %i.ame to double
  %i.amg = extractelement <8 x double> %i.amd, i64 0
  %op.rdx219 = fadd nsz double %i.amg, %i.amf
  %i.amh = fptrunc nsz double %op.rdx219 to float
  %i.ami = fpext nsz float %i.amh to double
  %i.amj = extractelement <8 x double> %i.amd, i64 1
  %op.rdx220 = fadd nsz double %i.amj, %i.ami
  %i.amk = fptrunc nsz double %op.rdx220 to float
  %i.aml = fpext nsz float %i.amk to double
  %i.amm = extractelement <8 x double> %i.amd, i64 2
  %op.rdx221 = fadd nsz double %i.amm, %i.aml
  %i.amn = fptrunc nsz double %op.rdx221 to float
  %i.amo = fpext nsz float %i.amn to double
  %i.amp = extractelement <8 x double> %i.amd, i64 3
  %op.rdx222 = fadd nsz double %i.amp, %i.amo
  %i.amq = fptrunc nsz double %op.rdx222 to float
  %i.amr = fpext nsz float %i.amq to double
  %i.ams = extractelement <8 x double> %i.amd, i64 4
  %op.rdx223 = fadd nsz double %i.ams, %i.amr
  %i.amt = fptrunc nsz double %op.rdx223 to float
  %i.amu = fpext nsz float %i.amt to double
  %i.amv = extractelement <8 x double> %i.amd, i64 5
  %op.rdx224 = fadd nsz double %i.amv, %i.amu
  %i.amw = fptrunc nsz double %op.rdx224 to float
  %i.amx = fpext nsz float %i.amw to double
  %i.amy = extractelement <8 x double> %i.amd, i64 6
  %op.rdx225 = fadd nsz double %i.amy, %i.amx
  %i.amz = fptrunc nsz double %op.rdx225 to float
  %i.ana = fpext nsz float %i.amz to double
  %i.anb = extractelement <8 x double> %i.amd, i64 7
  %op.rdx226 = fadd nsz double %i.anb, %i.ana
  %i.anc = fptrunc nsz double %op.rdx226 to float
  %i.and = load i8, ptr %i.of, align 4, !tbaa !91
  %i.ane = add i8 %i.and, 1
  %i.anf = fpext nsz float %i.anc to double       ; 2 uses
  %i.ang = fcmp nsz ugt double %i.anf, 6.500000e-01
  %spec.select.i = select i1 %i.ang, i8 %i.ane, i8 0 ; 3 uses
  store i8 %spec.select.i, ptr %i.of, align 4, !tbaa !91
  %i.anh = icmp ugt i8 %spec.select.i, 10
  br i1 %i.anh, label %.thread.i, label %bb.aj

.thread.i:                                        ; preds = %bb.ai
  %i.ani = add i8 %spec.select.i, -1
  store i8 %i.ani, ptr %i.of, align 4, !tbaa !91
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.pre.i142 = load i8, ptr %.phi.trans.insert.i141, align 1, !tbaa !92 ; 2 uses
  %i.anj = icmp ult i8 %.pre.i142, 40
  br i1 %i.anj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.thread.i
  %i.ank = phi i8 [ 0, %.thread.i ], [ %.pre.i142, %bb.aj ]
  %i.anl = add nuw nsw i8 %i.ank, 1
  store i8 %i.anl, ptr %.phi.trans.insert.i141, align 1, !tbaa !92
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  switch i32 %i.ali, label %bb.an [
    i32 6, label %bb.am
    i32 3, label %bb.am
    i32 2, label %bb.am
    i32 1, label %bb.am
    i32 0, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %i.anm = call nsz double @llvm.fmuladd.f64(double %i.anf, double 4.000000e+00, double -1.600000e+00)
  %i.ann = fptrunc nsz double %i.anm to float     ; 2 uses
  %i.ano = fcmp nsz ogt float %i.ann, 0.000000e+00
  %i.anp = select nsz i1 %i.ano, float %i.ann, float 0.000000e+00 ; 2 uses
  %i.anq = fcmp nsz ogt float %i.anp, 1.000000e+00
  %..i.i143 = select nsz i1 %i.anq, float 1.000000e+00, float %i.anp ; 2 uses
  %i.anr = load float, ptr %i.og, align 4, !tbaa !44
  %i.ans = load float, ptr %i.oh, align 8, !tbaa !44
  %i.ant = fadd nsz float %i.anr, %i.ans
  %i.anu = load float, ptr %i.oi, align 4, !tbaa !44
  %i.anv = fadd nsz float %i.ant, %i.anu
  %i.anw = load float, ptr %i.oj, align 8, !tbaa !44
  %i.anx = fadd nsz float %i.anv, %i.anw
  %i.any = load float, ptr %i.ob, align 4, !tbaa !44 ; 2 uses
  %i.anz = fadd nsz float %i.anx, %i.any
  %i.aoa = fpext nsz float %i.anz to double
  %i.aob = fmul nsz double %i.aoa, 2.000000e-01
  %i.aoc = fptrunc nsz double %i.aob to float
  %i.aod = fmul nsz float %..i.i143, %i.any
  %i.aoe = fpext nsz float %i.aod to double
  %i.aof = fpext nsz float %..i.i143 to double
  %i.aog = fsub nsz double 1.000000e+00, %i.aof
  %i.aoh = fpext nsz float %i.aoc to double
  %i.aoi = call nsz double @llvm.fmuladd.f64(double %i.aog, double %i.aoh, double %i.aoe)
  %i.aoj = fptrunc nsz double %i.aoi to float
  br label %fixed_gain_smooth.exit

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.aok = load float, ptr %i.ob, align 4, !tbaa !44
  br label %fixed_gain_smooth.exit

fixed_gain_smooth.exit:                           ; preds = %bb.am, %bb.an
  %.0.i144 = phi nsz float [ %i.aok, %bb.an ], [ %i.aoj, %bb.am ] ; 5 uses
  %i.aol = load float, ptr %i.nx, align 8, !tbaa !44
  %i.aom = fpext nsz float %i.aol to double       ; 2 uses
  %i.aon = fcmp nsz olt double %i.aom, 6.000000e-01 ; 2 uses
  %i.aoo = fcmp nsz olt double %i.aom, 9.000000e-01 ; 2 uses
  %.42.i = select i1 %i.aoo, i32 1, i32 2
  %.034.i = select i1 %i.aon, i32 0, i32 %.42.i   ; 2 uses
  %i.aop = fpext nsz float %.0.i144 to double
  %i.aoq = load float, ptr %i.ol, align 8, !tbaa !93
  %i.aor = fpext nsz float %i.aoq to double
  %i.aos = fmul nsz double %i.aor, 2.000000e+00
  %i.aot = fcmp nsz olt double %i.aos, %i.aop
  br i1 %i.aot, label %.thread52.i, label %bb.ao

.thread52.i:                                      ; preds = %fixed_gain_smooth.exit
  store i8 2, ptr %i.om, align 1, !tbaa !94
  br label %bb.aq

bb.ao:                                            ; preds = %fixed_gain_smooth.exit
  %i.aou = load i8, ptr %i.om, align 1, !tbaa !94 ; 2 uses
  %.not.i145 = icmp eq i8 %i.aou, 0
  br i1 %.not.i145, label %.preheader.preheader.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aov = add i8 %i.aou, -1                      ; 2 uses
  store i8 %i.aov, ptr %i.om, align 1, !tbaa !94
  %i.aow = icmp eq i8 %i.aov, 0
  br i1 %i.aow, label %.preheader.preheader.i, label %bb.aq

.preheader.preheader.i:                           ; preds = %bb.ap, %bb.ao
  %i.aox = load <4 x float>, ptr %i.ok, align 8, !tbaa !44
  %i.aoy = fpext <4 x float> %i.aox to <4 x double>
  %i.aoz = fcmp nsz olt <4 x double> %i.aoy, splat (double 6.000000e-01)
  %i.apa = zext i1 %i.aon to i32
  %i.apb = bitcast <4 x i1> %i.aoz to i4
  %i.apc = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.apb)
  %i.apd = zext nneg i4 %i.apc to i32
  %op.rdx = add nuw nsw i32 %i.apd, %i.apa
  %i.ape = icmp samesign ugt i32 %op.rdx, 2
  %spec.select43.i = select i1 %i.ape, i32 0, i32 %.034.i ; 2 uses
  %i.apf = load i8, ptr %i.oo, align 4, !tbaa !95
  %i.apg = zext i8 %i.apf to i32
  %i.aph = add nuw nsw i32 %i.apg, 1
  %i.api = icmp samesign ugt i32 %spec.select43.i, %i.aph
  %.2.i = select i1 %i.api, i32 1, i32 %spec.select43.i
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %.thread52.i
  %i.apj = add nuw nsw i32 %.034.i, 1
  %spec.select44.i = select i1 %i.aoo, i32 %i.apj, i32 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader.preheader.i
  %.3.i = phi i32 [ %.2.i, %.preheader.preheader.i ], [ %spec.select44.i, %bb.aq ]
  %i.apk = fcmp nsz olt float %.0.i144, 5.000000e+00
  %spec.select45.i = select i1 %i.apk, i32 2, i32 %.3.i ; 3 uses
  %.not41.i = icmp eq i32 %i.ali, 4
  br i1 %.not41.i, label %anti_sparseness.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.apl = icmp ult i32 %i.ali, 6
  %i.apm = icmp samesign ult i32 %spec.select45.i, 2
  %or.cond.i146 = select i1 %i.apl, i1 %i.apm, i1 false
  br i1 %or.cond.i146, label %bb.at, label %anti_sparseness.exit

bb.at:                                            ; preds = %bb.as
  %i.apn = icmp eq i32 %i.ali, 5
  %i.apo = select i1 %i.apn, ptr @ir_filters_lookup_MODE_7k95, ptr @ir_filters_lookup
  %i.app = zext nneg i32 %spec.select45.i to i64
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.apo, i64 %i.app
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !96 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.aps = load i32, ptr %i.ar, align 4, !tbaa !89 ; 6 uses
  %i.apt = load float, ptr %i.as, align 4, !tbaa !90 ; 2 uses
  %i.apu = icmp slt i32 %i.aps, 40
  br i1 %i.apu, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @ff_celp_circ_addf(ptr noundef nonnull %i.e, ptr noundef %i.apr, ptr noundef %i.apr, i32 noundef %i.aps, float noundef %i.apt, i32 noundef 40) #7
  %i.apv = icmp slt i32 %i.aps, 20
  br i1 %i.apv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @ff_celp_circ_addf(ptr noundef nonnull %i.f, ptr noundef %i.apr, ptr noundef nonnull %i.e, i32 noundef %i.aps, float noundef %i.apt, i32 noundef 40) #7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, i8 0, i64 160, i1 false)
  %i.apw = load i32, ptr %4, align 4, !tbaa !85
  %i.apx = icmp sgt i32 %i.apw, 0
  br i1 %i.apx, label %.lr.ph.i.i147, label %apply_ir_filter.exit.i

.lr.ph.i.i147:                                    ; preds = %bb.aw
  %i.apy = sub nsw i32 40, %i.aps
  %i.apz = shl i32 %i.aps, 1
  %i.aqa = sub nsw i32 40, %i.apz
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i147
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i147 ], [ %indvars.iv.next.i.i, %bb.ax ] ; 3 uses
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !30 ; 3 uses
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.aqe = load float, ptr %i.aqd, align 4, !tbaa !44
  %.not.i.i148 = icmp slt i32 %i.aqc, %i.apy
  %.not31.i.i = icmp slt i32 %i.aqc, %i.aqa
  %..i.i149 = select i1 %.not31.i.i, ptr %i.f, ptr %i.e
  %.0.i.i = select i1 %.not.i.i148, ptr %..i.i149, ptr %i.apr
  call void @ff_celp_circ_addf(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef %.0.i.i, i32 noundef %i.aqc, float noundef %i.aqe, i32 noundef 40) #7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aqf = load i32, ptr %4, align 4, !tbaa !85
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = icmp slt i64 %indvars.iv.next.i.i, %i.aqg
  br i1 %i.aqh, label %bb.ax, label %apply_ir_filter.exit.i, !llvm.loop !64

apply_ir_filter.exit.i:                           ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %anti_sparseness.exit

anti_sparseness.exit:                             ; preds = %bb.ar, %bb.as, %apply_ir_filter.exit.i
  %.036.i = phi ptr [ %i.l, %apply_ir_filter.exit.i ], [ %i.ny, %bb.as ], [ %i.ny, %bb.ar ] ; 2 uses
  %i.aqi = trunc nuw nsw i32 %spec.select45.i to i8
  store i8 %i.aqi, ptr %i.oo, align 4, !tbaa !95
  store float %.0.i144, ptr %i.ol, align 8, !tbaa !93
  %i.aqj = getelementptr inbounds nuw [40 x i8], ptr %i.nl, i64 %indvars.iv ; 12 uses
  %i.aqk = call fastcc i32 @synthesis(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.aqj, float noundef %.0.i144, ptr noundef nonnull %.036.i, ptr noundef nonnull %i.op, i8 noundef zeroext 0)
  %.not = icmp eq i32 %i.aqk, 0
  br i1 %.not, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %anti_sparseness.exit
  %i.aql = call fastcc i32 @synthesis(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.aqj, float noundef %.0.i144, ptr noundef nonnull %.036.i, ptr noundef nonnull %i.op, i8 noundef zeroext 1) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %anti_sparseness.exit, %bb.ay
  %.idx206 = mul nuw nsw i64 %indvars.iv, 160
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx206 ; 4 uses
  %i.aqn = load ptr, ptr %i.nz, align 8, !tbaa !51
  %i.aqo = call nsz float %i.aqn(ptr noundef nonnull %i.op, ptr noundef nonnull %i.op, i32 noundef 40) #7, !inline_history !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.aqp = load i32, ptr %i.el, align 4, !tbaa !48
  %i.aqq = and i32 %i.aqp, -2
  %switch.i = icmp eq i32 %i.aqq, 6               ; 2 uses
  %spec.select.i150 = select i1 %switch.i, ptr @ff_pow_0_7, ptr @ff_pow_0_55 ; 10 uses
  %spec.select33.i = select i1 %switch.i, ptr @ff_pow_0_75, ptr @ff_pow_0_7 ; 10 uses
  %i.aqr = load float, ptr %i.aqj, align 4, !tbaa !44 ; 2 uses
  %i.aqs = load float, ptr %spec.select.i150, align 16, !tbaa !44
  %i.aqt = fmul nsz float %i.aqr, %i.aqs
  store float %i.aqt, ptr %i.c, align 16, !tbaa !44
  %i.aqu = load float, ptr %spec.select33.i, align 16, !tbaa !44
  %i.aqv = fmul nsz float %i.aqr, %i.aqu
  store float %i.aqv, ptr %i.d, align 16, !tbaa !44
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqj, i64 4
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !44 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 4
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !44
  %i.ara = fmul nsz float %i.aqx, %i.aqz
  store float %i.ara, ptr %i.at, align 4, !tbaa !44
  %i.arb = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 4
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !44
  %i.ard = fmul nsz float %i.aqx, %i.arc
  store float %i.ard, ptr %i.au, align 4, !tbaa !44
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  %i.arf = load float, ptr %i.are, align 4, !tbaa !44 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 8
  %i.arh = load float, ptr %i.arg, align 8, !tbaa !44
  %i.ari = fmul nsz float %i.arf, %i.arh
  store float %i.ari, ptr %i.av, align 8, !tbaa !44
  %i.arj = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 8
  %i.ark = load float, ptr %i.arj, align 8, !tbaa !44
  %i.arl = fmul nsz float %i.arf, %i.ark
  store float %i.arl, ptr %i.aw, align 8, !tbaa !44
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqj, i64 12
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !44 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 12
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !44
  %i.arq = fmul nsz float %i.arn, %i.arp
  store float %i.arq, ptr %i.ax, align 4, !tbaa !44
  %i.arr = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 12
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !44
  %i.art = fmul nsz float %i.arn, %i.ars
  store float %i.art, ptr %i.ay, align 4, !tbaa !44
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqj, i64 16
  %i.arv = load float, ptr %i.aru, align 4, !tbaa !44 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 16
  %i.arx = load float, ptr %i.arw, align 16, !tbaa !44
  %i.ary = fmul nsz float %i.arv, %i.arx
  store float %i.ary, ptr %i.az, align 16, !tbaa !44
  %i.arz = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 16
  %i.asa = load float, ptr %i.arz, align 16, !tbaa !44
  %i.asb = fmul nsz float %i.arv, %i.asa
  store float %i.asb, ptr %i.ba, align 16, !tbaa !44
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aqj, i64 20
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !44 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 20
  %i.asf = load float, ptr %i.ase, align 4, !tbaa !44
  %i.asg = fmul nsz float %i.asd, %i.asf
  store float %i.asg, ptr %i.bb, align 4, !tbaa !44
  %i.ash = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 20
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !44
  %i.asj = fmul nsz float %i.asd, %i.asi
  store float %i.asj, ptr %i.bc, align 4, !tbaa !44
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aqj, i64 24
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !44 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 24
  %i.asn = load float, ptr %i.asm, align 8, !tbaa !44
  %i.aso = fmul nsz float %i.asl, %i.asn
  store float %i.aso, ptr %i.bd, align 8, !tbaa !44
  %i.asp = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 24
  %i.asq = load float, ptr %i.asp, align 8, !tbaa !44
  %i.asr = fmul nsz float %i.asl, %i.asq
  store float %i.asr, ptr %i.be, align 8, !tbaa !44
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aqj, i64 28
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !44 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 28
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !44
  %i.asw = fmul nsz float %i.ast, %i.asv
  store float %i.asw, ptr %i.bf, align 4, !tbaa !44
  %i.asx = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 28
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !44
  %i.asz = fmul nsz float %i.ast, %i.asy
  store float %i.asz, ptr %i.bg, align 4, !tbaa !44
  %i.ata = getelementptr inbounds nuw i8, ptr %i.aqj, i64 32
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !44 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %spec.select.i150, i64 32
  %i.atd = load float, ptr %i.atc, align 16, !tbaa !44
  %i.ate = fmul nsz float %i.atb, %i.atd
  store float %i.ate, ptr %i.bh, align 16, !tbaa !44
  %i.atf = getelementptr inbounds nuw i8, ptr %spec.select33.i, i64 32
end_hunk_1
begin_hunk_2_@synthesis:bb.a
  %i.gm = fcmp nsz ogt float %i.gl, 3.276800e+04
  br i1 %i.gm, label %bb.aq, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.go = load float, ptr %i.gn, align 4, !tbaa !44
  %i.gp = call nsz float @llvm.fabs.f32(float %i.go)
  %i.gq = fcmp nsz ogt float %i.gp, 3.276800e+04
  br i1 %i.gq, label %bb.aq, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !44
  %i.gt = call nsz float @llvm.fabs.f32(float %i.gs)
  %i.gu = fcmp nsz ogt float %i.gt, 3.276800e+04
  br i1 %i.gu, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !44
  %i.gx = call nsz float @llvm.fabs.f32(float %i.gw)
  %i.gy = fcmp nsz ogt float %i.gx, 3.276800e+04
  br i1 %i.gy, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !44
  %i.hb = call nsz float @llvm.fabs.f32(float %i.ha)
  %i.hc = fcmp nsz ogt float %i.hb, 3.276800e+04
  br i1 %i.hc, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.he = load float, ptr %i.hd, align 4, !tbaa !44
  %i.hf = call nsz float @llvm.fabs.f32(float %i.he)
  %i.hg = fcmp nsz ogt float %i.hf, 3.276800e+04
  br i1 %i.hg, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !44
  %i.hj = call nsz float @llvm.fabs.f32(float %i.hi)
  %i.hk = fcmp nsz ogt float %i.hj, 3.276800e+04
  br i1 %i.hk, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !44
  %i.hn = call nsz float @llvm.fabs.f32(float %i.hm)
  %i.ho = fcmp nsz ogt float %i.hn, 3.276800e+04
  br i1 %i.ho, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !44
  %i.hr = call nsz float @llvm.fabs.f32(float %i.hq)
  %i.hs = fcmp nsz ogt float %i.hr, 3.276800e+04
  br i1 %i.hs, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !44
  %i.hv = call nsz float @llvm.fabs.f32(float %i.hu)
  %i.hw = fcmp nsz ogt float %i.hv, 3.276800e+04
  br i1 %i.hw, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !44
  %i.hz = call nsz float @llvm.fabs.f32(float %i.hy)
  %i.ia = fcmp nsz ogt float %i.hz, 3.276800e+04
  br i1 %i.ia, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !44
  %i.id = call nsz float @llvm.fabs.f32(float %i.ic)
  %i.ie = fcmp nsz ogt float %i.id, 3.276800e+04
  br i1 %i.ie, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ig = load float, ptr %i.if, align 4, !tbaa !44
  %i.ih = call nsz float @llvm.fabs.f32(float %i.ig)
  %i.ii = fcmp nsz ogt float %i.ih, 3.276800e+04
  br i1 %i.ii, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !44
  %i.il = call nsz float @llvm.fabs.f32(float %i.ik)
  %i.im = fcmp nsz ogt float %i.il, 3.276800e+04
  br i1 %i.im, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.io = load float, ptr %i.in, align 4, !tbaa !44
  %i.ip = call nsz float @llvm.fabs.f32(float %i.io)
  %i.iq = fcmp nsz ogt float %i.ip, 3.276800e+04
  br i1 %i.iq, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.is = load float, ptr %i.ir, align 4, !tbaa !44
  %i.it = call nsz float @llvm.fabs.f32(float %i.is)
  %i.iu = fcmp nsz ogt float %i.it, 3.276800e+04
  br i1 %i.iu, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !44
  %i.ix = call nsz float @llvm.fabs.f32(float %i.iw)
  %i.iy = fcmp nsz ogt float %i.ix, 3.276800e+04
  br i1 %i.iy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !44
  %i.jb = call nsz float @llvm.fabs.f32(float %i.ja)
  %i.jc = fcmp nsz ogt float %i.jb, 3.276800e+04
  %spec.select = zext i1 %i.jc to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.034 = phi i32 [ 1, %bb.c ], [ 1, %bb.w ], [ 1, %bb.d ], [ %spec.select, %bb.ap ], [ 1, %bb.e ], [ 1, %bb.ab ], [ 1, %bb.f ], [ 1, %bb.ao ], [ 1, %bb.g ], [ 1, %bb.x ], [ 1, %bb.h ], [ 1, %bb.an ], [ 1, %bb.i ], [ 1, %bb.af ], [ 1, %bb.j ], [ 1, %bb.am ], [ 1, %bb.k ], [ 1, %bb.y ], [ 1, %bb.l ], [ 1, %bb.al ], [ 1, %bb.m ], [ 1, %bb.ad ], [ 1, %bb.n ], [ 1, %bb.ak ], [ 1, %bb.o ], [ 1, %bb.z ], [ 1, %bb.p ], [ 1, %bb.aj ], [ 1, %bb.q ], [ 1, %bb.ae ], [ 1, %bb.r ], [ 1, %bb.ai ], [ 1, %bb.s ], [ 1, %bb.aa ], [ 1, %bb.t ], [ 1, %bb.ah ], [ 1, %bb.u ], [ 1, %bb.ac ], [ 1, %bb.v ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.034
}

declare void @ff_clear_fixed_vector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @lsf2lsp_for_mode12k2(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 3) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x float], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = zext nneg i32 %4 to i64                  ; 5 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.d, align 2              ; 2 uses
  %i.i = load i32, ptr %i.g, align 2              ; 3 uses
  %.sroa.6.sroa.0.0.extract.trunc = trunc i32 %i.i to i16
  %.sroa.6.sroa.5.0.extract.shift = lshr i32 %i.i, 16
  %.sroa.6.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.6.sroa.5.0.extract.shift to i16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.b
  %i.m = load i32, ptr %i.l, align 2              ; 2 uses
  %.sroa.9.sroa.0.0.extract.trunc = trunc i32 %i.m to i16 ; 2 uses
  %.sroa.9.sroa.7.0.extract.shift = lshr i32 %i.m, 16
  %.sroa.9.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.9.sroa.7.0.extract.shift to i16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.b
  %i.q = load i32, ptr %i.p, align 2              ; 3 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i32 %i.q to i16
  %.sroa.16.sroa.5.0.extract.shift = lshr i32 %i.q, 16
  %.sroa.16.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.16.sroa.5.0.extract.shift to i16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.b
  %i.u = load i32, ptr %i.t, align 2              ; 2 uses
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  %i.v = sub i16 0, %.sroa.9.sroa.0.0.extract.trunc
  %i.w = sub i16 0, %.sroa.9.sroa.7.0.extract.trunc
  %.sroa.9.sroa.7.0 = select i1 %.not, i16 %.sroa.9.sroa.7.0.extract.trunc, i16 %i.w ; 2 uses
  %.sroa.9.sroa.0.0 = select i1 %.not, i16 %.sroa.9.sroa.0.0.extract.trunc, i16 %i.v ; 2 uses
  %.not18 = icmp eq i32 %6, 0                     ; 2 uses
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.h, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.i, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.9.sroa.7.0.insert.ext = zext i16 %.sroa.9.sroa.7.0 to i32
  %.sroa.9.sroa.7.0.insert.shift = shl nuw i32 %.sroa.9.sroa.7.0.insert.ext, 16
  %.sroa.9.sroa.0.0.insert.ext = zext i16 %.sroa.9.sroa.0.0 to i32
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.7.0.insert.shift, %.sroa.9.sroa.0.0.insert.ext
  store i32 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.q, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.u, ptr %.sroa.19.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.z = bitcast <2 x i32> %i.y to <4 x i16>
  %i.aa = insertelement <4 x i16> %i.z, i16 %.sroa.6.sroa.0.0.extract.trunc, i64 2
  %i.ab = insertelement <4 x i16> %i.aa, i16 %.sroa.6.sroa.5.0.extract.trunc, i64 3
  %i.ac = sitofp <4 x i16> %i.ab to <4 x double>
  %i.ad = load <4 x float>, ptr %2, align 4, !tbaa !44
  %i.ae = fpext <4 x float> %i.ad to <4 x double>
  %i.af = fmul nsz <4 x double> %i.ae, splat (double 1.250000e-04)
  %i.ag = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ac, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.af)
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float>
  store <4 x float> %i.ah, ptr %i.a, align 16, !tbaa !44
  %i.ai = insertelement <4 x i16> poison, i16 %.sroa.9.sroa.0.0, i64 0
  %i.aj = insertelement <4 x i16> %i.ai, i16 %.sroa.9.sroa.7.0, i64 1
  %i.ak = insertelement <4 x i16> %i.aj, i16 %.sroa.16.sroa.0.0.extract.trunc, i64 2
  %i.al = insertelement <4 x i16> %i.ak, i16 %.sroa.16.sroa.5.0.extract.trunc, i64 3
  %i.am = sitofp <4 x i16> %i.al to <4 x double>
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load <4 x float>, ptr %i.an, align 4, !tbaa !44
  %i.aq = fpext <4 x float> %i.ap to <4 x double>
  %i.ar = fmul nsz <4 x double> %i.aq, splat (double 1.250000e-04)
  %i.as = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.am, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.ar)
  %i.at = fptrunc <4 x double> %i.as to <4 x float>
  store <4 x float> %i.at, ptr %i.ao, align 16, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = bitcast i32 %i.u to <2 x i16>
  %i.ax = sitofp <2 x i16> %i.aw to <2 x double>
  %i.ay = load <2 x float>, ptr %i.au, align 4, !tbaa !44
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fmul nsz <2 x double> %i.az, splat (double 1.250000e-04)
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double f0x3F00000000000000), <2 x double> %i.ba)
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  store <2 x float> %i.bc, ptr %i.av, align 16, !tbaa !44
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.a, double noundef 6.256100e-03, i32 noundef 10) #7
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !50
  call void %i.bg(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void %i.bh(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void %i.bj(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !50
  call void %i.bl(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 10) #7, !inline_history !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @ff_acelp_lsf2lspd(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @ff_set_min_dist_lsf(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_lsf2lspd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_decode_pitch_lag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_decode_10_pulses_35bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_celp_circ_addf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_scale_vector_to_given_sum_of_squares(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @ff_tilt_compensation(ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_adaptive_gain_control(ptr noundef, ptr noundef, float noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 356}
!30 = !{!6, !6, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!"AMRNBFrame", !5, i64 0, !5, i64 10}
!33 = !{!"p1 float", !9, i64 0}
!34 = !{!"ACELPFContext", !9, i64 0, !9, i64 8}
!35 = !{!"ACELPVContext", !9, i64 0}
!36 = !{!"CELPFContext", !9, i64 0, !9, i64 8}
!37 = !{!"CELPMContext", !9, i64 0}
!38 = !{!"AMRContext", !32, i64 0, !5, i64 114, !6, i64 116, !5, i64 120, !5, i64 144, !5, i64 464, !5, i64 544, !5, i64 704, !5, i64 744, !5, i64 904, !5, i64 908, !33, i64 1688, !5, i64 1696, !5, i64 1856, !5, i64 2016, !5, i64 2032, !5, i64 2052, !16, i64 2072, !5, i64 2076, !5, i64 2077, !16, i64 2080, !5, i64 2084, !5, i64 2085, !5, i64 2088, !16, i64 2128, !16, i64 2132, !5, i64 2136, !5, i64 2144, !34, i64 2344, !35, i64 2360, !36, i64 2368, !37, i64 2384}
!39 = !{!38, !33, i64 1688}
!40 = !{!"double", !5, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"short", !5, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!16, !16, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!38, !6, i64 116}
!49 = !{!17, !17, i64 0}
!50 = !{!35, !9, i64 0}
!51 = !{!38, !9, i64 2384}
!52 = !{!38, !9, i64 2368}
!53 = !{!38, !9, i64 2360}
!54 = distinct !{!54, !45, !46, !47}
!55 = distinct !{!55, !45}
!56 = !{!9, !9, i64 0}
!57 = !{!27, !6, i64 344}
!58 = !{!27, !6, i64 348}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !45}
!61 = distinct !{null, null}
!62 = distinct !{null}
!63 = distinct !{!63, !45, !47, !46}
!64 = distinct !{!64, !45}
!65 = distinct !{null}
!66 = distinct !{null, null}
!67 = distinct !{!67, !45}
!68 = distinct !{!68, !45}
!69 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!70 = !{!69, !14, i64 24}
!71 = !{!69, !6, i64 32}
!72 = !{!"p2 omnipotent char", !25, i64 0}
!73 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!74 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!75 = !{!"AVFrame", !5, i64 0, !5, i64 64, !72, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !73, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !74, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!76 = !{!75, !6, i64 112}
!77 = !{!75, !72, i64 96}
!78 = !{!14, !14, i64 0}
!79 = !{!38, !5, i64 114}
!80 = !{!"AMRNBSubframe", !42, i64 0, !42, i64 2, !42, i64 4, !5, i64 6}
!81 = !{!80, !42, i64 0}
!82 = !{!38, !5, i64 904}
!83 = !{!38, !9, i64 2344}
!84 = !{!"AMRFixed", !6, i64 0, !5, i64 4, !5, i64 44, !6, i64 84, !6, i64 88, !16, i64 92}
!85 = !{!84, !6, i64 0}
!86 = !{!80, !42, i64 2}
!87 = !{!80, !42, i64 4}
!88 = !{!38, !16, i64 2072}
!89 = !{!84, !6, i64 88}
!90 = !{!84, !16, i64 92}
!91 = !{!38, !5, i64 2076}
!92 = !{!38, !5, i64 2077}
!93 = !{!38, !16, i64 2080}
!94 = !{!38, !5, i64 2085}
!95 = !{!38, !5, i64 2084}
!96 = !{!33, !33, i64 0}
!97 = !{!38, !9, i64 2376}
!98 = !{!38, !9, i64 2352}
!99 = distinct !{null}
end_hunk_2
