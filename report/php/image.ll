Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/image?download=true
inline.NumInlined: 52
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@php_getimagesize_from_any:bb.a
php_handle_gif.exit.i:                            ; preds = %bb.s, %bb.r, %bb.q
  %.0.i94.i = phi ptr [ %i.bb, %bb.s ], [ null, %bb.q ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %bb.cl

bb.t:                                             ; preds = %bb.p
  %.not79.i = icmp eq ptr %.1, null
  br i1 %.not79.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = call fastcc ptr @php_handle_jpeg(ptr noundef nonnull %.058, ptr noundef nonnull %.1)
  br label %bb.cl

bb.v:                                             ; preds = %bb.t
  %i.bl = call fastcc ptr @php_handle_jpeg(ptr noundef nonnull %.058, ptr noundef null)
  br label %bb.cl

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  %i.bm = call i32 @_php_stream_seek(ptr noundef nonnull %.058, i64 noundef 8, i32 noundef 1) #11
  %.not.i95.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i95.i, label %bb.x, label %php_handle_png.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bn = call i64 @_php_stream_read(ptr noundef nonnull %.058, ptr noundef nonnull %i.k, i64 noundef 9) #11
  %i.bo = icmp ult i64 %i.bn, 9
  br i1 %i.bo, label %php_handle_png.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = call noalias dereferenceable_or_null(32) ptr @_ecalloc(i64 noundef 1, i64 noundef 32) #14 ; 4 uses
  %i.bq = load i8, ptr %i.k, align 1, !tbaa !16
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw i32 %i.br, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 16
  %i.bx = or disjoint i32 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = or disjoint i32 %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cc, %i.cf
  store i32 %i.cg, ptr %i.bp, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw i32 %i.cj, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 16
  %i.cp = or disjoint i32 %i.co, %i.ck
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 8
  %i.cu = or disjoint i32 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !41
  br label %php_handle_png.exit.i

php_handle_png.exit.i:                            ; preds = %bb.y, %bb.x, %bb.w
  %.0.i96.i = phi ptr [ %i.bp, %bb.y ], [ null, %bb.w ], [ null, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %bb.cl

bb.z:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  %i.de = call i32 @_php_stream_seek(ptr noundef nonnull %.058, i64 noundef 5, i32 noundef 1) #11
  %.not.i97.i = icmp eq i32 %i.de, 0
  br i1 %.not.i97.i, label %bb.aa, label %php_handle_swf.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.df = call i64 @_php_stream_read(ptr noundef nonnull %.058, ptr noundef nonnull %i.j, i64 noundef 32) #11
  %.not14.i.i = icmp eq i64 %i.df, 32
  br i1 %.not14.i.i, label %php_swf_get_bits.exit.i.i, label %php_handle_swf.exit.i

php_swf_get_bits.exit.i.i:                        ; preds = %bb.aa
  %i.dg = call noalias dereferenceable_or_null(32) ptr @_ecalloc(i64 noundef 1, i64 noundef 32) #14 ; 6 uses
  %i.dh = load i8, ptr %i.j, align 16, !tbaa !16
  %i.di = lshr i8 %i.dh, 3                        ; 6 uses
  %i.dj = zext nneg i8 %i.di to i32               ; 13 uses
  %i.dk = add nuw nsw i32 %i.dj, 5                ; 2 uses
  %.not53.i.i = icmp eq i8 %i.di, 0
  br i1 %.not53.i.i, label %php_swf_get_bits.exit24.i.thread.i, label %.lr.ph.i.i.i

php_swf_get_bits.exit24.i.thread.i:               ; preds = %php_swf_get_bits.exit.i.i
  store i32 0, ptr %i.dg, align 8, !tbaa !38
  br label %php_swf_get_bits.exit38.i.i

.lr.ph.i.i.i:                                     ; preds = %php_swf_get_bits.exit.i.i
  %reass.add.i.i = shl nuw nsw i32 %i.dj, 1       ; 3 uses
  %i.dl = add nuw nsw i32 %reass.add.i.i, 4       ; 3 uses
  %i.dm = add nsw i32 %i.dj, -1                   ; 4 uses
  %xtraiter = and i32 %i.dj, 1
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i32 %i.dj, 30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i.i.new
  %.014.i15.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.eo, %bb.ab ]
  %.01213.i16.i.i = phi i32 [ %i.dk, %.lr.ph.i.i.i.new ], [ %i.ep, %bb.ab ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.ab ]
  %i.do = lshr i32 %.01213.i16.i.i, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %i.ds = zext i8 %i.dr to i32
  %i.dt = and i32 %.01213.i16.i.i, 7
  %i.du = xor i32 %i.dt, 7
  %i.dv = lshr i32 %i.ds, %i.du
  %i.dw = and i32 %i.dv, 1
  %i.dx = sub nsw i32 %i.dl, %.01213.i16.i.i
  %i.dy = shl nuw i32 %i.dw, %i.dx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add i64 %.014.i15.i.i, %i.dz
  %i.eb = add nuw nsw i32 %.01213.i16.i.i, 1      ; 3 uses
  %i.ec = lshr i32 %i.eb, 3
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !16
  %i.eg = zext i8 %i.ef to i32
  %i.eh = and i32 %i.eb, 7
  %i.ei = xor i32 %i.eh, 7
  %i.ej = lshr i32 %i.eg, %i.ei
  %i.ek = and i32 %i.ej, 1
  %i.el = sub nsw i32 %i.dl, %i.eb
  %i.em = shl nuw i32 %i.ek, %i.el
  %i.en = sext i32 %i.em to i64
  %i.eo = add i64 %i.ea, %i.en                    ; 3 uses
  %i.ep = add nuw nsw i32 %.01213.i16.i.i, 2      ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i20.i.i.unr-lcssa, label %bb.ab, !llvm.loop !61

.lr.ph.i20.i.i.unr-lcssa:                         ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i20.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i20.i.i.unr-lcssa, %.lr.ph.i.i.i
  %.014.i15.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.eo, %.lr.ph.i20.i.i.unr-lcssa ]
  %.01213.i16.i.i.epil.init = phi i32 [ %i.dk, %.lr.ph.i.i.i ], [ %i.ep, %.lr.ph.i20.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod119 = trunc i8 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod119)
  %i.eq = lshr i32 %.01213.i16.i.i.epil.init, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16
  %i.eu = zext i8 %i.et to i32
  %i.ev = and i32 %.01213.i16.i.i.epil.init, 7
  %i.ew = xor i32 %i.ev, 7
  %i.ex = lshr i32 %i.eu, %i.ew
  %i.ey = and i32 %i.ex, 1
  %i.ez = sub nsw i32 %i.dl, %.01213.i16.i.i.epil.init
  %i.fa = shl nuw i32 %i.ey, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = add i64 %.014.i15.i.i.epil.init, %i.fb
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.unr-lcssa, %.epil.preheader
  %.lcssa114 = phi i64 [ %i.eo, %.lr.ph.i20.i.i.unr-lcssa ], [ %i.fc, %.epil.preheader ]
  %i.fd = add nuw nsw i32 %i.dj, 4                ; 5 uses
  %xtraiter121 = and i32 %i.dj, 1
  %i.fe = icmp eq i32 %i.dm, 0
  br i1 %i.fe, label %.epil.preheader120, label %.lr.ph.i20.i.i.new

