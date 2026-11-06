Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0_@tdefl_write_image_to_png_file_in_memory_ex:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8, !tbaa !117
  %i.bz = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ca = xor i32 %.05189, -1
  %i.cb = add nsw i32 %2, %i.ca
  %i.cc = select i1 %.not61, i32 %.05189, i32 %i.cb
  %i.cd = mul nsw i32 %i.cc, %i.f
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.by, ptr %i.b, align 8, !tbaa !117
  %i.cg = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = add nuw nsw i32 %.05189, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !389

._crit_edge:                                      ; preds = %bb.g, %tdefl_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !117
  %i.ci = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not59 = icmp eq i32 %i.ci, 1
  br i1 %.not59, label %.lr.ph.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.e) #33
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !151
  call void @free(ptr noundef %i.cj) #33
  br label %bb.m

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ck = load i64, ptr %7, align 8, !tbaa !150   ; 4 uses
  %i.cl = add i64 %i.ck, -41                      ; 5 uses
  store i64 %i.cl, ptr %4, align 8, !tbaa !117
  %i.cm = lshr i32 %1, 8                          ; 2 uses
  %i.cn = trunc i32 %i.cm to i8
  %i.co = trunc i32 %1 to i8
  %i.cp = lshr i32 %2, 8                          ; 2 uses
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = trunc i32 %2 to i8
  %i.cs = sext i32 %3 to i64
  %i.ct = getelementptr inbounds i8, ptr @tdefl_write_image_to_png_file_in_memory_ex.chans, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !80  ; 2 uses
  %i.cv = lshr i64 %i.cl, 24
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = lshr i64 %i.cl, 16
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = lshr i64 %i.cl, 8
  %i.da = trunc i64 %i.cz to i8
  %i.db = trunc i64 %i.cl to i8
  %i.dc = and i32 %i.cm, 15
  %i.dd = xor i32 %i.dc, 4
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !18
  %i.dh = xor i32 %i.dg, 123367996                ; 2 uses
  %i.di = lshr i32 %i.dh, 4
  %i.dj = lshr i32 %1, 12
  %i.dk = xor i32 %i.dh, %i.dj
  %i.dl = and i32 %i.dk, 15
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18
  %i.dp = xor i32 %i.di, %i.do                    ; 2 uses
  %i.dq = lshr i32 %i.dp, 4
  %i.dr = xor i32 %i.dp, %1
  %i.ds = and i32 %i.dr, 15
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !18
  %i.dw = xor i32 %i.dv, %i.dq                    ; 2 uses
  %i.dx = lshr i32 %i.dw, 4
  %i.dy = lshr i32 %1, 4
  %i.dz = xor i32 %i.dw, %i.dy
  %i.ea = and i32 %i.dz, 15
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !18
  %i.ee = xor i32 %i.dx, %i.ed                    ; 2 uses
  %i.ef = lshr i32 %i.ee, 4
  %i.eg = and i32 %i.ee, 15
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !18
  %i.ek = xor i32 %i.ej, %i.ef                    ; 2 uses
  %i.el = lshr i32 %i.ek, 4
  %i.em = and i32 %i.ek, 15
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !18
  %i.eq = xor i32 %i.el, %i.ep                    ; 2 uses
  %i.er = lshr i32 %i.eq, 4
  %i.es = and i32 %i.eq, 15
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !18
  %i.ew = xor i32 %i.ev, %i.er                    ; 2 uses
  %i.ex = lshr i32 %i.ew, 4
  %i.ey = and i32 %i.ew, 15
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !18
  %i.fc = xor i32 %i.ex, %i.fb                    ; 2 uses
  %i.fd = lshr i32 %i.fc, 4
  %i.fe = xor i32 %i.fc, %i.cp
  %i.ff = and i32 %i.fe, 15
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !18
  %i.fj = xor i32 %i.fi, %i.fd                    ; 2 uses
  %i.fk = lshr i32 %i.fj, 4
  %i.fl = lshr i32 %2, 12
  %i.fm = xor i32 %i.fj, %i.fl
  %i.fn = and i32 %i.fm, 15
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !18
  %i.fr = xor i32 %i.fk, %i.fq                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 4
  %i.ft = xor i32 %i.fr, %2
  %i.fu = and i32 %i.ft, 15
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !18
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 4
  %i.ga = lshr i32 %2, 4
  %i.gb = xor i32 %i.fy, %i.ga
  %i.gc = and i32 %i.gb, 15
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !18
  %i.gg = xor i32 %i.fz, %i.gf                    ; 2 uses
  %i.gh = lshr i32 %i.gg, 4
  %i.gi = and i32 %i.gg, 15
  %i.gj = xor i32 %i.gi, 8
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !18
  %i.gn = xor i32 %i.gm, %i.gh                    ; 2 uses
  %i.go = lshr i32 %i.gn, 4
  %i.gp = and i32 %i.gn, 15
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !18
  %i.gt = xor i32 %i.go, %i.gs                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 4
  %i.gv = zext i8 %i.cu to i32                    ; 2 uses
  %i.gw = xor i32 %i.gt, %i.gv
  %i.gx = and i32 %i.gw, 15
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !18
  %i.hb = xor i32 %i.ha, %i.gu                    ; 2 uses
  %i.hc = lshr i32 %i.hb, 4
  %i.hd = and i32 %i.hb, 15
  %i.he = lshr i32 %i.gv, 4
  %i.hf = xor i32 %i.hd, %i.he
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !18
  %i.hj = xor i32 %i.hc, %i.hi                    ; 2 uses
  %i.hk = lshr i32 %i.hj, 4
  %i.hl = and i32 %i.hj, 15
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !18
  %i.hp = xor i32 %i.ho, %i.hk                    ; 2 uses
  %i.hq = lshr i32 %i.hp, 4
  %i.hr = and i32 %i.hp, 15
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !18
  %i.hv = xor i32 %i.hq, %i.hu                    ; 2 uses
  %i.hw = lshr i32 %i.hv, 4
  %i.hx = and i32 %i.hv, 15
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !18
  %i.ib = xor i32 %i.ia, %i.hw                    ; 2 uses
  %i.ic = lshr i32 %i.ib, 4
  %i.id = and i32 %i.ib, 15
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !18
  %i.ih = xor i32 %i.ic, %i.ig                    ; 2 uses
  %i.ii = lshr i32 %i.ih, 4
  %i.ij = and i32 %i.ih, 15
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !18
  %i.in = xor i32 %i.im, %i.ii                    ; 2 uses
  %i.io = lshr i32 %i.in, 4
  %i.ip = and i32 %i.in, 15
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !18
  %i.it = xor i32 %i.io, %i.is
  %i.iu = xor i32 %i.it, -1                       ; 4 uses
  %8 = lshr i32 %i.iu, 24
  %9 = trunc nuw i32 %8 to i8
  %10 = lshr i32 %i.iu, 16
  %11 = trunc i32 %10 to i8
  %12 = lshr i32 %i.iu, 8
  %13 = trunc i32 %12 to i8
  %14 = trunc i32 %i.iu to i8
  %i.iv = load ptr, ptr %i.o, align 8, !tbaa !151 ; 25 uses
  store <16 x i8> <i8 -119, i8 80, i8 78, i8 71, i8 13, i8 10, i8 26, i8 10, i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.iv, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 17
  store i8 0, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 18
  store i8 %i.cn, ptr %.sroa.27.0..sroa_idx.a, align 1
  %.sroa.29.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 19
  store i8 %i.co, ptr %.sroa.29.0..sroa_idx.a, align 1
  %.sroa.31.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 20
  store i8 0, ptr %.sroa.31.0..sroa_idx.a, align 1
  %.sroa.33.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 21
  store i8 0, ptr %.sroa.33.0..sroa_idx.a, align 1
  %.sroa.35.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 22
  store i8 %i.cq, ptr %.sroa.35.0..sroa_idx.a, align 1
  %.sroa.37.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 23
  store i8 %i.cr, ptr %.sroa.37.0..sroa_idx.a, align 1
  %.sroa.39.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store i8 8, ptr %.sroa.39.0..sroa_idx.a, align 1
  %.sroa.41.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 25
  store i8 %i.cu, ptr %.sroa.41.0..sroa_idx.a, align 1
  %.sroa.43.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 26
  store i8 0, ptr %.sroa.43.0..sroa_idx.a, align 1
  %.sroa.45.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 27
  store i8 0, ptr %.sroa.45.0..sroa_idx.a, align 1
  %.sroa.47.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  store i8 0, ptr %.sroa.47.0..sroa_idx.a, align 1
  %.sroa.49.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.iv, i64 29
  store i8 %9, ptr %.sroa.49.0..sroa_idx.a, align 1
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 30
  store i8 %11, ptr %.sroa.51.0..sroa_idx, align 1
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 31
  store i8 %13, ptr %.sroa.53.0..sroa_idx, align 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  store i8 %14, ptr %.sroa.55.0..sroa_idx, align 1
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 33
  store i8 %i.cw, ptr %.sroa.57.0..sroa_idx, align 1
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 34
  store i8 %i.cy, ptr %.sroa.58.0..sroa_idx, align 1
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 35
  store i8 %i.da, ptr %.sroa.59.0..sroa_idx, align 1
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  store i8 %i.db, ptr %.sroa.60.0..sroa_idx, align 1
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 37
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %.sroa.61.0..sroa_idx, align 1
  %i.iw = add i64 %i.ck, 16                       ; 3 uses
  %i.ix = load i64, ptr %i.m, align 8, !tbaa !152 ; 2 uses
  %i.iy = icmp ugt i64 %i.iw, %i.ix
  br i1 %i.iy, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i
  %i.iz = load i32, ptr %i.g, align 8, !tbaa !149
  %.not.i69 = icmp eq i32 %i.iz, 0
  br i1 %.not.i69, label %bb.k, label %.preheader.i70

