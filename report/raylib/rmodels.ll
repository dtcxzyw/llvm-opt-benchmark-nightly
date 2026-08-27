Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@_m3dstbi__png_load:bb.a
  %.0.i2.i.i.i = phi i16 [ %i.kl, %bb.av ], [ %.0.i.i.i.i, %_m3dstbi__get8.exit.i303.i.i ]
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv779.i.i
  store i16 %.0.i2.i.i.i, ptr %i.kp, align 2
  %indvars.iv.next780.i.i = add nuw nsw i64 %indvars.iv779.i.i, 1 ; 2 uses
  %exitcond434.not.i = icmp eq i64 %indvars.iv.next780.i.i, %i.jv
  br i1 %exitcond434.not.i, label %_m3dstbi__skip.exit.i.i, label %bb.at

.lr.ph579.i.i:                                    ; preds = %_m3dstbi__get16be.exit307.i.i.1, %.lr.ph579.preheader.i.i.new
  %i.kq = phi ptr [ %i.db, %.lr.ph579.preheader.i.i.new ], [ %i.lp, %_m3dstbi__get16be.exit307.i.i.1 ]
  %i.kr = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i.new ], [ %i.lq, %_m3dstbi__get16be.exit307.i.i.1 ]
  %i.ks = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i.new ], [ %i.lr, %_m3dstbi__get16be.exit307.i.i.1 ] ; 3 uses
  %indvars.iv776.i.i = phi i64 [ 0, %.lr.ph579.preheader.i.i.new ], [ %indvars.iv.next777.i.i.1, %_m3dstbi__get16be.exit307.i.i.1 ] ; 3 uses
  %niter89 = phi i64 [ 0, %.lr.ph579.preheader.i.i.new ], [ %niter89.next.1, %_m3dstbi__get16be.exit307.i.i.1 ] ; 2 uses
  %i.kt = icmp ult ptr %i.ks, %i.ax
  br i1 %i.kt, label %bb.aw, label %_m3dstbi__get8.exit.i304.i.i

bb.aw:                                            ; preds = %.lr.ph579.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 4 uses
  store ptr %i.ku, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i

_m3dstbi__get8.exit.i304.i.i:                     ; preds = %bb.aw, %.lr.ph579.i.i
  %i.kv = phi ptr [ %i.ku, %bb.aw ], [ %i.kq, %.lr.ph579.i.i ]
  %i.kw = phi ptr [ %i.ku, %bb.aw ], [ %i.kr, %.lr.ph579.i.i ]
  %i.kx = phi ptr [ %i.ku, %bb.aw ], [ %i.ks, %.lr.ph579.i.i ] ; 4 uses
  %i.ky = icmp ult ptr %i.kx, %i.ax
  br i1 %i.ky, label %bb.ax, label %_m3dstbi__get16be.exit307.i.i

bb.ax:                                            ; preds = %_m3dstbi__get8.exit.i304.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 1 ; 4 uses
  store ptr %i.kz, ptr %i.h, align 8
  %i.la = load i8, ptr %i.kx, align 1
  %i.lb = mul i8 %i.jr, %i.la
  br label %_m3dstbi__get16be.exit307.i.i