.lr.ph.i20.i.i.new:                               ; preds = %.lr.ph.i20.i.i
  %unroll_iter125 = and i32 %i.dj, 30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i20.i.i.new
  %.014.i21.i.i = phi i64 [ 0, %.lr.ph.i20.i.i.new ], [ %i.gf, %bb.ac ]
  %.01213.i22.i.i = phi i32 [ 5, %.lr.ph.i20.i.i.new ], [ %i.gg, %bb.ac ] ; 5 uses
  %niter126 = phi i32 [ 0, %.lr.ph.i20.i.i.new ], [ %niter126.next.1, %bb.ac ]
  %i.ff = lshr i32 %.01213.i22.i.i, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !16
  %i.fj = zext i8 %i.fi to i32
  %i.fk = and i32 %.01213.i22.i.i, 7
  %i.fl = xor i32 %i.fk, 7
  %i.fm = lshr i32 %i.fj, %i.fl
  %i.fn = and i32 %i.fm, 1
  %i.fo = sub nsw i32 %i.fd, %.01213.i22.i.i
  %i.fp = shl nuw i32 %i.fn, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = add i64 %.014.i21.i.i, %i.fq
  %i.fs = add nuw nsw i32 %.01213.i22.i.i, 1      ; 3 uses
  %i.ft = lshr i32 %i.fs, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !16
  %i.fx = zext i8 %i.fw to i32
  %i.fy = and i32 %i.fs, 7
  %i.fz = xor i32 %i.fy, 7
  %i.ga = lshr i32 %i.fx, %i.fz
  %i.gb = and i32 %i.ga, 1
  %i.gc = sub nsw i32 %i.fd, %i.fs
  %i.gd = shl nuw i32 %i.gb, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = add i64 %i.fr, %i.ge                    ; 3 uses
  %i.gg = add nuw nsw i32 %.01213.i22.i.i, 2      ; 2 uses
  %niter126.next.1 = add i32 %niter126, 2         ; 2 uses
  %niter126.ncmp.1 = icmp eq i32 %niter126.next.1, %unroll_iter125
  br i1 %niter126.ncmp.1, label %.lr.ph.i26.i.i.unr-lcssa, label %bb.ac, !llvm.loop !61