.preheader.i70:                                   ; preds = %bb.i, %.preheader.i70
  %.025.i71 = phi i64 [ %i.jb, %.preheader.i70 ], [ %i.ix, %bb.i ]
  %i.ja = shl i64 %.025.i71, 1
  %i.jb = call i64 @llvm.umax.i64(i64 %i.ja, i64 128) ; 4 uses
  %i.jc = icmp ugt i64 %i.iw, %i.jb
  br i1 %i.jc, label %.preheader.i70, label %bb.j, !llvm.loop !1

bb.j:                                             ; preds = %.preheader.i70
  %i.jd = call ptr @realloc(ptr noundef nonnull %i.iv, i64 noundef %i.jb) #35 ; 3 uses
  %.not31.i72 = icmp eq ptr %i.jd, null
  br i1 %.not31.i72, label %bb.k, label %.critedge.i73

.critedge.i73:                                    ; preds = %bb.j
  store ptr %i.jd, ptr %i.o, align 8, !tbaa !151
  store i64 %i.jb, ptr %i.m, align 8, !tbaa !152
  %.pre32.i74 = load i64, ptr %7, align 8, !tbaa !150
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 0, ptr %4, align 8, !tbaa !117
  call void @free(ptr noundef nonnull %i.e) #33
  %i.je = load ptr, ptr %i.o, align 8, !tbaa !151
  call void @free(ptr noundef %i.je) #33
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i, %.critedge.i73
  %i.jf = phi i64 [ %.pre32.i74, %.critedge.i73 ], [ %i.ck, %.lr.ph.i ]
  %i.jg = phi ptr [ %i.jd, %.critedge.i73 ], [ %i.iv, %.lr.ph.i ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jh, ptr noundef nonnull align 1 dereferenceable(16) @.str.14, i64 16, i1 false)
  store i64 %i.iw, ptr %7, align 8, !tbaa !150
  %i.ji = load ptr, ptr %i.o, align 8, !tbaa !151 ; 2 uses
  %i.jj = load i64, ptr %4, align 8, !tbaa !117   ; 4 uses
  %i.jk = add i64 %i.jj, 4                        ; 2 uses
  %.not1617.i = icmp eq i64 %i.jk, 0
  br i1 %.not1617.i, label %mz_crc32.exit83, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %bb.l
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 37 ; 2 uses
  %xtraiter = and i64 %i.jj, 1
  %i.jm = icmp eq i64 %i.jj, -3
  br i1 %i.jm, label %.lr.ph.i77.epil.preheader, label %.lr.ph.i77.preheader.new

