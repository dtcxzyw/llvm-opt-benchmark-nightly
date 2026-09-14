Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 86
begin_hunk_0_@SDL_SavePNG_IO_REAL:bb.a
    i32 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not98 = icmp eq ptr %i.j, null
  br i1 %.not98, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #13 ; 0 uses
  br label %.thread115

bb.i:                                             ; preds = %bb.g
  %.not99 = icmp ne i32 %i.f, 318769153           ; 5 uses
  br i1 %.not99, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %0, i32 noundef 318769153) #13 ; 3 uses
  %.not100 = icmp eq ptr %i.l, null
  br i1 %.not100, label %.thread115, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %i.m = phi ptr [ %i.j, %bb.i ], [ %.pre, %._crit_edge ]
  %.0 = phi ptr [ %0, %bb.i ], [ %i.l, %._crit_edge ] ; 5 uses
  %i.n = load i32, ptr %i.m, align 8              ; 5 uses
  %i.o = mul nsw i32 %i.n, 3                      ; 4 uses
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.p) #13 ; 9 uses
  %i.r = sext i32 %i.n to i64
  %i.s = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.r) #13 ; 9 uses
  %i.t = icmp ne ptr %i.q, null
  %i.u = icmp ne ptr %i.s, null
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.l, label %bb.bf

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = load i32, ptr %i.w, align 8              ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i32 %i.z, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ab, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = mul nuw nsw i64 %indvars.iv, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af ; 3 uses
  store i8 %i.ae, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %i.al, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.ao, ptr %i.ap, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.as ; 3 uses
  store i8 %i.ar, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next
  store i8 %i.bb, ptr %i.bc, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !39