.lr.ph.i26.i.i.unr-lcssa:                         ; preds = %bb.ac
  %lcmp.mod122.not = icmp eq i32 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i26.i.i, label %.epil.preheader120

.epil.preheader120:                               ; preds = %.lr.ph.i26.i.i.unr-lcssa, %.lr.ph.i20.i.i
  %.014.i21.i.i.epil.init = phi i64 [ 0, %.lr.ph.i20.i.i ], [ %i.gf, %.lr.ph.i26.i.i.unr-lcssa ]
  %.01213.i22.i.i.epil.init = phi i32 [ 5, %.lr.ph.i20.i.i ], [ %i.gg, %.lr.ph.i26.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod124 = trunc i8 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod124)
  %i.gh = lshr i32 %.01213.i22.i.i.epil.init, 3
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !16
  %i.gl = zext i8 %i.gk to i32
  %i.gm = and i32 %.01213.i22.i.i.epil.init, 7
  %i.gn = xor i32 %i.gm, 7
  %i.go = lshr i32 %i.gl, %i.gn
  %i.gp = and i32 %i.go, 1
  %i.gq = sub nsw i32 %i.fd, %.01213.i22.i.i.epil.init
  %i.gr = shl nuw i32 %i.gp, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add i64 %.014.i21.i.i.epil.init, %i.gs
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i.unr-lcssa, %.epil.preheader120
  %.lcssa113 = phi i64 [ %i.gf, %.lr.ph.i26.i.i.unr-lcssa ], [ %i.gt, %.epil.preheader120 ]
  %i.gu = sub i64 %.lcssa114, %.lcssa113
  %i.gv = udiv i64 %i.gu, 20
  %i.gw = trunc i64 %i.gv to i32
  store i32 %i.gw, ptr %i.dg, align 8, !tbaa !38
  %i.gx = mul nuw nsw i32 %i.dj, 3                ; 2 uses
  %i.gy = add nuw nsw i32 %i.gx, 5                ; 2 uses
  %i.gz = add nuw nsw i32 %i.fd, %i.gx            ; 3 uses
  %xtraiter128 = and i32 %i.dj, 1
  %i.ha = icmp eq i32 %i.dm, 0
  br i1 %i.ha, label %.epil.preheader127, label %.lr.ph.i26.i.i.new

.lr.ph.i26.i.i.new:                               ; preds = %.lr.ph.i26.i.i
  %unroll_iter132 = and i32 %i.dj, 30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i26.i.i.new
  %.014.i28.i.i = phi i64 [ 0, %.lr.ph.i26.i.i.new ], [ %i.ib, %bb.ad ]
  %.01213.i29.i.i = phi i32 [ %i.gy, %.lr.ph.i26.i.i.new ], [ %i.ic, %bb.ad ] ; 5 uses
  %niter133 = phi i32 [ 0, %.lr.ph.i26.i.i.new ], [ %niter133.next.1, %bb.ad ]
  %i.hb = lshr i32 %.01213.i29.i.i, 3
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !16
  %i.hf = zext i8 %i.he to i32
  %i.hg = and i32 %.01213.i29.i.i, 7
  %i.hh = xor i32 %i.hg, 7
  %i.hi = lshr i32 %i.hf, %i.hh
  %i.hj = and i32 %i.hi, 1
  %i.hk = sub nsw i32 %i.gz, %.01213.i29.i.i
  %i.hl = shl nuw i32 %i.hj, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = add i64 %.014.i28.i.i, %i.hm
  %i.ho = add nuw nsw i32 %.01213.i29.i.i, 1      ; 3 uses
  %i.hp = lshr i32 %i.ho, 3
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !16
  %i.ht = zext i8 %i.hs to i32
  %i.hu = and i32 %i.ho, 7
  %i.hv = xor i32 %i.hu, 7
  %i.hw = lshr i32 %i.ht, %i.hv
  %i.hx = and i32 %i.hw, 1
  %i.hy = sub nsw i32 %i.gz, %i.ho
  %i.hz = shl nuw i32 %i.hx, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = add i64 %i.hn, %i.ia                    ; 3 uses
  %i.ic = add nuw nsw i32 %.01213.i29.i.i, 2      ; 2 uses
  %niter133.next.1 = add i32 %niter133, 2         ; 2 uses
  %niter133.ncmp.1 = icmp eq i32 %niter133.next.1, %unroll_iter132
  br i1 %niter133.ncmp.1, label %.lr.ph.i33.i.i.unr-lcssa, label %bb.ad, !llvm.loop !61