.lr.ph.i77.preheader.new:                         ; preds = %.lr.ph.i77.preheader
  %unroll_iter = and i64 %i.jk, -2
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77, %.lr.ph.i77.preheader.new
  %.01220.i78 = phi i32 [ -1, %.lr.ph.i77.preheader.new ], [ %i.kw, %.lr.ph.i77 ] ; 2 uses
  %.01418.i80 = phi ptr [ %i.jl, %.lr.ph.i77.preheader.new ], [ %i.kf, %.lr.ph.i77 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i77.preheader.new ], [ %niter.next.1, %.lr.ph.i77 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.01418.i80, i64 1
  %i.jo = load i8, ptr %.01418.i80, align 1, !tbaa !80
  %i.jp = lshr i32 %.01220.i78, 4
  %i.jq = zext i8 %i.jo to i32                    ; 2 uses
  %i.jr = xor i32 %.01220.i78, %i.jq
  %i.js = and i32 %i.jr, 15
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !18
  %i.jw = xor i32 %i.jv, %i.jp                    ; 2 uses
  %i.jx = lshr i32 %i.jw, 4
  %i.jy = and i32 %i.jw, 15
  %i.jz = lshr i32 %i.jq, 4
  %i.ka = xor i32 %i.jy, %i.jz
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !18
  %i.ke = xor i32 %i.jx, %i.kd                    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.01418.i80, i64 2 ; 2 uses
  %i.kg = load i8, ptr %i.jn, align 1, !tbaa !80
  %i.kh = lshr i32 %i.ke, 4
  %i.ki = zext i8 %i.kg to i32                    ; 2 uses
  %i.kj = xor i32 %i.ke, %i.ki
  %i.kk = and i32 %i.kj, 15
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !18
  %i.ko = xor i32 %i.kn, %i.kh                    ; 2 uses
  %i.kp = lshr i32 %i.ko, 4
  %i.kq = and i32 %i.ko, 15
  %i.kr = lshr i32 %i.ki, 4
  %i.ks = xor i32 %i.kq, %i.kr
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !18
  %i.kw = xor i32 %i.kp, %i.kv                    ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i77, !llvm.loop !0

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i77
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i77.epil.preheader

.lr.ph.i77.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i77.preheader
  %.01220.i78.epil.init = phi i32 [ -1, %.lr.ph.i77.preheader ], [ %i.kw, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.01418.i80.epil.init = phi ptr [ %i.jl, %.lr.ph.i77.preheader ], [ %i.kf, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod123 = trunc i64 %i.jj to i1
  call void @llvm.assume(i1 %lcmp.mod123)
  %i.kx = load i8, ptr %.01418.i80.epil.init, align 1, !tbaa !80
  %i.ky = lshr i32 %.01220.i78.epil.init, 4
  %i.kz = zext i8 %i.kx to i32                    ; 2 uses
  %i.la = xor i32 %.01220.i78.epil.init, %i.kz
  %i.lb = and i32 %i.la, 15
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !18
  %i.lf = xor i32 %i.le, %i.ky                    ; 2 uses
  %i.lg = lshr i32 %i.lf, 4
  %i.lh = and i32 %i.lf, 15
  %i.li = lshr i32 %i.kz, 4
  %i.lj = xor i32 %i.lh, %i.li
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !18
  %i.ln = xor i32 %i.lg, %i.lm
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i77.epil.preheader
  %.lcssa = phi i32 [ %i.kw, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ln, %.lr.ph.i77.epil.preheader ]
  %i.lo = xor i32 %.lcssa, -1
  br label %mz_crc32.exit83

mz_crc32.exit83:                                  ; preds = %bb.l, %._crit_edge.loopexit.i
  %.012.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.lo, %._crit_edge.loopexit.i ] ; 4 uses
  %i.lp = lshr i32 %.012.lcssa.i, 24
  %i.lq = trunc nuw i32 %i.lp to i8
  %i.lr = getelementptr inbounds i8, ptr %i.ji, i64 %i.ck
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !80
  %i.ls = lshr i32 %.012.lcssa.i, 16
  %i.lt = trunc i32 %i.ls to i8
  %i.lu = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.lv = load i64, ptr %7, align 8, !tbaa !150
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lv
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -15
  store i8 %i.lt, ptr %i.lx, align 1, !tbaa !80
  %i.ly = lshr i32 %.012.lcssa.i, 8
  %i.lz = trunc i32 %i.ly to i8
  %i.ma = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.mb = load i64, ptr %7, align 8, !tbaa !150
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -14
  store i8 %i.lz, ptr %i.md, align 1, !tbaa !80
  %i.me = trunc i32 %.012.lcssa.i to i8
  %i.mf = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.mg = load i64, ptr %7, align 8, !tbaa !150
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -13
  store i8 %i.me, ptr %i.mi, align 1, !tbaa !80
  %i.mj = load i64, ptr %4, align 8, !tbaa !117
  %i.mk = add i64 %i.mj, 57
  store i64 %i.mk, ptr %4, align 8, !tbaa !117
  call void @free(ptr noundef nonnull %i.e) #33
  %i.ml = load ptr, ptr %i.o, align 8, !tbaa !151
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %mz_crc32.exit83, %bb.k, %bb.h, %bb.c
  %.054 = phi ptr [ null, %bb.c ], [ null, %bb.h ], [ %i.ml, %mz_crc32.exit83 ], [ null, %bb.k ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret ptr %.054
}

; Function Attrs: nounwind uwtable
define hidden ptr @tdefl_write_image_to_png_file_in_memory(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 8)) %4) local_unnamed_addr #5 !guid !391 {
bb.a:
  %i.a = tail call ptr @tdefl_write_image_to_png_file_in_memory_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 6, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mz_zip_reader_init(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 !guid !392 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155
end_hunk_0
begin_hunk_1_@zip_central_dir_delete:bb.a
  %index13 = phi i64 [ 0, %vector.ph8 ], [ %index.next16, %vector.body12 ] ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %index13 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load14 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !18
  %wide.load15 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !18
  %i.bd = sub <4 x i32> %wide.load14, %broadcast.splat11
  %i.be = sub <4 x i32> %wide.load15, %broadcast.splat11
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !18
  store <4 x i32> %i.be, ptr %i.bc, align 4, !tbaa !18
  %index.next16 = add nuw i64 %index13, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next16, %n.vec9
  br i1 %i.bf, label %middle.block17, label %vector.body12, !llvm.loop !581

middle.block17:                                   ; preds = %vector.body12
  %cmp.n18 = icmp eq i64 %i.ay, %n.vec9
  br i1 %cmp.n18, label %.loopexit.i, label %scalar.ph6.preheader

scalar.ph6.preheader:                             ; preds = %.lr.ph57.i, %middle.block17
  %indvars.iv59.i.ph = phi i64 [ %indvars.iv78, %.lr.ph57.i ], [ %i.az, %middle.block17 ]
  br label %scalar.ph6

scalar.ph6:                                       ; preds = %scalar.ph6.preheader, %scalar.ph6
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %scalar.ph6 ], [ %indvars.iv59.i.ph, %scalar.ph6.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv59.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.bi = sub i32 %i.bh, %.048.i
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !18
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %.loopexit.i, label %scalar.ph6, !llvm.loop !582

.loopexit.i:                                      ; preds = %scalar.ph6, %scalar.ph, %middle.block17, %middle.block, %bb.f, %bb.g, %.loopexit54.i
  %i.bj = add i64 %.049.i, %i.w
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !216
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %bb.b, %.loopexit.i
  %i.bk = icmp sgt i32 %2, %i.q
  br i1 %i.bk, label %.preheader63.backedge, label %.preheader59.lr.ph

.preheader59:                                     ; preds = %._crit_edge, %.preheader59.lr.ph
  %.05070 = phi i32 [ 0, %.preheader59.lr.ph ], [ %i.co, %._crit_edge ] ; 3 uses
  %.369 = phi i64 [ 0, %.preheader59.lr.ph ], [ %indvars.iv84, %._crit_edge ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader59
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.h ], [ %.369, %.preheader59 ] ; 7 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv81
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %.not = icmp eq i32 %i.bm, 0
  %i.bn = icmp slt i64 %indvars.iv81, %i.f
  %i.bo = and i1 %i.bn, %.not
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  br i1 %i.bo, label %bb.h, label %bb.i, !llvm.loop !583

bb.i:                                             ; preds = %bb.h
  %i.bp = trunc nsw i64 %indvars.iv81 to i32      ; 3 uses
  %i.bq = icmp eq i32 %2, %i.bp
  br i1 %i.bq, label %._crit_edge71, label %.preheader58

.preheader58:                                     ; preds = %bb.i, %.preheader58
  %indvar22 = phi i64 [ %indvar.next23, %.preheader58 ], [ 0, %bb.i ] ; 3 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader58 ], [ %indvars.iv81, %bb.i ] ; 9 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv84
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = icmp slt i64 %indvars.iv84, %i.f
  %i.bv = and i1 %i.bu, %i.bt
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %indvar.next23 = add i64 %indvar22, 1
  br i1 %i.bv, label %.preheader58, label %.preheader, !llvm.loop !584