_m3dstbi__get16be.exit307.i.i:                    ; preds = %bb.ax, %_m3dstbi__get8.exit.i304.i.i
  %i.lc = phi ptr [ %i.kz, %bb.ax ], [ %i.kv, %_m3dstbi__get8.exit.i304.i.i ]
  %i.ld = phi ptr [ %i.kz, %bb.ax ], [ %i.kw, %_m3dstbi__get8.exit.i304.i.i ]
  %i.le = phi ptr [ %i.kz, %bb.ax ], [ %i.kx, %_m3dstbi__get8.exit.i304.i.i ] ; 3 uses
  %.0.i2.i306.i.i = phi i8 [ %i.lb, %bb.ax ], [ 0, %_m3dstbi__get8.exit.i304.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv776.i.i
  store i8 %.0.i2.i306.i.i, ptr %i.lf, align 1
  %i.lg = icmp ult ptr %i.le, %i.ax
  br i1 %i.lg, label %bb.ay, label %_m3dstbi__get8.exit.i304.i.i.1

bb.ay:                                            ; preds = %_m3dstbi__get16be.exit307.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 1 ; 4 uses
  store ptr %i.lh, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i.1

_m3dstbi__get8.exit.i304.i.i.1:                   ; preds = %bb.ay, %_m3dstbi__get16be.exit307.i.i
  %i.li = phi ptr [ %i.lh, %bb.ay ], [ %i.lc, %_m3dstbi__get16be.exit307.i.i ]
  %i.lj = phi ptr [ %i.lh, %bb.ay ], [ %i.ld, %_m3dstbi__get16be.exit307.i.i ]
  %i.lk = phi ptr [ %i.lh, %bb.ay ], [ %i.le, %_m3dstbi__get16be.exit307.i.i ] ; 4 uses
  %i.ll = icmp ult ptr %i.lk, %i.ax
  br i1 %i.ll, label %bb.az, label %_m3dstbi__get16be.exit307.i.i.1

bb.az:                                            ; preds = %_m3dstbi__get8.exit.i304.i.i.1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 4 uses
  store ptr %i.lm, ptr %i.h, align 8
  %i.ln = load i8, ptr %i.lk, align 1
  %i.lo = mul i8 %i.jr, %i.ln
  br label %_m3dstbi__get16be.exit307.i.i.1

_m3dstbi__get16be.exit307.i.i.1:                  ; preds = %bb.az, %_m3dstbi__get8.exit.i304.i.i.1
  %i.lp = phi ptr [ %i.lm, %bb.az ], [ %i.li, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %i.lq = phi ptr [ %i.lm, %bb.az ], [ %i.lj, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %i.lr = phi ptr [ %i.lm, %bb.az ], [ %i.lk, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %.0.i2.i306.i.i.1 = phi i8 [ %i.lo, %bb.az ], [ 0, %_m3dstbi__get8.exit.i304.i.i.1 ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv776.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  store i8 %.0.i2.i306.i.i.1, ptr %i.lt, align 1
  %indvars.iv.next777.i.i.1 = add nuw nsw i64 %indvars.iv776.i.i, 2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2
  %niter89.ncmp.1 = icmp eq i64 %niter89, %i.ju
  br i1 %niter89.ncmp.1, label %.lr.ph579.i.i.epil, label %.lr.ph579.i.i

bb.ba:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not247.i.i = icmp eq i32 %.0201.i.i, 0
  br i1 %.not247.i.i, label %bb.bb, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.lu = icmp eq i8 %.0220.i.i, 0
  %i.lv = icmp ne i32 %.0205.i.i, 0
  %or.cond.i.i = select i1 %i.lu, i1 true, i1 %i.lv
  br i1 %or.cond.i.i, label %bb.bc, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.lw = add i32 %i.de, %.0214.i.i               ; 4 uses
  %i.lx = icmp slt i32 %i.lw, %.0214.i.i
  br i1 %i.lx, label %_m3dstbi__parse_png_file.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ly = icmp ugt i32 %i.lw, %.0210.i.i
  br i1 %i.ly, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.lz = icmp eq i32 %.0210.i.i, 0
  %i.ma = tail call i32 @llvm.umax.i32(i32 %i.de, i32 4096)
  %.1211.i.i = select i1 %i.lz, i32 %i.ma, i32 %.0210.i.i
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %.2212.i.i = phi i32 [ %.1211.i.i, %bb.be ], [ %i.mc, %bb.bf ] ; 4 uses
  %i.mb = icmp ugt i32 %i.lw, %.2212.i.i
  %i.mc = shl nuw i32 %.2212.i.i, 1
  br i1 %i.mb, label %bb.bf, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.md = zext i32 %.2212.i.i to i64
  %i.me = tail call ptr @realloc(ptr noundef %i.aw, i64 noundef %i.md) #52 ; 3 uses
  %.not248.i.i = icmp eq ptr %i.me, null
  br i1 %.not248.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.me, ptr %i.f, align 8
  %.pre.i.i = load ptr, ptr %i.h, align 8
  %.pre787.i.i = load ptr, ptr %i.i, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bd
  %i.mf = phi ptr [ %i.me, %bb.bh ], [ %i.aw, %bb.bd ] ; 2 uses
  %i.mg = phi ptr [ %.pre787.i.i, %bb.bh ], [ %i.ax, %bb.bd ]
  %i.mh = phi ptr [ %.pre.i.i, %bb.bh ], [ %i.dc, %bb.bd ] ; 2 uses
  %.3213.i.i = phi i32 [ %.2212.i.i, %bb.bh ], [ %.0210.i.i, %bb.bd ]
  %i.mi = sext i32 %i.de to i64                   ; 3 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mh, i64 %i.mi
  %.not.i.i.i = icmp ugt ptr %i.mj, %i.mg
  br i1 %.not.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__getn.exit.i.i

_m3dstbi__getn.exit.i.i:                          ; preds = %bb.bi
  %i.mk = zext nneg i32 %.0214.i.i to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr align 1 %i.mh, i64 %i.mi, i1 false)
  %i.mm = load ptr, ptr %i.h, align 8
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %i.mi ; 3 uses
  store ptr %i.mn, ptr %i.h, align 8
  %.pre788.i.i = load ptr, ptr %i.i, align 8      ; 2 uses
  br label %_m3dstbi__skip.exit.i.i

bb.bj:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  %.not240.i.i = icmp ne i32 %.0201.i.i, 0
  %i.mo = icmp eq ptr %i.aw, null
  %or.cond33 = select i1 %.not240.i.i, i1 true, i1 %i.mo
  br i1 %or.cond33, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mp = load i32, ptr %0, align 8
  %i.mq = mul i32 %i.av, %i.mp
  %i.mr = add i32 %i.mq, 7
  %i.ms = lshr i32 %i.mr, 3
  %i.mt = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.mu = load i32, ptr %i.am, align 8
  %i.mv = mul i32 %i.mu, %i.mt
  %i.mw = mul i32 %i.mv, %i.ms
  %i.mx = add i32 %i.mw, %i.mt                    ; 2 uses
  store i32 %i.mx, ptr %i.d, align 4
  %i.my = call ptr @_m3dstbi_zlib_decode_malloc_guesssize_headerflag(ptr noundef nonnull %i.aw, i32 noundef %.0214.i.i, i32 noundef %i.mx, ptr noundef nonnull %i.d, i32 noundef 1) ; 4 uses
  store ptr %i.my, ptr %i.e, align 8
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.aw) #54
  store ptr null, ptr %i.f, align 8
  %i.na = load i32, ptr %i.am, align 8            ; 2 uses
  %i.nb = add nsw i32 %i.na, 1                    ; 2 uses
  %i.nc = icmp eq i32 %i.nb, 0
  %i.nd = icmp eq i8 %.0220.i.i, 0                ; 3 uses
  %or.cond7.not243.i.i = select i1 %i.nc, i1 %i.nd, i1 false
  %i.ne = icmp ne i8 %.0217.i.i, 0
  %or.cond10.i.i = select i1 %or.cond7.not243.i.i, i1 true, i1 %i.ne
  %spec.select1067.i.i = select i1 %or.cond10.i.i, i32 %i.nb, i32 %i.na ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1067.i.i, ptr %i.nf, align 4
  %i.ng = load i32, ptr %i.d, align 4             ; 2 uses
  %i.nh = icmp eq i32 %i.av, 16
  %i.ni = zext i1 %i.nh to i32
  %i.nj = shl i32 %spec.select1067.i.i, %i.ni     ; 6 uses
  %.not.i309.i.i = icmp eq i32 %.0195.i.i, 0
  %i.nk = load i32, ptr %0, align 8               ; 4 uses
  %i.nl = load i32, ptr %i.ao, align 4            ; 5 uses
  br i1 %.not.i309.i.i, label %_m3dstbi__create_png_image.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nm = or i32 %i.nl, %i.nk
  %or.cond.not.i.i.i.i.i.i = icmp sgt i32 %i.nm, -1
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.bn, label %_m3dstbi__malloc_mad3.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.nn = icmp eq i32 %i.nl, 0
  br i1 %i.nn, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i, label %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i:         ; preds = %bb.bn
  %i.no = udiv i32 2147483647, %i.nl
  %.not23.i.i.i.i.i = icmp sgt i32 %i.nk, %i.no
  br i1 %.not23.i.i.i.i.i, label %_m3dstbi__malloc_mad3.exit.i.i.i, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i: ; preds = %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i, %bb.bn
  %i.np = mul nsw i32 %i.nl, %i.nk                ; 3 uses
  %i.nq = or i32 %i.nj, %i.np
  %or.cond.not.i10.i.i.i.i.i = icmp sgt i32 %i.nq, -1
  br i1 %or.cond.not.i10.i.i.i.i.i, label %bb.bo, label %_m3dstbi__malloc_mad3.exit.i.i.i

bb.bo:                                            ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i
  %i.nr = icmp eq i32 %i.nj, 0
  br i1 %i.nr, label %_m3dstbi__mad3sizes_valid.exit.i.i.i.i, label %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i

_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i:       ; preds = %bb.bo
  %i.ns = udiv i32 2147483647, %i.nj
  %.not.i.i.i.i.i = icmp sgt i32 %i.np, %i.ns
  br i1 %.not.i.i.i.i.i, label %_m3dstbi__malloc_mad3.exit.i.i.i, label %_m3dstbi__mad3sizes_valid.exit.i.i.i.i

_m3dstbi__mad3sizes_valid.exit.i.i.i.i:           ; preds = %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i, %bb.bo
  %i.nt = mul nsw i32 %i.nj, %i.np
  %i.nu = sext i32 %i.nt to i64
  %i.nv = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.nu) #56
  br label %_m3dstbi__malloc_mad3.exit.i.i.i

_m3dstbi__malloc_mad3.exit.i.i.i:                 ; preds = %_m3dstbi__mad3sizes_valid.exit.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i, %bb.bm
  %.0.i.i310.i.i = phi ptr [ %i.nv, %_m3dstbi__mad3sizes_valid.exit.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i ], [ null, %bb.bm ], [ null, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i ] ; 3 uses
  %i.nw = sext i32 %i.nj to i64                   ; 9 uses
  %.pre51 = load ptr, ptr %5, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %_m3dstbi__malloc_mad3.exit.i.i.i
  %i.nx = phi ptr [ %.pre51, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %i.qo, %bb.br ] ; 4 uses
  %indvars.iv106.i.i.i = phi i64 [ 0, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %indvars.iv.next107.i.i.i, %bb.br ] ; 5 uses
  %.075100.i.i.i = phi ptr [ %i.my, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.378.i.i.i, %bb.br ] ; 3 uses
  %.08498.i.i.i = phi i32 [ %i.ng, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.387.i.i.i, %bb.br ] ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xorig, i64 %indvars.iv106.i.i.i
  %i.oa = load i32, ptr %i.nz, align 4            ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xspc, i64 %indvars.iv106.i.i.i
  %i.oc = load i32, ptr %i.ob, align 4            ; 4 uses
  %i.od = xor i32 %i.oa, -1
  %i.oe = add i32 %i.ny, %i.od
  %i.of = add i32 %i.oe, %i.oc                    ; 2 uses
  %i.og = udiv i32 %i.of, %i.oc                   ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yorig, i64 %indvars.iv106.i.i.i
  %i.ok = load i32, ptr %i.oj, align 4            ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yspc, i64 %indvars.iv106.i.i.i
  %i.om = load i32, ptr %i.ol, align 4            ; 4 uses
  %i.on = xor i32 %i.ok, -1
  %i.oo = add i32 %i.oi, %i.on
  %i.op = add i32 %i.oo, %i.om                    ; 2 uses
  %i.oq = udiv i32 %i.op, %i.om                   ; 4 uses
  %i.or = icmp ule i32 %i.oc, %i.of
  %i.os = icmp ule i32 %i.om, %i.op
  %or.cond.i311.i.i = select i1 %i.or, i1 %i.os, i1 false
  br i1 %or.cond.i311.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.ou = load i32, ptr %i.ot, align 8
  %i.ov = mul i32 %i.og, %i.av
  %i.ow = mul i32 %i.ov, %i.ou
  %i.ox = add nsw i32 %i.ow, 7
  %i.oy = ashr i32 %i.ox, 3
  %i.oz = add nsw i32 %i.oy, 1
  %i.pa = mul nsw i32 %i.oz, %i.oq                ; 2 uses
  %i.pb = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef %.075100.i.i.i, i32 noundef %.08498.i.i.i, i32 noundef %spec.select1067.i.i, i32 noundef %i.og, i32 noundef %i.oq, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not90.not.i.i.i = icmp eq i32 %i.pb, 0
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  br i1 %.not90.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread.i.i, label %.preheader94.i.i.i

.preheader94.i.i.i:                               ; preds = %bb.bq
  %i.pc = icmp sgt i32 %i.oq, 0
  %i.pd = icmp sgt i32 %i.og, 0
  %or.cond101.i.i.i = and i1 %i.pd, %i.pc
  %.pre109.i.i.i = load ptr, ptr %i.g, align 8    ; 4 uses
  br i1 %or.cond101.i.i.i, label %.preheader.lr.ph.split.i.i.i, label %._crit_edge97.split.i.i.i

.preheader.lr.ph.split.i.i.i:                     ; preds = %.preheader94.i.i.i
  %i.pe = sext i32 %i.oc to i64                   ; 3 uses
  %i.pf = sext i32 %i.oa to i64                   ; 3 uses
  %i.pg = zext nneg i32 %i.og to i64              ; 3 uses
  %i.ph = zext nneg i32 %i.oq to i64
  %.pre.pre.i.i.i = load i32, ptr %.pre, align 8
  %factor.op.mul.i.i.i = mul i32 %.pre.pre.i.i.i, %i.nj
  %xtraiter91 = and i64 %i.pg, 1
  %i.pi = icmp ult i32 %i.og, 2
  %unroll_iter94 = and i64 %i.pg, 2147483646
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %lcmp.mod93 = trunc i32 %i.og to i1
  br label %.preheader.i.i.i

_m3dstbi__create_png_image.exit.thread.i.i:       ; preds = %bb.bq
  call void @free(ptr noundef %.0.i.i310.i.i) #54
  br label %_m3dstbi__parse_png_file.exit.thread51.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.split.i.i.i
  %indvars.iv103.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i ], [ %indvars.iv.next104.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.pj = trunc i64 %indvars.iv103.i.i.i to i32
  %i.pk = mul i32 %i.om, %i.pj
  %i.pl = add i32 %i.pk, %i.ok
  %.reass.i.i.i = mul i32 %factor.op.mul.i.i.i, %i.pl
  %i.pm = mul nuw nsw i64 %indvars.iv103.i.i.i, %i.pg ; 3 uses
  %i.pn = zext i32 %.reass.i.i.i to i64
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i310.i.i, i64 %i.pn ; 3 uses
  br i1 %i.pi, label %.epil.preheader90, label %.preheader.i.i.i.new

.preheader.i.i.i.new:                             ; preds = %.preheader.i.i.i, %.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %niter95 = phi i64 [ %niter95.next.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ]
  %i.pp = mul nsw i64 %indvars.iv.i.i.i, %i.pe
  %i.pq = add nsw i64 %i.pp, %i.pf
  %i.pr = mul nsw i64 %i.pq, %i.nw
  %i.ps = getelementptr inbounds i8, ptr %i.po, i64 %i.pr
  %i.pt = add nuw nsw i64 %indvars.iv.i.i.i, %i.pm
  %i.pu = mul nsw i64 %i.pt, %i.nw
  %i.pv = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.pu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ps, ptr align 1 %i.pv, i64 %i.nw, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.pw = mul nsw i64 %indvars.iv.next.i.i.i, %i.pe
  %i.px = add nsw i64 %i.pw, %i.pf
  %i.py = mul nsw i64 %i.px, %i.nw
  %i.pz = getelementptr inbounds i8, ptr %i.po, i64 %i.py
  %i.qa = add nuw nsw i64 %indvars.iv.next.i.i.i, %i.pm
  %i.qb = mul nsw i64 %i.qa, %i.nw
  %i.qc = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pz, ptr align 1 %i.qc, i64 %i.nw, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter95.next.1 = add i64 %niter95, 2           ; 2 uses
  %niter95.ncmp.1.not = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1.not, label %._crit_edge.i.i.i.unr-lcssa, label %.preheader.i.i.i.new

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.preheader.i.i.i.new
  br i1 %lcmp.mod92.not, label %._crit_edge.i.i.i, label %.epil.preheader90

.epil.preheader90:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.qd = mul nsw i64 %indvars.iv.i.i.i.epil.init, %i.pe
  %i.qe = add nsw i64 %i.qd, %i.pf
  %i.qf = mul nsw i64 %i.qe, %i.nw
  %i.qg = getelementptr inbounds i8, ptr %i.po, i64 %i.qf
  %i.qh = add nuw nsw i64 %indvars.iv.i.i.i.epil.init, %i.pm
  %i.qi = mul nsw i64 %i.qh, %i.nw
  %i.qj = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qg, ptr align 1 %i.qj, i64 %i.nw, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.epil.preheader90
  %indvars.iv.next104.i.i.i = add nuw nsw i64 %indvars.iv103.i.i.i, 1 ; 2 uses
  %i.qk = icmp samesign ult i64 %indvars.iv.next104.i.i.i, %i.ph
  br i1 %i.qk, label %.preheader.i.i.i, label %._crit_edge97.split.i.i.i

._crit_edge97.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader94.i.i.i
  call void @free(ptr noundef %.pre109.i.i.i) #54
  %i.ql = zext i32 %i.pa to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %.075100.i.i.i, i64 %i.ql
  %i.qn = sub i32 %.08498.i.i.i, %i.pa
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge97.split.i.i.i, %bb.bp
  %i.qo = phi ptr [ %i.nx, %bb.bp ], [ %.pre, %._crit_edge97.split.i.i.i ]
  %.387.i.i.i = phi i32 [ %.08498.i.i.i, %bb.bp ], [ %i.qn, %._crit_edge97.split.i.i.i ]
  %.378.i.i.i = phi ptr [ %.075100.i.i.i, %bb.bp ], [ %i.qm, %._crit_edge97.split.i.i.i ]
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next107.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread368.i.i, label %bb.bp

_m3dstbi__create_png_image.exit.thread368.i.i:    ; preds = %bb.br
  store ptr %.0.i.i310.i.i, ptr %i.g, align 8
  br label %bb.bs

_m3dstbi__create_png_image.exit.i.i:              ; preds = %bb.bl
  %i.qp = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.my, i32 noundef %i.ng, i32 noundef %spec.select1067.i.i, i32 noundef %i.nk, i32 noundef %i.nl, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not244.i.i = icmp eq i32 %i.qp, 0
  br i1 %.not244.i.i, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bs

bb.bs:                                            ; preds = %_m3dstbi__create_png_image.exit.i.i, %_m3dstbi__create_png_image.exit.thread368.i.i
  %.not245.i.i = icmp eq i8 %.0217.i.i, 0
  br i1 %.not245.i.i, label %_m3dstbi__compute_transparency16.exit.thread.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qq = load i32, ptr %i.an, align 8
  %i.qr = icmp eq i32 %i.qq, 16
  %i.qs = load i32, ptr %i.nf, align 4
  %.val.i.i = load ptr, ptr %5, align 8           ; 4 uses
  %.val274.i.i = load ptr, ptr %i.g, align 8      ; 10 uses
  %.val.val.i.i = load i32, ptr %.val.i.i, align 8
  %i.qt = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val275.i.i = load i32, ptr %i.qt, align 4
  %i.qu = mul i32 %.val.val275.i.i, %.val.val.i.i ; 15 uses
  %i.qv = icmp eq i32 %i.qs, 2                    ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.qu, 0             ; 4 uses
  br i1 %i.qr, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.qv, label %.preheader.i313.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader1.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.qy = load i16, ptr %i.c, align 2             ; 3 uses
  %i.qz = load i16, ptr %i.qw, align 2            ; 3 uses
  %i.ra = load i16, ptr %i.qx, align 2            ; 3 uses
  %xtraiter108 = and i32 %i.qu, 1
  %i.rb = icmp eq i32 %i.qu, 1
  br i1 %i.rb, label %.epil.preheader107, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter112 = and i32 %i.qu, -2
  br label %bb.bv

.preheader.i313.i.i:                              ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i.preheader.i.i

end_hunk_0
begin_hunk_1_@m3d_load:bb.a
  %i.ciq = load i32, ptr %.0.i2520, align 4
  br label %.sink.split.i2522

.sink.split.i2522:                                ; preds = %bb.rd, %bb.rc, %bb.rb
  %.sink16.i2523 = phi i32 [ %i.ciq, %bb.rd ], [ %i.cip, %bb.rc ], [ %i.cik, %bb.rb ]
  %.sink.i2524 = phi i64 [ 4, %bb.rd ], [ 2, %bb.rc ], [ 1, %bb.rb ]
  store i32 %.sink16.i2523, ptr %i.cif, align 4
  %i.cir = getelementptr inbounds nuw i8, ptr %.0.i2520, i64 %.sink.i2524
  %.pre3314 = load ptr, ptr %i.cfa, align 8
  br label %_m3d_getidx.exit2526

_m3d_getidx.exit2526:                             ; preds = %_m3d_getidx.exit2521, %.sink.split.i2522
  %i.cis = phi ptr [ %i.cib, %_m3d_getidx.exit2521 ], [ %.pre3314, %.sink.split.i2522 ] ; 3 uses
  %.0.i2525 = phi ptr [ %.0.i2520, %_m3d_getidx.exit2521 ], [ %i.cir, %.sink.split.i2522 ] ; 2 uses
  %indvars.iv.next3154 = add nuw nsw i64 %indvars.iv3153, 1 ; 2 uses
  %i.cit = getelementptr inbounds nuw [16 x i8], ptr %i.cis, i64 %indvars.iv3157
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cit, i64 4
  %i.civ = load i32, ptr %i.ciu, align 4
  %i.ciw = zext i32 %i.civ to i64
  %i.cix = icmp samesign ult i64 %indvars.iv.next3154, %i.ciw
  br i1 %i.cix, label %.lr.ph2870, label %.loopexit2730

.loopexit2730:                                    ; preds = %_m3d_getidx.exit2526, %bb.qu, %_m3d_getidx.exit2511
  %i.ciy = phi ptr [ %i.cgg, %_m3d_getidx.exit2511 ], [ %i.cgo, %bb.qu ], [ %i.cis, %_m3d_getidx.exit2526 ]
  %.38 = phi ptr [ %.0.i2510, %_m3d_getidx.exit2511 ], [ %.0.i2510, %bb.qu ], [ %.0.i2525, %_m3d_getidx.exit2526 ] ; 2 uses
  %indvars.iv.next3158 = add nuw nsw i64 %indvars.iv3157, 1
  %i.ciz = icmp ult ptr %.38, %i.lq
  br i1 %i.ciz, label %.lr.ph2875, label %.backedge.backedge

.thread2700:                                      ; preds = %bb.cs, %bb.fu, %bb.fw, %bb.fv, %bb.lv, %bb.lw, %bb.hk, %bb.hj, %bb.hi, %bb.cu, %bb.ct, %bb.cf, %bb.ce, %bb.cd, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.hl, %bb.hm, %bb.dr, %bb.ds, %bb.dt, %bb.mv, %bb.mw, %bb.mx, %bb.oz, %bb.pa, %bb.pb, %bb.qg, %bb.qf, %bb.qe
  %i.cja = load i32, ptr %i.ky, align 8           ; 2 uses
  %i.cjb = add i32 %i.cja, 1                      ; 2 uses
  store i32 %i.cjb, ptr %i.ky, align 8
  %i.cjc = load ptr, ptr %i.kz, align 8
  %i.cjd = zext i32 %i.cjb to i64
  %i.cje = shl nuw nsw i64 %i.cjd, 3
  %i.cjf = call ptr @realloc(ptr noundef %i.cjc, i64 noundef %i.cje) #52 ; 3 uses
  store ptr %i.cjf, ptr %i.kz, align 8
  %.not2174 = icmp eq ptr %i.cjf, null
  br i1 %.not2174, label %.loopexit2719, label %bb.re

bb.re:                                            ; preds = %.thread2700
  %i.cjg = zext i32 %i.cja to i64
  %i.cjh = getelementptr inbounds nuw [8 x i8], ptr %i.cjf, i64 %i.cjg
  store ptr %.020722925, ptr %i.cjh, align 8
  br label %.backedge.backedge

.critedge11:                                      ; preds = %.critedge2313, %bb.bt, %bb.bc, %bb.dz
  %.019632790 = phi i8 [ %.019632929, %bb.dz ], [ 0, %bb.bc ], [ %.019632929, %bb.bt ], [ %.019632929, %.critedge2313 ]
  %i.cji = getelementptr inbounds nuw i8, ptr %calloc3500, i64 200 ; 3 uses
  %i.cjj = load i32, ptr %i.cji, align 8
  %.not2266 = icmp eq i32 %i.cjj, 0
  br i1 %.not2266, label %.loopexit2725, label %bb.rf

bb.rf:                                            ; preds = %.critedge11
  %i.cjk = getelementptr inbounds nuw i8, ptr %calloc3500, i64 208 ; 31 uses
  %i.cjl = load ptr, ptr %i.cjk, align 8
  %.not2267 = icmp eq ptr %i.cjl, null
  br i1 %.not2267, label %.loopexit2725, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.cjm = getelementptr inbounds nuw i8, ptr %calloc3500, i64 120 ; 6 uses
  %i.cjn = load i32, ptr %i.cjm, align 8          ; 13 uses
  %i.cjo = add i32 %i.cjn, 6                      ; 2 uses
  store i32 %i.cjo, ptr %i.cjm, align 8
  %i.cjp = getelementptr inbounds nuw i8, ptr %calloc3500, i64 128 ; 30 uses
  %i.cjq = load ptr, ptr %i.cjp, align 8
  %i.cjr = zext i32 %i.cjo to i64
  %i.cjs = mul nuw nsw i64 %i.cjr, 24
  %i.cjt = call ptr @realloc(ptr noundef %i.cjq, i64 noundef %i.cjs) #52 ; 8 uses
  store ptr %i.cjt, ptr %i.cjp, align 8
  %.not2268 = icmp eq ptr %i.cjt, null
  br i1 %.not2268, label %.loopexit2719, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.cju = zext i32 %i.cjn to i64
  %i.cjv = getelementptr inbounds nuw [24 x i8], ptr %i.cjt, i64 %i.cju ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.cjv, i8 0, i64 144, i1 false)
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjv, i64 20
  store i32 -1, ptr %i.cjw, align 4
  %i.cjx = add i32 %i.cjn, 1                      ; 7 uses
  %i.cjy = zext i32 %i.cjx to i64
  %i.cjz = getelementptr inbounds nuw [24 x i8], ptr %i.cjt, i64 %i.cjy ; 2 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 20
  store i32 -1, ptr %i.cka, align 4
  %i.ckb = add i32 %i.cjn, 2                      ; 7 uses
  %i.ckc = zext i32 %i.ckb to i64
  %i.ckd = getelementptr inbounds nuw [24 x i8], ptr %i.cjt, i64 %i.ckc ; 2 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 20
  store i32 -1, ptr %i.cke, align 4
  %i.ckf = add i32 %i.cjn, 3                      ; 7 uses
  %i.ckg = zext i32 %i.ckf to i64
  %i.ckh = getelementptr inbounds nuw [24 x i8], ptr %i.cjt, i64 %i.ckg ; 2 uses
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckh, i64 20
  store i32 -1, ptr %i.cki, align 4
  %i.ckj = add i32 %i.cjn, 4                      ; 7 uses
  %i.ckk = zext i32 %i.ckj to i64
  %i.ckl = getelementptr inbounds nuw [24 x i8], ptr %i.cjt, i64 %i.ckk ; 2 uses
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 20
  store i32 -1, ptr %i.ckm, align 4
  %i.ckn = add i32 %i.cjn, 5                      ; 7 uses
  %i.cko = zext i32 %i.ckn to i64
  %i.ckp = getelementptr inbounds nuw [24 x i8], ptr %i.cjt, i64 %i.cko ; 2 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ckp, i64 20
  store i32 -1, ptr %i.ckq, align 4
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cjv, i64 4
  store float -1.000000e+00, ptr %i.ckr, align 4
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cjz, i64 8
  store float -1.000000e+00, ptr %i.cks, align 4
  store float -1.000000e+00, ptr %i.ckd, align 4
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckh, i64 4
  store float 1.000000e+00, ptr %i.ckt, align 4
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckl, i64 8
  store float 1.000000e+00, ptr %i.cku, align 4
  store float 1.000000e+00, ptr %i.ckp, align 4
  %i.ckv = load i32, ptr %i.cji, align 8          ; 3 uses
  %.not3018 = icmp eq i32 %i.ckv, 0               ; 2 uses
  br i1 %.not3018, label %._crit_edge2951, label %.lr.ph2950

.lr.ph2950:                                       ; preds = %bb.rh
  %i.ckw = load ptr, ptr %i.cjk, align 8
  %wide.trip.count3204 = zext i32 %i.ckv to i64
  br label %bb.ri

bb.ri:                                            ; preds = %.lr.ph2950, %bb.ri
  %indvars.iv3200 = phi i64 [ 0, %.lr.ph2950 ], [ %indvars.iv.next3201, %bb.ri ] ; 2 uses
  %.019802946 = phi i32 [ -2147483647, %.lr.ph2950 ], [ %spec.select2318, %bb.ri ]
  %.019862943 = phi i32 [ 2147483647, %.lr.ph2950 ], [ %.11987, %bb.ri ]
  %i.ckx = phi <2 x i32> [ splat (i32 -2147483647), %.lr.ph2950 ], [ %i.clk, %bb.ri ]
  %i.cky = phi <2 x i32> [ splat (i32 2147483647), %.lr.ph2950 ], [ %i.cll, %bb.ri ]
  %i.ckz = getelementptr inbounds nuw [48 x i8], ptr %i.ckw, i64 %indvars.iv3200 ; 4 uses
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 8
  %i.clb = load i32, ptr %i.cla, align 8          ; 2 uses
  %i.clc = getelementptr inbounds nuw i8, ptr %i.ckz, i64 20
  %i.cld = load i32, ptr %i.clc, align 4
  %i.cle = add nsw i32 %i.cld, %i.clb
  %spec.select2318 = call i32 @llvm.smax.i32(i32 %i.cle, i32 %.019802946) ; 2 uses
  %.11987 = call i32 @llvm.smin.i32(i32 %i.clb, i32 %.019862943) ; 2 uses
  %i.clf = getelementptr inbounds nuw i8, ptr %i.ckz, i64 12
  %i.clg = getelementptr inbounds nuw i8, ptr %i.ckz, i64 24
  %i.clh = load <2 x i32>, ptr %i.clf, align 4    ; 2 uses
  %i.cli = load <2 x i32>, ptr %i.clg, align 8
  %i.clj = add nsw <2 x i32> %i.cli, %i.clh
  %i.clk = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.clj, <2 x i32> %i.ckx) ; 2 uses
  %i.cll = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.clh, <2 x i32> %i.cky) ; 2 uses
  %indvars.iv.next3201 = add nuw nsw i64 %indvars.iv3200, 1 ; 2 uses
  %exitcond3205.not = icmp eq i64 %indvars.iv.next3201, %wide.trip.count3204
  br i1 %exitcond3205.not, label %._crit_edge2951, label %bb.ri