.lr.ph.i33.i.i.unr-lcssa:                         ; preds = %bb.ad
  %lcmp.mod129.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i33.i.i, label %.epil.preheader127

.epil.preheader127:                               ; preds = %.lr.ph.i33.i.i.unr-lcssa, %.lr.ph.i26.i.i
  %.014.i28.i.i.epil.init = phi i64 [ 0, %.lr.ph.i26.i.i ], [ %i.ib, %.lr.ph.i33.i.i.unr-lcssa ]
  %.01213.i29.i.i.epil.init = phi i32 [ %i.gy, %.lr.ph.i26.i.i ], [ %i.ic, %.lr.ph.i33.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod131 = trunc i8 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod131)
  %i.id = lshr i32 %.01213.i29.i.i.epil.init, 3
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !16
  %i.ih = zext i8 %i.ig to i32
  %i.ii = and i32 %.01213.i29.i.i.epil.init, 7
  %i.ij = xor i32 %i.ii, 7
  %i.ik = lshr i32 %i.ih, %i.ij
  %i.il = and i32 %i.ik, 1
  %i.im = sub nsw i32 %i.gz, %.01213.i29.i.i.epil.init
  %i.in = shl nuw i32 %i.il, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = add i64 %.014.i28.i.i.epil.init, %i.io
  br label %.lr.ph.i33.i.i

.lr.ph.i33.i.i:                                   ; preds = %.lr.ph.i33.i.i.unr-lcssa, %.epil.preheader127
  %.lcssa112 = phi i64 [ %i.ib, %.lr.ph.i33.i.i.unr-lcssa ], [ %i.ip, %.epil.preheader127 ]
  %i.iq = add nuw nsw i32 %reass.add.i.i, 5       ; 2 uses
  %i.ir = add nuw nsw i32 %i.fd, %reass.add.i.i   ; 3 uses
  %xtraiter135 = and i32 %i.dj, 1
  %i.is = icmp eq i32 %i.dm, 0
  br i1 %i.is, label %.epil.preheader134, label %.lr.ph.i33.i.i.new

.lr.ph.i33.i.i.new:                               ; preds = %.lr.ph.i33.i.i
  %unroll_iter139 = and i32 %i.dj, 30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i33.i.i.new
  %.014.i35.i.i = phi i64 [ 0, %.lr.ph.i33.i.i.new ], [ %i.jt, %bb.ae ]
  %.01213.i36.i.i = phi i32 [ %i.iq, %.lr.ph.i33.i.i.new ], [ %i.ju, %bb.ae ] ; 5 uses
  %niter140 = phi i32 [ 0, %.lr.ph.i33.i.i.new ], [ %niter140.next.1, %bb.ae ]
  %i.it = lshr i32 %.01213.i36.i.i, 3
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !16
  %i.ix = zext i8 %i.iw to i32
  %i.iy = and i32 %.01213.i36.i.i, 7
  %i.iz = xor i32 %i.iy, 7
  %i.ja = lshr i32 %i.ix, %i.iz
  %i.jb = and i32 %i.ja, 1
  %i.jc = sub nsw i32 %i.ir, %.01213.i36.i.i
  %i.jd = shl nuw i32 %i.jb, %i.jc
  %i.je = sext i32 %i.jd to i64
  %i.jf = add i64 %.014.i35.i.i, %i.je
  %i.jg = add nuw nsw i32 %.01213.i36.i.i, 1      ; 3 uses
  %i.jh = lshr i32 %i.jg, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !16
  %i.jl = zext i8 %i.jk to i32
  %i.jm = and i32 %i.jg, 7
  %i.jn = xor i32 %i.jm, 7
  %i.jo = lshr i32 %i.jl, %i.jn
  %i.jp = and i32 %i.jo, 1
  %i.jq = sub nsw i32 %i.ir, %i.jg
  %i.jr = shl nuw i32 %i.jp, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = add i64 %i.jf, %i.js                    ; 3 uses
  %i.ju = add nuw nsw i32 %.01213.i36.i.i, 2      ; 2 uses
  %niter140.next.1 = add i32 %niter140, 2         ; 2 uses
  %niter140.ncmp.1 = icmp eq i32 %niter140.next.1, %unroll_iter139
  br i1 %niter140.ncmp.1, label %php_swf_get_bits.exit38.i.loopexit.i.unr-lcssa, label %bb.ae, !llvm.loop !61