.preheader:                                       ; preds = %.preheader58
  %i.bw = trunc nsw i64 %indvars.iv84 to i32      ; 3 uses
  %i.bx = icmp sgt i32 %2, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.by = sub i32 %.05070, %i.bp
  %i.bz = add i32 %i.by, %i.bw
  br label %._crit_edge71

.lr.ph:                                           ; preds = %.preheader
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !181 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv81 ; 2 uses
  %i.cb = add i64 %indvars.iv84, 1
  %i.cc = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 %i.d)
  %i.cd = add i64 %indvars.iv81, %indvar22
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %min.iters.check25 = icmp ult i64 %i.ce, 8
  %i.cf = shl i64 %indvar22, 2
  %diff.check = icmp ugt i64 %i.cf, -32
  %or.cond = select i1 %min.iters.check25, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph24.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph
  %n.vec27 = and i64 %i.ce, -8                    ; 4 uses
  %i.cg = add i64 %indvars.iv84, %n.vec27
  %i.ch = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv84
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next32, %vector.body28 ] ; 3 uses
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %index29 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load30 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !18
  %wide.load31 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !18
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep, i64 %index29 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load30, ptr %i.ck, align 4, !tbaa !18
  store <4 x i32> %wide.load31, ptr %i.cl, align 4, !tbaa !18
  %index.next32 = add nuw i64 %index29, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.cm, label %middle.block33, label %vector.body28, !llvm.loop !585