bb.m:                                             ; preds = %bb.f
  %.not101 = icmp eq i32 %i.f, 376840196
  br i1 %.not101, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bd = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %0, i32 noundef 376840196) #13 ; 2 uses
  %.not102 = icmp eq ptr %i.bd, null
  br i1 %.not102, label %.thread115, label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod227 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.epil.init ; 4 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bg ; 3 uses
  store i8 %i.bf, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil.init
  store i8 %i.bp, ptr %i.bq, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.l, %.thread, %bb.m
  %.079 = phi ptr [ null, %.thread ], [ null, %bb.m ], [ %i.q, %bb.l ], [ %i.q, %.loopexit.loopexit.unr-lcssa ], [ %i.q, %.lr.ph.epil.preheader ] ; 5 uses
  %.077 = phi ptr [ null, %.thread ], [ null, %bb.m ], [ %i.s, %bb.l ], [ %i.s, %.loopexit.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ] ; 5 uses
  %.175 = phi i1 [ true, %.thread ], [ false, %bb.m ], [ %.not99, %bb.l ], [ %.not99, %.loopexit.loopexit.unr-lcssa ], [ %.not99, %.lr.ph.epil.preheader ] ; 2 uses
  %.073 = phi i32 [ 0, %.thread ], [ 0, %bb.m ], [ %i.o, %bb.l ], [ %i.o, %.loopexit.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.epil.preheader ] ; 9 uses
  %.072 = phi i32 [ 0, %.thread ], [ 0, %bb.m ], [ %i.n, %bb.l ], [ %i.n, %.loopexit.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil.preheader ] ; 8 uses
  %.1 = phi ptr [ %i.bd, %.thread ], [ %0, %bb.m ], [ %.0, %bb.l ], [ %.0, %.loopexit.loopexit.unr-lcssa ], [ %.0, %.lr.ph.epil.preheader ] ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bu = load i32, ptr %i.bt, align 8            ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.bw = load i32, ptr %i.bv, align 4            ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.by = load i32, ptr %i.bx, align 4            ; 4 uses
  %.not103 = icmp eq i32 %i.by, 0
  %.mask105 = and i32 %i.by, -268435456
  %.not104 = icmp eq i32 %.mask105, 268435456
  %or.cond109 = or i1 %.not103, %.not104
  br i1 %or.cond109, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.loopexit
  switch i32 %i.by, label %bb.o [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.o:                                             ; preds = %bb.n
  br label %switch.edge

bb.p:                                             ; preds = %.loopexit
  %i.bz = and i32 %i.by, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.n, %bb.o, %bb.n, %bb.n, %bb.n, %bb.p
  %i.ca = phi i32 [ %i.bz, %bb.p ], [ 2, %bb.n ], [ 2, %bb.n ], [ 2, %bb.n ], [ 1, %bb.o ], [ 2, %bb.n ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 319352) #13 ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread, label %bb.q

bb.q:                                             ; preds = %switch.edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  store i32 1, ptr %i.ce, align 8
  %i.cf = mul nsw i32 %i.ca, %i.bu                ; 2 uses
  %i.cg = add nsw i32 %i.cf, 1
  %i.ch = mul nsw i32 %i.cg, %i.bw
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 64)
  %narrow.i = add nuw nsw i32 %i.ci, 57
  %i.cj = zext nneg i32 %narrow.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 17 uses
  %i.cl = icmp sgt i32 %.073, 0                   ; 3 uses
  %i.cm = add nuw nsw i32 %.073, 12
  %narrow265.i = select i1 %i.cl, i32 %i.cm, i32 0
  %i.cn = zext i32 %narrow265.i to i64
  %i.co = icmp sgt i32 %.072, 0                   ; 2 uses
  %i.cp = add nuw nsw i32 %.072, 12
  %narrow287.i = select i1 %i.co, i32 %i.cp, i32 0
  %i.cq = zext i32 %narrow287.i to i64
  %storemerge.i = add nuw nsw i64 %i.cq, %i.cn
  %storemerge266.i = add nuw nsw i64 %storemerge.i, %i.cj ; 2 uses
  store i64 %storemerge266.i, ptr %i.ck, align 8
  %i.cr = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %storemerge266.i) #13 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 47 uses
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = icmp eq ptr %i.cr, null
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cu = lshr i32 %i.bu, 8                       ; 2 uses
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = trunc i32 %i.bu to i8
  %i.cx = lshr i32 %i.bw, 8                       ; 2 uses
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = trunc i32 %i.bw to i8
  %i.da = icmp eq i32 %i.ca, 1
  %or.cond.i = and i1 %i.cl, %i.da
  br i1 %or.cond.i, label %.lr.ph.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = zext nneg i32 %i.ca to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @tdefl_write_image_to_png_file_in_memory_ex.chans, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.s
  %.sroa.22.0.i = phi i8 [ %i.dd, %bb.t ], [ 3, %bb.s ] ; 2 uses
  %i.de = and i32 %i.cu, 15
  %i.df = xor i32 %i.de, 4
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = xor i32 %i.di, 123367996                ; 2 uses
  %i.dk = lshr i32 %i.dj, 4
  %i.dl = lshr i32 %i.bu, 12
  %i.dm = xor i32 %i.dj, %i.dl
  %i.dn = and i32 %i.dm, 15
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = xor i32 %i.dk, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 4
  %i.dt = xor i32 %i.dr, %i.bu
  %i.du = and i32 %i.dt, 15
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = xor i32 %i.ds, %i.dx                    ; 2 uses
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = lshr i32 %i.bu, 4
  %i.eb = xor i32 %i.dy, %i.ea
  %i.ec = and i32 %i.eb, 15
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = xor i32 %i.dz, %i.ef                    ; 2 uses
  %i.eh = lshr i32 %i.eg, 4
  %i.ei = and i32 %i.eg, 15
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = xor i32 %i.eh, %i.el                    ; 2 uses
  %i.en = lshr i32 %i.em, 4
  %i.eo = and i32 %i.em, 15
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = xor i32 %i.en, %i.er                    ; 2 uses
  %i.et = lshr i32 %i.es, 4
  %i.eu = and i32 %i.es, 15
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = xor i32 %i.et, %i.ex                    ; 2 uses
  %i.ez = lshr i32 %i.ey, 4
  %i.fa = and i32 %i.ey, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = xor i32 %i.ez, %i.fd                    ; 2 uses
  %i.ff = lshr i32 %i.fe, 4
  %i.fg = xor i32 %i.fe, %i.cx
  %i.fh = and i32 %i.fg, 15
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = xor i32 %i.ff, %i.fk                    ; 2 uses
  %i.fm = lshr i32 %i.fl, 4
  %i.fn = lshr i32 %i.bw, 12
  %i.fo = xor i32 %i.fl, %i.fn
  %i.fp = and i32 %i.fo, 15
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = xor i32 %i.fm, %i.fs                    ; 2 uses
  %i.fu = lshr i32 %i.ft, 4
  %i.fv = xor i32 %i.ft, %i.bw
  %i.fw = and i32 %i.fv, 15
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = xor i32 %i.fu, %i.fz                    ; 2 uses
  %i.gb = lshr i32 %i.ga, 4
  %i.gc = lshr i32 %i.bw, 4
  %i.gd = xor i32 %i.ga, %i.gc
  %i.ge = and i32 %i.gd, 15
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = xor i32 %i.gb, %i.gh                    ; 2 uses
  %i.gj = lshr i32 %i.gi, 4
  %i.gk = and i32 %i.gi, 15
  %i.gl = xor i32 %i.gk, 8
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = xor i32 %i.gj, %i.go                    ; 2 uses
  %i.gq = lshr i32 %i.gp, 4
  %i.gr = and i32 %i.gp, 15
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = xor i32 %i.gq, %i.gu                    ; 2 uses
  %i.gw = lshr i32 %i.gv, 4
  %i.gx = zext i8 %.sroa.22.0.i to i32            ; 2 uses
  %i.gy = xor i32 %i.gv, %i.gx
  %i.gz = and i32 %i.gy, 15
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = xor i32 %i.gw, %i.hc                    ; 2 uses
  %i.he = lshr i32 %i.hd, 4
  %i.hf = and i32 %i.hd, 15
  %i.hg = lshr i32 %i.gx, 4
  %i.hh = xor i32 %i.hf, %i.hg
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = xor i32 %i.he, %i.hk                    ; 2 uses
  %i.hm = lshr i32 %i.hl, 4
  %i.hn = and i32 %i.hl, 15
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = xor i32 %i.hm, %i.hq                    ; 2 uses
  %i.hs = lshr i32 %i.hr, 4
  %i.ht = and i32 %i.hr, 15
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = xor i32 %i.hs, %i.hw                    ; 2 uses
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = and i32 %i.hx, 15
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = xor i32 %i.hy, %i.ic                    ; 2 uses
  %i.ie = lshr i32 %i.id, 4
  %i.if = and i32 %i.id, 15
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = xor i32 %i.ie, %i.ii                    ; 2 uses
  %i.ik = lshr i32 %i.ij, 4
  %i.il = and i32 %i.ij, 15
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = xor i32 %i.ik, %i.io                    ; 2 uses
  %i.iq = lshr i32 %i.ip, 4
  %i.ir = and i32 %i.ip, 15
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = xor i32 %i.iu, %i.iq
  %i.iw = xor i32 %i.iv, -1                       ; 4 uses
  %i.ix = lshr i32 %i.iw, 24
  %i.iy = trunc nuw i32 %i.ix to i8
  %i.iz = lshr i32 %i.iw, 16
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = lshr i32 %i.iw, 8
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = trunc i32 %i.iw to i8
  %i.je = load i64, ptr %3, align 8               ; 3 uses
  %i.jf = add i64 %i.je, 33                       ; 4 uses
  %i.jg = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.jh = icmp ugt i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ji = load i32, ptr %i.ce, align 8
  %.not.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i, label %bb.w, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.u, %.preheader.i.i
end_hunk_0