._crit_edge2951:                                  ; preds = %bb.ri, %bb.rh
  %.01986.lcssa = phi i32 [ 2147483647, %bb.rh ], [ %.11987, %bb.ri ]
  %.01980.lcssa = phi i32 [ -2147483647, %bb.rh ], [ %spec.select2318, %bb.ri ]
  %i.clm = phi <2 x i32> [ splat (i32 -2147483647), %bb.rh ], [ %i.clk, %bb.ri ]
  %i.cln = phi <2 x i32> [ splat (i32 2147483647), %bb.rh ], [ %i.cll, %bb.ri ]
  %i.clo = sub nsw i32 0, %.01986.lcssa
  %i.clp = call i32 @llvm.smax.i32(i32 %.01980.lcssa, i32 %i.clo)
  %i.clq = sub nsw <2 x i32> zeroinitializer, %i.cln
  %i.clr = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.clm, <2 x i32> %i.clq) ; 2 uses
  %i.cls = extractelement <2 x i32> %i.clr, i64 0
  %spec.select2319 = call i32 @llvm.umax.i32(i32 %i.cls, i32 %i.clp)
  %i.clt = extractelement <2 x i32> %i.clr, i64 1
  %.102062 = call i32 @llvm.umax.i32(i32 %i.clt, i32 %spec.select2319) ; 3 uses
  %.112063 = call i32 @llvm.umax.i32(i32 %.102062, i32 1)
  %i.clu = uitofp i32 %.112063 to float
  %i.clv = fdiv float 1.000000e+00, %i.clu        ; 24 uses
  %i.clw = icmp ugt i32 %.102062, 253
  br i1 %i.clw, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %._crit_edge2951
  %i.clx = icmp ugt i32 %.102062, 65533
  %spec.select2320 = select i1 %i.clx, i8 4, i8 2
  store i8 %spec.select2320, ptr %i.dq, align 2
  br label %bb.rk

bb.rk:                                            ; preds = %._crit_edge2951, %bb.rj
  br i1 %.not3018, label %.loopexit2725, label %.lr.ph2988

.lr.ph2988:                                       ; preds = %bb.rk
  %i.cly = getelementptr inbounds nuw i8, ptr %calloc3500, i64 184
  %i.clz = getelementptr inbounds nuw i8, ptr %calloc3500, i64 192 ; 3 uses
  %i.cma = getelementptr inbounds nuw i8, ptr %calloc3500, i64 168 ; 4 uses
  %i.cmb = getelementptr inbounds nuw i8, ptr %calloc3500, i64 176 ; 75 uses
  br label %bb.rl

bb.rl:                                            ; preds = %.lr.ph2988, %._crit_edge2983.split
  %i.cmc = phi i32 [ %i.ckv, %.lr.ph2988 ], [ %i.dlt, %._crit_edge2983.split ] ; 2 uses
  %indvars.iv3222 = phi i64 [ 0, %.lr.ph2988 ], [ %indvars.iv.next3223, %._crit_edge2983.split ] ; 30 uses
  %i.cmd = load ptr, ptr %i.cjk, align 8
  %i.cme = getelementptr inbounds nuw [48 x i8], ptr %i.cmd, i64 %indvars.iv3222 ; 3 uses
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cme, i64 20
  %i.cmg = load i32, ptr %i.cmf, align 4          ; 6 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cme, i64 28
  %i.cmi = load i32, ptr %i.cmh, align 4          ; 4 uses
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cme, i64 24
  %i.cmk = load i32, ptr %i.cmj, align 8          ; 3 uses
  %i.cml = icmp sgt i32 %i.cmk, 0
  br i1 %i.cml, label %.preheader2724.lr.ph, label %._crit_edge2983.split

.preheader2724.lr.ph:                             ; preds = %bb.rl
  %i.cmm = icmp sgt i32 %i.cmi, 0
  %i.cmn = mul nsw i32 %i.cmi, %i.cmg             ; 2 uses
  %i.cmo = add nsw i32 %i.cmk, -1
  %i.cmp = add nsw i32 %i.cmi, -1
  %i.cmq = add nsw i32 %i.cmg, -1
  %i.cmr = icmp sgt i32 %i.cmg, 0
  %or.cond3594 = select i1 %i.cmm, i1 %i.cmr, i1 false
  br i1 %or.cond3594, label %.preheader2724.us, label %._crit_edge2983.split

.preheader2724.us:                                ; preds = %.preheader2724.lr.ph, %._crit_edge2977.split.us.us
  %.019742981.us = phi i32 [ %i.cmt, %._crit_edge2977.split.us.us ], [ 0, %.preheader2724.lr.ph ] ; 7 uses
  %.1220462980.us = phi i32 [ %i.dls, %._crit_edge2977.split.us.us ], [ 0, %.preheader2724.lr.ph ]
  %.not2281.us = icmp eq i32 %.019742981.us, 0
  %i.cms = icmp eq i32 %.019742981.us, %i.cmo
  %i.cmt = add nuw nsw i32 %.019742981.us, 1      ; 6 uses
  br label %.preheader2722.us.us

.preheader2722.us.us:                             ; preds = %._crit_edge2973.us.us, %.preheader2724.us
  %.019732976.us.us = phi i32 [ 0, %.preheader2724.us ], [ %i.cmv, %._crit_edge2973.us.us ] ; 7 uses
  %.1320472975.us.us = phi i32 [ %.1220462980.us, %.preheader2724.us ], [ %i.dls, %._crit_edge2973.us.us ]
  %.not2283.us.us = icmp eq i32 %.019732976.us.us, 0
  %i.cmu = icmp eq i32 %.019732976.us.us, %i.cmp
  %i.cmv = add nuw nsw i32 %.019732976.us.us, 1   ; 6 uses
  br label %bb.rm

bb.rm:                                            ; preds = %bb.tl, %.preheader2722.us.us
  %.019752970.us.us = phi i32 [ 0, %.preheader2722.us.us ], [ %i.dlr, %bb.tl ] ; 11 uses
  %.1420482967.us.us = phi i32 [ %.1320472975.us.us, %.preheader2722.us.us ], [ %i.dls, %bb.tl ] ; 8 uses
  %i.cmw = load ptr, ptr %i.cjk, align 8
  %i.cmx = getelementptr inbounds nuw [48 x i8], ptr %i.cmw, i64 %indvars.iv3222
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmx, i64 40
  %i.cmz = load ptr, ptr %i.cmy, align 8          ; 7 uses
  %i.cna = zext i32 %.1420482967.us.us to i64     ; 4 uses
  %i.cnb = getelementptr inbounds nuw [2 x i8], ptr %i.cmz, i64 %i.cna
  %i.cnc = load i16, ptr %i.cnb, align 2
  %i.cnd = zext i16 %i.cnc to i32
  %i.cne = load i32, ptr %i.cly, align 8          ; 7 uses
  %i.cnf = icmp ugt i32 %i.cne, %i.cnd
  br i1 %i.cnf, label %bb.rn, label %bb.tl

