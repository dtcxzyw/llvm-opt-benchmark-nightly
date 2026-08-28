Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hdrdec?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hdr_decode_frame:bb.a
  br i1 %.not109, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %hdr_get_line.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 124
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %.sroa.0.0 = phi ptr [ %.sroa.0.14, %bb.h ], [ %.sroa.0.15, %bb.o ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.ax = phi ptr [ %.sroa.0.0, %bb.i ], [ %.sroa.0.15, %bb.m ] ; 3 uses
  %.0.i133 = phi i32 [ 0, %bb.i ], [ %.1.i137, %bb.m ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.m, %i.ay
  %i.ba = icmp slt i64 %i.az, 1
  br i1 %i.ba, label %bytestream2_get_byte.exit.i134, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.bd = zext i8 %i.bc to i32
  br label %bytestream2_get_byte.exit.i134

bytestream2_get_byte.exit.i134:                   ; preds = %bb.j, %bb.k
  %.sroa.0.15 = phi ptr [ %i.bb, %bb.k ], [ %i.l, %bb.j ] ; 4 uses
  %.0.i.i135 = phi i32 [ %i.bd, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.be = icmp slt i32 %.0.i133, 511
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bytestream2_get_byte.exit.i134
  %i.bf = trunc nuw i32 %.0.i.i135 to i8
  %i.bg = add nsw i32 %.0.i133, 1
  %i.bh = sext i32 %.0.i133 to i64
  %i.bi = getelementptr inbounds i8, ptr %i.c, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bytestream2_get_byte.exit.i134
  %.1.i137 = phi i32 [ %.0.i133, %bytestream2_get_byte.exit.i134 ], [ %i.bg, %bb.l ]
  %i.bj = ptrtoint ptr %.sroa.0.15 to i64
  %i.bk = sub i64 %i.m, %i.bj
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.bl, 0
  %i.bn = icmp ne i32 %.0.i.i135, 10
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.j, label %hdr_get_line.exit141, !llvm.loop !20

hdr_get_line.exit141:                             ; preds = %bb.m
  %i.bp = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d) #9
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %hdr_get_line.exit141
  %i.br = load float, ptr %i.d, align 4, !tbaa !22
  %i.bs = fpext nsz float %i.br to double
  %i.bt = call i64 @av_d2q(double noundef %i.bs, i32 noundef 4096) #11 ; 2 uses
  %.sroa.01.0.insert.insert.i = call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32) ; 2 uses
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.aw, align 4
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.av, align 8
  br label %bb.o

bb.o:                                             ; preds = %hdr_get_line.exit141, %bb.n
  %i.bu = load i8, ptr %i.c, align 16, !tbaa !19
  switch i8 %i.bu, label %bb.i [
    i8 10, label %bb.p
    i8 0, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %i.bv = phi ptr [ %.sroa.0.15, %bb.p ], [ %.sroa.0.16, %bb.t ] ; 3 uses
  %.0.i144 = phi i32 [ 0, %bb.p ], [ %.1.i148, %bb.t ] ; 4 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.m, %i.bw
  %i.by = icmp slt i64 %i.bx, 1
  br i1 %i.by, label %bytestream2_get_byte.exit.i145, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !19
  %i.cb = zext i8 %i.ca to i32
  br label %bytestream2_get_byte.exit.i145

bytestream2_get_byte.exit.i145:                   ; preds = %bb.q, %bb.r
  %.sroa.0.16 = phi ptr [ %i.bz, %bb.r ], [ %i.l, %bb.q ] ; 3 uses
  %.0.i.i146 = phi i32 [ %i.cb, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.cc = icmp slt i32 %.0.i144, 511
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bytestream2_get_byte.exit.i145
  %i.cd = trunc nuw i32 %.0.i.i146 to i8
  %i.ce = add nsw i32 %.0.i144, 1
  %i.cf = sext i32 %.0.i144 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.c, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bytestream2_get_byte.exit.i145
  %.1.i148 = phi i32 [ %.0.i144, %bytestream2_get_byte.exit.i145 ], [ %i.ce, %bb.s ]
  %i.ch = ptrtoint ptr %.sroa.0.16 to i64
  %i.ci = sub i64 %i.m, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = icmp ne i32 %.0.i.i146, 10
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.q, label %hdr_get_line.exit152, !llvm.loop !20

hdr_get_line.exit152:                             ; preds = %bb.t
  %i.cn = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9
  %i.co = icmp eq i32 %i.cn, 2
  br i1 %i.co, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %hdr_get_line.exit152
  %i.cp = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9
  %i.cu = icmp eq i32 %i.ct, 2
  br i1 %i.cu, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.cy = icmp eq i32 %i.cx, 2
  br i1 %i.cy, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.x, %bb.v, %hdr_get_line.exit152
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.dd = shl nsw i32 %i.dc, 2
  %i.de = icmp sgt i32 %i.dd, %i.cj
  br i1 %i.de, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load i32, ptr %i.a, align 4, !tbaa !9
  %i.dg = call i32 @ff_set_dimensions(ptr noundef %0, i32 noundef %i.df, i32 noundef %i.dc) #9 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 175, ptr %i.di, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !37
  %i.dl = icmp sgt i32 %i.dk, 47
  br i1 %i.dl, label %.loopexit.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit, label %.preheader307

.preheader307:                                    ; preds = %bb.ae
  %i.do = load i32, ptr %i.b, align 4, !tbaa !9
  %.not118326 = icmp sgt i32 %i.do, 0
  br i1 %.not118326, label %.lr.ph329, label %.thread286

.lr.ph329:                                        ; preds = %.preheader307
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph329, %decompress.exit
  %i.du = phi i32 [ %.pre, %.lr.ph329 ], [ %i.rk, %decompress.exit ] ; 4 uses
  %.092328 = phi i32 [ 0, %.lr.ph329 ], [ %i.sj, %decompress.exit ] ; 9 uses
  %.sroa.0.1327 = phi ptr [ %.sroa.0.16, %.lr.ph329 ], [ %.sroa.0.6, %decompress.exit ] ; 7 uses
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !38
  %i.dw = load i32, ptr %i.dr, align 8, !tbaa !9
  %i.dx = mul nsw i32 %i.dw, %.092328
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = load ptr, ptr %1, align 8, !tbaa !38
  %i.eb = load i32, ptr %i.dq, align 8, !tbaa !9
  %i.ec = mul nsw i32 %i.eb, %.092328
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed ; 13 uses
  %i.ef = load ptr, ptr %i.ds, align 8, !tbaa !38
  %i.eg = load i32, ptr %i.dt, align 4, !tbaa !9
  %i.eh = mul nsw i32 %i.eg, %.092328
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = add i32 %i.du, -32768
  %or.cond = icmp ult i32 %i.ek, -32760
  br i1 %or.cond, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.el = icmp sgt i32 %i.du, 0
  br i1 %i.el, label %.lr.ph53.i.preheader, label %decompress.exit.threadthread-pre-split

.lr.ph53.i.preheader:                             ; preds = %bb.ag
  %scevgep528 = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.ao, %.lr.ph53.i.preheader
  %.sroa.0.17 = phi ptr [ %.sroa.0.1327, %.lr.ph53.i.preheader ], [ %.sroa.0.21, %bb.ao ] ; 3 uses
  %.03251.i = phi i32 [ 0, %.lr.ph53.i.preheader ], [ %.1.i155, %bb.ao ] ; 3 uses
  %.03450.i = phi ptr [ %i.ee, %.lr.ph53.i.preheader ], [ %.2.i, %bb.ao ] ; 13 uses
  %.03649.i = phi i32 [ %i.du, %.lr.ph53.i.preheader ], [ %.238.i, %bb.ao ] ; 4 uses
  %i.em = ptrtoint ptr %.sroa.0.17 to i64
  %i.en = sub i64 %i.m, %i.em                     ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = icmp slt i32 %i.eo, 4
  br i1 %i.ep, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph53.i
  %i.eq = icmp slt i64 %i.en, 1
  br i1 %i.eq, label %bytestream2_get_byte.exit44.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 1 ; 2 uses
  %i.es = load i8, ptr %.sroa.0.17, align 1, !tbaa !19
  %.pre369 = ptrtoint ptr %i.er to i64
  br label %bytestream2_get_byte.exit44.i

bytestream2_get_byte.exit44.i:                    ; preds = %bb.ah, %bb.ai
  %.pre-phi = phi i64 [ %i.m, %bb.ah ], [ %.pre369, %bb.ai ]
  %.sroa.0.18 = phi ptr [ %i.l, %bb.ah ], [ %i.er, %bb.ai ] ; 2 uses
  %.0.i43.i = phi i8 [ 0, %bb.ah ], [ %i.es, %bb.ai ] ; 2 uses
  store i8 %.0.i43.i, ptr %.03450.i, align 1, !tbaa !19
  %i.et = sub i64 %i.m, %.pre-phi
  %i.eu = icmp slt i64 %i.et, 1
  br i1 %i.eu, label %bytestream2_get_byte.exit42.i, label %bb.aj

bb.aj:                                            ; preds = %bytestream2_get_byte.exit44.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.18, i64 1 ; 2 uses
  %i.ew = load i8, ptr %.sroa.0.18, align 1, !tbaa !19
  %.pre370.a = ptrtoint ptr %i.ev to i64
  br label %bytestream2_get_byte.exit42.i

bytestream2_get_byte.exit42.i:                    ; preds = %bytestream2_get_byte.exit44.i, %bb.aj
  %.pre-phi371.a = phi i64 [ %i.m, %bytestream2_get_byte.exit44.i ], [ %.pre370.a, %bb.aj ]
  %.sroa.0.19 = phi ptr [ %i.l, %bytestream2_get_byte.exit44.i ], [ %i.ev, %bb.aj ] ; 2 uses
  %.0.i41.i = phi i8 [ 0, %bytestream2_get_byte.exit44.i ], [ %i.ew, %bb.aj ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.03450.i, i64 1
  store i8 %.0.i41.i, ptr %i.ex, align 1, !tbaa !19
  %i.ey = sub i64 %i.m, %.pre-phi371.a
  %i.ez = icmp slt i64 %i.ey, 1
  br i1 %i.ez, label %bytestream2_get_byte.exit40.i, label %bb.ak

bb.ak:                                            ; preds = %bytestream2_get_byte.exit42.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 1 ; 2 uses
  %i.fb = load i8, ptr %.sroa.0.19, align 1, !tbaa !19
  %.pre372.a = ptrtoint ptr %i.fa to i64
  br label %bytestream2_get_byte.exit40.i

bytestream2_get_byte.exit40.i:                    ; preds = %bytestream2_get_byte.exit42.i, %bb.ak
  %.pre-phi373.a = phi i64 [ %i.m, %bytestream2_get_byte.exit42.i ], [ %.pre372.a, %bb.ak ]
  %.sroa.0.20 = phi ptr [ %i.l, %bytestream2_get_byte.exit42.i ], [ %i.fa, %bb.ak ] ; 2 uses
  %.0.i39.i = phi i8 [ 0, %bytestream2_get_byte.exit42.i ], [ %i.fb, %bb.ak ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.03450.i, i64 2
  store i8 %.0.i39.i, ptr %i.fc, align 1, !tbaa !19
  %i.fd = sub i64 %i.m, %.pre-phi373.a
  %i.fe = icmp slt i64 %i.fd, 1
  br i1 %i.fe, label %bytestream2_get_byte.exit.i153, label %bb.al

bb.al:                                            ; preds = %bytestream2_get_byte.exit40.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.20, i64 1
  %i.fg = load i8, ptr %.sroa.0.20, align 1, !tbaa !19
  %i.fh = zext i8 %i.fg to i32
  br label %bytestream2_get_byte.exit.i153

bytestream2_get_byte.exit.i153:                   ; preds = %bytestream2_get_byte.exit40.i, %bb.al
  %.sroa.0.21 = phi ptr [ %i.ff, %bb.al ], [ %i.l, %bytestream2_get_byte.exit40.i ] ; 3 uses
  %.0.i.i154 = phi i32 [ %i.fh, %bb.al ], [ 0, %bytestream2_get_byte.exit40.i ] ; 3 uses
  %i.fi = trunc nuw i32 %.0.i.i154 to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.03450.i, i64 3
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !19
  %i.fk = icmp eq i8 %.0.i43.i, 1
  %i.fl = icmp eq i8 %.0.i41.i, 1
  %or.cond288 = select i1 %i.fk, i1 %i.fl, i1 false
  %i.fm = icmp eq i8 %.0.i39.i, 1
  %or.cond289 = select i1 %or.cond288, i1 %i.fm, i1 false
  br i1 %or.cond289, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bytestream2_get_byte.exit.i153
  %i.fn = icmp ne i32 %.0.i.i154, 0
  %4 = icmp uge ptr %.03450.i, %scevgep528
  %i.fo = select i1 %i.fn, i1 %4, i1 false
  br i1 %i.fo, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.am
  %.not.i = icmp ult ptr %.03450.i, %i.ee
  br i1 %.not.i, label %.lr.ph.preheader.split.us.i, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i
  %i.fp = shl nuw nsw i32 %.0.i.i154, %.03251.i
  %scevgep529 = getelementptr i8, ptr %.03450.i, i64 -4
  %load_initial530 = load i32, ptr %scevgep529, align 1
  br label %.lr.ph.i

.lr.ph.preheader.split.us.i:                      ; preds = %.lr.ph.preheader.i
  %5 = getelementptr inbounds i8, ptr %.03450.i, i64 -4
  %6 = load i32, ptr %5, align 1
  store i32 %6, ptr %.03450.i, align 1
  %7 = getelementptr i8, ptr %.03450.i, i64 4
  %8 = add nsw i32 %.03649.i, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.preheader.split.us.i, %bb.am
  %.137.lcssa.i = phi i32 [ %.03649.i, %bb.am ], [ %8, %.lr.ph.preheader.split.us.i ], [ %i.fs, %.lr.ph.i ]
  %.135.lcssa.i = phi ptr [ %.03450.i, %bb.am ], [ %7, %.lr.ph.preheader.split.us.i ], [ %9, %.lr.ph.i ]
  %i.fq = add nsw i32 %.03251.i, 8
  %i.fr = icmp sgt i32 %.03251.i, 8
  br i1 %i.fr, label %decompress.exit.threadthread-pre-split, label %bb.ao

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i.a, %.lr.ph.i
  %.047.i = phi i32 [ %i.ft, %.lr.ph.i ], [ %i.fp, %.lr.ph.preheader.i.a ] ; 2 uses
  %.13546.i = phi ptr [ %9, %.lr.ph.i ], [ %.03450.i, %.lr.ph.preheader.i.a ] ; 2 uses
  %.13745.i = phi i32 [ %i.fs, %.lr.ph.i ], [ %.03649.i, %.lr.ph.preheader.i.a ]
  store i32 %load_initial530, ptr %.13546.i, align 1
  %9 = getelementptr i8, ptr %.13546.i, i64 4     ; 2 uses
  %i.fs = add nsw i32 %.13745.i, -1               ; 3 uses
  %i.ft = add nsw i32 %.047.i, -1
  %i.fu = icmp samesign ugt i32 %.047.i, 1
  %i.fv = icmp ne i32 %i.fs, 0
  %or.cond.i156 = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond.i156, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !39

bb.an:                                            ; preds = %bytestream2_get_byte.exit.i153
  %10 = getelementptr i8, ptr %.03450.i, i64 4
  %i.fw = add nsw i32 %.03649.i, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i
  %.238.i = phi i32 [ %.137.lcssa.i, %._crit_edge.i ], [ %i.fw, %bb.an ] ; 2 uses
  %.2.i = phi ptr [ %.135.lcssa.i, %._crit_edge.i ], [ %10, %bb.an ]
  %.1.i155 = phi i32 [ %i.fq, %._crit_edge.i ], [ 0, %bb.an ]
  %i.fx = icmp sgt i32 %.238.i, 0
  br i1 %i.fx, label %.lr.ph53.i, label %decompress.exit.threadthread-pre-split, !llvm.loop !40

bb.ap:                                            ; preds = %bb.af
  %i.fy = ptrtoint ptr %.sroa.0.1327 to i64
  %i.fz = sub i64 %i.m, %i.fy
  %i.ga = icmp slt i64 %i.fz, 1
  br i1 %i.ga, label %.lr.ph53.i158, label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bb.ap
  %i.gb = load i8, ptr %.sroa.0.1327, align 1, !tbaa !19
  %.not110 = icmp eq i8 %i.gb, 2
  br i1 %.not110, label %bb.az, label %.lr.ph53.i158

.lr.ph53.i158:                                    ; preds = %bb.ap, %bytestream2_peek_byte.exit
  %scevgep523 = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ay, %.lr.ph53.i158
  %.sroa.0.23 = phi ptr [ %.sroa.0.1327, %.lr.ph53.i158 ], [ %.sroa.0.27, %bb.ay ] ; 3 uses
  %.03251.i159 = phi i32 [ 0, %.lr.ph53.i158 ], [ %.1.i172, %bb.ay ] ; 3 uses
  %.03450.i160 = phi ptr [ %i.ee, %.lr.ph53.i158 ], [ %.2.i171, %bb.ay ] ; 13 uses
  %.03649.i161 = phi i32 [ %i.du, %.lr.ph53.i158 ], [ %.238.i170, %bb.ay ] ; 4 uses
  %i.gc = ptrtoint ptr %.sroa.0.23 to i64
  %i.gd = sub i64 %i.m, %i.gc                     ; 2 uses
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = icmp slt i32 %i.ge, 4
  br i1 %i.gf, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gg = icmp slt i64 %i.gd, 1
  br i1 %i.gg, label %bytestream2_get_byte.exit44.i162, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.23, i64 1 ; 2 uses
  %i.gi = load i8, ptr %.sroa.0.23, align 1, !tbaa !19
  %.pre374.a = ptrtoint ptr %i.gh to i64
  br label %bytestream2_get_byte.exit44.i162

bytestream2_get_byte.exit44.i162:                 ; preds = %bb.ar, %bb.as
  %.pre-phi375.a = phi i64 [ %i.m, %bb.ar ], [ %.pre374.a, %bb.as ]
  %.sroa.0.24 = phi ptr [ %i.l, %bb.ar ], [ %i.gh, %bb.as ] ; 2 uses
  %.0.i43.i163 = phi i8 [ 0, %bb.ar ], [ %i.gi, %bb.as ] ; 2 uses
  store i8 %.0.i43.i163, ptr %.03450.i160, align 1, !tbaa !19
  %i.gj = sub i64 %i.m, %.pre-phi375.a
  %i.gk = icmp slt i64 %i.gj, 1
  br i1 %i.gk, label %bytestream2_get_byte.exit42.i164, label %bb.at

bb.at:                                            ; preds = %bytestream2_get_byte.exit44.i162
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.24, i64 1 ; 2 uses
  %i.gm = load i8, ptr %.sroa.0.24, align 1, !tbaa !19
  %.pre376.a = ptrtoint ptr %i.gl to i64
  br label %bytestream2_get_byte.exit42.i164

bytestream2_get_byte.exit42.i164:                 ; preds = %bytestream2_get_byte.exit44.i162, %bb.at
  %.pre-phi377.a = phi i64 [ %i.m, %bytestream2_get_byte.exit44.i162 ], [ %.pre376.a, %bb.at ]
  %.sroa.0.25 = phi ptr [ %i.l, %bytestream2_get_byte.exit44.i162 ], [ %i.gl, %bb.at ] ; 2 uses
  %.0.i41.i165 = phi i8 [ 0, %bytestream2_get_byte.exit44.i162 ], [ %i.gm, %bb.at ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.03450.i160, i64 1
  store i8 %.0.i41.i165, ptr %i.gn, align 1, !tbaa !19
  %i.go = sub i64 %i.m, %.pre-phi377.a
  %i.gp = icmp slt i64 %i.go, 1
  br i1 %i.gp, label %bytestream2_get_byte.exit40.i166, label %bb.au

bb.au:                                            ; preds = %bytestream2_get_byte.exit42.i164
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.25, i64 1 ; 2 uses
  %i.gr = load i8, ptr %.sroa.0.25, align 1, !tbaa !19
  %.pre378.a = ptrtoint ptr %i.gq to i64
  br label %bytestream2_get_byte.exit40.i166

bytestream2_get_byte.exit40.i166:                 ; preds = %bytestream2_get_byte.exit42.i164, %bb.au
  %.pre-phi379 = phi i64 [ %i.m, %bytestream2_get_byte.exit42.i164 ], [ %.pre378.a, %bb.au ]
  %.sroa.0.26 = phi ptr [ %i.l, %bytestream2_get_byte.exit42.i164 ], [ %i.gq, %bb.au ] ; 2 uses
  %.0.i39.i167 = phi i8 [ 0, %bytestream2_get_byte.exit42.i164 ], [ %i.gr, %bb.au ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.03450.i160, i64 2
  store i8 %.0.i39.i167, ptr %i.gs, align 1, !tbaa !19
  %i.gt = sub i64 %i.m, %.pre-phi379
  %i.gu = icmp slt i64 %i.gt, 1
  br i1 %i.gu, label %bytestream2_get_byte.exit.i168, label %bb.av

bb.av:                                            ; preds = %bytestream2_get_byte.exit40.i166
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.26, i64 1
  %i.gw = load i8, ptr %.sroa.0.26, align 1, !tbaa !19
  %i.gx = zext i8 %i.gw to i32
  br label %bytestream2_get_byte.exit.i168

bytestream2_get_byte.exit.i168:                   ; preds = %bytestream2_get_byte.exit40.i166, %bb.av
  %.sroa.0.27 = phi ptr [ %i.gv, %bb.av ], [ %i.l, %bytestream2_get_byte.exit40.i166 ] ; 3 uses
  %.0.i.i169 = phi i32 [ %i.gx, %bb.av ], [ 0, %bytestream2_get_byte.exit40.i166 ] ; 3 uses
  %i.gy = trunc nuw i32 %.0.i.i169 to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %.03450.i160, i64 3
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !19
  %i.ha = icmp eq i8 %.0.i43.i163, 1
  %i.hb = icmp eq i8 %.0.i41.i165, 1
  %or.cond290 = select i1 %i.ha, i1 %i.hb, i1 false
  %i.hc = icmp eq i8 %.0.i39.i167, 1
  %or.cond291 = select i1 %or.cond290, i1 %i.hc, i1 false
  br i1 %or.cond291, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bytestream2_get_byte.exit.i168
  %i.hd = icmp ne i32 %.0.i.i169, 0
  %11 = icmp uge ptr %.03450.i160, %scevgep523
  %i.he = select i1 %i.hd, i1 %11, i1 false
  br i1 %i.he, label %.lr.ph.preheader.i176, label %._crit_edge.i173

.lr.ph.preheader.i176:                            ; preds = %bb.aw
  %.not.i177 = icmp ult ptr %.03450.i160, %i.ee
  br i1 %.not.i177, label %.lr.ph.preheader.split.us.i183, label %.lr.ph.preheader.i176.a

.lr.ph.preheader.i176.a:                          ; preds = %.lr.ph.preheader.i176
  %i.hf = shl nuw nsw i32 %.0.i.i169, %.03251.i159
  %scevgep524 = getelementptr i8, ptr %.03450.i160, i64 -4
  %load_initial525 = load i32, ptr %scevgep524, align 1
  br label %.lr.ph.i177

.lr.ph.preheader.split.us.i183:                   ; preds = %.lr.ph.preheader.i176
  %12 = getelementptr inbounds i8, ptr %.03450.i160, i64 -4
  %13 = load i32, ptr %12, align 1
  store i32 %13, ptr %.03450.i160, align 1
  %14 = getelementptr i8, ptr %.03450.i160, i64 4
  %15 = add nsw i32 %.03649.i161, -1
  br label %._crit_edge.i173

._crit_edge.i173:                                 ; preds = %.lr.ph.i177, %.lr.ph.preheader.split.us.i183, %bb.aw
  %.137.lcssa.i174 = phi i32 [ %.03649.i161, %bb.aw ], [ %15, %.lr.ph.preheader.split.us.i183 ], [ %i.hi, %.lr.ph.i177 ]
  %.135.lcssa.i175 = phi ptr [ %.03450.i160, %bb.aw ], [ %14, %.lr.ph.preheader.split.us.i183 ], [ %16, %.lr.ph.i177 ]
  %i.hg = add nsw i32 %.03251.i159, 8
  %i.hh = icmp sgt i32 %.03251.i159, 8
  br i1 %i.hh, label %decompress.exit.threadthread-pre-split, label %bb.ay

.lr.ph.i177:                                      ; preds = %.lr.ph.preheader.i176.a, %.lr.ph.i177
  %.047.i178 = phi i32 [ %i.hj, %.lr.ph.i177 ], [ %i.hf, %.lr.ph.preheader.i176.a ] ; 2 uses
  %.13546.i180 = phi ptr [ %16, %.lr.ph.i177 ], [ %.03450.i160, %.lr.ph.preheader.i176.a ] ; 2 uses
  %.13745.i180 = phi i32 [ %i.hi, %.lr.ph.i177 ], [ %.03649.i161, %.lr.ph.preheader.i176.a ]
  store i32 %load_initial525, ptr %.13546.i180, align 1
  %16 = getelementptr i8, ptr %.13546.i180, i64 4 ; 2 uses
  %i.hi = add nsw i32 %.13745.i180, -1            ; 3 uses
  %i.hj = add nsw i32 %.047.i178, -1
  %i.hk = icmp samesign ugt i32 %.047.i178, 1
  %i.hl = icmp ne i32 %i.hi, 0
  %or.cond.i181 = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond.i181, label %.lr.ph.i177, label %._crit_edge.i173, !llvm.loop !39

bb.ax:                                            ; preds = %bytestream2_get_byte.exit.i168
  %17 = getelementptr i8, ptr %.03450.i160, i64 4
  %i.hm = add nsw i32 %.03649.i161, -1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i173
  %.238.i170 = phi i32 [ %.137.lcssa.i174, %._crit_edge.i173 ], [ %i.hm, %bb.ax ] ; 2 uses
  %.2.i171 = phi ptr [ %.135.lcssa.i175, %._crit_edge.i173 ], [ %17, %bb.ax ]
  %.1.i172 = phi i32 [ %i.hg, %._crit_edge.i173 ], [ 0, %bb.ax ]
  %i.hn = icmp sgt i32 %.238.i170, 0
  br i1 %i.hn, label %bb.aq, label %decompress.exit.threadthread-pre-split, !llvm.loop !40

bb.az:                                            ; preds = %bytestream2_peek_byte.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.1327, i64 1 ; 2 uses
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = sub i64 %i.m, %i.hp
  %i.hr = icmp slt i64 %i.hq, 1
  br i1 %i.hr, label %bytestream2_get_byte.exit129, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.1327, i64 2 ; 2 uses
  %i.ht = load i8, ptr %i.ho, align 1, !tbaa !19
  %.pre380.a = ptrtoint ptr %i.hs to i64
  br label %bytestream2_get_byte.exit129

bytestream2_get_byte.exit129:                     ; preds = %bb.az, %bb.ba
  %.pre-phi381 = phi i64 [ %i.m, %bb.az ], [ %.pre380.a, %bb.ba ]
  %.sroa.0.13 = phi ptr [ %i.l, %bb.az ], [ %i.hs, %bb.ba ] ; 2 uses
  %.0.i128 = phi i8 [ 0, %bb.az ], [ %i.ht, %bb.ba ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store i8 %.0.i128, ptr %i.hu, align 1, !tbaa !19
  %i.hv = sub i64 %i.m, %.pre-phi381
  %i.hw = icmp slt i64 %i.hv, 1
  br i1 %i.hw, label %bytestream2_get_byte.exit127, label %bb.bb

bb.bb:                                            ; preds = %bytestream2_get_byte.exit129
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 1 ; 2 uses
  %i.hy = load i8, ptr %.sroa.0.13, align 1, !tbaa !19
  %.pre382.a = ptrtoint ptr %i.hx to i64
  br label %bytestream2_get_byte.exit127

bytestream2_get_byte.exit127:                     ; preds = %bytestream2_get_byte.exit129, %bb.bb
  %.pre-phi383 = phi i64 [ %i.m, %bytestream2_get_byte.exit129 ], [ %.pre382.a, %bb.bb ]
  %.sroa.0.12 = phi ptr [ %i.l, %bytestream2_get_byte.exit129 ], [ %i.hx, %bb.bb ] ; 2 uses
  %.0.i126 = phi i8 [ 0, %bytestream2_get_byte.exit129 ], [ %i.hy, %bb.bb ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i8 %.0.i126, ptr %i.hz, align 1, !tbaa !19
  %i.ia = sub i64 %i.m, %.pre-phi383
  %i.ib = icmp slt i64 %i.ia, 1
  br i1 %i.ib, label %bytestream2_get_byte.exit125, label %bb.bc

bb.bc:                                            ; preds = %bytestream2_get_byte.exit127
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.12, i64 1
  %i.id = load i8, ptr %.sroa.0.12, align 1, !tbaa !19
  br label %bytestream2_get_byte.exit125

bytestream2_get_byte.exit125:                     ; preds = %bytestream2_get_byte.exit127, %bb.bc
  %.sroa.0.11 = phi ptr [ %i.ic, %bb.bc ], [ %i.l, %bytestream2_get_byte.exit127 ] ; 6 uses
  %.0.i124 = phi i8 [ %i.id, %bb.bc ], [ 0, %bytestream2_get_byte.exit127 ]
  %.not111 = icmp eq i8 %.0.i128, 2
  %.not112 = icmp sgt i8 %.0.i126, -1
  %or.cond292 = select i1 %.not111, i1 %.not112, i1 false
  br i1 %or.cond292, label %.preheader303.preheader, label %bb.bd

.preheader303.preheader:                          ; preds = %bytestream2_get_byte.exit125
  %i.ie = load ptr, ptr %1, align 8, !tbaa !38
  %i.if = load i32, ptr %i.dq, align 8, !tbaa !9
  %i.ig = mul nsw i32 %i.if, %.092328
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds i8, ptr %i.ie, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph318.preheader, label %decompress.exit.threadthread-pre-split

.lr.ph318.preheader:                              ; preds = %.preheader303.preheader
  %i.il = ptrtoint ptr %.sroa.0.11 to i64
  %i.im = sub i64 %i.m, %i.il                     ; 2 uses
  %i.in = trunc i64 %i.im to i32
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %.lr.ph502, label %.critedge

bb.bd:                                            ; preds = %bytestream2_get_byte.exit125
  store i8 2, ptr %i.ee, align 1, !tbaa !19
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  store i8 %.0.i124, ptr %i.ip, align 1, !tbaa !19
  %18 = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.iq = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 1
  br i1 %i.ir, label %.lr.ph53.i184.preheader, label %decompress.exit.thread

.lr.ph53.i184.preheader:                          ; preds = %bb.bd
  %i.is = add nsw i32 %i.iq, -1
  br label %.lr.ph53.i184

.lr.ph53.i184:                                    ; preds = %.lr.ph53.i184.preheader, %bb.bl
  %.sroa.0.29 = phi ptr [ %.sroa.0.33, %bb.bl ], [ %.sroa.0.11, %.lr.ph53.i184.preheader ] ; 3 uses
  %.03251.i185 = phi i32 [ %.1.i198, %bb.bl ], [ 0, %.lr.ph53.i184.preheader ] ; 3 uses
  %.03450.i188 = phi ptr [ %.2.i199, %bb.bl ], [ %18, %.lr.ph53.i184.preheader ] ; 13 uses
  %.03649.i187 = phi i32 [ %.238.i196, %bb.bl ], [ %i.is, %.lr.ph53.i184.preheader ] ; 4 uses
  %i.it = ptrtoint ptr %.sroa.0.29 to i64
  %i.iu = sub i64 %i.m, %i.it                     ; 2 uses
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = icmp slt i32 %i.iv, 4
  br i1 %i.iw, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %.lr.ph53.i184
  %i.ix = icmp slt i64 %i.iu, 1
  br i1 %i.ix, label %bytestream2_get_byte.exit44.i188, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.29, i64 1 ; 2 uses
  %i.iz = load i8, ptr %.sroa.0.29, align 1, !tbaa !19
  %.pre396 = ptrtoint ptr %i.iy to i64
  br label %bytestream2_get_byte.exit44.i188

bytestream2_get_byte.exit44.i188:                 ; preds = %bb.be, %bb.bf
  %.pre-phi397 = phi i64 [ %i.m, %bb.be ], [ %.pre396, %bb.bf ]
  %.sroa.0.30 = phi ptr [ %i.l, %bb.be ], [ %i.iy, %bb.bf ] ; 2 uses
  %.0.i43.i189 = phi i8 [ 0, %bb.be ], [ %i.iz, %bb.bf ] ; 2 uses
  store i8 %.0.i43.i189, ptr %.03450.i188, align 1, !tbaa !19
  %i.ja = sub i64 %i.m, %.pre-phi397
  %i.jb = icmp slt i64 %i.ja, 1
  br i1 %i.jb, label %bytestream2_get_byte.exit42.i190, label %bb.bg

bb.bg:                                            ; preds = %bytestream2_get_byte.exit44.i188
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.30, i64 1 ; 2 uses
  %i.jd = load i8, ptr %.sroa.0.30, align 1, !tbaa !19
  %.pre398 = ptrtoint ptr %i.jc to i64
  br label %bytestream2_get_byte.exit42.i190

bytestream2_get_byte.exit42.i190:                 ; preds = %bytestream2_get_byte.exit44.i188, %bb.bg
  %.pre-phi399 = phi i64 [ %i.m, %bytestream2_get_byte.exit44.i188 ], [ %.pre398, %bb.bg ]
  %.sroa.0.31 = phi ptr [ %i.l, %bytestream2_get_byte.exit44.i188 ], [ %i.jc, %bb.bg ] ; 2 uses
  %.0.i41.i191 = phi i8 [ 0, %bytestream2_get_byte.exit44.i188 ], [ %i.jd, %bb.bg ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.03450.i188, i64 1
  store i8 %.0.i41.i191, ptr %i.je, align 1, !tbaa !19
  %i.jf = sub i64 %i.m, %.pre-phi399
  %i.jg = icmp slt i64 %i.jf, 1
  br i1 %i.jg, label %bytestream2_get_byte.exit40.i192, label %bb.bh

bb.bh:                                            ; preds = %bytestream2_get_byte.exit42.i190
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.31, i64 1 ; 2 uses
  %i.ji = load i8, ptr %.sroa.0.31, align 1, !tbaa !19
  %.pre400 = ptrtoint ptr %i.jh to i64
  br label %bytestream2_get_byte.exit40.i192

bytestream2_get_byte.exit40.i192:                 ; preds = %bytestream2_get_byte.exit42.i190, %bb.bh
  %.pre-phi401 = phi i64 [ %i.m, %bytestream2_get_byte.exit42.i190 ], [ %.pre400, %bb.bh ]
  %.sroa.0.32 = phi ptr [ %i.l, %bytestream2_get_byte.exit42.i190 ], [ %i.jh, %bb.bh ] ; 2 uses
  %.0.i39.i193 = phi i8 [ 0, %bytestream2_get_byte.exit42.i190 ], [ %i.ji, %bb.bh ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.03450.i188, i64 2
  store i8 %.0.i39.i193, ptr %i.jj, align 1, !tbaa !19
  %i.jk = sub i64 %i.m, %.pre-phi401
  %i.jl = icmp slt i64 %i.jk, 1
  br i1 %i.jl, label %bytestream2_get_byte.exit.i194, label %bb.bi

bb.bi:                                            ; preds = %bytestream2_get_byte.exit40.i192
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.32, i64 1
  %i.jn = load i8, ptr %.sroa.0.32, align 1, !tbaa !19
  %i.jo = zext i8 %i.jn to i32
  br label %bytestream2_get_byte.exit.i194

bytestream2_get_byte.exit.i194:                   ; preds = %bytestream2_get_byte.exit40.i192, %bb.bi
  %.sroa.0.33 = phi ptr [ %i.jm, %bb.bi ], [ %i.l, %bytestream2_get_byte.exit40.i192 ] ; 3 uses
  %.0.i.i195 = phi i32 [ %i.jo, %bb.bi ], [ 0, %bytestream2_get_byte.exit40.i192 ] ; 3 uses
  %i.jp = trunc nuw i32 %.0.i.i195 to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.03450.i188, i64 3
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !19
  %i.jr = icmp eq i8 %.0.i43.i189, 1
  %i.js = icmp eq i8 %.0.i41.i191, 1
  %or.cond293 = select i1 %i.jr, i1 %i.js, i1 false
  %i.jt = icmp eq i8 %.0.i39.i193, 1
  %or.cond294 = select i1 %or.cond293, i1 %i.jt, i1 false
  br i1 %or.cond294, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bytestream2_get_byte.exit.i194
  %i.ju = icmp ne i32 %.0.i.i195, 0
  %19 = icmp uge ptr %.03450.i188, %18
  %i.jv = select i1 %i.ju, i1 %19, i1 false
  br i1 %i.jv, label %.lr.ph.preheader.i204, label %._crit_edge.i199

.lr.ph.preheader.i204:                            ; preds = %bb.bj
  %.not.i205 = icmp ult ptr %.03450.i188, %i.ee
  br i1 %.not.i205, label %.lr.ph.preheader.split.us.i211, label %.lr.ph.preheader.i202

.lr.ph.preheader.i202:                            ; preds = %.lr.ph.preheader.i204
  %i.jw = shl nuw nsw i32 %.0.i.i195, %.03251.i185
  %scevgep521 = getelementptr i8, ptr %.03450.i188, i64 -4
  %load_initial = load i32, ptr %scevgep521, align 1
  br label %.lr.ph.i203

.lr.ph.preheader.split.us.i211:                   ; preds = %.lr.ph.preheader.i204
  %20 = getelementptr inbounds i8, ptr %.03450.i188, i64 -4
  %21 = load i32, ptr %20, align 1
  store i32 %21, ptr %.03450.i188, align 1
  %22 = getelementptr i8, ptr %.03450.i188, i64 4
  %23 = add nsw i32 %.03649.i187, -1
  br label %._crit_edge.i199

._crit_edge.i199:                                 ; preds = %.lr.ph.i203, %.lr.ph.preheader.split.us.i211, %bb.bj
  %.137.lcssa.i202 = phi i32 [ %.03649.i187, %bb.bj ], [ %23, %.lr.ph.preheader.split.us.i211 ], [ %i.jz, %.lr.ph.i203 ]
  %.135.lcssa.i203 = phi ptr [ %.03450.i188, %bb.bj ], [ %22, %.lr.ph.preheader.split.us.i211 ], [ %24, %.lr.ph.i203 ]
  %i.jx = add nsw i32 %.03251.i185, 8
  %i.jy = icmp sgt i32 %.03251.i185, 8
  br i1 %i.jy, label %decompress.exit.threadthread-pre-split, label %bb.bl

.lr.ph.i203:                                      ; preds = %.lr.ph.preheader.i202, %.lr.ph.i203
  %.047.i204 = phi i32 [ %i.ka, %.lr.ph.i203 ], [ %i.jw, %.lr.ph.preheader.i202 ] ; 2 uses
  %.13546.i208 = phi ptr [ %24, %.lr.ph.i203 ], [ %.03450.i188, %.lr.ph.preheader.i202 ] ; 2 uses
  %.13745.i206 = phi i32 [ %i.jz, %.lr.ph.i203 ], [ %.03649.i187, %.lr.ph.preheader.i202 ]
  store i32 %load_initial, ptr %.13546.i208, align 1
  %24 = getelementptr i8, ptr %.13546.i208, i64 4 ; 2 uses
  %i.jz = add nsw i32 %.13745.i206, -1            ; 3 uses
  %i.ka = add nsw i32 %.047.i204, -1
  %i.kb = icmp samesign ugt i32 %.047.i204, 1
  %i.kc = icmp ne i32 %i.jz, 0
  %or.cond.i207 = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond.i207, label %.lr.ph.i203, label %._crit_edge.i199, !llvm.loop !39

bb.bk:                                            ; preds = %bytestream2_get_byte.exit.i194
  %25 = getelementptr i8, ptr %.03450.i188, i64 4
  %i.kd = add nsw i32 %.03649.i187, -1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge.i199
  %.238.i196 = phi i32 [ %.137.lcssa.i202, %._crit_edge.i199 ], [ %i.kd, %bb.bk ] ; 2 uses
  %.2.i199 = phi ptr [ %.135.lcssa.i203, %._crit_edge.i199 ], [ %25, %bb.bk ]
  %.1.i198 = phi i32 [ %i.jx, %._crit_edge.i199 ], [ 0, %bb.bk ]
  %i.ke = icmp sgt i32 %.238.i196, 0
  br i1 %i.ke, label %.lr.ph53.i184, label %decompress.exit.threadthread-pre-split, !llvm.loop !40

.lr.ph318:                                        ; preds = %.thread
  %i.kf = ptrtoint ptr %.sroa.0.5 to i64
  %i.kg = sub i64 %i.m, %i.kf                     ; 2 uses
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.lr.ph502, label %.critedge, !llvm.loop !41

.thread..critedge_crit_edge:                      ; preds = %.thread
  br label %.critedge, !llvm.loop !41

.critedge:                                        ; preds = %.lr.ph318, %.thread..critedge_crit_edge, %.lr.ph318.preheader
  %i.kj = phi i32 [ %i.ij, %.lr.ph318.preheader ], [ %i.rh, %.thread..critedge_crit_edge ], [ %i.rh, %.lr.ph318 ] ; 2 uses
  %.sroa.0.3.lcssa.ph = phi ptr [ %.sroa.0.11, %.lr.ph318.preheader ], [ %.sroa.0.5, %.thread..critedge_crit_edge ], [ %.sroa.0.5, %.lr.ph318 ] ; 4 uses
  %.pre363 = load ptr, ptr %1, align 8, !tbaa !38
  %.pre364 = load i32, ptr %i.dq, align 8, !tbaa !9
  %.pre384.a = mul nsw i32 %.pre364, %.092328
  %.pre386.a = sext i32 %.pre384.a to i64
  %i.kk = getelementptr inbounds i8, ptr %.pre363, i64 %.pre386.a
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1 ; 2 uses
  %i.km = icmp sgt i32 %i.kj, 0
  br i1 %i.km, label %.lr.ph318.1.preheader, label %decompress.exit.threadthread-pre-split

.lr.ph318.1.preheader:                            ; preds = %.critedge
  %i.kn = ptrtoint ptr %.sroa.0.3.lcssa.ph to i64
  %i.ko = sub i64 %i.m, %i.kn                     ; 2 uses
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph508, label %.critedge.1

.lr.ph318.1:                                      ; preds = %.thread.1
  %i.kr = ptrtoint ptr %.sroa.0.5.1 to i64
  %i.ks = sub i64 %i.m, %i.kr                     ; 2 uses
  %i.kt = trunc i64 %i.ks to i32
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %.lr.ph508, label %.critedge.1, !llvm.loop !41

.lr.ph508:                                        ; preds = %.lr.ph318.1.preheader, %.lr.ph318.1
  %i.kv = phi i64 [ %i.ks, %.lr.ph318.1 ], [ %i.ko, %.lr.ph318.1.preheader ]
  %.sroa.0.3316.1507 = phi ptr [ %.sroa.0.5.1, %.lr.ph318.1 ], [ %.sroa.0.3.lcssa.ph, %.lr.ph318.1.preheader ] ; 3 uses
  %.096317.1506 = phi i32 [ %.399.1, %.lr.ph318.1 ], [ 0, %.lr.ph318.1.preheader ] ; 7 uses
  %i.kw = icmp slt i64 %i.kv, 1
  br i1 %i.kw, label %.thread.1, label %bytestream2_get_byte.exit123.1

bytestream2_get_byte.exit123.1:                   ; preds = %.lr.ph508
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.3316.1507, i64 1 ; 4 uses
  %i.ky = load i8, ptr %.sroa.0.3316.1507, align 1, !tbaa !19 ; 3 uses
  %i.kz = zext i8 %i.ky to i32                    ; 3 uses
  %i.la = icmp ugt i8 %i.ky, -128
  br i1 %i.la, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bytestream2_get_byte.exit123.1
  %.not113.1 = icmp eq i8 %i.ky, 0
  br i1 %.not113.1, label %.thread.1, label %.preheader.1

.preheader.1:                                     ; preds = %bb.bm
  %i.lb = sext i32 %.096317.1506 to i64
  %i.lc = shl nuw nsw i32 %i.kz, 2
  %i.ld = add i32 %.096317.1506, %i.lc
  br label %bb.bn

bb.bn:                                            ; preds = %bytestream2_get_byte.exit.1, %.preheader.1
  %indvars.iv.1 = phi i64 [ %i.lb, %.preheader.1 ], [ %indvars.iv.next.1, %bytestream2_get_byte.exit.1 ] ; 4 uses
  %.in.1 = phi i32 [ %i.kz, %.preheader.1 ], [ %i.le, %bytestream2_get_byte.exit.1 ]
  %.sroa.0.4310.1 = phi ptr [ %i.kx, %.preheader.1 ], [ %.sroa.0.8.1, %bytestream2_get_byte.exit.1 ] ; 4 uses
  %i.le = add nsw i32 %.in.1, -1                  ; 2 uses
  %i.lf = load i32, ptr %i.a, align 4, !tbaa !9
  %i.lg = shl nsw i32 %i.lf, 2
  %i.lh = sext i32 %i.lg to i64
  %.not115.1 = icmp slt i64 %indvars.iv.1, %i.lh
  br i1 %.not115.1, label %bb.bo, label %.thread.1.loopexit440.split.loop.exit459

bb.bo:                                            ; preds = %bb.bn
  %i.li = ptrtoint ptr %.sroa.0.4310.1 to i64
  %i.lj = sub i64 %i.m, %i.li
  %i.lk = icmp slt i64 %i.lj, 1
  br i1 %i.lk, label %bytestream2_get_byte.exit.1, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.4310.1, i64 1
  %i.lm = load i8, ptr %.sroa.0.4310.1, align 1, !tbaa !19
  br label %bytestream2_get_byte.exit.1

bytestream2_get_byte.exit.1:                      ; preds = %bb.bp, %bb.bo
  %.sroa.0.8.1 = phi ptr [ %i.ll, %bb.bp ], [ %i.l, %bb.bo ] ; 2 uses
  %.0.i119.1 = phi i8 [ %i.lm, %bb.bp ], [ 0, %bb.bo ]
  %i.ln = getelementptr inbounds i8, ptr %i.kl, i64 %indvars.iv.1
  store i8 %.0.i119.1, ptr %i.ln, align 1, !tbaa !19
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 4
  %.not114.1 = icmp eq i32 %i.le, 0
  br i1 %.not114.1, label %.thread.1, label %bb.bn, !llvm.loop !42

bb.bq:                                            ; preds = %bytestream2_get_byte.exit123.1
  %i.lo = ptrtoint ptr %i.kx to i64
  %i.lp = sub i64 %i.m, %i.lo
  %i.lq = icmp slt i64 %i.lp, 1
  br i1 %i.lq, label %bytestream2_get_byte.exit121.1, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.3316.1507, i64 2
  %i.ls = load i8, ptr %i.kx, align 1, !tbaa !19
  br label %bytestream2_get_byte.exit121.1

bytestream2_get_byte.exit121.1:                   ; preds = %bb.br, %bb.bq
  %.sroa.0.9.1 = phi ptr [ %i.lr, %bb.br ], [ %i.l, %bb.bq ] ; 3 uses
  %.0.i120.1 = phi i8 [ %i.ls, %bb.br ], [ 0, %bb.bq ]
  %i.lt = and i32 %i.kz, 127                      ; 3 uses
  %.not116312.1 = icmp eq i32 %i.lt, 0
  br i1 %.not116312.1, label %.thread.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bytestream2_get_byte.exit121.1
  %i.lu = sext i32 %.096317.1506 to i64
  %i.lv = shl nuw nsw i32 %i.lt, 2
  %i.lw = add i32 %.096317.1506, %i.lv
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.bs, %.lr.ph.preheader.1
  %indvars.iv345.1 = phi i64 [ %i.lu, %.lr.ph.preheader.1 ], [ %indvars.iv.next346.1, %bb.bs ] ; 4 uses
  %.in330.1 = phi i32 [ %i.lt, %.lr.ph.preheader.1 ], [ %i.ma, %bb.bs ]
  %i.lx = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ly = shl nsw i32 %i.lx, 2
  %i.lz = sext i32 %i.ly to i64
  %.not117.1 = icmp slt i64 %indvars.iv345.1, %i.lz
  br i1 %.not117.1, label %bb.bs, label %.thread.1.loopexit.split.loop.exit462

bb.bs:                                            ; preds = %.lr.ph.1
  %i.ma = add nsw i32 %.in330.1, -1               ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %i.kl, i64 %indvars.iv345.1
  store i8 %.0.i120.1, ptr %i.mb, align 1, !tbaa !19
  %indvars.iv.next346.1 = add nsw i64 %indvars.iv345.1, 4
  %.not116.1 = icmp eq i32 %i.ma, 0
  br i1 %.not116.1, label %.thread.1, label %.lr.ph.1, !llvm.loop !43

.thread.1.loopexit.split.loop.exit462:            ; preds = %.lr.ph.1
  %i.mc = trunc nsw i64 %indvars.iv345.1 to i32
  br label %.thread.1

.thread.1.loopexit440.split.loop.exit459:         ; preds = %bb.bn
  %i.md = trunc nsw i64 %indvars.iv.1 to i32
  br label %.thread.1

.thread.1:                                        ; preds = %bytestream2_get_byte.exit.1, %bb.bs, %.thread.1.loopexit440.split.loop.exit459, %.thread.1.loopexit.split.loop.exit462, %bytestream2_get_byte.exit121.1, %bb.bm, %.lr.ph508
  %.sroa.0.5.1 = phi ptr [ %.sroa.0.9.1, %bytestream2_get_byte.exit121.1 ], [ %i.l, %.lr.ph508 ], [ %i.kx, %bb.bm ], [ %.sroa.0.9.1, %.thread.1.loopexit.split.loop.exit462 ], [ %.sroa.0.9.1, %bb.bs ], [ %.sroa.0.4310.1, %.thread.1.loopexit440.split.loop.exit459 ], [ %.sroa.0.8.1, %bytestream2_get_byte.exit.1 ] ; 4 uses
  %.399.1 = phi i32 [ %.096317.1506, %bytestream2_get_byte.exit121.1 ], [ %.096317.1506, %.lr.ph508 ], [ %.096317.1506, %bb.bm ], [ %i.mc, %.thread.1.loopexit.split.loop.exit462 ], [ %i.lw, %bb.bs ], [ %i.md, %.thread.1.loopexit440.split.loop.exit459 ], [ %i.ld, %bytestream2_get_byte.exit.1 ] ; 2 uses
  %i.me = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %i.mf = shl nsw i32 %i.me, 2
  %i.mg = icmp slt i32 %.399.1, %i.mf
  br i1 %i.mg, label %.lr.ph318.1, label %.thread.1..critedge.1_crit_edge, !llvm.loop !41

.thread.1..critedge.1_crit_edge:                  ; preds = %.thread.1
  br label %.critedge.1, !llvm.loop !41

.critedge.1:                                      ; preds = %.lr.ph318.1, %.thread.1..critedge.1_crit_edge, %.lr.ph318.1.preheader
  %i.mh = phi i32 [ %i.kj, %.lr.ph318.1.preheader ], [ %i.me, %.thread.1..critedge.1_crit_edge ], [ %i.me, %.lr.ph318.1 ] ; 2 uses
  %.sroa.0.3.lcssa.ph.1 = phi ptr [ %.sroa.0.3.lcssa.ph, %.lr.ph318.1.preheader ], [ %.sroa.0.5.1, %.thread.1..critedge.1_crit_edge ], [ %.sroa.0.5.1, %.lr.ph318.1 ] ; 4 uses
  %.pre365 = load ptr, ptr %1, align 8, !tbaa !38
  %.pre366 = load i32, ptr %i.dq, align 8, !tbaa !9
  %.pre388.a = mul nsw i32 %.pre366, %.092328
  %.pre390 = sext i32 %.pre388.a to i64
  %i.mi = getelementptr inbounds i8, ptr %.pre365, i64 %.pre390
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2 ; 2 uses
  %i.mk = icmp sgt i32 %i.mh, 0
  br i1 %i.mk, label %.lr.ph318.2.preheader, label %decompress.exit.threadthread-pre-split

.lr.ph318.2.preheader:                            ; preds = %.critedge.1
  %i.ml = ptrtoint ptr %.sroa.0.3.lcssa.ph.1 to i64
  %i.mm = sub i64 %i.m, %i.ml                     ; 2 uses
  %i.mn = trunc i64 %i.mm to i32
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %.lr.ph515, label %.critedge.2

.lr.ph318.2:                                      ; preds = %.thread.2
  %i.mp = ptrtoint ptr %.sroa.0.5.2 to i64
  %i.mq = sub i64 %i.m, %i.mp                     ; 2 uses
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = icmp sgt i32 %i.mr, 0
  br i1 %i.ms, label %.lr.ph515, label %.critedge.2, !llvm.loop !41

.lr.ph515:                                        ; preds = %.lr.ph318.2.preheader, %.lr.ph318.2
  %i.mt = phi i64 [ %i.mq, %.lr.ph318.2 ], [ %i.mm, %.lr.ph318.2.preheader ]
  %.sroa.0.3316.2514 = phi ptr [ %.sroa.0.5.2, %.lr.ph318.2 ], [ %.sroa.0.3.lcssa.ph.1, %.lr.ph318.2.preheader ] ; 3 uses
  %.096317.2513 = phi i32 [ %.399.2, %.lr.ph318.2 ], [ 0, %.lr.ph318.2.preheader ] ; 7 uses
  %i.mu = icmp slt i64 %i.mt, 1
  br i1 %i.mu, label %.thread.2, label %bytestream2_get_byte.exit123.2

bytestream2_get_byte.exit123.2:                   ; preds = %.lr.ph515
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.3316.2514, i64 1 ; 4 uses
  %i.mw = load i8, ptr %.sroa.0.3316.2514, align 1, !tbaa !19 ; 3 uses
  %i.mx = zext i8 %i.mw to i32                    ; 3 uses
  %i.my = icmp ugt i8 %i.mw, -128
  br i1 %i.my, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bytestream2_get_byte.exit123.2
  %.not113.2 = icmp eq i8 %i.mw, 0
  br i1 %.not113.2, label %.thread.2, label %.preheader.2

.preheader.2:                                     ; preds = %bb.bt
end_hunk_0