php_swf_get_bits.exit38.i.loopexit.i.unr-lcssa:   ; preds = %bb.ae
  %lcmp.mod136.not = icmp eq i32 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %php_swf_get_bits.exit38.i.loopexit.i, label %.epil.preheader134

.epil.preheader134:                               ; preds = %php_swf_get_bits.exit38.i.loopexit.i.unr-lcssa, %.lr.ph.i33.i.i
  %.014.i35.i.i.epil.init = phi i64 [ 0, %.lr.ph.i33.i.i ], [ %i.jt, %php_swf_get_bits.exit38.i.loopexit.i.unr-lcssa ]
  %.01213.i36.i.i.epil.init = phi i32 [ %i.iq, %.lr.ph.i33.i.i ], [ %i.ju, %php_swf_get_bits.exit38.i.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod138 = trunc i8 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod138)
  %i.jv = lshr i32 %.01213.i36.i.i.epil.init, 3
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !16
  %i.jz = zext i8 %i.jy to i32
  %i.ka = and i32 %.01213.i36.i.i.epil.init, 7
  %i.kb = xor i32 %i.ka, 7
  %i.kc = lshr i32 %i.jz, %i.kb
  %i.kd = and i32 %i.kc, 1
  %i.ke = sub nsw i32 %i.ir, %.01213.i36.i.i.epil.init
  %i.kf = shl nuw i32 %i.kd, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = add i64 %.014.i35.i.i.epil.init, %i.kg
  br label %php_swf_get_bits.exit38.i.loopexit.i

php_swf_get_bits.exit38.i.loopexit.i:             ; preds = %php_swf_get_bits.exit38.i.loopexit.i.unr-lcssa, %.epil.preheader134
  %.lcssa = phi i64 [ %i.jt, %php_swf_get_bits.exit38.i.loopexit.i.unr-lcssa ], [ %i.kh, %.epil.preheader134 ]
  %i.ki = sub i64 %.lcssa112, %.lcssa
  %i.kj = udiv i64 %i.ki, 20
  %i.kk = trunc i64 %i.kj to i32
  br label %php_swf_get_bits.exit38.i.i

php_swf_get_bits.exit38.i.i:                      ; preds = %php_swf_get_bits.exit38.i.loopexit.i, %php_swf_get_bits.exit24.i.thread.i
  %i.kl = phi i32 [ 0, %php_swf_get_bits.exit24.i.thread.i ], [ %i.kk, %php_swf_get_bits.exit38.i.loopexit.i ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !39
  %i.kn = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 0, ptr %i.kn, align 8, !tbaa !41
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  store i32 0, ptr %i.ko, align 4, !tbaa !42
  br label %php_handle_swf.exit.i

php_handle_swf.exit.i:                            ; preds = %php_swf_get_bits.exit38.i.i, %bb.aa, %bb.z
  %.0.i98.i = phi ptr [ %i.dg, %php_swf_get_bits.exit38.i.i ], [ null, %bb.z ], [ null, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %bb.cl

bb.af:                                            ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.41) #11
  br label %.thread.i

bb.ag:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.kp = call i32 @_php_stream_seek(ptr noundef nonnull %.058, i64 noundef 11, i32 noundef 1) #11
  %.not.i99.i = icmp eq i32 %i.kp, 0
  br i1 %.not.i99.i, label %bb.ah, label %php_handle_psd.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.kq = call i64 @_php_stream_read(ptr noundef nonnull %.058, ptr noundef nonnull %i.i, i64 noundef 8) #11
  %.not6.i.i = icmp eq i64 %i.kq, 8
  br i1 %.not6.i.i, label %bb.ai, label %php_handle_psd.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.kr = call noalias dereferenceable_or_null(32) ptr @_ecalloc(i64 noundef 1, i64 noundef 32) #14 ; 3 uses
  %i.ks = load i8, ptr %i.i, align 1, !tbaa !16
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw i32 %i.kt, 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !16
  %i.kx = zext i8 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.kx, 16
end_hunk_0