bb.rn:                                            ; preds = %bb.rm
  br i1 %.not2281.us, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.cng = sub i32 %.1420482967.us.us, %i.cmn
  %i.cnh = zext i32 %i.cng to i64
  %i.cni = getelementptr inbounds nuw [2 x i8], ptr %i.cmz, i64 %i.cnh
  %i.cnj = load i16, ptr %i.cni, align 2
  %i.cnk = zext i16 %i.cnj to i32
  %.not2282.us.us = icmp ugt i32 %i.cne, %i.cnk
  br i1 %.not2282.us.us, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.rn
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro
  %.21991.us.us = phi i32 [ 1, %bb.rp ], [ 0, %bb.ro ] ; 2 uses
  %i.cnl = phi <2 x i32> [ <i32 15, i32 1>, %bb.rp ], [ zeroinitializer, %bb.ro ] ; 2 uses
  br i1 %.not2283.us.us, label %bb.rs, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.cnm = sub i32 %.1420482967.us.us, %i.cmg
  %i.cnn = zext i32 %i.cnm to i64
  %i.cno = getelementptr inbounds nuw [2 x i8], ptr %i.cmz, i64 %i.cnn
  %i.cnp = load i16, ptr %i.cno, align 2
  %i.cnq = zext i16 %i.cnp to i32
  %.not2284.us.us = icmp ugt i32 %i.cne, %i.cnq
  br i1 %.not2284.us.us, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.rq
  %i.cnr = add nuw nsw i32 %.21991.us.us, 1
  %i.cns = or <2 x i32> %i.cnl, <i32 51, i32 2>
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr
  %.42001.us.us = phi i32 [ %i.cnr, %bb.rs ], [ %.21991.us.us, %bb.rr ] ; 2 uses
  %i.cnt = phi <2 x i32> [ %i.cns, %bb.rs ], [ %i.cnl, %bb.rr ] ; 2 uses
  %.not2285.us.us = icmp eq i32 %.019752970.us.us, 0
  br i1 %.not2285.us.us, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.cnu = add i32 %.1420482967.us.us, -1
  %i.cnv = zext i32 %i.cnu to i64
  %i.cnw = getelementptr inbounds nuw [2 x i8], ptr %i.cmz, i64 %i.cnv
  %i.cnx = load i16, ptr %i.cnw, align 2
  %i.cny = zext i16 %i.cnx to i32
  %.not2286.us.us = icmp ugt i32 %i.cne, %i.cny
  br i1 %.not2286.us.us, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rt
  %i.cnz = add nuw nsw i32 %.42001.us.us, 1
  %i.coa = or <2 x i32> %i.cnt, <i32 85, i32 4>
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  %.52002.us.us = phi i32 [ %i.cnz, %bb.rv ], [ %.42001.us.us, %bb.ru ] ; 2 uses
  %i.cob = phi <2 x i32> [ %i.coa, %bb.rv ], [ %i.cnt, %bb.ru ] ; 2 uses
  br i1 %i.cms, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.coc = add i32 %.1420482967.us.us, %i.cmn
  %i.cod = zext i32 %i.coc to i64
  %i.coe = getelementptr inbounds nuw [2 x i8], ptr %i.cmz, i64 %i.cod
  %i.cof = load i16, ptr %i.coe, align 2
  %i.cog = zext i16 %i.cof to i32
  %.not2287.us.us = icmp ugt i32 %i.cne, %i.cog
  br i1 %.not2287.us.us, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw
  %i.coh = add nuw nsw i32 %.52002.us.us, 1
  %i.coi = or <2 x i32> %i.cob, <i32 240, i32 8>
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rx
  %.62003.us.us = phi i32 [ %i.coh, %bb.ry ], [ %.52002.us.us, %bb.rx ] ; 2 uses
  %i.coj = phi <2 x i32> [ %i.coi, %bb.ry ], [ %i.cob, %bb.rx ] ; 2 uses
  br i1 %i.cmu, label %bb.sb, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.cok = add i32 %.1420482967.us.us, %i.cmg
  %i.col = zext i32 %i.cok to i64
  %i.com = getelementptr inbounds nuw [2 x i8], ptr %i.cmz, i64 %i.col
  %i.con = load i16, ptr %i.com, align 2
  %i.coo = zext i16 %i.con to i32
  %.not2288.us.us = icmp ugt i32 %i.cne, %i.coo
  br i1 %.not2288.us.us, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.rz
  %i.cop = add nuw nsw i32 %.62003.us.us, 1
  %i.coq = or <2 x i32> %i.coj, <i32 204, i32 16>
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa
  %.72004.us.us = phi i32 [ %i.cop, %bb.sb ], [ %.62003.us.us, %bb.sa ] ; 2 uses
  %i.cor = phi <2 x i32> [ %i.coq, %bb.sb ], [ %i.coj, %bb.sa ] ; 4 uses
  %i.cos = icmp eq i32 %.019752970.us.us, %i.cmq
  br i1 %i.cos, label %.thread2705.us.us, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.cot = add i32 %.1420482967.us.us, 1
  %i.cou = zext i32 %i.cot to i64
  %i.cov = getelementptr inbounds nuw [2 x i8], ptr %i.cmz, i64 %i.cou
  %i.cow = load i16, ptr %i.cov, align 2
  %i.cox = zext i16 %i.cow to i32
  %.not2289.us.us = icmp ugt i32 %i.cne, %i.cox
  br i1 %.not2289.us.us, label %bb.se, label %.thread2705.us.us

bb.se:                                            ; preds = %bb.sd
  %i.coy = extractelement <2 x i32> %i.cor, i64 0 ; 2 uses
  %.not2290.us.us = icmp eq i32 %i.coy, 0
  %i.coz = extractelement <2 x i32> %i.cor, i64 1
  br i1 %.not2290.us.us, label %bb.tl, label %bb.sf

.thread2705.us.us:                                ; preds = %bb.sd, %bb.sc
  %i.cpa = add nuw nsw i32 %.72004.us.us, 1
  %i.cpb = extractelement <2 x i32> %i.cor, i64 1
  %i.cpc = or i32 %i.cpb, 32
  %i.cpd = extractelement <2 x i32> %i.cor, i64 0
  %i.cpe = or i32 %i.cpd, 170
  br label %bb.sf

bb.sf:                                            ; preds = %.thread2705.us.us, %bb.se
  %.719962712.us.us = phi i32 [ %i.cpc, %.thread2705.us.us ], [ %i.coz, %bb.se ] ; 6 uses
  %.820052711.us.us = phi i32 [ %i.cpa, %.thread2705.us.us ], [ %.72004.us.us, %bb.se ]
  %.820332710.us.us = phi i32 [ %i.cpe, %.thread2705.us.us ], [ %i.coy, %bb.se ] ; 10 uses
  store i32 1, ptr %i.b, align 4
  %i.cpf = load i32, ptr %i.cjm, align 8          ; 7 uses
  %i.cpg = and i32 %.820332710.us.us, 1
  %.not2307.us.us = trunc i32 %.820332710.us.us to i1 ; 2 uses
  %i.cph = add i32 %i.cpf, %i.cpg                 ; 2 uses
  %.sroa.0.0 = select i1 %.not2307.us.us, i32 %i.cpf, i32 -1 ; 3 uses
  %i.cpi = and i32 %.820332710.us.us, 2           ; 2 uses
  %.not2307.us.us.1.not = icmp eq i32 %i.cpi, 0   ; 2 uses
  %i.cpj = lshr exact i32 %i.cpi, 1
  %i.cpk = add i32 %i.cph, %i.cpj                 ; 2 uses
  %.sroa.7.0 = select i1 %.not2307.us.us.1.not, i32 -1, i32 %i.cph ; 6 uses
  %i.cpl = and i32 %.820332710.us.us, 4           ; 2 uses
  %.not2307.us.us.2.not = icmp eq i32 %i.cpl, 0   ; 2 uses
  %i.cpm = lshr exact i32 %i.cpl, 2
  %spec.select3595 = add i32 %i.cpk, %i.cpm       ; 2 uses
  %spec.select3596 = select i1 %.not2307.us.us.2.not, i32 -1, i32 %i.cpk ; 6 uses
  %i.cpn = and i32 %.820332710.us.us, 8           ; 2 uses
  %.not2307.us.us.3.not = icmp eq i32 %i.cpn, 0   ; 2 uses
  %i.cpo = lshr exact i32 %i.cpn, 3
  %spec.select3597 = add i32 %spec.select3595, %i.cpo ; 2 uses
  %spec.select3598 = select i1 %.not2307.us.us.3.not, i32 -1, i32 %spec.select3595 ; 3 uses
  %i.cpp = and i32 %.820332710.us.us, 16          ; 2 uses
  %.not2307.us.us.4.not = icmp eq i32 %i.cpp, 0   ; 2 uses
  %i.cpq = lshr exact i32 %i.cpp, 4
  %spec.select3599 = add i32 %spec.select3597, %i.cpq ; 2 uses
  %spec.select3600 = select i1 %.not2307.us.us.4.not, i32 -1, i32 %spec.select3597 ; 5 uses
  %i.cpr = and i32 %.820332710.us.us, 32          ; 2 uses
  %.not2307.us.us.5.not = icmp eq i32 %i.cpr, 0   ; 2 uses
  %i.cps = lshr exact i32 %i.cpr, 5
  %spec.select3601 = add i32 %spec.select3599, %i.cps ; 2 uses
  %spec.select3602 = select i1 %.not2307.us.us.5.not, i32 -1, i32 %spec.select3599 ; 4 uses
  %i.cpt = and i32 %.820332710.us.us, 64          ; 2 uses
  %.not2307.us.us.6.not = icmp eq i32 %i.cpt, 0   ; 2 uses
  %i.cpu = lshr exact i32 %i.cpt, 6
  %spec.select3603 = add i32 %spec.select3601, %i.cpu ; 2 uses
  %spec.select3604 = select i1 %.not2307.us.us.6.not, i32 -1, i32 %spec.select3601 ; 4 uses
  %i.cpv = and i32 %.820332710.us.us, 128         ; 2 uses
end_hunk_1
begin_hunk_2_@GenMeshHeightmap:bb.a

Vector3Normalize.exit:                            ; preds = %bb.b, %bb.c
  %.sroa.013.0.i = phi <2 x float> [ %i.fx, %bb.c ], [ %i.fj, %bb.b ] ; 2 uses
  %.sroa.617.0.i = phi float [ %i.fy, %bb.c ], [ %i.fo, %bb.b ]
  %.sroa.097.0.vec.extract = extractelement <2 x float> %.sroa.013.0.i, i64 0
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv261
  store float %.sroa.097.0.vec.extract, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ek
  %i.gb = shufflevector <2 x float> %.sroa.013.0.i, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.gc = insertelement <3 x float> %i.gb, float %.sroa.617.0.i, i64 1
  %i.gd = shufflevector <3 x float> %i.gc, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  store <8 x float> %i.gd, ptr %i.ga, align 4
  %i.ge = add nsw i64 %indvars.iv261, 9           ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4          ; 2 uses
  %i.gh = add nsw i64 %indvars.iv261, 10          ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.gh
  %i.gj = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gk = getelementptr i8, ptr %i.gj, i64 48
  %i.gl = load float, ptr %i.gk, align 4
  %i.gm = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gn = getelementptr i8, ptr %i.gm, i64 52
  %i.go = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gp = getelementptr i8, ptr %i.go, i64 60
  %i.gq = load float, ptr %i.gp, align 4
  %i.gr = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv261
  %i.gs = getelementptr i8, ptr %i.gr, i64 64
  %i.gt = load <2 x float>, ptr %i.gi, align 4    ; 2 uses
  %i.gu = load <2 x float>, ptr %i.gn, align 4
  %i.gv = load <2 x float>, ptr %i.gs, align 4
  %i.gw = fsub <2 x float> %i.gu, %i.gt           ; 3 uses
  %i.gx = fsub float %i.gl, %i.gg                 ; 2 uses
  %i.gy = fsub float %i.gq, %i.gg                 ; 2 uses
  %i.gz = fsub <2 x float> %i.gv, %i.gt           ; 3 uses
  %i.ha = fneg <2 x float> %i.gz
  %i.hb = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hc = insertelement <2 x float> %i.hb, float %i.gx, i64 1
  %i.hd = fmul <2 x float> %i.hc, %i.ha
  %i.he = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hf = insertelement <2 x float> %i.he, float %i.gy, i64 1
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.hf, <2 x float> %i.hd) ; 5 uses
  %i.hh = fneg float %i.gy
  %i.hi = extractelement <2 x float> %i.gw, i64 0
  %i.hj = fmul float %i.hi, %i.hh
  %i.hk = extractelement <2 x float> %i.gz, i64 0
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.hk, float %i.hj) ; 4 uses
  %foldExtExtBinop286 = fmul <2 x float> %i.hg, %i.hg
  %i.hm = extractelement <2 x float> %foldExtExtBinop286, i64 1
  %i.hn = extractelement <2 x float> %i.hg, i64 0 ; 2 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hm)
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.ho) ; 2 uses
  %i.hq = fcmp une float %i.hp, 0.000000e+00
  br i1 %i.hq, label %bb.d, label %Vector3Normalize.exit.1

bb.d:                                             ; preds = %Vector3Normalize.exit
  %sqrt.i.1 = tail call float @llvm.sqrt.f32(float %i.hp)
  %i.hr = fdiv float 1.000000e+00, %sqrt.i.1      ; 2 uses
  %i.hs = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x float> %i.hg, %i.ht
  %i.hv = fmul float %i.hl, %i.hr
  br label %Vector3Normalize.exit.1