middle.block33:                                   ; preds = %vector.body28
  %cmp.n34 = icmp eq i64 %i.ce, %n.vec27
  br i1 %cmp.n34, label %._crit_edge, label %scalar.ph24.preheader

scalar.ph24.preheader:                            ; preds = %.lr.ph, %middle.block33
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec27, %middle.block33 ]
  %indvars.iv90.ph = phi i64 [ %indvars.iv84, %.lr.ph ], [ %i.cg, %middle.block33 ]
  br label %scalar.ph24

._crit_edge:                                      ; preds = %scalar.ph24, %middle.block33
  %i.cn = sub i32 %.05070, %i.bp
  %i.co = add i32 %i.cn, %i.bw
  br label %.preheader59

scalar.ph24:                                      ; preds = %scalar.ph24.preheader, %scalar.ph24
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph24 ], [ %indvars.iv92.ph, %scalar.ph24.preheader ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph24 ], [ %indvars.iv90.ph, %scalar.ph24.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv90
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv92
  store i32 %i.cq, ptr %gep, align 4, !tbaa !18
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next91, %i.f
  br i1 %i.cr, label %scalar.ph24, label %._crit_edge, !llvm.loop !586

._crit_edge71:                                    ; preds = %bb.i, %bb.a, %._crit_edge.thread
  %.050.lcssa = phi i32 [ %i.bz, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05070, %bb.i ]
  %i.cs = sub nsw i32 %2, %.050.lcssa
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !588
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind allocsize(0,1) }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !82}
!1 = distinct !{!1, !82}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !82}
!5 = distinct !{null}
!6 = distinct !{!6, !82}
!7 = distinct !{!7, !82}
!8 = distinct !{!8, !82}
!9 = distinct !{!9, !82}
!10 = distinct !{!10, !82}
!11 = distinct !{!11, !82}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{i64 1874041372034620475}
!20 = !{i64 -4107827121457623324}
!21 = !{i64 -4035303515854659229}
!22 = !{i64 4569965394985283705}
!23 = !{i64 7330691840581560976}
!24 = !{i64 271658650379106508}
!25 = !{i64 -2778152941078943768}
!26 = !{i64 -4930659766541599001}
!27 = !{i64 5728615748716722258}
!28 = !{i64 -2704818536845704730}
!29 = !{i64 -1173924396709876227}
!30 = !{i64 3102174243724338540}
!31 = !{i64 8947357179152712245}
!32 = !{i64 -5333293093682381153}
!33 = !{i64 5025825484842959461}
!34 = !{i64 7408880031356159059}
!35 = !{i64 3059344931593216428}
!36 = !{i64 -8869428710581451160}
!37 = !{i64 4666254193028456079}
!38 = !{i64 -6104109744418591106}
!39 = !{i64 493108514420670983}
!40 = !{i64 -1252764299180196142}
!41 = !{i64 2397868083254040232}
!42 = !{i64 8669199340438267933}
!43 = !{i64 5521691845320879228}
!44 = !{i64 6378499771255267455}
!45 = !{i64 -1124721155732504699}
!46 = !{i64 8962684712448282150}
!47 = !{i64 -3029789484365552151}
!48 = !{i64 -5190021082582526942}
!49 = !{i64 -7151045257601986522}
!50 = !{i64 -4379616468544448016}
!51 = !{i64 -6533806345603818237}
!52 = !{i64 -7438470720864392251}
!53 = !{i64 5981440004296933512}
!54 = !{i64 -7525444642489786305}
!55 = !{i64 8776453885599774142}
!56 = !{i64 3951200783647296333}
!57 = !{i64 3580826441832009627}
!58 = !{i64 2772784893211495859}
!59 = !{i64 -1520400136637673040}
!60 = !{i64 5984170735826623290}
!61 = !{i64 -6276111967076797387}
!62 = !{i64 3442664343918730989}
!63 = !{i64 3668723386505755292}
!64 = !{i64 -3650442541989866621}
!65 = !{i64 -2678696502469437059}
!66 = !{i64 -1466484959749431215}
!67 = !{i64 902943600532335669}
!68 = !{i64 -5048117611910969732}
!69 = !{i64 -6466575904214920596}
!70 = !{i64 -8996249655105258998}
!71 = !{i64 -48421385792647422}
!72 = !{i64 8525456522938098467}
!73 = !{i64 8370482971695920057}
!74 = !{i64 8052131104831435919}
!75 = !{i64 7837602480261995814}
!76 = !{i64 -7832089950017931490}
!77 = !{i64 -3409362931178714074}
!78 = !{i64 3516898161350316613}
!79 = !{i64 6860196389787880967}
!80 = !{!16, !16, i64 0}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"any pointer", !16, i64 0}
!84 = !{!"p1 omnipotent char", !83, i64 0}
!85 = !{!"long", !16, i64 0}
!86 = !{!"p1 _ZTS17mz_internal_state", !83, i64 0}
!87 = !{!"mz_stream_s", !84, i64 0, !17, i64 8, !85, i64 16, !84, i64 24, !17, i64 32, !85, i64 40, !84, i64 48, !86, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !17, i64 88, !85, i64 96, !85, i64 104}
!88 = !{!87, !17, i64 88}
!89 = !{!87, !85, i64 96}
!90 = !{!87, !85, i64 104}
!91 = !{!87, !85, i64 16}
!92 = !{!87, !83, i64 64}
!93 = !{!87, !83, i64 72}
!94 = !{!87, !83, i64 80}
!95 = !{!87, !86, i64 56}
!96 = !{!"p1 long", !83, i64 0}
!97 = !{!"", !83, i64 0, !83, i64 8, !17, i64 16, !16, i64 20, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !83, i64 136, !83, i64 144, !96, i64 152, !96, i64 160, !17, i64 168, !84, i64 176, !85, i64 184, !85, i64 192, !16, i64 200, !16, i64 33226, !16, i64 34954, !16, i64 36682, !16, i64 37546, !16, i64 103082, !16, i64 168618, !16, i64 234154}
!98 = !{!97, !17, i64 16}
!99 = !{!97, !17, i64 28}
!100 = !{!97, !84, i64 48}
!101 = !{!97, !84, i64 56}
!102 = !{!97, !17, i64 80}
!103 = !{!97, !84, i64 64}
!104 = !{!97, !84, i64 72}
!105 = !{!97, !17, i64 132}
!106 = !{!97, !17, i64 108}
!107 = !{!97, !17, i64 104}
!108 = !{!97, !17, i64 100}
!109 = !{!97, !83, i64 0}
!110 = !{!97, !83, i64 8}
!111 = !{!87, !85, i64 40}
!112 = !{!84, !84, i64 0}
!113 = !{!87, !84, i64 24}
!114 = !{!87, !17, i64 32}
!115 = !{!87, !17, i64 8}
!116 = !{!87, !84, i64 0}
!117 = !{!85, !85, i64 0}
!118 = !{!97, !17, i64 32}
!119 = !{!97, !83, i64 136}
!120 = !{!97, !96, i64 152}
!121 = !{!97, !83, i64 144}
!122 = !{!97, !96, i64 160}
!123 = !{!97, !84, i64 176}
!124 = !{!97, !85, i64 184}
!125 = !{!97, !85, i64 192}
!126 = !{!97, !17, i64 168}
!127 = !{!97, !17, i64 116}
!128 = !{!97, !17, i64 120}
!129 = !{!97, !17, i64 112}
!130 = !{!97, !17, i64 40}
!131 = !{!97, !17, i64 44}
!132 = !{!"long long", !16, i64 0}
!133 = !{!"tinfl_decompressor_tag", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !16, i64 44, !132, i64 56, !85, i64 64, !16, i64 72, !16, i64 10536, !16, i64 10540}
!134 = !{!"", !133, i64 0, !17, i64 11000, !17, i64 11004, !17, i64 11008, !17, i64 11012, !17, i64 11016, !16, i64 11020, !17, i64 43788}
!135 = !{!134, !17, i64 0}
!136 = !{!134, !17, i64 43788}
!137 = !{!134, !17, i64 11016}
!138 = !{!133, !17, i64 0}
!139 = !{!"short", !16, i64 0}
!140 = !{!139, !139, i64 0}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = !{!97, !17, i64 36}
!144 = !{!97, !17, i64 84}
!145 = !{!97, !17, i64 92}
!146 = !{!97, !17, i64 96}
!147 = !{!"llvm.loop.unswitch.partial.disable"}
!148 = !{!"", !85, i64 0, !85, i64 8, !84, i64 16, !17, i64 24}
!149 = !{!148, !17, i64 24}
!150 = !{!148, !85, i64 0}
!151 = !{!148, !84, i64 16}
!152 = !{!148, !85, i64 8}
!153 = !{!"p1 _ZTS25mz_zip_internal_state_tag", !83, i64 0}
end_hunk_1