Vector3Normalize.exit.1:                          ; preds = %bb.d, %Vector3Normalize.exit
  %.sroa.013.0.i.1 = phi <2 x float> [ %i.hu, %bb.d ], [ %i.hg, %Vector3Normalize.exit ] ; 2 uses
  %.sroa.617.0.i.1 = phi float [ %i.hv, %bb.d ], [ %i.hl, %Vector3Normalize.exit ]
  %.sroa.097.0.vec.extract.1 = extractelement <2 x float> %.sroa.013.0.i.1, i64 0
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ge
  store float %.sroa.097.0.vec.extract.1, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.gh
  %i.hy = shufflevector <2 x float> %.sroa.013.0.i.1, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.hz = insertelement <3 x float> %i.hy, float %.sroa.617.0.i.1, i64 1
  %i.ia = shufflevector <3 x float> %i.hz, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  store <8 x float> %i.ia, ptr %i.hx, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 18  ; 2 uses
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, 12 ; 2 uses
  %indvars.iv.next262 = add nsw i64 %indvars.iv261, 18 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare ptr @LoadImageColors(ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare void @UnloadImageColors(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @GenMeshCubicmap(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, <2 x float> %2, float %3) local_unnamed_addr #33 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %1) #54 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %.sroa.01030.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %.sroa.01030.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 24 uses
  %i.f = mul i32 %i.c, 36
  %i.g = mul i32 %i.f, %i.e
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = mul nsw i64 %i.h, 12                     ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #56 ; 10 uses
  %i.k = shl nsw i64 %i.h, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #56 ; 10 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #56 ; 10 uses
  %i.n = icmp sgt i32 %i.e, 0
  %i.o = icmp sgt i32 %i.c, 0
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.preheader1058, label %._crit_edge1070

.preheader1058:                                   ; preds = %bb.a, %._crit_edge
  %i.p = phi i32 [ %i.ar, %._crit_edge ], [ %i.e, %bb.a ]
  %i.q = phi i32 [ %i.as, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.r = phi i32 [ %i.at, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %.010351069 = phi i32 [ %.11036.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.010381068 = phi i32 [ %.11039.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.010441067 = phi i32 [ %.11045.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.010501066 = phi i32 [ %.pre-phi, %._crit_edge ], [ 0, %bb.a ] ; 10 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %.preheader1058.._crit_edge_crit_edge

.preheader1058.._crit_edge_crit_edge:             ; preds = %.preheader1058
  %.pre = add nuw nsw i32 %.010501066, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1058
  %i.t = uitofp nneg i32 %.010501066 to float     ; 2 uses
  %i.u = fadd nnan float %i.t, -5.000000e-01
  %i.v = fmul float %3, %i.u                      ; 24 uses
  %i.w = fadd nnan float %i.t, 5.000000e-01
  %i.x = fmul float %3, %i.w                      ; 24 uses
  %i.y = add nuw nsw i32 %.010501066, 1           ; 2 uses
  %cond = icmp eq i32 %.010501066, 0
  %i.z = add nsw i32 %.010501066, -1
  br label %bb.b

._crit_edge1070:                                  ; preds = %._crit_edge, %bb.a
  %.01044.lcssa = phi i32 [ 0, %bb.a ], [ %.11045.lcssa, %._crit_edge ] ; 4 uses
  %.01038.lcssa = phi i32 [ 0, %bb.a ], [ %.11039.lcssa, %._crit_edge ] ; 3 uses
  %.01035.lcssa = phi i32 [ 0, %bb.a ], [ %.11036.lcssa, %._crit_edge ] ; 8 uses
  store i32 %.01035.lcssa, ptr %0, align 8
  %i.aa = sdiv i32 %.01035.lcssa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = mul nsw i32 %.01035.lcssa, 3
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #56 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ae) #56 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = shl nsw i32 %.01035.lcssa, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.ao, align 8
  %i.ap = icmp sgt i32 %.01035.lcssa, 0
  br i1 %i.ap, label %.lr.ph1079.preheader, label %.preheader1057

.lr.ph1079.preheader:                             ; preds = %._crit_edge1070
  %wide.trip.count = zext nneg i32 %.01035.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aq = icmp eq i32 %.01035.lcssa, 1
  br i1 %i.aq, label %.lr.ph1079.epil.preheader, label %.lr.ph1079.preheader.new

.lr.ph1079.preheader.new:                         ; preds = %.lr.ph1079.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph1079

._crit_edge.loopexit:                             ; preds = %.thread
  %.pre1112 = load i32, ptr %i.d, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader1058.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i32 [ %.pre, %.preheader1058.._crit_edge_crit_edge ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = phi i32 [ %i.p, %.preheader1058.._crit_edge_crit_edge ], [ %.pre1112, %._crit_edge.loopexit ] ; 2 uses
  %i.as = phi i32 [ %i.q, %.preheader1058.._crit_edge_crit_edge ], [ %i.kp, %._crit_edge.loopexit ]
  %i.at = phi i32 [ %i.r, %.preheader1058.._crit_edge_crit_edge ], [ %i.kp, %._crit_edge.loopexit ]
  %.11045.lcssa = phi i32 [ %.010441067, %.preheader1058.._crit_edge_crit_edge ], [ %.51049, %._crit_edge.loopexit ] ; 2 uses
  %.11039.lcssa = phi i32 [ %.010381068, %.preheader1058.._crit_edge_crit_edge ], [ %.51043, %._crit_edge.loopexit ] ; 2 uses
  %.11036.lcssa = phi i32 [ %.010351069, %.preheader1058.._crit_edge_crit_edge ], [ %.5, %._crit_edge.loopexit ] ; 2 uses
  %i.au = icmp slt i32 %.pre-phi, %i.ar
  br i1 %i.au, label %.preheader1058, label %._crit_edge1070, !llvm.loop !199

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.av = phi i32 [ %i.q, %.lr.ph ], [ %i.kp, %.thread ] ; 7 uses
  %i.aw = phi i32 [ %i.r, %.lr.ph ], [ %i.kp, %.thread ] ; 2 uses
  %.110361063 = phi i32 [ %.010351069, %.lr.ph ], [ %.5, %.thread ] ; 12 uses
  %.110391062 = phi i32 [ %.010381068, %.lr.ph ], [ %.51043, %.thread ] ; 12 uses
  %.110451061 = phi i32 [ %.010441067, %.lr.ph ], [ %.51049, %.thread ] ; 12 uses
  %.010511059 = phi i32 [ 0, %.lr.ph ], [ %i.kq, %.thread ] ; 10 uses
  %i.ax = uitofp nneg i32 %.010511059 to float    ; 2 uses
  %i.ay = fadd nnan float %i.ax, -5.000000e-01
  %i.az = fmul float %.sroa.01030.0.vec.extract, %i.ay ; 24 uses
  %i.ba = fadd nnan float %i.ax, 5.000000e-01
  %i.bb = fmul float %.sroa.01030.0.vec.extract, %i.ba ; 24 uses
  %i.bc = mul nsw i32 %i.aw, %.010501066
  %i.bd = add nsw i32 %i.bc, %.010511059
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.be ; 7 uses
  %i.bg = load i8, ptr %i.bf, align 1
  switch i8 %i.bg, label %.thread [
    i8 -1, label %bb.c
    i8 0, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, -1
  br i1 %i.bj, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, -1
  br i1 %i.bp, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bq = sext i32 %.110361063 to i64
  %i.br = getelementptr [12 x i8], ptr %i.j, i64 %i.bq ; 51 uses
  store float %i.az, ptr %i.br, align 4
  %.sroa.11406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float %i.v, ptr %.sroa.12.0..sroa_idx, align 4
  %i.bs = getelementptr i8, ptr %i.br, i64 12
  store float %i.az, ptr %i.bs, align 4
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.br, i64 16
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8391.0..sroa_idx = getelementptr i8, ptr %i.br, i64 20
  store float %i.x, ptr %.sroa.8391.0..sroa_idx, align 4
  %i.bt = getelementptr i8, ptr %i.br, i64 24
  store float %i.bb, ptr %i.bt, align 4
  %.sroa.10355.0..sroa_idx = getelementptr i8, ptr %i.br, i64 28
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx, align 4
  %.sroa.11368.0..sroa_idx = getelementptr i8, ptr %i.br, i64 32
  store float %i.x, ptr %.sroa.11368.0..sroa_idx, align 4
  %i.bu = getelementptr i8, ptr %i.br, i64 36
  store float %i.az, ptr %i.bu, align 4
  %.sroa.11406.0..sroa_idx407 = getelementptr i8, ptr %i.br, i64 40
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx407, align 4
  %.sroa.12.0..sroa_idx421 = getelementptr i8, ptr %i.br, i64 44
  store float %i.v, ptr %.sroa.12.0..sroa_idx421, align 4
  %i.bv = getelementptr i8, ptr %i.br, i64 48
  store float %i.bb, ptr %i.bv, align 4
  %.sroa.10355.0..sroa_idx356 = getelementptr i8, ptr %i.br, i64 52
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx356, align 4
  %.sroa.11368.0..sroa_idx369 = getelementptr i8, ptr %i.br, i64 56
  store float %i.x, ptr %.sroa.11368.0..sroa_idx369, align 4
  %i.bw = getelementptr i8, ptr %i.br, i64 60
  store float %i.bb, ptr %i.bw, align 4
  %.sroa.8330.0..sroa_idx = getelementptr i8, ptr %i.br, i64 64
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.8330.0..sroa_idx, align 4
  %.sroa.9339.0..sroa_idx = getelementptr i8, ptr %i.br, i64 68
  store float %i.v, ptr %.sroa.9339.0..sroa_idx, align 4
  %i.bx = sext i32 %.110451061 to i64
  %i.by = getelementptr [12 x i8], ptr %i.m, i64 %i.bx ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.ca = getelementptr i8, ptr %i.by, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.cb = getelementptr i8, ptr %i.by, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.cc = getelementptr i8, ptr %i.by, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.cd = getelementptr i8, ptr %i.by, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n3, i64 12, i1 false)
  %i.ce = sext i32 %.110391062 to i64
  %i.cf = getelementptr [8 x i8], ptr %i.l, i64 %i.ce ; 9 uses
  store <4 x float> <float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 1.000000e+00>, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %i.cg, align 4
  %i.ch = getelementptr i8, ptr %i.cf, i64 32
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.ch, align 4
  %i.ci = getelementptr i8, ptr %i.br, i64 72
  store float %i.az, ptr %i.ci, align 4
  %.sroa.9281.0..sroa_idx = getelementptr i8, ptr %i.br, i64 76
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx, align 4
  %.sroa.10292.0..sroa_idx = getelementptr i8, ptr %i.br, i64 80
  store float %i.v, ptr %.sroa.10292.0..sroa_idx, align 4
  %i.cj = getelementptr i8, ptr %i.br, i64 84
  store float %i.bb, ptr %i.cj, align 4
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %i.br, i64 88
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr i8, ptr %i.br, i64 92
  store float %i.x, ptr %.sroa.11.0..sroa_idx, align 4
  %i.ck = getelementptr i8, ptr %i.br, i64 96
  store float %i.az, ptr %i.ck, align 4
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.br, i64 100
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10264.0..sroa_idx = getelementptr i8, ptr %i.br, i64 104
  store float %i.x, ptr %.sroa.10264.0..sroa_idx, align 4
  %i.cl = getelementptr i8, ptr %i.br, i64 108
  store float %i.az, ptr %i.cl, align 4
  %.sroa.9281.0..sroa_idx282 = getelementptr i8, ptr %i.br, i64 112
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx282, align 4
  %.sroa.10292.0..sroa_idx293 = getelementptr i8, ptr %i.br, i64 116
  store float %i.v, ptr %.sroa.10292.0..sroa_idx293, align 4
  %i.cm = getelementptr i8, ptr %i.br, i64 120
  store float %i.bb, ptr %i.cm, align 4
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.br, i64 124
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9316.0..sroa_idx = getelementptr i8, ptr %i.br, i64 128
  store float %i.v, ptr %.sroa.9316.0..sroa_idx, align 4
  %i.cn = getelementptr i8, ptr %i.br, i64 132
  store float %i.bb, ptr %i.cn, align 4
  %.sroa.10.0..sroa_idx224 = getelementptr i8, ptr %i.br, i64 136
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx224, align 4
  %.sroa.11.0..sroa_idx236 = getelementptr i8, ptr %i.br, i64 140
  store float %i.x, ptr %.sroa.11.0..sroa_idx236, align 4
  %i.co = add nsw i32 %.110361063, 12             ; 3 uses
  %i.cp = getelementptr i8, ptr %i.by, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cp, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cq = getelementptr i8, ptr %i.by, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cq, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cr = getelementptr i8, ptr %i.by, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cr, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cs = getelementptr i8, ptr %i.by, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.ct = getelementptr i8, ptr %i.by, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ct, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cu = getelementptr i8, ptr %i.by, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n4, i64 12, i1 false)
  %i.cv = add nsw i32 %.110451061, 12             ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cf, i64 48
  store <4 x float> <float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %i.cw, align 4
  %i.cx = getelementptr i8, ptr %i.cf, i64 64
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr %i.cx, align 4
  %i.cy = getelementptr i8, ptr %i.cf, i64 80
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %i.cy, align 4
  %i.cz = add nsw i32 %.110391062, 12             ; 3 uses
  %i.da = load i32, ptr %i.d, align 4
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  %i.dc = icmp slt i32 %.010501066, %i.db
  br i1 %i.dc, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.dd = mul nsw i32 %i.aw, %i.y
  %i.de = add nsw i32 %i.dd, %.010511059
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.df ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.old = icmp eq i32 %.010501066, %i.db
  br i1 %.old, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ds = sext i32 %i.co to i64
  %i.dt = getelementptr inbounds [12 x i8], ptr %i.j, i64 %i.ds ; 3 uses
  store float %i.az, ptr %i.dt, align 4
  %.sroa.7.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.7.0..sroa_idx385, align 4
  %.sroa.8391.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store float %i.x, ptr %.sroa.8391.0..sroa_idx392, align 4
  %i.du = getelementptr i8, ptr %i.br, i64 156
  store float %i.az, ptr %i.du, align 4
  %.sroa.9.0..sroa_idx254 = getelementptr i8, ptr %i.br, i64 160
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx254, align 4
  %.sroa.10264.0..sroa_idx265 = getelementptr i8, ptr %i.br, i64 164
  store float %i.x, ptr %.sroa.10264.0..sroa_idx265, align 4
  %i.dv = getelementptr i8, ptr %i.br, i64 168
  store float %i.bb, ptr %i.dv, align 4
  %.sroa.10355.0..sroa_idx358 = getelementptr i8, ptr %i.br, i64 172
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx358, align 4
  %.sroa.11368.0..sroa_idx371 = getelementptr i8, ptr %i.br, i64 176
  store float %i.x, ptr %.sroa.11368.0..sroa_idx371, align 4
  %i.dw = getelementptr i8, ptr %i.br, i64 180
  store float %i.bb, ptr %i.dw, align 4
  %.sroa.10355.0..sroa_idx360 = getelementptr i8, ptr %i.br, i64 184
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx360, align 4
  %.sroa.11368.0..sroa_idx373 = getelementptr i8, ptr %i.br, i64 188
  store float %i.x, ptr %.sroa.11368.0..sroa_idx373, align 4
  %i.dx = getelementptr i8, ptr %i.br, i64 192
  store float %i.az, ptr %i.dx, align 4
  %.sroa.9.0..sroa_idx256 = getelementptr i8, ptr %i.br, i64 196
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx256, align 4
  %.sroa.10264.0..sroa_idx267 = getelementptr i8, ptr %i.br, i64 200
  store float %i.x, ptr %.sroa.10264.0..sroa_idx267, align 4
  %i.dy = getelementptr i8, ptr %i.br, i64 204
  store float %i.bb, ptr %i.dy, align 4
  %.sroa.10.0..sroa_idx226 = getelementptr i8, ptr %i.br, i64 208
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx226, align 4
  %.sroa.11.0..sroa_idx238 = getelementptr i8, ptr %i.br, i64 212
  store float %i.x, ptr %.sroa.11.0..sroa_idx238, align 4
  %i.dz = add nsw i32 %.110361063, 18
  %i.ea = sext i32 %i.cv to i64
  %i.eb = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eb, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n6, i64 12, i1 false)
  %i.ec = getelementptr i8, ptr %i.by, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ec, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n6, i64 12, i1 false)
  %i.ed = getelementptr i8, ptr %i.by, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ed, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n6, i64 12, i1 false)
  %i.ee = getelementptr i8, ptr %i.by, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ee, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n6, i64 12, i1 false)
  %i.ef = getelementptr i8, ptr %i.by, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n6, i64 12, i1 false)
  %i.eg = getelementptr i8, ptr %i.by, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eg, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n6, i64 12, i1 false)
  %i.eh = add nsw i32 %.110451061, 18
  %i.ei = sext i32 %i.cz to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ei
  store <2 x float> zeroinitializer, ptr %i.ej, align 4
  %i.ek = getelementptr i8, ptr %i.cf, i64 104
  store <4 x float> <float 0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.ek, align 4
  %i.el = getelementptr i8, ptr %i.cf, i64 120
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %i.el, align 4
  %i.em = getelementptr i8, ptr %i.cf, i64 136
  store <2 x float> splat (float 5.000000e-01), ptr %i.em, align 4
  %i.en = add nsw i32 %.110391062, 18
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.21046 = phi i32 [ %i.eh, %bb.l ], [ %i.cv, %bb.k ], [ %i.cv, %bb.j ] ; 6 uses
  %.21040 = phi i32 [ %i.en, %bb.l ], [ %i.cz, %bb.k ], [ %i.cz, %bb.j ] ; 6 uses
  %.21037 = phi i32 [ %i.dz, %bb.l ], [ %i.co, %bb.k ], [ %i.co, %bb.j ] ; 6 uses
  %.pre.pre = load i32, ptr %i.b, align 8         ; 9 uses
  br i1 %cond, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eo = mul nsw i32 %.pre.pre, %i.z
  %i.ep = add nsw i32 %i.eo, %.010511059
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eq ; 4 uses
  %i.es = load i8, ptr %i.er, align 1
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 3
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = icmp eq i8 %i.fb, -1
  br i1 %i.fc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.q
  %i.fd = sext i32 %.21037 to i64
  %i.fe = getelementptr inbounds [12 x i8], ptr %i.j, i64 %i.fd ; 18 uses
  store float %i.az, ptr %i.fe, align 4
  %.sroa.11406.0..sroa_idx409 = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx409, align 4
  %.sroa.12.0..sroa_idx423 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store float %i.v, ptr %.sroa.12.0..sroa_idx423, align 4
  %i.ff = getelementptr i8, ptr %i.fe, i64 12
  store float %i.bb, ptr %i.ff, align 4
  %.sroa.8.0..sroa_idx308 = getelementptr i8, ptr %i.fe, i64 16
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx308, align 4
  %.sroa.9316.0..sroa_idx317 = getelementptr i8, ptr %i.fe, i64 20
  store float %i.v, ptr %.sroa.9316.0..sroa_idx317, align 4
  %i.fg = getelementptr i8, ptr %i.fe, i64 24
  store float %i.az, ptr %i.fg, align 4
  %.sroa.9281.0..sroa_idx284 = getelementptr i8, ptr %i.fe, i64 28
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx284, align 4
  %.sroa.10292.0..sroa_idx295 = getelementptr i8, ptr %i.fe, i64 32
  store float %i.v, ptr %.sroa.10292.0..sroa_idx295, align 4
  %i.fh = getelementptr i8, ptr %i.fe, i64 36
  store float %i.az, ptr %i.fh, align 4
  %.sroa.11406.0..sroa_idx411 = getelementptr i8, ptr %i.fe, i64 40
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx411, align 4
  %.sroa.12.0..sroa_idx425 = getelementptr i8, ptr %i.fe, i64 44
  store float %i.v, ptr %.sroa.12.0..sroa_idx425, align 4
  %i.fi = getelementptr i8, ptr %i.fe, i64 48
  store float %i.bb, ptr %i.fi, align 4
  %.sroa.8330.0..sroa_idx331 = getelementptr i8, ptr %i.fe, i64 52
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.8330.0..sroa_idx331, align 4
  %.sroa.9339.0..sroa_idx340 = getelementptr i8, ptr %i.fe, i64 56
  store float %i.v, ptr %.sroa.9339.0..sroa_idx340, align 4
  %i.fj = getelementptr i8, ptr %i.fe, i64 60
  store float %i.bb, ptr %i.fj, align 4
  %.sroa.8.0..sroa_idx310 = getelementptr i8, ptr %i.fe, i64 64
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx310, align 4
  %.sroa.9316.0..sroa_idx319 = getelementptr i8, ptr %i.fe, i64 68
  store float %i.v, ptr %.sroa.9316.0..sroa_idx319, align 4
  %i.fk = add nsw i32 %.21037, 6
  %i.fl = sext i32 %.21046 to i64
  %i.fm = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.fl ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fm, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n5, i64 12, i1 false)
  %i.fn = getelementptr i8, ptr %i.fm, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fn, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n5, i64 12, i1 false)
  %i.fo = getelementptr i8, ptr %i.fm, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fo, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n5, i64 12, i1 false)
  %i.fp = getelementptr i8, ptr %i.fm, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fp, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n5, i64 12, i1 false)
  %i.fq = getelementptr i8, ptr %i.fm, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fq, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n5, i64 12, i1 false)
  %i.fr = getelementptr i8, ptr %i.fm, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fr, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n5, i64 12, i1 false)
  %i.fs = add nsw i32 %.21046, 6
  %i.ft = sext i32 %.21040 to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ft ; 3 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.fu, align 4
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store <4 x float> <float 1.000000e+00, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.fv, align 4
  %i.fw = getelementptr i8, ptr %i.fu, i64 32
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.fw, align 4
  %i.fx = add nsw i32 %.21040, 6
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.31047 = phi i32 [ %i.fs, %bb.r ], [ %.21046, %bb.q ], [ %.21046, %bb.p ], [ %.21046, %bb.o ], [ %.21046, %bb.n ] ; 4 uses
  %.31041 = phi i32 [ %i.fx, %bb.r ], [ %.21040, %bb.q ], [ %.21040, %bb.p ], [ %.21040, %bb.o ], [ %.21040, %bb.n ] ; 4 uses
  %.3 = phi i32 [ %i.fk, %bb.r ], [ %.21037, %bb.q ], [ %.21037, %bb.p ], [ %.21037, %bb.o ], [ %.21037, %bb.n ] ; 4 uses
  %i.fy = add nsw i32 %.pre.pre, -1               ; 2 uses
  %i.fz = icmp slt i32 %.010511059, %i.fy
  br i1 %i.fz, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ga = mul nsw i32 %.pre.pre, %.010501066
  %i.gb = add nuw nsw i32 %.010511059, 1
  %i.gc = add nsw i32 %i.gb, %i.ga
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gd ; 4 uses
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = icmp eq i8 %i.gl, 0
  br i1 %i.gm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = icmp eq i8 %i.go, -1
  br i1 %i.gp, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.old1055 = icmp eq i32 %.010511059, %i.fy
  br i1 %.old1055, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gq = sext i32 %.3 to i64
  %i.gr = getelementptr inbounds [12 x i8], ptr %i.j, i64 %i.gq ; 18 uses
  store float %i.bb, ptr %i.gr, align 4
  %.sroa.10355.0..sroa_idx362 = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.10355.0..sroa_idx362, align 4
  %.sroa.11368.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store float %i.x, ptr %.sroa.11368.0..sroa_idx375, align 4
  %i.gs = getelementptr i8, ptr %i.gr, i64 12
  store float %i.bb, ptr %i.gs, align 4
  %.sroa.10.0..sroa_idx228 = getelementptr i8, ptr %i.gr, i64 16
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx228, align 4
  %.sroa.11.0..sroa_idx240 = getelementptr i8, ptr %i.gr, i64 20
  store float %i.x, ptr %.sroa.11.0..sroa_idx240, align 4
  %i.gt = getelementptr i8, ptr %i.gr, i64 24
  store float %i.bb, ptr %i.gt, align 4
  %.sroa.8330.0..sroa_idx333 = getelementptr i8, ptr %i.gr, i64 28
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.8330.0..sroa_idx333, align 4
  %.sroa.9339.0..sroa_idx342 = getelementptr i8, ptr %i.gr, i64 32
  store float %i.v, ptr %.sroa.9339.0..sroa_idx342, align 4
  %i.gu = getelementptr i8, ptr %i.gr, i64 36
  store float %i.bb, ptr %i.gu, align 4
  %.sroa.8330.0..sroa_idx335 = getelementptr i8, ptr %i.gr, i64 40
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.8330.0..sroa_idx335, align 4
  %.sroa.9339.0..sroa_idx344 = getelementptr i8, ptr %i.gr, i64 44
  store float %i.v, ptr %.sroa.9339.0..sroa_idx344, align 4
  %i.gv = getelementptr i8, ptr %i.gr, i64 48
  store float %i.bb, ptr %i.gv, align 4
  %.sroa.10.0..sroa_idx230 = getelementptr i8, ptr %i.gr, i64 52
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx230, align 4
  %.sroa.11.0..sroa_idx242 = getelementptr i8, ptr %i.gr, i64 56
  store float %i.x, ptr %.sroa.11.0..sroa_idx242, align 4
  %i.gw = getelementptr i8, ptr %i.gr, i64 60
  store float %i.bb, ptr %i.gw, align 4
  %.sroa.8.0..sroa_idx312 = getelementptr i8, ptr %i.gr, i64 64
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx312, align 4
  %.sroa.9316.0..sroa_idx321 = getelementptr i8, ptr %i.gr, i64 68
  store float %i.v, ptr %.sroa.9316.0..sroa_idx321, align 4
  %i.gx = add nsw i32 %.3, 6
  %i.gy = sext i32 %.31047 to i64
  %i.gz = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.gy ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gz, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n1, i64 12, i1 false)
  %i.ha = getelementptr i8, ptr %i.gz, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ha, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n1, i64 12, i1 false)
  %i.hb = getelementptr i8, ptr %i.gz, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hb, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n1, i64 12, i1 false)
  %i.hc = getelementptr i8, ptr %i.gz, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hc, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n1, i64 12, i1 false)
  %i.hd = getelementptr i8, ptr %i.gz, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hd, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n1, i64 12, i1 false)
  %i.he = getelementptr i8, ptr %i.gz, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.he, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n1, i64 12, i1 false)
  %i.hf = add nsw i32 %.31047, 6
  %i.hg = sext i32 %.31041 to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.hg ; 3 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %i.hh, align 4
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00>, ptr %i.hi, align 4
  %i.hj = getelementptr i8, ptr %i.hh, i64 32
  store <4 x float> <float 0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %i.hj, align 4
  %i.hk = add nsw i32 %.31041, 6
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x
  %.41048 = phi i32 [ %i.hf, %bb.y ], [ %.31047, %bb.x ], [ %.31047, %bb.w ] ; 6 uses
  %.41042 = phi i32 [ %i.hk, %bb.y ], [ %.31041, %bb.x ], [ %.31041, %bb.w ] ; 6 uses
  %.4 = phi i32 [ %i.gx, %bb.y ], [ %.3, %bb.x ], [ %.3, %bb.w ] ; 6 uses
  %cond1054 = icmp eq i32 %.010511059, 0
  br i1 %cond1054, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hl = mul nsw i32 %.pre.pre, %.010501066
  %i.hm = add nsw i32 %.010511059, -1
  %i.hn = add nsw i32 %i.hm, %i.hl
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ho ; 4 uses
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = icmp eq i8 %i.ht, 0
  br i1 %i.hu, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = icmp eq i8 %i.hz, -1
  br i1 %i.ia, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.z, %bb.ad
  %i.ib = sext i32 %.4 to i64
  %i.ic = getelementptr inbounds [12 x i8], ptr %i.j, i64 %i.ib ; 18 uses
  store float %i.az, ptr %i.ic, align 4
  %.sroa.11406.0..sroa_idx413 = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx413, align 4
  %.sroa.12.0..sroa_idx427 = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store float %i.v, ptr %.sroa.12.0..sroa_idx427, align 4
  %i.id = getelementptr i8, ptr %i.ic, i64 12
  store float %i.az, ptr %i.id, align 4
  %.sroa.9.0..sroa_idx258 = getelementptr i8, ptr %i.ic, i64 16
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx258, align 4
  %.sroa.10264.0..sroa_idx269 = getelementptr i8, ptr %i.ic, i64 20
  store float %i.x, ptr %.sroa.10264.0..sroa_idx269, align 4
  %i.ie = getelementptr i8, ptr %i.ic, i64 24
  store float %i.az, ptr %i.ie, align 4
  %.sroa.7.0..sroa_idx387 = getelementptr i8, ptr %i.ic, i64 28
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.7.0..sroa_idx387, align 4
  %.sroa.8391.0..sroa_idx394 = getelementptr i8, ptr %i.ic, i64 32
  store float %i.x, ptr %.sroa.8391.0..sroa_idx394, align 4
  %i.if = getelementptr i8, ptr %i.ic, i64 36
  store float %i.az, ptr %i.if, align 4
  %.sroa.11406.0..sroa_idx415 = getelementptr i8, ptr %i.ic, i64 40
  store float %.sroa.01030.4.vec.extract, ptr %.sroa.11406.0..sroa_idx415, align 4
  %.sroa.12.0..sroa_idx429 = getelementptr i8, ptr %i.ic, i64 44
  store float %i.v, ptr %.sroa.12.0..sroa_idx429, align 4
  %i.ig = getelementptr i8, ptr %i.ic, i64 48
  store float %i.az, ptr %i.ig, align 4
  %.sroa.9281.0..sroa_idx286 = getelementptr i8, ptr %i.ic, i64 52
  store float 0.000000e+00, ptr %.sroa.9281.0..sroa_idx286, align 4
  %.sroa.10292.0..sroa_idx297 = getelementptr i8, ptr %i.ic, i64 56
  store float %i.v, ptr %.sroa.10292.0..sroa_idx297, align 4
  %i.ih = getelementptr i8, ptr %i.ic, i64 60
  store float %i.az, ptr %i.ih, align 4
  %.sroa.9.0..sroa_idx260 = getelementptr i8, ptr %i.ic, i64 64
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx260, align 4
  %.sroa.10264.0..sroa_idx271 = getelementptr i8, ptr %i.ic, i64 68
  store float %i.x, ptr %.sroa.10264.0..sroa_idx271, align 4
  %i.ii = add nsw i32 %.4, 6
  %i.ij = sext i32 %.41048 to i64
  %i.ik = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.ij ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ik, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n2, i64 12, i1 false)
  %i.il = getelementptr i8, ptr %i.ik, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.il, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n2, i64 12, i1 false)
  %i.im = getelementptr i8, ptr %i.ik, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.im, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n2, i64 12, i1 false)
  %i.in = getelementptr i8, ptr %i.ik, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.in, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n2, i64 12, i1 false)
  %i.io = getelementptr i8, ptr %i.ik, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.io, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n2, i64 12, i1 false)
  %i.ip = getelementptr i8, ptr %i.ik, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ip, ptr noundef nonnull align 4 dereferenceable(12) @__const.GenMeshCubicmap.n2, i64 12, i1 false)
  %i.iq = add nsw i32 %.41048, 6
  %i.ir = sext i32 %.41042 to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ir ; 3 uses
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr %i.is, align 4
  %i.it = getelementptr i8, ptr %i.is, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00>, ptr %i.it, align 4
  %i.iu = getelementptr i8, ptr %i.is, i64 32
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 5.000000e-01>, ptr %i.iu, align 4
  %i.iv = add nsw i32 %.41042, 6
  br label %.thread

bb.af:                                            ; preds = %bb.b
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = icmp eq i8 %i.ix, 0
  br i1 %i.iy, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.ja = load i8, ptr %i.iz, align 1
end_hunk_2
begin_hunk_3_@_m3dstbi__zbuild_huffman:bb.a
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr152 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr152, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %i.cn = shl nuw nsw i32 %i.cb, 9
  %i.co = trunc nuw nsw i64 %indvars.iv94 to i32
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bx, i64 %i.cr
  store i8 %i.ca, ptr %i.cs, align 1
  %i.ct = trunc i64 %indvars.iv94 to i16
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %.lr.ph78 ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f

.loopexit70:                                      ; preds = %bb.c, %bb.i, %bb.b, %._crit_edge.thread, %._crit_edge, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret i32 %.065
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_m3dstbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #25 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 18 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_m3dstbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i, label %_m3dstbi__mul2sizes_valid.exit.i.i

_m3dstbi__mul2sizes_valid.exit.i.i:               ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_m3dstbi__malloc_mad3.exit.thread, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i

_m3dstbi__mul2sizes_valid.exit.thread15.i.i:      ; preds = %_m3dstbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_m3dstbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_m3dstbi__malloc_mad3.exit, label %_m3dstbi__mul2sizes_valid.exit12.i.i

_m3dstbi__mul2sizes_valid.exit12.i.i:             ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_m3dstbi__malloc_mad3.exit.thread, label %_m3dstbi__malloc_mad3.exit

_m3dstbi__malloc_mad3.exit.thread:                ; preds = %_m3dstbi__mul2sizes_valid.exit12.i.i, %_m3dstbi__mul2sizes_valid.exit.i.i, %bb.a, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %.loopexit713.sink.split

_m3dstbi__malloc_mad3.exit:                       ; preds = %bb.c, %_m3dstbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s) #56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.loopexit713.sink.split, label %bb.d

bb.d:                                             ; preds = %_m3dstbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.loopexit713.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_m3dstbi__mul2sizes_valid.exit.i, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.i:                 ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.loopexit713.sink.split, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.thread15.i:        ; preds = %_m3dstbi__mul2sizes_valid.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.loopexit713.sink.split

bb.f:                                             ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_m3dstbi__mad3sizes_valid.exit._crit_edge, label %_m3dstbi__mul2sizes_valid.exit12.i

_m3dstbi__mul2sizes_valid.exit12.i:               ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond705 = or i1 %.not.i, %i.ad
  br i1 %or.cond705, label %.loopexit713.sink.split, label %_m3dstbi__mad3sizes_valid.exit._crit_edge

_m3dstbi__mad3sizes_valid.exit._crit_edge:        ; preds = %bb.f, %_m3dstbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_m3dstbi__mul2sizes_valid.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 4 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5                       ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = icmp eq i32 %i.ai, %4
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %5
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not597 = icmp eq i32 %2, %i.ah
  br i1 %.not597, label %bb.j, label %.loopexit713.sink.split

bb.i:                                             ; preds = %bb.g, %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.an = icmp ult i32 %2, %i.ah
  br i1 %i.an, label %.loopexit713.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.k, label %._crit_edge837.thread, label %.lr.ph836

.lr.ph836:                                        ; preds = %bb.j
  %i.ao = zext i32 %i.e to i64                    ; 10 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = icmp slt i32 %6, 8                      ; 4 uses
  %i.ar = sub i32 %i.c, %i.af
  %narrow = select i1 %i.aq, i32 %i.ar, i32 0
  %.0537.idx = zext i32 %narrow to i64            ; 10 uses
  %i.as = icmp eq i32 %6, 8
  %.not612 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.at = sext i32 %i.h to i64                    ; 60 uses
  %i.au = sext i32 %i.g to i64                    ; 2 uses
  %i.av = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.aq, i1 true, i1 %.not612
  %.6573753 = add i32 %4, -1                      ; 8 uses
  %.not614754 = icmp eq i32 %.6573753, 0          ; 7 uses
  %wide.trip.count977 = zext i32 %5 to i64
  %i.aw = sub nsw i64 %i.ao, %.0537.idx
  %i.ax = add i32 %4, -2                          ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nsw i64 %i.at, %i.ay
  %i.ba = zext i32 %i.ax to i64                   ; 3 uses
  %i.bb = mul nsw i64 %i.at, %i.ba
  %i.bc = sub nsw i64 0, %i.at
  %i.bd = add nsw i64 %i.ba, -1
  %i.be = mul i64 %i.bd, %i.at
  %i.bf = add i32 %4, -2                          ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul nsw i64 %i.at, %i.bg                ; 2 uses
  %i.bi = add i64 %i.bh, %.0537.idx
  %i.bj = sub i64 %i.bi, %i.ao
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = mul nsw i64 %i.at, %i.bk                ; 2 uses
  %i.bm = add i64 %i.bl, %.0537.idx
  %i.bn = sub i64 %i.bm, %i.ao
  %i.bo = sub nsw i64 0, %i.at                    ; 2 uses
  %i.bp = add nsw i64 %i.bk, -1
  %i.bq = mul i64 %i.bp, %i.at
  %i.br = add i32 %4, -2
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = mul nsw i64 %i.at, %i.bs                ; 2 uses
  %i.bu = add nsw i64 %i.bs, -1
  %i.bv = mul i64 %i.bu, %i.at                    ; 2 uses
  %i.bw = add i64 %i.bt, %.0537.idx
  %i.bx = sub i64 %i.bw, %i.ao
  %i.by = add nsw i64 %i.at, %i.ao
  %i.bz = sub nsw i64 %.0537.idx, %i.by
  %i.ca = add i64 %i.bv, %.0537.idx
  %i.cb = sub i64 %i.ca, %i.ao
  %i.cc = add i32 %4, -2                          ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %i.ce = mul nsw i64 %i.at, %i.cd
  %i.cf = sub nsw i64 0, %i.at                    ; 2 uses
  %i.cg = add nsw i64 %i.cd, -1
  %i.ch = mul i64 %i.cg, %i.at
  %i.ci = zext i32 %i.cc to i64                   ; 3 uses
  %i.cj = mul nsw i64 %i.at, %i.ci
  %i.ck = add nsw i64 %i.ci, -1
  %i.cl = mul i64 %i.ck, %i.at
  %stride.check1575 = icmp slt i32 %i.h, 0
  %stride.check1528 = icmp slt i32 %i.h, 0
  %stride.check1467 = icmp slt i32 %i.h, 0
  %stride.check1405 = icmp slt i32 %i.h, 0
  %stride.check1356 = icmp slt i32 %i.h, 0
  %stride.check1310 = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1647 = and i32 %4, 7                   ; 3 uses
  %i.cm = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1648.not = icmp eq i32 %xtraiter1647, 0
  %lcmp.mod1649 = icmp ne i32 %xtraiter1647, 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph836, %.loopexit734
  %indvars.iv974 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next975, %.loopexit734 ] ; 3 uses
  %.0548834 = phi i32 [ %4, %.lr.ph836 ], [ %.1549, %.loopexit734 ]
  %.0551833 = phi i32 [ %i.i, %.lr.ph836 ], [ %.1552, %.loopexit734 ] ; 17 uses
  %.0579831 = phi ptr [ %1, %.lr.ph836 ], [ %.11590, %.loopexit734 ] ; 3 uses
  %i.cn = load ptr, ptr %i.u, align 8             ; 7 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 4 uses
  %i.cp = trunc i64 %indvars.iv974 to i32
  %i.cq = mul i32 %i.e, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 10 uses
  %i.cs = getelementptr i8, ptr %i.cn, i64 %i.cr  ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0579831, i64 1 ; 9 uses
  %i.cu = load i8, ptr %.0579831, align 1         ; 3 uses
  %i.cv = icmp ult i8 %i.cu, 5
  br i1 %i.cv, label %bb.l, label %.loopexit713.sink.split

bb.l:                                             ; preds = %bb.k
  %.1552 = select i1 %i.aq, i32 1, i32 %.0551833  ; 30 uses
  %.1549 = select i1 %i.aq, i32 %i.af, i32 %.0548834 ; 2 uses
  %.0537 = getelementptr i8, ptr %i.cs, i64 %.0537.idx ; 3 uses
  %i.cw = getelementptr i8, ptr %.0537, i64 %i.ap ; 4 uses
  %i.cx = icmp eq i64 %indvars.iv974, 0
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = zext nneg i8 %i.cu to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0528.in = phi i8 [ %i.da, %bb.m ], [ %i.cu, %bb.l ] ; 3 uses
  %i.db = icmp sgt i32 %.1552, 0                  ; 8 uses
  br i1 %i.db, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %.1552 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 12 uses
  switch i8 %.0528.in, label %bb.v [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
  ]

bb.o:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
end_hunk_3
begin_hunk_4_@_m3dstbi__create_png_image_raw:bb.a
  %i.anh = and i8 %i.ang, 8
  %.not608 = icmp eq i8 %i.anh, 0
  %i.ani = select i1 %.not608, i8 0, i8 %i.ajz
  %i.anj = getelementptr inbounds nuw i8, ptr %.4844, i64 5
  store i8 %i.ani, ptr %i.anf, align 1
  %i.ank = load i8, ptr %.2845, align 1
  %i.anl = and i8 %i.ank, 4
  %.not609 = icmp eq i8 %i.anl, 0
  %i.anm = select i1 %.not609, i8 0, i8 %i.ajz
  %i.ann = getelementptr inbounds nuw i8, ptr %.4844, i64 6
  store i8 %i.anm, ptr %i.anj, align 1
  %i.ano = load i8, ptr %.2845, align 1
  %i.anp = and i8 %i.ano, 2
  %.not610 = icmp eq i8 %i.anp, 0
  %i.anq = select i1 %.not610, i8 0, i8 %i.ajz
  %i.anr = getelementptr inbounds nuw i8, ptr %.4844, i64 7
  store i8 %i.anq, ptr %i.ann, align 1
  %i.ans = load i8, ptr %.2845, align 1
  %i.ant = trunc i8 %i.ans to i1
  %i.anu = select i1 %i.ant, i8 %i.ajz, i8 0
  %i.anv = getelementptr inbounds nuw i8, ptr %.4844, i64 8 ; 2 uses
  store i8 %i.anu, ptr %i.anr, align 1
  %i.anw = add nsw i32 %.16843, -8                ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.2845, i64 1 ; 2 uses
  %i.any = icmp samesign ugt i32 %.16843, 15
  br i1 %i.any, label %.lr.ph846, label %._crit_edge847

._crit_edge847:                                   ; preds = %.lr.ph846, %.preheader711
  %.16.lcssa = phi i32 [ %i.y, %.preheader711 ], [ %i.anw, %.lr.ph846 ] ; 7 uses
  %.4.lcssa = phi ptr [ %i.ajv, %.preheader711 ], [ %i.anv, %.lr.ph846 ] ; 7 uses
  %.2.lcssa = phi ptr [ %i.ajx, %.preheader711 ], [ %i.anx, %.lr.ph846 ] ; 7 uses
  %i.anz = icmp sgt i32 %.16.lcssa, 0
  br i1 %i.anz, label %bb.ap, label %.thread681

bb.ap:                                            ; preds = %._crit_edge847
  %i.aoa = load i8, ptr %.2.lcssa, align 1
  %isneg = icmp slt i8 %i.aoa, 0
  %i.aob = select i1 %isneg, i8 %i.ajz, i8 0
  store i8 %i.aob, ptr %.4.lcssa, align 1
  %.not700 = icmp eq i32 %.16.lcssa, 1
  br i1 %.not700, label %.thread681, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aoc = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 1
  %i.aod = load i8, ptr %.2.lcssa, align 1
  %i.aoe = and i8 %i.aod, 64
  %.not598 = icmp eq i8 %i.aoe, 0
  %i.aof = select i1 %.not598, i8 0, i8 %i.ajz
  store i8 %i.aof, ptr %i.aoc, align 1
  %i.aog = icmp samesign ugt i32 %.16.lcssa, 2
  br i1 %i.aog, label %bb.ar, label %.thread681

bb.ar:                                            ; preds = %bb.aq
  %i.aoh = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.aoi = load i8, ptr %.2.lcssa, align 1
  %i.aoj = and i8 %i.aoi, 32
  %.not599 = icmp eq i8 %i.aoj, 0
  %i.aok = select i1 %.not599, i8 0, i8 %i.ajz
  store i8 %i.aok, ptr %i.aoh, align 1
  %.not701 = icmp eq i32 %.16.lcssa, 3
  br i1 %.not701, label %.thread681, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.aol = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 3
  %i.aom = load i8, ptr %.2.lcssa, align 1
  %i.aon = and i8 %i.aom, 16
  %.not600 = icmp eq i8 %i.aon, 0
  %i.aoo = select i1 %.not600, i8 0, i8 %i.ajz
  store i8 %i.aoo, ptr %i.aol, align 1
  %i.aop = icmp samesign ugt i32 %.16.lcssa, 4
  br i1 %i.aop, label %bb.at, label %.thread681

bb.at:                                            ; preds = %bb.as
  %i.aoq = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 4
  %i.aor = load i8, ptr %.2.lcssa, align 1
  %i.aos = and i8 %i.aor, 8
  %.not601 = icmp eq i8 %i.aos, 0
  %i.aot = select i1 %.not601, i8 0, i8 %i.ajz
  store i8 %i.aot, ptr %i.aoq, align 1
  %.not702 = icmp eq i32 %.16.lcssa, 5
  br i1 %.not702, label %.thread681, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aou = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 5
  %i.aov = load i8, ptr %.2.lcssa, align 1
  %i.aow = and i8 %i.aov, 4
  %.not602 = icmp eq i8 %i.aow, 0
  %i.aox = select i1 %.not602, i8 0, i8 %i.ajz
  store i8 %i.aox, ptr %i.aou, align 1
  %i.aoy = icmp eq i32 %.16.lcssa, 7
  br i1 %i.aoy, label %bb.av, label %.thread681

bb.av:                                            ; preds = %bb.au
  %i.aoz = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 6
  %i.apa = load i8, ptr %.2.lcssa, align 1
  %i.apb = and i8 %i.apa, 2
  %.not603 = icmp eq i8 %i.apb, 0
  %i.apc = select i1 %.not603, i8 0, i8 %i.ajz
  store i8 %i.apc, ptr %i.aoz, align 1
  br label %.thread681

.thread681:                                       ; preds = %._crit_edge847, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %._crit_edge855, %bb.am, %bb.ak, %bb.ao, %bb.an, %bb.au, %bb.av, %._crit_edge863, %bb.al
  br i1 %.not611, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.thread681
  %i.apd = load ptr, ptr %i.u, align 8
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.aju ; 16 uses
  br i1 %i.aje, label %.preheader, label %.preheader707

.preheader707:                                    ; preds = %bb.aw
  br i1 %i.ajf, label %.lr.ph869.preheader, label %.loopexit

.lr.ph869.preheader:                              ; preds = %.preheader707
  br i1 %lcmp.mod1669.not.not, label %.lr.ph869.prol, label %.lr.ph869.prol.loopexit

.lr.ph869.prol:                                   ; preds = %.lr.ph869.preheader
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ajn ; 4 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 3
  store i8 -1, ptr %i.apg, align 1
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ajo ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 2
  %i.apj = load i8, ptr %i.api, align 1
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apf, i64 2
  store i8 %i.apj, ptr %i.apk, align 1
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aph, i64 1
  %i.apm = load i8, ptr %i.apl, align 1
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apf, i64 1
  store i8 %i.apm, ptr %i.apn, align 1
  %i.apo = load i8, ptr %i.aph, align 1
  store i8 %i.apo, ptr %i.apf, align 1
  br label %.lr.ph869.prol.loopexit

.lr.ph869.prol.loopexit:                          ; preds = %.lr.ph869.prol, %.lr.ph869.preheader
  %indvars.iv980.unr = phi i64 [ %i.ajg, %.lr.ph869.preheader ], [ %indvars.iv.next981.prol, %.lr.ph869.prol ]
  br i1 %i.ajp, label %.loopexit, label %.lr.ph869

.preheader:                                       ; preds = %bb.aw
  br i1 %i.ajf, label %.lr.ph872.preheader, label %.loopexit

.lr.ph872.preheader:                              ; preds = %.preheader
  br i1 %lcmp.mod1672.not, label %.lr.ph872.prol.loopexit, label %.lr.ph872.prol

.lr.ph872.prol:                                   ; preds = %.lr.ph872.preheader, %.lr.ph872.prol
  %indvars.iv983.prol = phi i64 [ %indvars.iv.next984.prol, %.lr.ph872.prol ], [ %i.ajg, %.lr.ph872.preheader ] ; 3 uses
  %prol.iter1673 = phi i64 [ %prol.iter1673.next, %.lr.ph872.prol ], [ 0, %.lr.ph872.preheader ]
  %i.app = shl nuw nsw i64 %indvars.iv983.prol, 1
  %i.apq = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.app ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 1
  store i8 -1, ptr %i.apr, align 1
  %i.aps = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv983.prol
  %i.apt = load i8, ptr %i.aps, align 1
  store i8 %i.apt, ptr %i.apq, align 1
  %indvars.iv.next984.prol = add nsw i64 %indvars.iv983.prol, -1 ; 2 uses
  %prol.iter1673.next = add i64 %prol.iter1673, 1 ; 2 uses
  %prol.iter1673.cmp.not = icmp eq i64 %prol.iter1673.next, %xtraiter1671
  br i1 %prol.iter1673.cmp.not, label %.lr.ph872.prol.loopexit, label %.lr.ph872.prol, !llvm.loop !383

.lr.ph872.prol.loopexit:                          ; preds = %.lr.ph872.prol, %.lr.ph872.preheader
  %indvars.iv983.unr = phi i64 [ %i.ajg, %.lr.ph872.preheader ], [ %indvars.iv.next984.prol, %.lr.ph872.prol ]
  br i1 %i.ajq, label %.loopexit, label %.lr.ph872

.lr.ph872:                                        ; preds = %.lr.ph872.prol.loopexit, %.lr.ph872
  %indvars.iv983 = phi i64 [ %indvars.iv.next984.3, %.lr.ph872 ], [ %indvars.iv983.unr, %.lr.ph872.prol.loopexit ] ; 6 uses
  %i.apu = shl nuw nsw i64 %indvars.iv983, 1
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apu ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  store i8 -1, ptr %i.apw, align 1
  %i.apx = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv983
  %i.apy = load i8, ptr %i.apx, align 1
  store i8 %i.apy, ptr %i.apv, align 1
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, -1 ; 2 uses
  %i.apz = shl nuw nsw i64 %indvars.iv.next984, 1
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apz ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 1
  store i8 -1, ptr %i.aqb, align 1
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv.next984
  %i.aqd = load i8, ptr %i.aqc, align 1
  store i8 %i.aqd, ptr %i.aqa, align 1
  %indvars.iv.next984.1 = add nsw i64 %indvars.iv983, -2 ; 2 uses
  %i.aqe = shl nuw nsw i64 %indvars.iv.next984.1, 1
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqe ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  store i8 -1, ptr %i.aqg, align 1
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv.next984.1
  %i.aqi = load i8, ptr %i.aqh, align 1
  store i8 %i.aqi, ptr %i.aqf, align 1
  %indvars.iv.next984.2 = add nsw i64 %indvars.iv983, -3 ; 3 uses
  %i.aqj = shl nuw nsw i64 %indvars.iv.next984.2, 1
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 1
  store i8 -1, ptr %i.aql, align 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv.next984.2
  %i.aqn = load i8, ptr %i.aqm, align 1
  store i8 %i.aqn, ptr %i.aqk, align 1
  %indvars.iv.next984.3 = add nsw i64 %indvars.iv983, -4
  %.not1047.3 = icmp eq i64 %indvars.iv.next984.2, 0
  br i1 %.not1047.3, label %.loopexit, label %.lr.ph872

.lr.ph869:                                        ; preds = %.lr.ph869.prol.loopexit, %.lr.ph869
  %indvars.iv980 = phi i64 [ %indvars.iv.next981.1, %.lr.ph869 ], [ %indvars.iv980.unr, %.lr.ph869.prol.loopexit ] ; 4 uses
  %i.aqo = shl nsw i64 %indvars.iv980, 2
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqo ; 4 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 3
  store i8 -1, ptr %i.aqq, align 1
  %i.aqr = mul nuw nsw i64 %indvars.iv980, 3
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqr ; 3 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 2
  %i.aqu = load i8, ptr %i.aqt, align 1
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqp, i64 2
  store i8 %i.aqu, ptr %i.aqv, align 1
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 1
  %i.aqx = load i8, ptr %i.aqw, align 1
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqp, i64 1
  store i8 %i.aqx, ptr %i.aqy, align 1
  %i.aqz = load i8, ptr %i.aqs, align 1
  store i8 %i.aqz, ptr %i.aqp, align 1
  %indvars.iv.next981 = add nsw i64 %indvars.iv980, -1 ; 3 uses
  %i.ara = shl nsw i64 %indvars.iv.next981, 2
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ara ; 4 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 3
  store i8 -1, ptr %i.arc, align 1
  %i.ard = mul nuw nsw i64 %indvars.iv.next981, 3
  %i.are = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ard ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 2
  %i.arg = load i8, ptr %i.arf, align 1
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arb, i64 2
  store i8 %i.arg, ptr %i.arh, align 1
  %i.ari = getelementptr inbounds nuw i8, ptr %i.are, i64 1
  %i.arj = load i8, ptr %i.ari, align 1
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arb, i64 1
  store i8 %i.arj, ptr %i.ark, align 1
  %i.arl = load i8, ptr %i.are, align 1
  store i8 %i.arl, ptr %i.arb, align 1
  %indvars.iv.next981.1 = add nsw i64 %indvars.iv980, -2
  %.not1046.1 = icmp eq i64 %indvars.iv.next981, 0
  br i1 %.not1046.1, label %.loopexit, label %.lr.ph869

.loopexit:                                        ; preds = %.lr.ph869.prol.loopexit, %.lr.ph869, %.lr.ph872.prol.loopexit, %.lr.ph872, %.preheader707, %.preheader, %.thread681
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 1 ; 2 uses
  %exitcond990.not = icmp eq i64 %indvars.iv.next987, %wide.trip.count989
  br i1 %exitcond990.not, label %.loopexit713, label %bb.ai

bb.ax:                                            ; preds = %._crit_edge837
  br i1 %i.a, label %bb.ay, label %.loopexit713

bb.ay:                                            ; preds = %._crit_edge837.thread, %bb.ax
  %i.arm = mul i32 %i.c, %5                       ; 4 uses
  %.not877 = icmp eq i32 %i.arm, 0
  br i1 %.not877, label %.loopexit713, label %.lr.ph842.preheader

.lr.ph842.preheader:                              ; preds = %bb.ay
  %i.arn = load ptr, ptr %i.u, align 8            ; 2 uses
  %xtraiter1674 = and i32 %i.arm, 3               ; 3 uses
  %i.aro = icmp ult i32 %i.arm, 4
  br i1 %i.aro, label %.lr.ph842.epil.preheader, label %.lr.ph842.preheader.new

.lr.ph842.preheader.new:                          ; preds = %.lr.ph842.preheader
  %unroll_iter1678 = and i32 %i.arm, -4
  br label %.lr.ph842

.lr.ph842:                                        ; preds = %.lr.ph842, %.lr.ph842.preheader.new
  %.0840 = phi ptr [ %i.arn, %.lr.ph842.preheader.new ], [ %i.asu, %.lr.ph842 ] ; 10 uses
  %niter1679 = phi i32 [ 0, %.lr.ph842.preheader.new ], [ %niter1679.next.3, %.lr.ph842 ]
  %i.arp = load i8, ptr %.0840, align 1
  %i.arq = zext i8 %i.arp to i16
  %i.arr = shl nuw i16 %i.arq, 8
  %i.ars = getelementptr inbounds nuw i8, ptr %.0840, i64 1
  %i.art = load i8, ptr %i.ars, align 1
  %i.aru = zext i8 %i.art to i16
  %i.arv = or disjoint i16 %i.arr, %i.aru
  store i16 %i.arv, ptr %.0840, align 2
  %i.arw = getelementptr i8, ptr %.0840, i64 2    ; 2 uses
  %i.arx = load i8, ptr %i.arw, align 2
  %i.ary = zext i8 %i.arx to i16
  %i.arz = shl nuw i16 %i.ary, 8
  %i.asa = getelementptr i8, ptr %.0840, i64 3
  %i.asb = load i8, ptr %i.asa, align 1
  %i.asc = zext i8 %i.asb to i16
  %i.asd = or disjoint i16 %i.arz, %i.asc
  store i16 %i.asd, ptr %i.arw, align 2
  %i.ase = getelementptr i8, ptr %.0840, i64 4    ; 2 uses
  %i.asf = load i8, ptr %i.ase, align 2
  %i.asg = zext i8 %i.asf to i16
  %i.ash = shl nuw i16 %i.asg, 8
  %i.asi = getelementptr i8, ptr %.0840, i64 5
  %i.asj = load i8, ptr %i.asi, align 1
  %i.ask = zext i8 %i.asj to i16
  %i.asl = or disjoint i16 %i.ash, %i.ask
  store i16 %i.asl, ptr %i.ase, align 2
  %i.asm = getelementptr i8, ptr %.0840, i64 6    ; 2 uses
  %i.asn = load i8, ptr %i.asm, align 2
  %i.aso = zext i8 %i.asn to i16
  %i.asp = shl nuw i16 %i.aso, 8
  %i.asq = getelementptr i8, ptr %.0840, i64 7
  %i.asr = load i8, ptr %i.asq, align 1
  %i.ass = zext i8 %i.asr to i16
  %i.ast = or disjoint i16 %i.asp, %i.ass
  store i16 %i.ast, ptr %i.asm, align 2
  %i.asu = getelementptr i8, ptr %.0840, i64 8    ; 2 uses
  %niter1679.next.3 = add i32 %niter1679, 4       ; 2 uses
  %niter1679.ncmp.3 = icmp eq i32 %niter1679.next.3, %unroll_iter1678
  br i1 %niter1679.ncmp.3, label %.loopexit713.loopexit.unr-lcssa, label %.lr.ph842

.loopexit713.sink.split:                          ; preds = %bb.k, %bb.i, %bb.h, %_m3dstbi__mul2sizes_valid.exit12.i, %_m3dstbi__mul2sizes_valid.exit.i, %bb.d, %_m3dstbi__mul2sizes_valid.exit.thread15.i, %_m3dstbi__malloc_mad3.exit, %_m3dstbi__malloc_mad3.exit.thread
  %.str.319.sink = phi ptr [ @.str.319, %bb.i ], [ @.str.319, %bb.h ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit12.i ], [ @.str.320, %_m3dstbi__malloc_mad3.exit ], [ @.str.320, %_m3dstbi__malloc_mad3.exit.thread ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.thread15.i ], [ @.str.319, %bb.d ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.i ], [ @.str.319, %bb.k ]
  store ptr %.str.319.sink, ptr @_m3dstbi__g_failure_reason, align 8
  br label %.loopexit713

.loopexit713.loopexit.unr-lcssa:                  ; preds = %.lr.ph842
  %lcmp.mod1676.not = icmp eq i32 %xtraiter1674, 0
  br i1 %lcmp.mod1676.not, label %.loopexit713, label %.lr.ph842.epil.preheader

.lr.ph842.epil.preheader:                         ; preds = %.loopexit713.loopexit.unr-lcssa, %.lr.ph842.preheader
  %.0840.epil.init = phi ptr [ %i.arn, %.lr.ph842.preheader ], [ %i.asu, %.loopexit713.loopexit.unr-lcssa ]
  %lcmp.mod1677 = icmp ne i32 %xtraiter1674, 0
  tail call void @llvm.assume(i1 %lcmp.mod1677)
  br label %.lr.ph842.epil

.lr.ph842.epil:                                   ; preds = %.lr.ph842.epil, %.lr.ph842.epil.preheader
  %.0840.epil = phi ptr [ %i.atc, %.lr.ph842.epil ], [ %.0840.epil.init, %.lr.ph842.epil.preheader ] ; 4 uses
  %epil.iter1675 = phi i32 [ %epil.iter1675.next, %.lr.ph842.epil ], [ 0, %.lr.ph842.epil.preheader ]
  %i.asv = load i8, ptr %.0840.epil, align 1
  %i.asw = zext i8 %i.asv to i16
  %i.asx = shl nuw i16 %i.asw, 8
  %i.asy = getelementptr inbounds nuw i8, ptr %.0840.epil, i64 1
  %i.asz = load i8, ptr %i.asy, align 1
  %i.ata = zext i8 %i.asz to i16
  %i.atb = or disjoint i16 %i.asx, %i.ata
  store i16 %i.atb, ptr %.0840.epil, align 2
  %i.atc = getelementptr i8, ptr %.0840.epil, i64 2
  %epil.iter1675.next = add i32 %epil.iter1675, 1 ; 2 uses
  %epil.iter1675.cmp.not = icmp eq i32 %epil.iter1675.next, %xtraiter1674
  br i1 %epil.iter1675.cmp.not, label %.loopexit713, label %.lr.ph842.epil, !llvm.loop !384

.loopexit713:                                     ; preds = %.loopexit, %.loopexit713.loopexit.unr-lcssa, %.lr.ph842.epil, %.loopexit713.sink.split, %._crit_edge837.thread, %bb.ay, %bb.ax
  %.2578 = phi i32 [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %._crit_edge837.thread ], [ 0, %.loopexit713.sink.split ], [ 1, %.loopexit713.loopexit.unr-lcssa ], [ 1, %.lr.ph842.epil ], [ 1, %.loopexit ]
  ret i32 %.2578
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #47

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #32

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #41

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #48

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @par_shapes__cmp1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #21 {
bb.a:
  %.b = load i1, ptr @par_shapes__sort_context.1, align 8 ; 2 uses
  %i.a = select i1 %.b, i32 20, i32 0             ; 2 uses
  %i.b = load i16, ptr %0, align 2
  %i.c = load ptr, ptr @par_shapes__sort_context.0, align 8 ; 2 uses
  %i.d = zext i16 %i.b to i64
  %.idx = mul nuw nsw i64 %i.d, 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fptosi float %i.l to i32
  %i.n = mul nsw i32 %i.a, %i.j
  %i.o = add nsw i32 %i.n, %i.g
  %i.p = select i1 %.b, i32 400, i32 0            ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.m
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = load i16, ptr %1, align 2
  %i.t = zext i16 %i.s to i64
  %.idx28 = mul nuw nsw i64 %i.t, 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx28 ; 3 uses
  %i.v = load float, ptr %i.u, align 4
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load float, ptr %i.x, align 4
  %i.z = fptosi float %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fptosi float %i.ab to i32
  %i.ad = mul nsw i32 %i.a, %i.z
  %i.ae = add nsw i32 %i.ad, %i.w
  %i.af = mul nsw i32 %i.p, %i.ac
  %i.ag = add nsw i32 %i.ae, %i.af
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.r, i32 %i.ag)
  ret i32 %.0
}

declare void @LoadTexture(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #19

declare ptr @LoadFileText(ptr noundef) local_unnamed_addr #34

declare ptr @GetWorkingDirectory() local_unnamed_addr #34

declare ptr @GetDirectoryPath(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #41

declare void @UnloadFileText(ptr noundef) local_unnamed_addr #34
end_hunk_4
