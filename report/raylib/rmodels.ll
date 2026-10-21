Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@_m3dstbi__png_load:bb.a
bb.aw:                                            ; preds = %.lr.ph581.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 4 uses
  store ptr %i.ku, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i

_m3dstbi__get8.exit.i304.i.i:                     ; preds = %bb.aw, %.lr.ph581.i.i
  %i.kv = phi ptr [ %i.ku, %bb.aw ], [ %i.kq, %.lr.ph581.i.i ]
  %i.kw = phi ptr [ %i.ku, %bb.aw ], [ %i.kr, %.lr.ph581.i.i ]
  %i.kx = phi ptr [ %i.ku, %bb.aw ], [ %i.ks, %.lr.ph581.i.i ] ; 4 uses
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
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv778.i.i
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
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv778.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  store i8 %.0.i2.i306.i.i.1, ptr %i.lt, align 1
  %indvars.iv.next779.i.i.1 = add nuw nsw i64 %indvars.iv778.i.i, 2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2
  %niter89.ncmp.1 = icmp eq i64 %niter89, %i.ju
  br i1 %niter89.ncmp.1, label %.lr.ph581.i.i.epil, label %.lr.ph581.i.i

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
  %.pre790.i.i = load ptr, ptr %i.i, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bd
  %i.mf = phi ptr [ %i.me, %bb.bh ], [ %i.aw, %bb.bd ] ; 2 uses
  %i.mg = phi ptr [ %.pre790.i.i, %bb.bh ], [ %i.ax, %bb.bd ]
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
  %.pre791.i.i = load ptr, ptr %i.i, align 8      ; 2 uses
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
  %i.ne = icmp ne i8 %.0217.i.i, 0                ; 2 uses
  %or.cond10.i.i = select i1 %or.cond7.not243.i.i, i1 true, i1 %i.ne
  %spec.select1070.i.i = select i1 %or.cond10.i.i, i32 %i.nb, i32 %i.na ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1070.i.i, ptr %i.nf, align 4
  %i.ng = load i32, ptr %i.d, align 4             ; 2 uses
  %i.nh = icmp eq i32 %i.av, 16
  %i.ni = zext i1 %i.nh to i32
  %i.nj = shl i32 %spec.select1070.i.i, %i.ni     ; 6 uses
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
  %i.np = mul nuw nsw i32 %i.nl, %i.nk            ; 3 uses
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
  %i.nt = mul nuw nsw i32 %i.nj, %i.np
  %6 = sext i32 %i.nt to i64
  %i.nu = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %6) #56
  br label %_m3dstbi__malloc_mad3.exit.i.i.i

_m3dstbi__malloc_mad3.exit.i.i.i:                 ; preds = %_m3dstbi__mad3sizes_valid.exit.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i, %bb.bm
  %.0.i.i310.i.i = phi ptr [ %i.nu, %_m3dstbi__mad3sizes_valid.exit.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit12.i.i.i.i.i ], [ null, %_m3dstbi__mul2sizes_valid.exit.i.i.i.i.i ], [ null, %bb.bm ], [ null, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i.i.i.i ] ; 3 uses
  %i.nv = sext i32 %i.nj to i64                   ; 9 uses
  %.pre51 = load ptr, ptr %5, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %_m3dstbi__malloc_mad3.exit.i.i.i
  %i.nw = phi ptr [ %.pre51, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %i.qn, %bb.br ] ; 4 uses
  %indvars.iv106.i.i.i = phi i64 [ 0, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %indvars.iv.next107.i.i.i, %bb.br ] ; 5 uses
  %.075100.i.i.i = phi ptr [ %i.my, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.378.i.i.i, %bb.br ] ; 3 uses
  %.08498.i.i.i = phi i32 [ %i.ng, %_m3dstbi__malloc_mad3.exit.i.i.i ], [ %.387.i.i.i, %bb.br ] ; 3 uses
  %i.nx = load i32, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xorig, i64 %indvars.iv106.i.i.i
  %i.nz = load i32, ptr %i.ny, align 4            ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.xspc, i64 %indvars.iv106.i.i.i
  %i.ob = load i32, ptr %i.oa, align 4            ; 4 uses
  %i.oc = xor i32 %i.nz, -1
  %i.od = add i32 %i.nx, %i.oc
  %i.oe = add i32 %i.od, %i.ob                    ; 2 uses
  %i.of = udiv i32 %i.oe, %i.ob                   ; 6 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.oh = load i32, ptr %i.og, align 4
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yorig, i64 %indvars.iv106.i.i.i
  %i.oj = load i32, ptr %i.oi, align 4            ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr @__const._m3dstbi__create_png_image.yspc, i64 %indvars.iv106.i.i.i
  %i.ol = load i32, ptr %i.ok, align 4            ; 4 uses
  %i.om = xor i32 %i.oj, -1
  %i.on = add i32 %i.oh, %i.om
  %i.oo = add i32 %i.on, %i.ol                    ; 2 uses
  %i.op = udiv i32 %i.oo, %i.ol                   ; 4 uses
  %i.oq = icmp ule i32 %i.ob, %i.oe
  %i.or = icmp ule i32 %i.ol, %i.oo
  %or.cond.i311.i.i = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond.i311.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.os = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ot = load i32, ptr %i.os, align 8
  %i.ou = mul i32 %i.of, %i.av
  %i.ov = mul i32 %i.ou, %i.ot
  %i.ow = add nsw i32 %i.ov, 7
  %i.ox = ashr i32 %i.ow, 3
  %i.oy = add nsw i32 %i.ox, 1
  %i.oz = mul nsw i32 %i.oy, %i.op                ; 2 uses
  %i.pa = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef %.075100.i.i.i, i32 noundef %.08498.i.i.i, i32 noundef %spec.select1070.i.i, i32 noundef %i.of, i32 noundef %i.op, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not90.not.i.i.i = icmp eq i32 %i.pa, 0
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  br i1 %.not90.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread.i.i, label %.preheader94.i.i.i

.preheader94.i.i.i:                               ; preds = %bb.bq
  %i.pb = icmp sgt i32 %i.op, 0
  %i.pc = icmp sgt i32 %i.of, 0
  %or.cond101.i.i.i = and i1 %i.pc, %i.pb
  %.pre109.i.i.i = load ptr, ptr %i.g, align 8    ; 4 uses
  br i1 %or.cond101.i.i.i, label %.preheader.lr.ph.split.i.i.i, label %._crit_edge97.split.i.i.i

.preheader.lr.ph.split.i.i.i:                     ; preds = %.preheader94.i.i.i
  %i.pd = sext i32 %i.ob to i64                   ; 3 uses
  %i.pe = sext i32 %i.nz to i64                   ; 3 uses
  %i.pf = zext nneg i32 %i.of to i64              ; 3 uses
  %i.pg = zext nneg i32 %i.op to i64
  %.pre.pre.i.i.i = load i32, ptr %.pre, align 8
  %factor.op.mul.i.i.i = mul i32 %.pre.pre.i.i.i, %i.nj
  %xtraiter91 = and i64 %i.pf, 1
  %i.ph = icmp eq i32 %i.of, 1
  %unroll_iter94 = and i64 %i.pf, 2147483646
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %lcmp.mod93 = trunc i32 %i.of to i1
  br label %.preheader.i.i.i

_m3dstbi__create_png_image.exit.thread.i.i:       ; preds = %bb.bq
  call void @free(ptr noundef %.0.i.i310.i.i) #54
  br label %_m3dstbi__parse_png_file.exit.thread51.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.split.i.i.i
  %indvars.iv103.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i ], [ %indvars.iv.next104.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.pi = trunc i64 %indvars.iv103.i.i.i to i32
  %i.pj = mul i32 %i.ol, %i.pi
  %i.pk = add i32 %i.pj, %i.oj
  %.reass.i.i.i = mul i32 %factor.op.mul.i.i.i, %i.pk
  %i.pl = mul nuw nsw i64 %indvars.iv103.i.i.i, %i.pf ; 3 uses
  %i.pm = zext i32 %.reass.i.i.i to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i310.i.i, i64 %i.pm ; 3 uses
  br i1 %i.ph, label %.epil.preheader90, label %.preheader.i.i.i.new

.preheader.i.i.i.new:                             ; preds = %.preheader.i.i.i, %.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %niter95 = phi i64 [ %niter95.next.1, %.preheader.i.i.i.new ], [ 0, %.preheader.i.i.i ]
  %i.po = mul nsw i64 %indvars.iv.i.i.i, %i.pd
  %i.pp = add nsw i64 %i.po, %i.pe
  %i.pq = mul nsw i64 %i.pp, %i.nv
  %i.pr = getelementptr inbounds i8, ptr %i.pn, i64 %i.pq
  %i.ps = add nuw nsw i64 %indvars.iv.i.i.i, %i.pl
  %i.pt = mul nsw i64 %i.ps, %i.nv
  %i.pu = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.pt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pr, ptr align 1 %i.pu, i64 %i.nv, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.pv = mul nsw i64 %indvars.iv.next.i.i.i, %i.pd
  %i.pw = add nsw i64 %i.pv, %i.pe
  %i.px = mul nsw i64 %i.pw, %i.nv
  %i.py = getelementptr inbounds i8, ptr %i.pn, i64 %i.px
  %i.pz = add nuw nsw i64 %indvars.iv.next.i.i.i, %i.pl
  %i.qa = mul nsw i64 %i.pz, %i.nv
  %i.qb = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.py, ptr align 1 %i.qb, i64 %i.nv, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter95.next.1 = add i64 %niter95, 2           ; 2 uses
  %niter95.ncmp.1.not = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1.not, label %._crit_edge.i.i.i.unr-lcssa, label %.preheader.i.i.i.new

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.preheader.i.i.i.new
  br i1 %lcmp.mod92.not, label %._crit_edge.i.i.i, label %.epil.preheader90

.epil.preheader90:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod93)
  %i.qc = mul nsw i64 %indvars.iv.i.i.i.epil.init, %i.pd
  %i.qd = add nsw i64 %i.qc, %i.pe
  %i.qe = mul nsw i64 %i.qd, %i.nv
  %i.qf = getelementptr inbounds i8, ptr %i.pn, i64 %i.qe
  %i.qg = add nuw nsw i64 %indvars.iv.i.i.i.epil.init, %i.pl
  %i.qh = mul nsw i64 %i.qg, %i.nv
  %i.qi = getelementptr inbounds i8, ptr %.pre109.i.i.i, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qf, ptr align 1 %i.qi, i64 %i.nv, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.epil.preheader90
  %indvars.iv.next104.i.i.i = add nuw nsw i64 %indvars.iv103.i.i.i, 1 ; 2 uses
  %i.qj = icmp samesign ult i64 %indvars.iv.next104.i.i.i, %i.pg
  br i1 %i.qj, label %.preheader.i.i.i, label %._crit_edge97.split.i.i.i

._crit_edge97.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader94.i.i.i
  call void @free(ptr noundef %.pre109.i.i.i) #54
  %i.qk = zext i32 %i.oz to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %.075100.i.i.i, i64 %i.qk
  %i.qm = sub i32 %.08498.i.i.i, %i.oz
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge97.split.i.i.i, %bb.bp
  %i.qn = phi ptr [ %i.nw, %bb.bp ], [ %.pre, %._crit_edge97.split.i.i.i ]
  %.387.i.i.i = phi i32 [ %.08498.i.i.i, %bb.bp ], [ %i.qm, %._crit_edge97.split.i.i.i ]
  %.378.i.i.i = phi ptr [ %.075100.i.i.i, %bb.bp ], [ %i.ql, %._crit_edge97.split.i.i.i ]
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next107.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %_m3dstbi__create_png_image.exit.thread370.i.i, label %bb.bp

_m3dstbi__create_png_image.exit.thread370.i.i:    ; preds = %bb.br
  store ptr %.0.i.i310.i.i, ptr %i.g, align 8
  br label %bb.bs

_m3dstbi__create_png_image.exit.i.i:              ; preds = %bb.bl
  %i.qo = call fastcc i32 @_m3dstbi__create_png_image_raw(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.my, i32 noundef %i.ng, i32 noundef %spec.select1070.i.i, i32 noundef %i.nk, i32 noundef %i.nl, i32 noundef %i.av, i32 noundef range(i32 0, 256) %.0191.i.i)
  %.not244.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not244.i.i, label %_m3dstbi__parse_png_file.exit.thread51.i, label %bb.bs

bb.bs:                                            ; preds = %_m3dstbi__create_png_image.exit.i.i, %_m3dstbi__create_png_image.exit.thread370.i.i
  br i1 %i.ne, label %bb.bt, label %_m3dstbi__compute_transparency16.exit.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.qp = load i32, ptr %i.an, align 8
  %i.qq = icmp eq i32 %i.qp, 16
  %i.qr = load i32, ptr %i.nf, align 4
  %.val.i.i = load ptr, ptr %5, align 8           ; 4 uses
  %.val274.i.i = load ptr, ptr %i.g, align 8      ; 10 uses
  %.val.val.i.i = load i32, ptr %.val.i.i, align 8
  %i.qs = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val275.i.i = load i32, ptr %i.qs, align 4
  %i.qt = mul i32 %.val.val275.i.i, %.val.val.i.i ; 15 uses
  %i.qu = icmp eq i32 %i.qr, 2                    ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.qt, 0             ; 4 uses
  br i1 %i.qq, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.qu, label %.preheader.i313.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader1.i.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre11.i.i.i = load i16, ptr %i.c, align 2     ; 3 uses
  %i.qx = load i16, ptr %i.qv, align 2            ; 3 uses
  %i.qy = load i16, ptr %i.qw, align 2            ; 3 uses
  %xtraiter108 = and i32 %i.qt, 1
  %i.qz = icmp eq i32 %i.qt, 1
  br i1 %i.qz, label %.epil.preheader107, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter112 = and i32 %i.qt, -2
  br label %bb.bv

.preheader.i313.i.i:                              ; preds = %bb.bu
  br i1 %.not8.i.i.i, label %_m3dstbi__compute_transparency16.exit.i.i, label %.lr.ph7.i.preheader.i.i

.lr.ph7.i.preheader.i.i:                          ; preds = %.preheader.i313.i.i
  %i.ra = load i16, ptr %i.c, align 2             ; 5 uses
end_hunk_0
begin_hunk_1_@_m3dstbi__zbuild_huffman:bb.a
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod162 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
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
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !296

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
  %.fr160 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr160, <i32 2048, i32 4096, i32 8192, i32 16384>
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
  br i1 %i.cv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !297

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
  %i.h = shl i32 %3, %i.d                         ; 12 uses
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
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
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
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %8 = sext i32 %i.r to i64
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %8) #56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.s, ptr %i.t, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.loopexit713.sink.split, label %bb.d

bb.d:                                             ; preds = %_m3dstbi__malloc_mad3.exit
  %i.u = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.loopexit713.sink.split

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.v, label %_m3dstbi__mul2sizes_valid.exit.i, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.i:                 ; preds = %bb.e
  %i.w = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.w
  br i1 %.not23.i, label %.loopexit713.sink.split, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.thread15.i:        ; preds = %_m3dstbi__mul2sizes_valid.exit.i, %bb.e
  %i.x = mul i32 %i.g, %4                         ; 14 uses
  %i.y = or i32 %i.x, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.y, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.loopexit713.sink.split

bb.f:                                             ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i
  %i.z = icmp eq i32 %6, 0
  br i1 %i.z, label %_m3dstbi__mad3sizes_valid.exit._crit_edge, label %_m3dstbi__mul2sizes_valid.exit12.i

_m3dstbi__mul2sizes_valid.exit12.i:               ; preds = %bb.f
  %i.aa = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.x, %i.aa
  %i.ab = mul i32 %i.x, %6                        ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 2147483640
  %or.cond705 = or i1 %.not.i, %i.ac
  br i1 %or.cond705, label %.loopexit713.sink.split, label %_m3dstbi__mad3sizes_valid.exit._crit_edge

_m3dstbi__mad3sizes_valid.exit._crit_edge:        ; preds = %bb.f, %_m3dstbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ab, %_m3dstbi__mul2sizes_valid.exit12.i ], [ 0, %bb.f ]
  %i.ad = add nsw i32 %.pre-phi, 7
  %i.ae = lshr i32 %i.ad, 3                       ; 4 uses
  %i.af = add nuw nsw i32 %i.ae, 1
  %i.ag = mul i32 %i.af, %5                       ; 2 uses
  %i.ah = load i32, ptr %i.b, align 8
  %i.ai = icmp eq i32 %i.ah, %4
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.ak, %5
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not597 = icmp eq i32 %2, %i.ag
  br i1 %.not597, label %bb.j, label %.loopexit713.sink.split

bb.i:                                             ; preds = %bb.g, %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.am = icmp ult i32 %2, %i.ag
  br i1 %i.am, label %.loopexit713.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.k, label %._crit_edge837.thread, label %.lr.ph836

.lr.ph836:                                        ; preds = %bb.j
  %i.an = zext i32 %i.e to i64                    ; 10 uses
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = icmp slt i32 %6, 8                      ; 4 uses
  %i.aq = sub i32 %i.c, %i.ae
  %narrow = select i1 %i.ap, i32 %i.aq, i32 0
  %.0537.idx = zext i32 %narrow to i64            ; 10 uses
  %i.ar = icmp eq i32 %6, 8
  %.not612 = icmp eq i32 %i.g, %3                 ; 3 uses
  %9 = sext i32 %i.h to i64                       ; 60 uses
  %10 = sext i32 %i.g to i64                      ; 2 uses
  %i.as = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.ap, i1 true, i1 %.not612
  %.6573753 = add i32 %4, -1                      ; 8 uses
  %.not614754 = icmp eq i32 %.6573753, 0          ; 7 uses
  %wide.trip.count977 = zext i32 %5 to i64
  %i.at = sub nsw i64 %i.an, %.0537.idx
  %i.au = add i32 %4, -2                          ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = mul nsw i64 %9, %i.av
  %i.ax = zext i32 %i.au to i64                   ; 3 uses
  %i.ay = mul nsw i64 %9, %i.ax
  %i.az = sub nsw i64 0, %9
  %i.ba = add nsw i64 %i.ax, -1
  %i.bb = mul i64 %i.ba, %9
  %i.bc = add i32 %4, -2                          ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = mul nsw i64 %9, %i.bd                   ; 2 uses
  %i.bf = add i64 %i.be, %.0537.idx
  %i.bg = sub i64 %i.bf, %i.an
  %i.bh = zext i32 %i.bc to i64                   ; 3 uses
  %i.bi = mul nsw i64 %9, %i.bh                   ; 2 uses
  %i.bj = add i64 %i.bi, %.0537.idx
  %i.bk = sub i64 %i.bj, %i.an
  %i.bl = sub nsw i64 0, %9                       ; 2 uses
  %i.bm = add nsw i64 %i.bh, -1
  %i.bn = mul i64 %i.bm, %9
  %i.bo = add i32 %4, -2
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = mul nsw i64 %9, %i.bp                   ; 2 uses
  %i.br = add nsw i64 %i.bp, -1
  %i.bs = mul i64 %i.br, %9                       ; 2 uses
  %i.bt = add i64 %i.bq, %.0537.idx
  %i.bu = sub i64 %i.bt, %i.an
  %i.bv = add nsw i64 %9, %i.an
  %i.bw = sub nsw i64 %.0537.idx, %i.bv
  %i.bx = add i64 %i.bs, %.0537.idx
  %i.by = sub i64 %i.bx, %i.an
  %i.bz = add i32 %4, -2                          ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 3 uses
  %i.cb = mul nsw i64 %9, %i.ca
  %i.cc = sub nsw i64 0, %9                       ; 2 uses
  %i.cd = add nsw i64 %i.ca, -1
  %i.ce = mul i64 %i.cd, %9
  %i.cf = zext i32 %i.bz to i64                   ; 3 uses
  %i.cg = mul nsw i64 %9, %i.cf
  %i.ch = add nsw i64 %i.cf, -1
  %i.ci = mul i64 %i.ch, %9
  %brmerge.not = and i1 %i.v, %i.a
  %xtraiter1649 = and i32 %4, 7                   ; 3 uses
  %i.cj = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1650.not = icmp eq i32 %xtraiter1649, 0
  %lcmp.mod1651 = icmp ne i32 %xtraiter1649, 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph836, %.loopexit734
  %indvars.iv974 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next975, %.loopexit734 ] ; 3 uses
  %.0548834 = phi i32 [ %4, %.lr.ph836 ], [ %.1549, %.loopexit734 ]
  %.0551833 = phi i32 [ %i.i, %.lr.ph836 ], [ %.1552, %.loopexit734 ] ; 17 uses
  %.0579831 = phi ptr [ %1, %.lr.ph836 ], [ %.11590, %.loopexit734 ] ; 3 uses
  %i.ck = load ptr, ptr %i.t, align 8             ; 7 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64              ; 4 uses
  %i.cm = trunc i64 %indvars.iv974 to i32
  %i.cn = mul i32 %i.e, %i.cm
  %i.co = zext i32 %i.cn to i64                   ; 10 uses
  %i.cp = getelementptr i8, ptr %i.ck, i64 %i.co  ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0579831, i64 1 ; 9 uses
  %i.cr = load i8, ptr %.0579831, align 1         ; 3 uses
  %i.cs = icmp ult i8 %i.cr, 5
  br i1 %i.cs, label %bb.l, label %.loopexit713.sink.split

bb.l:                                             ; preds = %bb.k
  %.1552 = select i1 %i.ap, i32 1, i32 %.0551833  ; 30 uses
  %.1549 = select i1 %i.ap, i32 %i.ae, i32 %.0548834 ; 2 uses
  %.0537 = getelementptr i8, ptr %i.cp, i64 %.0537.idx ; 3 uses
  %i.ct = getelementptr i8, ptr %.0537, i64 %i.ao ; 4 uses
  %i.cu = icmp eq i64 %indvars.iv974, 0
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cv = zext nneg i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0528.in = phi i8 [ %i.cx, %bb.m ], [ %i.cr, %bb.l ] ; 3 uses
  %i.cy = icmp sgt i32 %.1552, 0                  ; 8 uses
  br i1 %i.cy, label %.lr.ph.preheader, label %._crit_edge

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
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1
  %.narrow648 = add i8 %i.dg, %i.de
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = lshr i8 %i.dk, 1
  %.narrow646 = add i8 %i.dl, %i.di
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1
  %.narrow644 = add i8 %i.dp, %i.dn
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dr = load i8, ptr %i.dq, align 1
  br label %.sink.split

bb.u:                                             ; preds = %.lr.ph
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dt = load i8, ptr %i.ds, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.sink = phi i8 [ %i.da, %bb.o ], [ %i.dc, %bb.p ], [ %.narrow648, %bb.q ], [ %.narrow646, %bb.r ], [ %.narrow644, %bb.s ], [ %i.dr, %bb.t ], [ %i.dt, %bb.u ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0537, i64 %indvars.iv
  store i8 %.sink, ptr %i.du, align 1
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.n
  br i1 %i.ar, label %bb.w, label %bb.z

bb.w:                                             ; preds = %._crit_edge
  br i1 %.not612, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds i8, ptr %i.cp, i64 %10
  store i8 -1, ptr %i.dv, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dw = getelementptr inbounds i8, ptr %i.cq, i64 %10
  %i.dx = getelementptr inbounds i8, ptr %i.cp, i64 %i.as
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.pre992 = sext i32 %.0551833 to i64            ; 2 uses
  br i1 %.not612, label %._crit_edge991, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds i8, ptr %i.cp, i64 %.pre992 ; 2 uses
  store i8 -1, ptr %i.dy, align 1
  %i.dz = getelementptr i8, ptr %i.dy, i64 1
  store i8 -1, ptr %i.dz, align 1
  br label %._crit_edge991

._crit_edge991:                                   ; preds = %bb.aa, %bb.ab
  %i.ea = getelementptr inbounds i8, ptr %i.cq, i64 %.pre992
  %i.eb = getelementptr inbounds i8, ptr %i.cp, i64 %9
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %.0579831, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.0537, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge991, %bb.ac, %bb.y
  %.sink1041 = phi i64 [ %9, %._crit_edge991 ], [ 1, %bb.ac ], [ %i.as, %bb.y ] ; 9 uses
  %.1580 = phi ptr [ %i.ea, %._crit_edge991 ], [ %i.ec, %bb.ac ], [ %i.dw, %bb.y ] ; 62 uses
  %.1538 = phi ptr [ %i.eb, %._crit_edge991 ], [ %i.ed, %bb.ac ], [ %i.dx, %bb.y ] ; 95 uses
  %.15381076 = ptrtoaddr ptr %.1538 to i64        ; 10 uses
  %.15801077 = ptrtoaddr ptr %.1580 to i64        ; 6 uses
  %i.ee = getelementptr i8, ptr %i.ct, i64 %.sink1041 ; 24 uses
  br i1 %or.cond, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ef = add i32 %.1549, -1
  %i.eg = mul i32 %i.ef, %.1552                   ; 26 uses
  switch i8 %.0528.in, label %.loopexit723 [
    i8 0, label %bb.af
    i8 1, label %.preheader722
    i8 2, label %.preheader724
    i8 3, label %.preheader726
    i8 4, label %.preheader728
    i8 5, label %.preheader730
    i8 6, label %.preheader732
  ]

.preheader732:                                    ; preds = %bb.ae
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %iter.check1251, label %.loopexit723

iter.check1251:                                   ; preds = %.preheader732
  %i.ei = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count947 = zext nneg i32 %i.eg to i64 ; 8 uses
  %min.iters.check1236 = icmp ult i32 %i.eg, 4
  br i1 %min.iters.check1236, label %.lr.ph820.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %iter.check1251
  %i.ej = sub i64 %.15801077, %.15381076
  %diff.check1233 = icmp ugt i64 %i.ej, -32
  %i.ek = add nsw i64 %i.ei, -1
  %diff.check1234 = icmp ult i64 %i.ek, 31
  %conflict.rdx1235 = or i1 %diff.check1233, %diff.check1234
  br i1 %conflict.rdx1235, label %.lr.ph820.preheader, label %vector.main.loop.iter.check1237

vector.main.loop.iter.check1237:                  ; preds = %vector.memcheck1232
  %min.iters.check1238 = icmp ult i32 %i.eg, 32
  br i1 %min.iters.check1238, label %vec.epilog.ph1255, label %vector.ph1239

vector.ph1239:                                    ; preds = %vector.main.loop.iter.check1237
  %i.el = and i64 %wide.trip.count947, 28
  %n.vec1240 = and i64 %wide.trip.count947, 2147483616 ; 4 uses
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.ph1239, %vector.body1241
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1247, %vector.body1241 ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1242 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load1243 = load <16 x i8>, ptr %i.em, align 1
  %wide.load1244 = load <16 x i8>, ptr %i.en, align 1
  %i.eo = sub nsw i64 %index1242, %i.ei
  %i.ep = getelementptr inbounds i8, ptr %.1538, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load1245 = load <16 x i8>, ptr %i.ep, align 1
  %wide.load1246 = load <16 x i8>, ptr %i.eq, align 1
  %i.er = add <16 x i8> %wide.load1245, %wide.load1243
  %i.es = add <16 x i8> %wide.load1246, %wide.load1244
  %i.et = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1242 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <16 x i8> %i.er, ptr %i.et, align 1
  store <16 x i8> %i.es, ptr %i.eu, align 1
  %index.next1247 = add nuw i64 %index1242, 32    ; 2 uses
  %i.ev = icmp eq i64 %index.next1247, %n.vec1240
  br i1 %i.ev, label %middle.block1248, label %vector.body1241, !llvm.loop !298

middle.block1248:                                 ; preds = %vector.body1241
  %cmp.n1249 = icmp eq i64 %n.vec1240, %wide.trip.count947
  br i1 %cmp.n1249, label %.loopexit723, label %vec.epilog.iter.check1253

vec.epilog.iter.check1253:                        ; preds = %middle.block1248
  %min.epilog.iters.check1254 = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check1254, label %.lr.ph820.preheader, label %vec.epilog.ph1255, !prof !16

vec.epilog.ph1255:                                ; preds = %vector.main.loop.iter.check1237, %vec.epilog.iter.check1253
  %vec.epilog.resume.val1250 = phi i64 [ %n.vec1240, %vec.epilog.iter.check1253 ], [ 0, %vector.main.loop.iter.check1237 ]
  %n.vec1256 = and i64 %wide.trip.count947, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1257

vec.epilog.vector.body1257:                       ; preds = %vec.epilog.vector.body1257, %vec.epilog.ph1255
  %index1258 = phi i64 [ %vec.epilog.resume.val1250, %vec.epilog.ph1255 ], [ %index.next1261, %vec.epilog.vector.body1257 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1258
  %wide.load1259 = load <4 x i8>, ptr %i.ew, align 1
  %i.ex = sub nsw i64 %index1258, %i.ei
  %i.ey = getelementptr inbounds i8, ptr %.1538, i64 %i.ex
  %wide.load1260 = load <4 x i8>, ptr %i.ey, align 1
  %i.ez = add <4 x i8> %wide.load1260, %wide.load1259
  %i.fa = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1258
  store <4 x i8> %i.ez, ptr %i.fa, align 1
  %index.next1261 = add nuw i64 %index1258, 4     ; 2 uses
  %i.fb = icmp eq i64 %index.next1261, %n.vec1256
  br i1 %i.fb, label %vec.epilog.middle.block1262, label %vec.epilog.vector.body1257, !llvm.loop !299

vec.epilog.middle.block1262:                      ; preds = %vec.epilog.vector.body1257
  %cmp.n1263 = icmp eq i64 %n.vec1256, %wide.trip.count947
  br i1 %cmp.n1263, label %.loopexit723, label %.lr.ph820.preheader

.lr.ph820.preheader:                              ; preds = %iter.check1251, %vector.memcheck1232, %vec.epilog.iter.check1253, %vec.epilog.middle.block1262
  %indvars.iv944.ph = phi i64 [ 0, %iter.check1251 ], [ 0, %vector.memcheck1232 ], [ %n.vec1240, %vec.epilog.iter.check1253 ], [ %n.vec1256, %vec.epilog.middle.block1262 ] ; 6 uses
  %xtraiter1652 = and i64 %wide.trip.count947, 1
  %lcmp.mod1653.not = icmp eq i64 %xtraiter1652, 0
  br i1 %lcmp.mod1653.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

.lr.ph820.prol:                                   ; preds = %.lr.ph820.preheader
  %i.fc = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944.ph
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = sub nsw i64 %indvars.iv944.ph, %i.ei
  %i.ff = getelementptr inbounds i8, ptr %.1538, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1
  %.narrow632.prol = add i8 %i.fg, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944.ph
  store i8 %.narrow632.prol, ptr %i.fh, align 1
  %indvars.iv.next945.prol = or disjoint i64 %indvars.iv944.ph, 1
  br label %.lr.ph820.prol.loopexit

.lr.ph820.prol.loopexit:                          ; preds = %.lr.ph820.prol, %.lr.ph820.preheader
  %indvars.iv944.unr = phi i64 [ %indvars.iv944.ph, %.lr.ph820.preheader ], [ %indvars.iv.next945.prol, %.lr.ph820.prol ]
  %i.fi = add nsw i64 %wide.trip.count947, -1
  %i.fj = icmp eq i64 %indvars.iv944.ph, %i.fi
  br i1 %i.fj, label %.loopexit723, label %.lr.ph820

.preheader730:                                    ; preds = %bb.ae
  %i.fk = icmp sgt i32 %i.eg, 0
  br i1 %i.fk, label %iter.check1218, label %.loopexit723

iter.check1218:                                   ; preds = %.preheader730
  %i.fl = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count952 = zext nneg i32 %i.eg to i64 ; 8 uses
  %min.iters.check1203 = icmp ult i32 %i.eg, 4
  br i1 %min.iters.check1203, label %.lr.ph822.preheader, label %vector.memcheck1199

vector.memcheck1199:                              ; preds = %iter.check1218
  %i.fm = sub i64 %.15801077, %.15381076
  %diff.check1200 = icmp ugt i64 %i.fm, -32
  %i.fn = add nsw i64 %i.fl, -1
  %diff.check1201 = icmp ult i64 %i.fn, 31
  %conflict.rdx1202 = or i1 %diff.check1200, %diff.check1201
  br i1 %conflict.rdx1202, label %.lr.ph822.preheader, label %vector.main.loop.iter.check1204

vector.main.loop.iter.check1204:                  ; preds = %vector.memcheck1199
  %min.iters.check1205 = icmp ult i32 %i.eg, 32
  br i1 %min.iters.check1205, label %vec.epilog.ph1222, label %vector.ph1206

vector.ph1206:                                    ; preds = %vector.main.loop.iter.check1204
  %i.fo = and i64 %wide.trip.count952, 28
  %n.vec1207 = and i64 %wide.trip.count952, 2147483616 ; 4 uses
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.ph1206, %vector.body1208
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1214, %vector.body1208 ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1209 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load1210 = load <16 x i8>, ptr %i.fp, align 1
  %wide.load1211 = load <16 x i8>, ptr %i.fq, align 1
  %i.fr = sub nsw i64 %index1209, %i.fl
  %i.fs = getelementptr inbounds i8, ptr %.1538, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load1212 = load <16 x i8>, ptr %i.fs, align 1
  %wide.load1213 = load <16 x i8>, ptr %i.ft, align 1
  %i.fu = lshr <16 x i8> %wide.load1212, splat (i8 1)
  %i.fv = lshr <16 x i8> %wide.load1213, splat (i8 1)
  %i.fw = add <16 x i8> %i.fu, %wide.load1210
  %i.fx = add <16 x i8> %i.fv, %wide.load1211
  %i.fy = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1209 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <16 x i8> %i.fw, ptr %i.fy, align 1
  store <16 x i8> %i.fx, ptr %i.fz, align 1
  %index.next1214 = add nuw i64 %index1209, 32    ; 2 uses
  %i.ga = icmp eq i64 %index.next1214, %n.vec1207
  br i1 %i.ga, label %middle.block1215, label %vector.body1208, !llvm.loop !300

middle.block1215:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %n.vec1207, %wide.trip.count952
  br i1 %cmp.n1216, label %.loopexit723, label %vec.epilog.iter.check1220

vec.epilog.iter.check1220:                        ; preds = %middle.block1215
  %min.epilog.iters.check1221 = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check1221, label %.lr.ph822.preheader, label %vec.epilog.ph1222, !prof !16

vec.epilog.ph1222:                                ; preds = %vector.main.loop.iter.check1204, %vec.epilog.iter.check1220
  %vec.epilog.resume.val1217 = phi i64 [ %n.vec1207, %vec.epilog.iter.check1220 ], [ 0, %vector.main.loop.iter.check1204 ]
  %n.vec1223 = and i64 %wide.trip.count952, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1224

vec.epilog.vector.body1224:                       ; preds = %vec.epilog.vector.body1224, %vec.epilog.ph1222
  %index1225 = phi i64 [ %vec.epilog.resume.val1217, %vec.epilog.ph1222 ], [ %index.next1228, %vec.epilog.vector.body1224 ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1225
  %wide.load1226 = load <4 x i8>, ptr %i.gb, align 1
  %i.gc = sub nsw i64 %index1225, %i.fl
  %i.gd = getelementptr inbounds i8, ptr %.1538, i64 %i.gc
  %wide.load1227 = load <4 x i8>, ptr %i.gd, align 1
  %i.ge = lshr <4 x i8> %wide.load1227, splat (i8 1)
  %i.gf = add <4 x i8> %i.ge, %wide.load1226
  %i.gg = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1225
  store <4 x i8> %i.gf, ptr %i.gg, align 1
  %index.next1228 = add nuw i64 %index1225, 4     ; 2 uses
  %i.gh = icmp eq i64 %index.next1228, %n.vec1223
  br i1 %i.gh, label %vec.epilog.middle.block1229, label %vec.epilog.vector.body1224, !llvm.loop !301

vec.epilog.middle.block1229:                      ; preds = %vec.epilog.vector.body1224
  %cmp.n1230 = icmp eq i64 %n.vec1223, %wide.trip.count952
  br i1 %cmp.n1230, label %.loopexit723, label %.lr.ph822.preheader

.lr.ph822.preheader:                              ; preds = %iter.check1218, %vector.memcheck1199, %vec.epilog.iter.check1220, %vec.epilog.middle.block1229
  %indvars.iv949.ph = phi i64 [ 0, %iter.check1218 ], [ 0, %vector.memcheck1199 ], [ %n.vec1207, %vec.epilog.iter.check1220 ], [ %n.vec1223, %vec.epilog.middle.block1229 ] ; 6 uses
  %xtraiter1655 = and i64 %wide.trip.count952, 1
  %lcmp.mod1656.not = icmp eq i64 %xtraiter1655, 0
end_hunk_1
begin_hunk_2_@_m3dstbi__create_png_image_raw:bb.a
  %i.oa = getelementptr inbounds i8, ptr %.1538, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1
  %.narrow642.1 = add i8 %i.ob, %i.ny
  %i.oc = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next970
  store i8 %.narrow642.1, ptr %i.oc, align 1
  %indvars.iv.next970.1 = add nuw nsw i64 %indvars.iv969, 2 ; 2 uses
  %exitcond973.not.1 = icmp eq i64 %indvars.iv.next970.1, %wide.trip.count972
  br i1 %exitcond973.not.1, label %.loopexit723, label %.lr.ph830, !llvm.loop !311

.lr.ph828:                                        ; preds = %.lr.ph828.prol.loopexit, %.lr.ph828
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.3, %.lr.ph828 ], [ %indvars.iv964.unr, %.lr.ph828.prol.loopexit ] ; 7 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv964
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv964
  %i.og = load i8, ptr %i.of, align 1
  %.narrow640 = add i8 %i.og, %i.oe
  %i.oh = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv964
  store i8 %.narrow640, ptr %i.oh, align 1
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next965
  %i.ol = load i8, ptr %i.ok, align 1
  %.narrow640.1 = add i8 %i.ol, %i.oj
  %i.om = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965
  store i8 %.narrow640.1, ptr %i.om, align 1
  %indvars.iv.next965.1 = add nuw nsw i64 %indvars.iv964, 2 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.1
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next965.1
  %i.oq = load i8, ptr %i.op, align 1
  %.narrow640.2 = add i8 %i.oq, %i.oo
  %i.or = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.1
  store i8 %.narrow640.2, ptr %i.or, align 1
  %indvars.iv.next965.2 = add nuw nsw i64 %indvars.iv964, 3 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.2
  %i.ot = load i8, ptr %i.os, align 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next965.2
  %i.ov = load i8, ptr %i.ou, align 1
  %.narrow640.3 = add i8 %i.ov, %i.ot
  %i.ow = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.2
  store i8 %.narrow640.3, ptr %i.ow, align 1
  %indvars.iv.next965.3 = add nuw nsw i64 %indvars.iv964, 4 ; 2 uses
  %exitcond968.not.3 = icmp eq i64 %indvars.iv.next965.3, %wide.trip.count967
  br i1 %exitcond968.not.3, label %.loopexit723, label %.lr.ph828, !llvm.loop !312

.lr.ph826:                                        ; preds = %.lr.ph826.prol.loopexit, %.lr.ph826
  %indvars.iv959 = phi i64 [ %indvars.iv.next960.1, %.lr.ph826 ], [ %indvars.iv959.unr, %.lr.ph826.prol.loopexit ] ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv959
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv959
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i16
  %i.pc = sub nsw i64 %indvars.iv959, %i.jf
  %i.pd = getelementptr inbounds i8, ptr %.1538, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1
  %i.pf = zext i8 %i.pe to i16
  %i.pg = add nuw nsw i16 %i.pf, %i.pb
  %i.ph = lshr i16 %i.pg, 1
  %.tr637 = trunc nuw i16 %i.ph to i8
  %.narrow638 = add i8 %i.oy, %.tr637
  %i.pi = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv959
  store i8 %.narrow638, ptr %i.pi, align 1
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next960
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next960
  %i.pm = load i8, ptr %i.pl, align 1
  %i.pn = zext i8 %i.pm to i16
  %i.po = sub nsw i64 %indvars.iv.next960, %i.jf
  %i.pp = getelementptr inbounds i8, ptr %.1538, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1
  %i.pr = zext i8 %i.pq to i16
  %i.ps = add nuw nsw i16 %i.pr, %i.pn
  %i.pt = lshr i16 %i.ps, 1
  %.tr637.1 = trunc nuw i16 %i.pt to i8
  %.narrow638.1 = add i8 %i.pk, %.tr637.1
  %i.pu = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next960
  store i8 %.narrow638.1, ptr %i.pu, align 1
  %indvars.iv.next960.1 = add nuw nsw i64 %indvars.iv959, 2 ; 2 uses
  %exitcond963.not.1 = icmp eq i64 %indvars.iv.next960.1, %wide.trip.count962
  br i1 %exitcond963.not.1, label %.loopexit723, label %.lr.ph826, !llvm.loop !313

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %.lr.ph824
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %.lr.ph824 ], [ %indvars.iv954.ph, %.lr.ph824.preheader ] ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv954
  %i.pw = load i8, ptr %i.pv, align 1
  %i.px = sub nsw i64 %indvars.iv954, %i.gs       ; 2 uses
  %i.py = getelementptr inbounds i8, ptr %.1538, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1             ; 2 uses
  %i.qa = zext i8 %i.pz to i32                    ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv954
  %i.qc = load i8, ptr %i.qb, align 1             ; 2 uses
  %i.qd = zext i8 %i.qc to i32                    ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %i.ee, i64 %i.px
  %i.qf = load i8, ptr %i.qe, align 1             ; 2 uses
  %i.qg = zext i8 %i.qf to i32                    ; 2 uses
  %i.qh = add nuw nsw i32 %i.qd, %i.qa
  %i.qi = sub nsw i32 %i.qh, %i.qg                ; 3 uses
  %i.qj = sub nsw i32 %i.qi, %i.qa
  %i.qk = tail call i32 @llvm.abs.i32(i32 %i.qj, i1 true) ; 2 uses
  %i.ql = sub nsw i32 %i.qi, %i.qd
  %i.qm = tail call i32 @llvm.abs.i32(i32 %i.ql, i1 true) ; 2 uses
  %i.qn = sub nsw i32 %i.qi, %i.qg
  %i.qo = tail call i32 @llvm.abs.i32(i32 %i.qn, i1 true) ; 2 uses
  %.not.i651 = icmp samesign ugt i32 %i.qk, %i.qm
  %.not20.i652 = icmp samesign ugt i32 %i.qk, %i.qo
  %or.cond.i653 = select i1 %.not.i651, i1 true, i1 %.not20.i652
  %.not21.i = icmp samesign ugt i32 %i.qm, %i.qo
  %i.qp = select i1 %.not21.i, i8 %i.qf, i8 %i.qc
  %.tr635 = select i1 %or.cond.i653, i8 %i.qp, i8 %i.pz
  %.narrow636 = add i8 %.tr635, %i.pw
  %i.qq = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv954
  store i8 %.narrow636, ptr %i.qq, align 1
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 2 uses
  %exitcond958.not = icmp eq i64 %indvars.iv.next955, %wide.trip.count957
  br i1 %exitcond958.not, label %.loopexit723, label %.lr.ph824, !llvm.loop !314

.lr.ph822:                                        ; preds = %.lr.ph822.prol.loopexit, %.lr.ph822
  %indvars.iv949 = phi i64 [ %indvars.iv.next950.1, %.lr.ph822 ], [ %indvars.iv949.unr, %.lr.ph822.prol.loopexit ] ; 5 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv949
  %i.qs = load i8, ptr %i.qr, align 1
  %i.qt = sub nsw i64 %indvars.iv949, %i.fl
  %i.qu = getelementptr inbounds i8, ptr %.1538, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = lshr i8 %i.qv, 1
  %.narrow634 = add i8 %i.qw, %i.qs
  %i.qx = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv949
  store i8 %.narrow634, ptr %i.qx, align 1
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next950
  %i.qz = load i8, ptr %i.qy, align 1
  %i.ra = sub nsw i64 %indvars.iv.next950, %i.fl
  %i.rb = getelementptr inbounds i8, ptr %.1538, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1
  %i.rd = lshr i8 %i.rc, 1
  %.narrow634.1 = add i8 %i.rd, %i.qz
  %i.re = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next950
  store i8 %.narrow634.1, ptr %i.re, align 1
  %indvars.iv.next950.1 = add nuw nsw i64 %indvars.iv949, 2 ; 2 uses
  %exitcond953.not.1 = icmp eq i64 %indvars.iv.next950.1, %wide.trip.count952
  br i1 %exitcond953.not.1, label %.loopexit723, label %.lr.ph822, !llvm.loop !315

.lr.ph820:                                        ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820
  %indvars.iv944 = phi i64 [ %indvars.iv.next945.1, %.lr.ph820 ], [ %indvars.iv944.unr, %.lr.ph820.prol.loopexit ] ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944
  %i.rg = load i8, ptr %i.rf, align 1
  %i.rh = sub nsw i64 %indvars.iv944, %i.ei
  %i.ri = getelementptr inbounds i8, ptr %.1538, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1
  %.narrow632 = add i8 %i.rj, %i.rg
  %i.rk = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944
  store i8 %.narrow632, ptr %i.rk, align 1
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next945
  %i.rm = load i8, ptr %i.rl, align 1
  %i.rn = sub nsw i64 %indvars.iv.next945, %i.ei
  %i.ro = getelementptr inbounds i8, ptr %.1538, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1
  %.narrow632.1 = add i8 %i.rp, %i.rm
  %i.rq = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next945
  store i8 %.narrow632.1, ptr %i.rq, align 1
  %indvars.iv.next945.1 = add nuw nsw i64 %indvars.iv944, 2 ; 2 uses
  %exitcond948.not.1 = icmp eq i64 %indvars.iv.next945.1, %wide.trip.count947
  br i1 %exitcond948.not.1, label %.loopexit723, label %.lr.ph820, !llvm.loop !316

.loopexit723:                                     ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820, %.lr.ph822.prol.loopexit, %.lr.ph822, %.lr.ph824, %.lr.ph826.prol.loopexit, %.lr.ph826, %.lr.ph828.prol.loopexit, %.lr.ph828, %.lr.ph830.prol.loopexit, %.lr.ph830, %middle.block1248, %vec.epilog.middle.block1262, %middle.block1215, %vec.epilog.middle.block1229, %middle.block1180, %vec.epilog.middle.block1196, %middle.block1142, %vec.epilog.middle.block1157, %middle.block1105, %vec.epilog.middle.block1119, %middle.block, %vec.epilog.middle.block, %.preheader732, %.preheader730, %.preheader728, %.preheader726, %.preheader724, %.preheader722, %bb.af, %bb.ae
  %i.rr = sext i32 %i.eg to i64
  %i.rs = getelementptr inbounds i8, ptr %.1580, i64 %i.rr
  br label %.loopexit734

bb.ag:                                            ; preds = %bb.ad
  switch i8 %.0528.in, label %.loopexit736 [
    i8 0, label %.preheader735
    i8 1, label %.preheader737
    i8 2, label %.preheader739
    i8 3, label %.preheader741
    i8 4, label %.preheader743
    i8 5, label %.preheader745
    i8 6, label %.preheader747
  ]

.preheader747:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader721.lr.ph

.preheader721.lr.ph:                              ; preds = %.preheader747
  %i.rt = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count911 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1545 = getelementptr i8, ptr %.1538, i64 %i.cg
  %scevgep1546 = getelementptr i8, ptr %scevgep1545, i64 %wide.trip.count911 ; 2 uses
  %i.ru = mul nsw i64 %i.cf, %i.rt
  %i.rv = getelementptr i8, ptr %.1580, i64 %i.ru
  %scevgep1547 = getelementptr i8, ptr %i.rv, i64 %wide.trip.count911
  %scevgep1548 = getelementptr i8, ptr %.1538, i64 %i.cc
  %scevgep1549 = getelementptr i8, ptr %.1538, i64 %i.ci
  %scevgep1550 = getelementptr i8, ptr %scevgep1549, i64 %wide.trip.count911
  %min.iters.check1560 = icmp ult i32 %.1552, 4
  %bound01551 = icmp ult ptr %.1538, %scevgep1547
  %bound11552 = icmp ult ptr %.1580, %scevgep1546
  %found.conflict1553 = and i1 %bound01551, %bound11552
  %11 = or i32 %.0551833, %i.h
  %i.rw = icmp slt i32 %11, 0
  %i.rx = or i1 %found.conflict1553, %i.rw
  %bound01556 = icmp ult ptr %.1538, %scevgep1550
  %bound11557 = icmp ult ptr %scevgep1548, %scevgep1546
  %found.conflict1558 = and i1 %bound01556, %bound11557
  %conflict.rdx1559 = or i1 %i.rx, %found.conflict1558
  %min.iters.check1562 = icmp ult i32 %.1552, 32
  %i.ry = and i64 %wide.trip.count911, 28
  %n.vec1564 = and i64 %wide.trip.count911, 2147483616 ; 4 uses
  %cmp.n1573 = icmp eq i64 %n.vec1564, %wide.trip.count911
  %min.epilog.iters.check1578 = icmp eq i64 %i.ry, 0
  %n.vec1580 = and i64 %wide.trip.count911, 2147483644 ; 3 uses
  %cmp.n1587 = icmp eq i64 %n.vec1580, %wide.trip.count911
  %xtraiter = and i64 %wide.trip.count911, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.rz = add nsw i64 %wide.trip.count911, -1
  br label %.preheader721

.preheader745:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader720.lr.ph

.preheader720.lr.ph:                              ; preds = %.preheader745
  %i.sa = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count916 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1500.a = getelementptr i8, ptr %.1538, i64 %i.cb
  %scevgep1501 = getelementptr i8, ptr %scevgep1500.a, i64 %wide.trip.count916 ; 2 uses
  %i.sb = mul nsw i64 %i.ca, %i.sa
  %i.sc = getelementptr i8, ptr %.1580, i64 %i.sb
  %scevgep1502 = getelementptr i8, ptr %i.sc, i64 %wide.trip.count916
  %scevgep1503 = getelementptr i8, ptr %.1538, i64 %i.cc
  %scevgep1504 = getelementptr i8, ptr %.1538, i64 %i.ce
  %scevgep1505 = getelementptr i8, ptr %scevgep1504, i64 %wide.trip.count916
  %min.iters.check1515 = icmp ult i32 %.1552, 4
  %bound01506 = icmp ult ptr %.1538, %scevgep1502
  %bound11507 = icmp ult ptr %.1580, %scevgep1501
  %found.conflict1508 = and i1 %bound01506, %bound11507
  %12 = or i32 %.0551833, %i.h
  %i.sd = icmp slt i32 %12, 0
  %i.se = or i1 %found.conflict1508, %i.sd
  %bound01511 = icmp ult ptr %.1538, %scevgep1505
  %bound11512 = icmp ult ptr %scevgep1503, %scevgep1501
  %found.conflict1513 = and i1 %bound01511, %bound11512
  %conflict.rdx1514 = or i1 %i.se, %found.conflict1513
  %min.iters.check1517 = icmp ult i32 %.1552, 32
  %i.sf = and i64 %wide.trip.count916, 28
  %n.vec1519 = and i64 %wide.trip.count916, 2147483616 ; 4 uses
  %cmp.n1528 = icmp eq i64 %n.vec1519, %wide.trip.count916
  %min.epilog.iters.check1533 = icmp eq i64 %i.sf, 0
  %n.vec1535 = and i64 %wide.trip.count916, 2147483644 ; 3 uses
  %cmp.n1542 = icmp eq i64 %n.vec1535, %wide.trip.count916
  %xtraiter1637 = and i64 %wide.trip.count916, 1
  %lcmp.mod1638.not = icmp eq i64 %xtraiter1637, 0
  %i.sg = add nsw i64 %wide.trip.count916, -1
  br label %.preheader720

.preheader743:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader719.lr.ph

.preheader719.lr.ph:                              ; preds = %.preheader743
  %i.sh = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count921 = zext i32 %.1552 to i64    ; 10 uses
  %scevgep1439.a = getelementptr i8, ptr %.1538, i64 %i.bq
  %scevgep1440.a = getelementptr i8, ptr %scevgep1439.a, i64 %wide.trip.count921 ; 4 uses
  %i.si = mul nsw i64 %i.bp, %i.sh
  %i.sj = getelementptr i8, ptr %.1580, i64 %i.si
  %scevgep1441.a = getelementptr i8, ptr %i.sj, i64 %wide.trip.count921
  %scevgep1442.a = getelementptr i8, ptr %.1538, i64 %i.bl
  %scevgep1443.a = getelementptr i8, ptr %.1538, i64 %i.bs
  %scevgep1444.a = getelementptr i8, ptr %scevgep1443.a, i64 %wide.trip.count921
  %scevgep1445.a = getelementptr i8, ptr %i.ck, i64 %i.bu
  %i.sk = add nsw i64 %.sink1041, %wide.trip.count921
  %i.sl = add nsw i64 %i.sk, %i.co                ; 2 uses
  %scevgep1446.a = getelementptr i8, ptr %scevgep1445.a, i64 %i.sl
  %scevgep1447 = getelementptr i8, ptr %i.ck, i64 %i.bw
  %i.sm = getelementptr i8, ptr %scevgep1447, i64 %.sink1041
  %scevgep1448 = getelementptr i8, ptr %i.sm, i64 %i.co
  %scevgep1449 = getelementptr i8, ptr %i.ck, i64 %i.by
  %scevgep1450 = getelementptr i8, ptr %scevgep1449, i64 %i.sl
  %min.iters.check1468 = icmp ult i32 %.1552, 4
  %bound01451.a = icmp ult ptr %.1538, %scevgep1441.a
  %bound11452.a = icmp ult ptr %.1580, %scevgep1440.a
  %found.conflict1453.a = and i1 %bound01451.a, %bound11452.a
  %13 = or i32 %.0551833, %i.h
  %i.sn = icmp slt i32 %13, 0
  %i.so = or i1 %found.conflict1453.a, %i.sn
  %bound01456 = icmp ult ptr %.1538, %scevgep1444.a
  %bound11457 = icmp ult ptr %scevgep1442.a, %scevgep1440.a
  %found.conflict1458 = and i1 %bound01456, %bound11457
  %conflict.rdx1459 = or i1 %i.so, %found.conflict1458
  %bound01460 = icmp ult ptr %.1538, %scevgep1446.a
  %bound11461 = icmp ult ptr %i.ee, %scevgep1440.a
  %found.conflict1462 = and i1 %bound01460, %bound11461
  %conflict.rdx1463 = or i1 %conflict.rdx1459, %found.conflict1462
  %bound01464 = icmp ult ptr %.1538, %scevgep1450
  %bound11465 = icmp ult ptr %scevgep1448, %scevgep1440.a
  %found.conflict1466 = and i1 %bound01464, %bound11465
  %conflict.rdx1467 = or i1 %conflict.rdx1463, %found.conflict1466
  %min.iters.check1470 = icmp ult i32 %.1552, 16
  %i.sp = and i64 %wide.trip.count921, 12
  %n.vec1472 = and i64 %wide.trip.count921, 2147483632 ; 4 uses
  %cmp.n1481 = icmp eq i64 %n.vec1472, %wide.trip.count921
  %min.epilog.iters.check1486 = icmp eq i64 %i.sp, 0
  %n.vec1488 = and i64 %wide.trip.count921, 2147483644 ; 3 uses
  %cmp.n1497 = icmp eq i64 %n.vec1488, %wide.trip.count921
  br label %.preheader719

.preheader741:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader718.lr.ph

.preheader718.lr.ph:                              ; preds = %.preheader741
  %i.sq = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count926 = zext i32 %.1552 to i64    ; 12 uses
  %scevgep1385.a = getelementptr i8, ptr %.1538, i64 %i.bi
  %scevgep1386.a = getelementptr i8, ptr %scevgep1385.a, i64 %wide.trip.count926 ; 3 uses
  %i.sr = mul nsw i64 %i.bh, %i.sq
  %i.ss = getelementptr i8, ptr %.1580, i64 %i.sr
  %scevgep1387.a = getelementptr i8, ptr %i.ss, i64 %wide.trip.count926
  %scevgep1388.a = getelementptr i8, ptr %i.ck, i64 %i.bk
  %i.st = getelementptr i8, ptr %scevgep1388.a, i64 %.sink1041
  %i.su = getelementptr i8, ptr %i.st, i64 %wide.trip.count926
  %scevgep1389.a = getelementptr i8, ptr %i.su, i64 %i.co
  %scevgep1390 = getelementptr i8, ptr %.1538, i64 %i.bl
  %scevgep1391 = getelementptr i8, ptr %.1538, i64 %i.bn
  %scevgep1392 = getelementptr i8, ptr %scevgep1391, i64 %wide.trip.count926
  %min.iters.check1406 = icmp ult i32 %.1552, 8
  %bound01393 = icmp ult ptr %.1538, %scevgep1387.a
  %bound11394 = icmp ult ptr %.1580, %scevgep1386.a
  %found.conflict1395 = and i1 %bound01393, %bound11394
  %14 = or i32 %.0551833, %i.h
  %i.sv = icmp slt i32 %14, 0
  %i.sw = or i1 %found.conflict1395, %i.sv
  %bound01398.a = icmp ult ptr %.1538, %scevgep1389.a
  %bound11399.a = icmp ult ptr %i.ee, %scevgep1386.a
  %found.conflict1400.a = and i1 %bound01398.a, %bound11399.a
  %conflict.rdx1401.a = or i1 %i.sw, %found.conflict1400.a
  %bound01402 = icmp ult ptr %.1538, %scevgep1392
  %bound11403 = icmp ult ptr %scevgep1390, %scevgep1386.a
  %found.conflict1404 = and i1 %bound01402, %bound11403
  %conflict.rdx1405 = or i1 %conflict.rdx1401.a, %found.conflict1404
  %min.iters.check1408 = icmp ult i32 %.1552, 32
  %i.sx = and i64 %wide.trip.count926, 24
  %n.vec1410 = and i64 %wide.trip.count926, 2147483616 ; 4 uses
  %cmp.n1421 = icmp eq i64 %n.vec1410, %wide.trip.count926
  %min.epilog.iters.check1426 = icmp eq i64 %i.sx, 0
  %n.vec1428 = and i64 %wide.trip.count926, 2147483640 ; 3 uses
  %cmp.n1436 = icmp eq i64 %n.vec1428, %wide.trip.count926
  %xtraiter1639.a = and i64 %wide.trip.count926, 1
  %lcmp.mod1640.not.a = icmp eq i64 %xtraiter1639.a, 0
  %i.sy = add nsw i64 %wide.trip.count926, -1
  br label %.preheader718

.preheader739:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader717.lr.ph

.preheader717.lr.ph:                              ; preds = %.preheader739
  %i.sz = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count931 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1341.a = getelementptr i8, ptr %.1538, i64 %i.be
  %scevgep1342.a = getelementptr i8, ptr %scevgep1341.a, i64 %wide.trip.count931 ; 2 uses
  %i.ta = mul nsw i64 %i.bd, %i.sz
  %i.tb = getelementptr i8, ptr %.1580, i64 %i.ta
  %scevgep1343.a = getelementptr i8, ptr %i.tb, i64 %wide.trip.count931
  %scevgep1344 = getelementptr i8, ptr %i.ck, i64 %i.bg
  %i.tc = getelementptr i8, ptr %scevgep1344, i64 %.sink1041
  %i.td = getelementptr i8, ptr %i.tc, i64 %wide.trip.count931
  %scevgep1345 = getelementptr i8, ptr %i.td, i64 %i.co
  %min.iters.check1355 = icmp ult i32 %.1552, 4
  %bound01346 = icmp ult ptr %.1538, %scevgep1343.a
  %bound11347 = icmp ult ptr %.1580, %scevgep1342.a
  %found.conflict1348 = and i1 %bound01346, %bound11347
  %15 = or i32 %.0551833, %i.h
  %i.te = icmp slt i32 %15, 0
  %i.tf = or i1 %found.conflict1348, %i.te
  %bound01351 = icmp ult ptr %.1538, %scevgep1345
  %bound11352 = icmp ult ptr %i.ee, %scevgep1342.a
  %found.conflict1353 = and i1 %bound01351, %bound11352
  %conflict.rdx1354 = or i1 %i.tf, %found.conflict1353
  %min.iters.check1357 = icmp ult i32 %.1552, 32
  %i.tg = and i64 %wide.trip.count931, 28
  %n.vec1359 = and i64 %wide.trip.count931, 2147483616 ; 4 uses
  %cmp.n1368 = icmp eq i64 %n.vec1359, %wide.trip.count931
  %min.epilog.iters.check1373 = icmp eq i64 %i.tg, 0
  %n.vec1375 = and i64 %wide.trip.count931, 2147483644 ; 3 uses
  %cmp.n1382 = icmp eq i64 %n.vec1375, %wide.trip.count931
  %xtraiter1641 = and i64 %wide.trip.count931, 3  ; 2 uses
  %lcmp.mod1642.not = icmp eq i64 %xtraiter1641, 0
  br label %.preheader717

.preheader737:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader716.lr.ph

.preheader716.lr.ph:                              ; preds = %.preheader737
  %i.th = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count936 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1296.a = getelementptr i8, ptr %.1538, i64 %i.ay
  %scevgep1297.a = getelementptr i8, ptr %scevgep1296.a, i64 %wide.trip.count936 ; 2 uses
  %i.ti = mul nsw i64 %i.ax, %i.th
  %i.tj = getelementptr i8, ptr %.1580, i64 %i.ti
  %scevgep1298.a = getelementptr i8, ptr %i.tj, i64 %wide.trip.count936
  %scevgep1299.a = getelementptr i8, ptr %.1538, i64 %i.az
  %scevgep1300.a = getelementptr i8, ptr %.1538, i64 %i.bb
  %scevgep1301 = getelementptr i8, ptr %scevgep1300.a, i64 %wide.trip.count936
  %min.iters.check1311.a = icmp ult i32 %.1552, 4
  %bound01302 = icmp ult ptr %.1538, %scevgep1298.a
  %bound11303 = icmp ult ptr %.1580, %scevgep1297.a
  %found.conflict1304 = and i1 %bound01302, %bound11303
  %16 = or i32 %.0551833, %i.h
  %i.tk = icmp slt i32 %16, 0
  %i.tl = or i1 %found.conflict1304, %i.tk
  %bound01307 = icmp ult ptr %.1538, %scevgep1301
  %bound11308 = icmp ult ptr %scevgep1299.a, %scevgep1297.a
  %found.conflict1309 = and i1 %bound01307, %bound11308
  %conflict.rdx1310 = or i1 %i.tl, %found.conflict1309
  %min.iters.check1313 = icmp ult i32 %.1552, 32
  %i.tm = and i64 %wide.trip.count936, 28
  %n.vec1315 = and i64 %wide.trip.count936, 2147483616 ; 4 uses
  %cmp.n1324 = icmp eq i64 %n.vec1315, %wide.trip.count936
  %min.epilog.iters.check1329 = icmp eq i64 %i.tm, 0
  %n.vec1331 = and i64 %wide.trip.count936, 2147483644 ; 3 uses
  %cmp.n1338 = icmp eq i64 %n.vec1331, %wide.trip.count936
  %xtraiter1643 = and i64 %wide.trip.count936, 1
  %lcmp.mod1644.not = icmp eq i64 %xtraiter1643, 0
  %i.tn = add nsw i64 %wide.trip.count936, -1
  br label %.preheader716

.preheader735:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader715.lr.ph

.preheader715.lr.ph:                              ; preds = %.preheader735
  %i.to = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count941 = zext i32 %.1552 to i64    ; 10 uses
  %scevgep = getelementptr i8, ptr %.1538, i64 %i.aw
  %scevgep1266 = getelementptr i8, ptr %scevgep, i64 %wide.trip.count941
  %i.tp = mul nsw i64 %i.av, %i.to
  %i.tq = getelementptr i8, ptr %.1580, i64 %i.tp
  %scevgep1267 = getelementptr i8, ptr %i.tq, i64 %wide.trip.count941
  %min.iters.check1269 = icmp ult i32 %.1552, 4
  %bound0 = icmp ult ptr %.1538, %scevgep1267
  %bound1 = icmp ult ptr %.1580, %scevgep1266
  %found.conflict = and i1 %bound0, %bound1
  %17 = or i32 %.0551833, %i.h
  %i.tr = icmp slt i32 %17, 0
  %i.ts = or i1 %found.conflict, %i.tr
  %min.iters.check1271 = icmp ult i32 %.1552, 32
  %i.tt = and i64 %wide.trip.count941, 28
  %n.vec1273 = and i64 %wide.trip.count941, 2147483616 ; 4 uses
  %cmp.n1280 = icmp eq i64 %n.vec1273, %wide.trip.count941
  %min.epilog.iters.check1285 = icmp eq i64 %i.tt, 0
  %n.vec1287 = and i64 %wide.trip.count941, 2147483644 ; 3 uses
  %cmp.n1293 = icmp eq i64 %n.vec1287, %wide.trip.count941
  %xtraiter1646 = and i64 %wide.trip.count941, 3  ; 2 uses
  %lcmp.mod1647.not = icmp eq i64 %xtraiter1646, 0
  br label %.preheader715

.preheader715:                                    ; preds = %.preheader715.lr.ph, %._crit_edge808
  %.0567813 = phi i32 [ %.6573753, %.preheader715.lr.ph ], [ %.0567, %._crit_edge808 ]
  %.2539812 = phi ptr [ %.1538, %.preheader715.lr.ph ], [ %i.uv, %._crit_edge808 ] ; 9 uses
  %.2581811 = phi ptr [ %.1580, %.preheader715.lr.ph ], [ %i.uu, %._crit_edge808 ] ; 8 uses
  br i1 %i.cy, label %iter.check1282, label %._crit_edge808

iter.check1282:                                   ; preds = %.preheader715
  %brmerge = select i1 %min.iters.check1269, i1 true, i1 %i.ts
  br i1 %brmerge, label %.lr.ph807.preheader, label %vector.main.loop.iter.check1270

vector.main.loop.iter.check1270:                  ; preds = %iter.check1282
  br i1 %min.iters.check1271, label %vec.epilog.ph1286, label %vector.body1274

vector.body1274:                                  ; preds = %vector.main.loop.iter.check1270, %vector.body1274
  %index1275 = phi i64 [ %index.next1278, %vector.body1274 ], [ 0, %vector.main.loop.iter.check1270 ] ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1275 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %wide.load1276.a = load <16 x i8>, ptr %i.tu, align 1, !alias.scope !375
  %wide.load1277 = load <16 x i8>, ptr %i.tv, align 1, !alias.scope !375
  %i.tw = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1275 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store <16 x i8> %wide.load1276.a, ptr %i.tw, align 1, !alias.scope !376, !noalias !375
  store <16 x i8> %wide.load1277, ptr %i.tx, align 1, !alias.scope !376, !noalias !375
  %index.next1278 = add nuw i64 %index1275, 32    ; 2 uses
  %i.ty = icmp eq i64 %index.next1278, %n.vec1273
  br i1 %i.ty, label %middle.block1279, label %vector.body1274, !llvm.loop !320

middle.block1279:                                 ; preds = %vector.body1274
  br i1 %cmp.n1280, label %._crit_edge808, label %vec.epilog.iter.check1284

vec.epilog.iter.check1284:                        ; preds = %middle.block1279
  br i1 %min.epilog.iters.check1285, label %.lr.ph807.preheader, label %vec.epilog.ph1286, !prof !16

vec.epilog.ph1286:                                ; preds = %vector.main.loop.iter.check1270, %vec.epilog.iter.check1284
  %vec.epilog.resume.val1281 = phi i64 [ %n.vec1273, %vec.epilog.iter.check1284 ], [ 0, %vector.main.loop.iter.check1270 ]
  br label %vec.epilog.vector.body1288

vec.epilog.vector.body1288:                       ; preds = %vec.epilog.vector.body1288, %vec.epilog.ph1286
  %index1289 = phi i64 [ %vec.epilog.resume.val1281, %vec.epilog.ph1286 ], [ %index.next1291, %vec.epilog.vector.body1288 ] ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1289
  %wide.load1290 = load <4 x i8>, ptr %i.tz, align 1, !alias.scope !375
  %i.ua = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1289
  store <4 x i8> %wide.load1290, ptr %i.ua, align 1, !alias.scope !376, !noalias !375
  %index.next1291 = add nuw i64 %index1289, 4     ; 2 uses
  %i.ub = icmp eq i64 %index.next1291, %n.vec1287
  br i1 %i.ub, label %vec.epilog.middle.block1292, label %vec.epilog.vector.body1288, !llvm.loop !321

vec.epilog.middle.block1292:                      ; preds = %vec.epilog.vector.body1288
  br i1 %cmp.n1293, label %._crit_edge808, label %.lr.ph807.preheader

.lr.ph807.preheader:                              ; preds = %iter.check1282, %vec.epilog.iter.check1284, %vec.epilog.middle.block1292
  %indvars.iv938.ph = phi i64 [ 0, %iter.check1282 ], [ %n.vec1287, %vec.epilog.middle.block1292 ], [ %n.vec1273, %vec.epilog.iter.check1284 ] ; 3 uses
  br i1 %lcmp.mod1647.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol

.lr.ph807.prol:                                   ; preds = %.lr.ph807.preheader, %.lr.ph807.prol
  %indvars.iv938.prol = phi i64 [ %indvars.iv.next939.prol, %.lr.ph807.prol ], [ %indvars.iv938.ph, %.lr.ph807.preheader ] ; 3 uses
  %prol.iter1648 = phi i64 [ %prol.iter1648.next, %.lr.ph807.prol ], [ 0, %.lr.ph807.preheader ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938.prol
  %i.ud = load i8, ptr %i.uc, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938.prol
  store i8 %i.ud, ptr %i.ue, align 1
  %indvars.iv.next939.prol = add nuw nsw i64 %indvars.iv938.prol, 1 ; 2 uses
  %prol.iter1648.next = add i64 %prol.iter1648, 1 ; 2 uses
  %prol.iter1648.cmp.not = icmp eq i64 %prol.iter1648.next, %xtraiter1646
  br i1 %prol.iter1648.cmp.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol, !llvm.loop !322

.lr.ph807.prol.loopexit:                          ; preds = %.lr.ph807.prol, %.lr.ph807.preheader
  %indvars.iv938.unr = phi i64 [ %indvars.iv938.ph, %.lr.ph807.preheader ], [ %indvars.iv.next939.prol, %.lr.ph807.prol ]
  %i.uf = sub nsw i64 %indvars.iv938.ph, %wide.trip.count941
  %i.ug = icmp ugt i64 %i.uf, -4
  br i1 %i.ug, label %._crit_edge808, label %.lr.ph807

.lr.ph807:                                        ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807
  %indvars.iv938 = phi i64 [ %indvars.iv.next939.3, %.lr.ph807 ], [ %indvars.iv938.unr, %.lr.ph807.prol.loopexit ] ; 6 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938
  %i.ui = load i8, ptr %i.uh, align 1
  %i.uj = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938
  store i8 %i.ui, ptr %i.uj, align 1
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939
  %i.ul = load i8, ptr %i.uk, align 1
  %i.um = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939
  store i8 %i.ul, ptr %i.um, align 1
  %indvars.iv.next939.1 = add nuw nsw i64 %indvars.iv938, 2 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.1
  %i.uo = load i8, ptr %i.un, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.1
  store i8 %i.uo, ptr %i.up, align 1
  %indvars.iv.next939.2 = add nuw nsw i64 %indvars.iv938, 3 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.2
  %i.ur = load i8, ptr %i.uq, align 1
  %i.us = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.2
  store i8 %i.ur, ptr %i.us, align 1
  %indvars.iv.next939.3 = add nuw nsw i64 %indvars.iv938, 4 ; 2 uses
  %exitcond942.not.3 = icmp eq i64 %indvars.iv.next939.3, %wide.trip.count941
  br i1 %exitcond942.not.3, label %._crit_edge808, label %.lr.ph807, !llvm.loop !323

._crit_edge808:                                   ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807, %middle.block1279, %vec.epilog.middle.block1292, %.preheader715
  %i.ut = getelementptr inbounds i8, ptr %.2539812, i64 %i.to
  store i8 -1, ptr %i.ut, align 1
  %i.uu = getelementptr inbounds i8, ptr %.2581811, i64 %i.to ; 2 uses
  %i.uv = getelementptr inbounds i8, ptr %.2539812, i64 %9
  %.0567 = add i32 %.0567813, -1                  ; 2 uses
  %.not630 = icmp eq i32 %.0567, 0
  br i1 %.not630, label %.loopexit736, label %.preheader715

.preheader716:                                    ; preds = %.preheader716.lr.ph, %._crit_edge799
  %.1568804 = phi i32 [ %.6573753, %.preheader716.lr.ph ], [ %.1568, %._crit_edge799 ]
  %.3540803 = phi ptr [ %.1538, %.preheader716.lr.ph ], [ %i.wh, %._crit_edge799 ] ; 12 uses
  %.3582802 = phi ptr [ %.1580, %.preheader716.lr.ph ], [ %i.wg, %._crit_edge799 ] ; 6 uses
  br i1 %i.cy, label %iter.check1326, label %._crit_edge799

iter.check1326:                                   ; preds = %.preheader716
  %brmerge1689 = select i1 %min.iters.check1311.a, i1 true, i1 %conflict.rdx1310
  br i1 %brmerge1689, label %.lr.ph798.preheader, label %vector.main.loop.iter.check1312

vector.main.loop.iter.check1312:                  ; preds = %iter.check1326
  br i1 %min.iters.check1313, label %vec.epilog.ph1330, label %vector.body1316

vector.body1316:                                  ; preds = %vector.main.loop.iter.check1312, %vector.body1316
  %index1317 = phi i64 [ %index.next1322, %vector.body1316 ], [ 0, %vector.main.loop.iter.check1312 ] ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1317 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %wide.load1318.a = load <16 x i8>, ptr %i.uw, align 1, !alias.scope !377
  %wide.load1319.a = load <16 x i8>, ptr %i.ux, align 1, !alias.scope !377
  %i.uy = sub nsw i64 %index1317, %9
  %i.uz = getelementptr inbounds i8, ptr %.3540803, i64 %i.uy ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %wide.load1320 = load <16 x i8>, ptr %i.uz, align 1, !alias.scope !378
  %wide.load1321 = load <16 x i8>, ptr %i.va, align 1, !alias.scope !378
  %i.vb = add <16 x i8> %wide.load1320, %wide.load1318.a
  %i.vc = add <16 x i8> %wide.load1321, %wide.load1319.a
  %i.vd = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1317 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  store <16 x i8> %i.vb, ptr %i.vd, align 1, !alias.scope !379, !noalias !380
  store <16 x i8> %i.vc, ptr %i.ve, align 1, !alias.scope !379, !noalias !380
  %index.next1322 = add nuw i64 %index1317, 32    ; 2 uses
  %i.vf = icmp eq i64 %index.next1322, %n.vec1315
  br i1 %i.vf, label %middle.block1323, label %vector.body1316, !llvm.loop !328

middle.block1323:                                 ; preds = %vector.body1316
  br i1 %cmp.n1324, label %._crit_edge799, label %vec.epilog.iter.check1328

vec.epilog.iter.check1328:                        ; preds = %middle.block1323
  br i1 %min.epilog.iters.check1329, label %.lr.ph798.preheader, label %vec.epilog.ph1330, !prof !16

vec.epilog.ph1330:                                ; preds = %vector.main.loop.iter.check1312, %vec.epilog.iter.check1328
  %vec.epilog.resume.val1325 = phi i64 [ %n.vec1315, %vec.epilog.iter.check1328 ], [ 0, %vector.main.loop.iter.check1312 ]
  br label %vec.epilog.vector.body1332

vec.epilog.vector.body1332:                       ; preds = %vec.epilog.vector.body1332, %vec.epilog.ph1330
  %index1333 = phi i64 [ %vec.epilog.resume.val1325, %vec.epilog.ph1330 ], [ %index.next1336, %vec.epilog.vector.body1332 ] ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1333
  %wide.load1334 = load <4 x i8>, ptr %i.vg, align 1, !alias.scope !377
  %i.vh = sub nsw i64 %index1333, %9
  %i.vi = getelementptr inbounds i8, ptr %.3540803, i64 %i.vh
  %wide.load1335 = load <4 x i8>, ptr %i.vi, align 1, !alias.scope !378
  %i.vj = add <4 x i8> %wide.load1335, %wide.load1334
  %i.vk = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1333
  store <4 x i8> %i.vj, ptr %i.vk, align 1, !alias.scope !379, !noalias !380
  %index.next1336 = add nuw i64 %index1333, 4     ; 2 uses
  %i.vl = icmp eq i64 %index.next1336, %n.vec1331
  br i1 %i.vl, label %vec.epilog.middle.block1337, label %vec.epilog.vector.body1332, !llvm.loop !329

vec.epilog.middle.block1337:                      ; preds = %vec.epilog.vector.body1332
  br i1 %cmp.n1338, label %._crit_edge799, label %.lr.ph798.preheader

.lr.ph798.preheader:                              ; preds = %iter.check1326, %vec.epilog.iter.check1328, %vec.epilog.middle.block1337
  %indvars.iv933.ph = phi i64 [ 0, %iter.check1326 ], [ %n.vec1331, %vec.epilog.middle.block1337 ], [ %n.vec1315, %vec.epilog.iter.check1328 ] ; 6 uses
  br i1 %lcmp.mod1644.not, label %.lr.ph798.prol.loopexit, label %.lr.ph798.prol

.lr.ph798.prol:                                   ; preds = %.lr.ph798.preheader
  %i.vm = getelementptr inbounds nuw i8, ptr %.3582802, i64 %indvars.iv933.ph
  %i.vn = load i8, ptr %i.vm, align 1
  %i.vo = sub nsw i64 %indvars.iv933.ph, %9
  %i.vp = getelementptr inbounds i8, ptr %.3540803, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1
  %.narrow629.prol = add i8 %i.vq, %i.vn
  %i.vr = getelementptr inbounds nuw i8, ptr %.3540803, i64 %indvars.iv933.ph
  store i8 %.narrow629.prol, ptr %i.vr, align 1
  %indvars.iv.next934.prol = or disjoint i64 %indvars.iv933.ph, 1
  br label %.lr.ph798.prol.loopexit

.lr.ph798.prol.loopexit:                          ; preds = %.lr.ph798.prol, %.lr.ph798.preheader
  %indvars.iv933.unr = phi i64 [ %indvars.iv933.ph, %.lr.ph798.preheader ], [ %indvars.iv.next934.prol, %.lr.ph798.prol ]
  %i.vs = icmp eq i64 %indvars.iv933.ph, %i.tn
  br i1 %i.vs, label %._crit_edge799, label %.lr.ph798

.lr.ph798:                                        ; preds = %.lr.ph798.prol.loopexit, %.lr.ph798
  %indvars.iv933 = phi i64 [ %indvars.iv.next934.1, %.lr.ph798 ], [ %indvars.iv933.unr, %.lr.ph798.prol.loopexit ] ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.3582802, i64 %indvars.iv933
  %i.vu = load i8, ptr %i.vt, align 1
  %i.vv = sub nsw i64 %indvars.iv933, %9
  %i.vw = getelementptr inbounds i8, ptr %.3540803, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1
  %.narrow629 = add i8 %i.vx, %i.vu
  %i.vy = getelementptr inbounds nuw i8, ptr %.3540803, i64 %indvars.iv933
  store i8 %.narrow629, ptr %i.vy, align 1
  %indvars.iv.next934 = add nuw nsw i64 %indvars.iv933, 1 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.3582802, i64 %indvars.iv.next934
  %i.wa = load i8, ptr %i.vz, align 1
  %i.wb = sub nsw i64 %indvars.iv.next934, %9
  %i.wc = getelementptr inbounds i8, ptr %.3540803, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1
  %.narrow629.1 = add i8 %i.wd, %i.wa
  %i.we = getelementptr inbounds nuw i8, ptr %.3540803, i64 %indvars.iv.next934
  store i8 %.narrow629.1, ptr %i.we, align 1
  %indvars.iv.next934.1 = add nuw nsw i64 %indvars.iv933, 2 ; 2 uses
  %exitcond937.not.1 = icmp eq i64 %indvars.iv.next934.1, %wide.trip.count936
  br i1 %exitcond937.not.1, label %._crit_edge799, label %.lr.ph798, !llvm.loop !330

._crit_edge799:                                   ; preds = %.lr.ph798.prol.loopexit, %.lr.ph798, %middle.block1323, %vec.epilog.middle.block1337, %.preheader716
  %i.wf = getelementptr inbounds i8, ptr %.3540803, i64 %i.th
  store i8 -1, ptr %i.wf, align 1
  %i.wg = getelementptr inbounds i8, ptr %.3582802, i64 %i.th ; 2 uses
  %i.wh = getelementptr inbounds i8, ptr %.3540803, i64 %9
  %.1568 = add i32 %.1568804, -1                  ; 2 uses
  %.not627 = icmp eq i32 %.1568, 0
  br i1 %.not627, label %.loopexit736, label %.preheader716

.preheader717:                                    ; preds = %.preheader717.lr.ph, %._crit_edge789
  %.2569795 = phi i32 [ %.6573753, %.preheader717.lr.ph ], [ %.2569, %._crit_edge789 ]
  %.3532794 = phi ptr [ %i.ee, %.preheader717.lr.ph ], [ %i.ya, %._crit_edge789 ] ; 8 uses
  %.4541793 = phi ptr [ %.1538, %.preheader717.lr.ph ], [ %i.xz, %._crit_edge789 ] ; 9 uses
  %.4583792 = phi ptr [ %.1580, %.preheader717.lr.ph ], [ %i.xy, %._crit_edge789 ] ; 8 uses
  br i1 %i.cy, label %iter.check1370, label %._crit_edge789

iter.check1370:                                   ; preds = %.preheader717
  %brmerge1690 = select i1 %min.iters.check1355, i1 true, i1 %conflict.rdx1354
  br i1 %brmerge1690, label %.lr.ph788.preheader, label %vector.main.loop.iter.check1356

vector.main.loop.iter.check1356:                  ; preds = %iter.check1370
  br i1 %min.iters.check1357, label %vec.epilog.ph1374, label %vector.body1360

vector.body1360:                                  ; preds = %vector.main.loop.iter.check1356, %vector.body1360
  %index1361 = phi i64 [ %index.next1366, %vector.body1360 ], [ 0, %vector.main.loop.iter.check1356 ] ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.4583792, i64 %index1361 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %wide.load1362.a = load <16 x i8>, ptr %i.wi, align 1, !alias.scope !381
  %wide.load1363 = load <16 x i8>, ptr %i.wj, align 1, !alias.scope !381
  %i.wk = getelementptr inbounds nuw i8, ptr %.3532794, i64 %index1361 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %wide.load1364 = load <16 x i8>, ptr %i.wk, align 1, !alias.scope !382
  %wide.load1365 = load <16 x i8>, ptr %i.wl, align 1, !alias.scope !382
  %i.wm = add <16 x i8> %wide.load1364, %wide.load1362.a
  %i.wn = add <16 x i8> %wide.load1365, %wide.load1363
  %i.wo = getelementptr inbounds nuw i8, ptr %.4541793, i64 %index1361 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store <16 x i8> %i.wm, ptr %i.wo, align 1, !alias.scope !383, !noalias !384
  store <16 x i8> %i.wn, ptr %i.wp, align 1, !alias.scope !383, !noalias !384
  %index.next1366 = add nuw i64 %index1361, 32    ; 2 uses
  %i.wq = icmp eq i64 %index.next1366, %n.vec1359
  br i1 %i.wq, label %middle.block1367, label %vector.body1360, !llvm.loop !335

middle.block1367:                                 ; preds = %vector.body1360
  br i1 %cmp.n1368, label %._crit_edge789, label %vec.epilog.iter.check1372

vec.epilog.iter.check1372:                        ; preds = %middle.block1367
  br i1 %min.epilog.iters.check1373, label %.lr.ph788.preheader, label %vec.epilog.ph1374, !prof !16

vec.epilog.ph1374:                                ; preds = %vector.main.loop.iter.check1356, %vec.epilog.iter.check1372
  %vec.epilog.resume.val1369 = phi i64 [ %n.vec1359, %vec.epilog.iter.check1372 ], [ 0, %vector.main.loop.iter.check1356 ]
  br label %vec.epilog.vector.body1376

vec.epilog.vector.body1376:                       ; preds = %vec.epilog.vector.body1376, %vec.epilog.ph1374
  %index1377 = phi i64 [ %vec.epilog.resume.val1369, %vec.epilog.ph1374 ], [ %index.next1380, %vec.epilog.vector.body1376 ] ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.4583792, i64 %index1377
  %wide.load1378 = load <4 x i8>, ptr %i.wr, align 1, !alias.scope !381
  %i.ws = getelementptr inbounds nuw i8, ptr %.3532794, i64 %index1377
  %wide.load1379 = load <4 x i8>, ptr %i.ws, align 1, !alias.scope !382
  %i.wt = add <4 x i8> %wide.load1379, %wide.load1378
  %i.wu = getelementptr inbounds nuw i8, ptr %.4541793, i64 %index1377
  store <4 x i8> %i.wt, ptr %i.wu, align 1, !alias.scope !383, !noalias !384
  %index.next1380 = add nuw i64 %index1377, 4     ; 2 uses
  %i.wv = icmp eq i64 %index.next1380, %n.vec1375
  br i1 %i.wv, label %vec.epilog.middle.block1381, label %vec.epilog.vector.body1376, !llvm.loop !336

vec.epilog.middle.block1381:                      ; preds = %vec.epilog.vector.body1376
  br i1 %cmp.n1382, label %._crit_edge789, label %.lr.ph788.preheader

.lr.ph788.preheader:                              ; preds = %iter.check1370, %vec.epilog.iter.check1372, %vec.epilog.middle.block1381
  %indvars.iv928.ph = phi i64 [ 0, %iter.check1370 ], [ %n.vec1375, %vec.epilog.middle.block1381 ], [ %n.vec1359, %vec.epilog.iter.check1372 ] ; 3 uses
  br i1 %lcmp.mod1642.not, label %.lr.ph788.prol.loopexit, label %.lr.ph788.prol

.lr.ph788.prol:                                   ; preds = %.lr.ph788.preheader, %.lr.ph788.prol
  %indvars.iv928.prol = phi i64 [ %indvars.iv.next929.prol, %.lr.ph788.prol ], [ %indvars.iv928.ph, %.lr.ph788.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph788.prol ], [ 0, %.lr.ph788.preheader ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv928.prol
  %i.wx = load i8, ptr %i.ww, align 1
  %i.wy = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv928.prol
  %i.wz = load i8, ptr %i.wy, align 1
  %.narrow626.prol = add i8 %i.wz, %i.wx
  %i.xa = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv928.prol
  store i8 %.narrow626.prol, ptr %i.xa, align 1
  %indvars.iv.next929.prol = add nuw nsw i64 %indvars.iv928.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1641
  br i1 %prol.iter.cmp.not, label %.lr.ph788.prol.loopexit, label %.lr.ph788.prol, !llvm.loop !337

.lr.ph788.prol.loopexit:                          ; preds = %.lr.ph788.prol, %.lr.ph788.preheader
  %indvars.iv928.unr = phi i64 [ %indvars.iv928.ph, %.lr.ph788.preheader ], [ %indvars.iv.next929.prol, %.lr.ph788.prol ]
  %i.xb = sub nsw i64 %indvars.iv928.ph, %wide.trip.count931
  %i.xc = icmp ugt i64 %i.xb, -4
  br i1 %i.xc, label %._crit_edge789, label %.lr.ph788

.lr.ph788:                                        ; preds = %.lr.ph788.prol.loopexit, %.lr.ph788
  %indvars.iv928 = phi i64 [ %indvars.iv.next929.3, %.lr.ph788 ], [ %indvars.iv928.unr, %.lr.ph788.prol.loopexit ] ; 7 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv928
  %i.xe = load i8, ptr %i.xd, align 1
  %i.xf = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv928
  %i.xg = load i8, ptr %i.xf, align 1
  %.narrow626 = add i8 %i.xg, %i.xe
  %i.xh = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv928
  store i8 %.narrow626, ptr %i.xh, align 1
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv928, 1 ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv.next929
  %i.xj = load i8, ptr %i.xi, align 1
  %i.xk = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv.next929
  %i.xl = load i8, ptr %i.xk, align 1
  %.narrow626.1 = add i8 %i.xl, %i.xj
  %i.xm = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv.next929
  store i8 %.narrow626.1, ptr %i.xm, align 1
  %indvars.iv.next929.1 = add nuw nsw i64 %indvars.iv928, 2 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv.next929.1
  %i.xo = load i8, ptr %i.xn, align 1
  %i.xp = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv.next929.1
  %i.xq = load i8, ptr %i.xp, align 1
  %.narrow626.2 = add i8 %i.xq, %i.xo
  %i.xr = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv.next929.1
  store i8 %.narrow626.2, ptr %i.xr, align 1
  %indvars.iv.next929.2 = add nuw nsw i64 %indvars.iv928, 3 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv.next929.2
  %i.xt = load i8, ptr %i.xs, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv.next929.2
  %i.xv = load i8, ptr %i.xu, align 1
  %.narrow626.3 = add i8 %i.xv, %i.xt
  %i.xw = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv.next929.2
  store i8 %.narrow626.3, ptr %i.xw, align 1
  %indvars.iv.next929.3 = add nuw nsw i64 %indvars.iv928, 4 ; 2 uses
  %exitcond932.not.3 = icmp eq i64 %indvars.iv.next929.3, %wide.trip.count931
  br i1 %exitcond932.not.3, label %._crit_edge789, label %.lr.ph788, !llvm.loop !338

._crit_edge789:                                   ; preds = %.lr.ph788.prol.loopexit, %.lr.ph788, %middle.block1367, %vec.epilog.middle.block1381, %.preheader717
  %i.xx = getelementptr inbounds i8, ptr %.4541793, i64 %i.sz
  store i8 -1, ptr %i.xx, align 1
  %i.xy = getelementptr inbounds i8, ptr %.4583792, i64 %i.sz ; 2 uses
  %i.xz = getelementptr inbounds i8, ptr %.4541793, i64 %9
  %i.ya = getelementptr inbounds i8, ptr %.3532794, i64 %9
  %.2569 = add i32 %.2569795, -1                  ; 2 uses
  %.not624 = icmp eq i32 %.2569, 0
  br i1 %.not624, label %.loopexit736, label %.preheader717

.preheader718:                                    ; preds = %.preheader718.lr.ph, %._crit_edge779
  %.3570785 = phi i32 [ %.6573753, %.preheader718.lr.ph ], [ %.3570, %._crit_edge779 ]
  %.4533784 = phi ptr [ %i.ee, %.preheader718.lr.ph ], [ %i.aax, %._crit_edge779 ] ; 6 uses
  %.5542783 = phi ptr [ %.1538, %.preheader718.lr.ph ], [ %i.aaw, %._crit_edge779 ] ; 12 uses
  %.5584782 = phi ptr [ %.1580, %.preheader718.lr.ph ], [ %i.aav, %._crit_edge779 ] ; 6 uses
  br i1 %i.cy, label %iter.check1423, label %._crit_edge779

iter.check1423:                                   ; preds = %.preheader718
  %brmerge1691 = select i1 %min.iters.check1406, i1 true, i1 %conflict.rdx1405
  br i1 %brmerge1691, label %.lr.ph778.preheader, label %vector.main.loop.iter.check1407

vector.main.loop.iter.check1407:                  ; preds = %iter.check1423
  br i1 %min.iters.check1408, label %vec.epilog.ph1427, label %vector.body1411

vector.body1411:                                  ; preds = %vector.main.loop.iter.check1407, %vector.body1411
  %index1412 = phi i64 [ %index.next1419, %vector.body1411 ], [ 0, %vector.main.loop.iter.check1407 ] ; 5 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.5584782, i64 %index1412 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %wide.load1413.a = load <16 x i8>, ptr %i.yb, align 1, !alias.scope !385
  %wide.load1414.a = load <16 x i8>, ptr %i.yc, align 1, !alias.scope !385
  %i.yd = getelementptr inbounds nuw i8, ptr %.4533784, i64 %index1412 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %wide.load1415 = load <16 x i8>, ptr %i.yd, align 1, !alias.scope !386
  %wide.load1416 = load <16 x i8>, ptr %i.ye, align 1, !alias.scope !386
  %i.yf = zext <16 x i8> %wide.load1415 to <16 x i16>
  %i.yg = zext <16 x i8> %wide.load1416 to <16 x i16>
  %i.yh = sub nsw i64 %index1412, %9
  %i.yi = getelementptr inbounds i8, ptr %.5542783, i64 %i.yh ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %wide.load1417 = load <16 x i8>, ptr %i.yi, align 1, !alias.scope !387
  %wide.load1418 = load <16 x i8>, ptr %i.yj, align 1, !alias.scope !387
  %i.yk = zext <16 x i8> %wide.load1417 to <16 x i16>
  %i.yl = zext <16 x i8> %wide.load1418 to <16 x i16>
  %i.ym = add nuw nsw <16 x i16> %i.yk, %i.yf
  %i.yn = add nuw nsw <16 x i16> %i.yl, %i.yg
  %i.yo = lshr <16 x i16> %i.ym, splat (i16 1)
  %i.yp = lshr <16 x i16> %i.yn, splat (i16 1)
  %i.yq = trunc nuw <16 x i16> %i.yo to <16 x i8>
  %i.yr = trunc nuw <16 x i16> %i.yp to <16 x i8>
  %i.ys = add <16 x i8> %wide.load1413.a, %i.yq
  %i.yt = add <16 x i8> %wide.load1414.a, %i.yr
  %i.yu = getelementptr inbounds nuw i8, ptr %.5542783, i64 %index1412 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store <16 x i8> %i.ys, ptr %i.yu, align 1, !alias.scope !388, !noalias !389
  store <16 x i8> %i.yt, ptr %i.yv, align 1, !alias.scope !388, !noalias !389
  %index.next1419 = add nuw i64 %index1412, 32    ; 2 uses
  %i.yw = icmp eq i64 %index.next1419, %n.vec1410
  br i1 %i.yw, label %middle.block1420, label %vector.body1411, !llvm.loop !344

middle.block1420:                                 ; preds = %vector.body1411
  br i1 %cmp.n1421, label %._crit_edge779, label %vec.epilog.iter.check1425

vec.epilog.iter.check1425:                        ; preds = %middle.block1420
  br i1 %min.epilog.iters.check1426, label %.lr.ph778.preheader, label %vec.epilog.ph1427, !prof !374

vec.epilog.ph1427:                                ; preds = %vector.main.loop.iter.check1407, %vec.epilog.iter.check1425
  %vec.epilog.resume.val1422 = phi i64 [ %n.vec1410, %vec.epilog.iter.check1425 ], [ 0, %vector.main.loop.iter.check1407 ]
  br label %vec.epilog.vector.body1429

vec.epilog.vector.body1429:                       ; preds = %vec.epilog.vector.body1429, %vec.epilog.ph1427
  %index1430 = phi i64 [ %vec.epilog.resume.val1422, %vec.epilog.ph1427 ], [ %index.next1434, %vec.epilog.vector.body1429 ] ; 5 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.5584782, i64 %index1430
  %wide.load1431 = load <8 x i8>, ptr %i.yx, align 1, !alias.scope !385
  %i.yy = getelementptr inbounds nuw i8, ptr %.4533784, i64 %index1430
  %wide.load1432 = load <8 x i8>, ptr %i.yy, align 1, !alias.scope !386
  %i.yz = zext <8 x i8> %wide.load1432 to <8 x i16>
  %i.za = sub nsw i64 %index1430, %9
  %i.zb = getelementptr inbounds i8, ptr %.5542783, i64 %i.za
  %wide.load1433 = load <8 x i8>, ptr %i.zb, align 1, !alias.scope !387
  %i.zc = zext <8 x i8> %wide.load1433 to <8 x i16>
  %i.zd = add nuw nsw <8 x i16> %i.zc, %i.yz
  %i.ze = lshr <8 x i16> %i.zd, splat (i16 1)
  %i.zf = trunc nuw <8 x i16> %i.ze to <8 x i8>
  %i.zg = add <8 x i8> %wide.load1431, %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %.5542783, i64 %index1430
  store <8 x i8> %i.zg, ptr %i.zh, align 1, !alias.scope !388, !noalias !389
  %index.next1434 = add nuw i64 %index1430, 8     ; 2 uses
  %i.zi = icmp eq i64 %index.next1434, %n.vec1428
  br i1 %i.zi, label %vec.epilog.middle.block1435, label %vec.epilog.vector.body1429, !llvm.loop !345

vec.epilog.middle.block1435:                      ; preds = %vec.epilog.vector.body1429
  br i1 %cmp.n1436, label %._crit_edge779, label %.lr.ph778.preheader

.lr.ph778.preheader:                              ; preds = %iter.check1423, %vec.epilog.iter.check1425, %vec.epilog.middle.block1435
  %indvars.iv923.ph = phi i64 [ 0, %iter.check1423 ], [ %n.vec1428, %vec.epilog.middle.block1435 ], [ %n.vec1410, %vec.epilog.iter.check1425 ] ; 7 uses
  br i1 %lcmp.mod1640.not.a, label %.lr.ph778.prol.loopexit, label %.lr.ph778.prol

.lr.ph778.prol:                                   ; preds = %.lr.ph778.preheader
  %i.zj = getelementptr inbounds nuw i8, ptr %.5584782, i64 %indvars.iv923.ph
  %i.zk = load i8, ptr %i.zj, align 1
  %i.zl = getelementptr inbounds nuw i8, ptr %.4533784, i64 %indvars.iv923.ph
  %i.zm = load i8, ptr %i.zl, align 1
  %i.zn = zext i8 %i.zm to i16
  %i.zo = sub nsw i64 %indvars.iv923.ph, %9
  %i.zp = getelementptr inbounds i8, ptr %.5542783, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1
  %i.zr = zext i8 %i.zq to i16
  %i.zs = add nuw nsw i16 %i.zr, %i.zn
  %i.zt = lshr i16 %i.zs, 1
  %.tr622.prol = trunc nuw i16 %i.zt to i8
  %.narrow623.prol = add i8 %i.zk, %.tr622.prol
  %i.zu = getelementptr inbounds nuw i8, ptr %.5542783, i64 %indvars.iv923.ph
  store i8 %.narrow623.prol, ptr %i.zu, align 1
  %indvars.iv.next924.prol = or disjoint i64 %indvars.iv923.ph, 1
  br label %.lr.ph778.prol.loopexit

.lr.ph778.prol.loopexit:                          ; preds = %.lr.ph778.prol, %.lr.ph778.preheader
  %indvars.iv923.unr = phi i64 [ %indvars.iv923.ph, %.lr.ph778.preheader ], [ %indvars.iv.next924.prol, %.lr.ph778.prol ]
  %i.zv = icmp eq i64 %indvars.iv923.ph, %i.sy
  br i1 %i.zv, label %._crit_edge779, label %.lr.ph778

.lr.ph778:                                        ; preds = %.lr.ph778.prol.loopexit, %.lr.ph778
  %indvars.iv923 = phi i64 [ %indvars.iv.next924.1, %.lr.ph778 ], [ %indvars.iv923.unr, %.lr.ph778.prol.loopexit ] ; 6 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.5584782, i64 %indvars.iv923
  %i.zx = load i8, ptr %i.zw, align 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.4533784, i64 %indvars.iv923
  %i.zz = load i8, ptr %i.zy, align 1
  %i.aaa = zext i8 %i.zz to i16
  %i.aab = sub nsw i64 %indvars.iv923, %9
  %i.aac = getelementptr inbounds i8, ptr %.5542783, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1
  %i.aae = zext i8 %i.aad to i16
  %i.aaf = add nuw nsw i16 %i.aae, %i.aaa
  %i.aag = lshr i16 %i.aaf, 1
  %.tr622 = trunc nuw i16 %i.aag to i8
  %.narrow623 = add i8 %i.zx, %.tr622
  %i.aah = getelementptr inbounds nuw i8, ptr %.5542783, i64 %indvars.iv923
  store i8 %.narrow623, ptr %i.aah, align 1
  %indvars.iv.next924 = add nuw nsw i64 %indvars.iv923, 1 ; 4 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.5584782, i64 %indvars.iv.next924
  %i.aaj = load i8, ptr %i.aai, align 1
  %i.aak = getelementptr inbounds nuw i8, ptr %.4533784, i64 %indvars.iv.next924
  %i.aal = load i8, ptr %i.aak, align 1
  %i.aam = zext i8 %i.aal to i16
  %i.aan = sub nsw i64 %indvars.iv.next924, %9
  %i.aao = getelementptr inbounds i8, ptr %.5542783, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1
  %i.aaq = zext i8 %i.aap to i16
  %i.aar = add nuw nsw i16 %i.aaq, %i.aam
  %i.aas = lshr i16 %i.aar, 1
  %.tr622.1 = trunc nuw i16 %i.aas to i8
  %.narrow623.1 = add i8 %i.aaj, %.tr622.1
  %i.aat = getelementptr inbounds nuw i8, ptr %.5542783, i64 %indvars.iv.next924
  store i8 %.narrow623.1, ptr %i.aat, align 1
  %indvars.iv.next924.1 = add nuw nsw i64 %indvars.iv923, 2 ; 2 uses
  %exitcond927.not.1 = icmp eq i64 %indvars.iv.next924.1, %wide.trip.count926
  br i1 %exitcond927.not.1, label %._crit_edge779, label %.lr.ph778, !llvm.loop !346

._crit_edge779:                                   ; preds = %.lr.ph778.prol.loopexit, %.lr.ph778, %middle.block1420, %vec.epilog.middle.block1435, %.preheader718
  %i.aau = getelementptr inbounds i8, ptr %.5542783, i64 %i.sq
  store i8 -1, ptr %i.aau, align 1
  %i.aav = getelementptr inbounds i8, ptr %.5584782, i64 %i.sq ; 2 uses
  %i.aaw = getelementptr inbounds i8, ptr %.5542783, i64 %9
  %i.aax = getelementptr inbounds i8, ptr %.4533784, i64 %9
  %.3570 = add i32 %.3570785, -1                  ; 2 uses
  %.not621 = icmp eq i32 %.3570, 0
  br i1 %.not621, label %.loopexit736, label %.preheader718

.preheader719:                                    ; preds = %.preheader719.lr.ph, %._crit_edge769
  %.4571775 = phi i32 [ %.6573753, %.preheader719.lr.ph ], [ %.4571, %._crit_edge769 ]
  %.5534774 = phi ptr [ %i.ee, %.preheader719.lr.ph ], [ %i.adv, %._crit_edge769 ] ; 7 uses
  %.6543773 = phi ptr [ %.1538, %.preheader719.lr.ph ], [ %i.adu, %._crit_edge769 ] ; 8 uses
  %.6585772 = phi ptr [ %.1580, %.preheader719.lr.ph ], [ %i.adt, %._crit_edge769 ] ; 4 uses
  br i1 %i.cy, label %iter.check1483, label %._crit_edge769

iter.check1483:                                   ; preds = %.preheader719
  %brmerge1692 = select i1 %min.iters.check1468, i1 true, i1 %conflict.rdx1467
  br i1 %brmerge1692, label %.lr.ph768.preheader, label %vector.main.loop.iter.check1469

vector.main.loop.iter.check1469:                  ; preds = %iter.check1483
  br i1 %min.iters.check1470, label %vec.epilog.ph1487, label %vector.body1473

vector.body1473:                                  ; preds = %vector.main.loop.iter.check1469, %vector.body1473
  %index1474 = phi i64 [ %index.next1479, %vector.body1473 ], [ 0, %vector.main.loop.iter.check1469 ] ; 5 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.6585772, i64 %index1474
  %wide.load1475 = load <16 x i8>, ptr %i.aay, align 1, !alias.scope !390
  %i.aaz = sub nsw i64 %index1474, %9             ; 2 uses
  %i.aba = getelementptr inbounds i8, ptr %.6543773, i64 %i.aaz
  %wide.load1476 = load <16 x i8>, ptr %i.aba, align 1, !alias.scope !391 ; 2 uses
  %i.abb = zext <16 x i8> %wide.load1476 to <16 x i32> ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.5534774, i64 %index1474
  %wide.load1477 = load <16 x i8>, ptr %i.abc, align 1, !alias.scope !392 ; 2 uses
  %i.abd = zext <16 x i8> %wide.load1477 to <16 x i32> ; 2 uses
  %i.abe = getelementptr inbounds i8, ptr %.5534774, i64 %i.aaz
  %wide.load1478 = load <16 x i8>, ptr %i.abe, align 1, !alias.scope !393 ; 2 uses
  %i.abf = zext <16 x i8> %wide.load1478 to <16 x i32> ; 2 uses
  %i.abg = add nuw nsw <16 x i32> %i.abd, %i.abb
  %i.abh = sub nsw <16 x i32> %i.abg, %i.abf      ; 3 uses
  %i.abi = sub nsw <16 x i32> %i.abh, %i.abb
  %i.abj = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.abi, i1 true) ; 2 uses
  %i.abk = sub nsw <16 x i32> %i.abh, %i.abd
  %i.abl = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.abk, i1 true) ; 2 uses
  %i.abm = sub nsw <16 x i32> %i.abh, %i.abf
  %i.abn = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.abm, i1 true) ; 2 uses
  %i.abo = icmp samesign ugt <16 x i32> %i.abj, %i.abl
  %i.abp = icmp samesign ugt <16 x i32> %i.abj, %i.abn
  %i.abq = select <16 x i1> %i.abo, <16 x i1> splat (i1 true), <16 x i1> %i.abp
  %i.abr = icmp samesign ugt <16 x i32> %i.abl, %i.abn
  %i.abs = select <16 x i1> %i.abr, <16 x i8> %wide.load1478, <16 x i8> %wide.load1477
  %i.abt = select <16 x i1> %i.abq, <16 x i8> %i.abs, <16 x i8> %wide.load1476
  %i.abu = add <16 x i8> %i.abt, %wide.load1475
  %i.abv = getelementptr inbounds nuw i8, ptr %.6543773, i64 %index1474
  store <16 x i8> %i.abu, ptr %i.abv, align 1, !alias.scope !394, !noalias !395
  %index.next1479 = add nuw i64 %index1474, 16    ; 2 uses
  %i.abw = icmp eq i64 %index.next1479, %n.vec1472
  br i1 %i.abw, label %middle.block1480, label %vector.body1473, !llvm.loop !353

middle.block1480:                                 ; preds = %vector.body1473
  br i1 %cmp.n1481, label %._crit_edge769, label %vec.epilog.iter.check1485

vec.epilog.iter.check1485:                        ; preds = %middle.block1480
  br i1 %min.epilog.iters.check1486, label %.lr.ph768.preheader, label %vec.epilog.ph1487, !prof !17

vec.epilog.ph1487:                                ; preds = %vector.main.loop.iter.check1469, %vec.epilog.iter.check1485
  %vec.epilog.resume.val1482 = phi i64 [ %n.vec1472, %vec.epilog.iter.check1485 ], [ 0, %vector.main.loop.iter.check1469 ]
  br label %vec.epilog.vector.body1489

vec.epilog.vector.body1489:                       ; preds = %vec.epilog.vector.body1489, %vec.epilog.ph1487
  %index1490 = phi i64 [ %vec.epilog.resume.val1482, %vec.epilog.ph1487 ], [ %index.next1495, %vec.epilog.vector.body1489 ] ; 5 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.6585772, i64 %index1490
  %wide.load1491 = load <4 x i8>, ptr %i.abx, align 1, !alias.scope !390
  %i.aby = sub nsw i64 %index1490, %9             ; 2 uses
  %i.abz = getelementptr inbounds i8, ptr %.6543773, i64 %i.aby
  %wide.load1492 = load <4 x i8>, ptr %i.abz, align 1, !alias.scope !391 ; 2 uses
  %i.aca = zext <4 x i8> %wide.load1492 to <4 x i32> ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.5534774, i64 %index1490
  %wide.load1493 = load <4 x i8>, ptr %i.acb, align 1, !alias.scope !392 ; 2 uses
  %i.acc = zext <4 x i8> %wide.load1493 to <4 x i32> ; 2 uses
  %i.acd = getelementptr inbounds i8, ptr %.5534774, i64 %i.aby
  %wide.load1494 = load <4 x i8>, ptr %i.acd, align 1, !alias.scope !393 ; 2 uses
  %i.ace = zext <4 x i8> %wide.load1494 to <4 x i32> ; 2 uses
  %i.acf = add nuw nsw <4 x i32> %i.acc, %i.aca
  %i.acg = sub nsw <4 x i32> %i.acf, %i.ace       ; 3 uses
  %i.ach = sub nsw <4 x i32> %i.acg, %i.aca
  %i.aci = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ach, i1 true) ; 2 uses
  %i.acj = sub nsw <4 x i32> %i.acg, %i.acc
  %i.ack = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.acj, i1 true) ; 2 uses
  %i.acl = sub nsw <4 x i32> %i.acg, %i.ace
  %i.acm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.acl, i1 true) ; 2 uses
  %i.acn = icmp samesign ugt <4 x i32> %i.aci, %i.ack
  %i.aco = icmp samesign ugt <4 x i32> %i.aci, %i.acm
  %i.acp = select <4 x i1> %i.acn, <4 x i1> splat (i1 true), <4 x i1> %i.aco
  %i.acq = icmp samesign ugt <4 x i32> %i.ack, %i.acm
  %i.acr = select <4 x i1> %i.acq, <4 x i8> %wide.load1494, <4 x i8> %wide.load1493
  %i.acs = select <4 x i1> %i.acp, <4 x i8> %i.acr, <4 x i8> %wide.load1492
  %i.act = add <4 x i8> %i.acs, %wide.load1491
  %i.acu = getelementptr inbounds nuw i8, ptr %.6543773, i64 %index1490
  store <4 x i8> %i.act, ptr %i.acu, align 1, !alias.scope !394, !noalias !395
  %index.next1495 = add nuw i64 %index1490, 4     ; 2 uses
  %i.acv = icmp eq i64 %index.next1495, %n.vec1488
  br i1 %i.acv, label %vec.epilog.middle.block1496, label %vec.epilog.vector.body1489, !llvm.loop !354

vec.epilog.middle.block1496:                      ; preds = %vec.epilog.vector.body1489
  br i1 %cmp.n1497, label %._crit_edge769, label %.lr.ph768.preheader

.lr.ph768.preheader:                              ; preds = %iter.check1483, %vec.epilog.iter.check1485, %vec.epilog.middle.block1496
  %indvars.iv918.ph = phi i64 [ 0, %iter.check1483 ], [ %n.vec1488, %vec.epilog.middle.block1496 ], [ %n.vec1472, %vec.epilog.iter.check1485 ]
  br label %.lr.ph768

.lr.ph768:                                        ; preds = %.lr.ph768.preheader, %.lr.ph768
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %.lr.ph768 ], [ %indvars.iv918.ph, %.lr.ph768.preheader ] ; 5 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.6585772, i64 %indvars.iv918
  %i.acx = load i8, ptr %i.acw, align 1
  %i.acy = sub nsw i64 %indvars.iv918, %9         ; 2 uses
  %i.acz = getelementptr inbounds i8, ptr %.6543773, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1           ; 2 uses
  %i.adb = zext i8 %i.ada to i32                  ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.5534774, i64 %indvars.iv918
  %i.add = load i8, ptr %i.adc, align 1           ; 2 uses
  %i.ade = zext i8 %i.add to i32                  ; 2 uses
  %i.adf = getelementptr inbounds i8, ptr %.5534774, i64 %i.acy
  %i.adg = load i8, ptr %i.adf, align 1           ; 2 uses
  %i.adh = zext i8 %i.adg to i32                  ; 2 uses
  %i.adi = add nuw nsw i32 %i.ade, %i.adb
  %i.adj = sub nsw i32 %i.adi, %i.adh             ; 3 uses
  %i.adk = sub nsw i32 %i.adj, %i.adb
  %i.adl = tail call i32 @llvm.abs.i32(i32 %i.adk, i1 true) ; 2 uses
  %i.adm = sub nsw i32 %i.adj, %i.ade
  %i.adn = tail call i32 @llvm.abs.i32(i32 %i.adm, i1 true) ; 2 uses
  %i.ado = sub nsw i32 %i.adj, %i.adh
  %i.adp = tail call i32 @llvm.abs.i32(i32 %i.ado, i1 true) ; 2 uses
  %.not.i661 = icmp samesign ugt i32 %i.adl, %i.adn
  %.not20.i662 = icmp samesign ugt i32 %i.adl, %i.adp
  %or.cond.i663 = select i1 %.not.i661, i1 true, i1 %.not20.i662
  %.not21.i664 = icmp samesign ugt i32 %i.adn, %i.adp
  %i.adq = select i1 %.not21.i664, i8 %i.adg, i8 %i.add
  %.tr619 = select i1 %or.cond.i663, i8 %i.adq, i8 %i.ada
  %.narrow620 = add i8 %.tr619, %i.acx
  %i.adr = getelementptr inbounds nuw i8, ptr %.6543773, i64 %indvars.iv918
  store i8 %.narrow620, ptr %i.adr, align 1
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1 ; 2 uses
  %exitcond922.not = icmp eq i64 %indvars.iv.next919, %wide.trip.count921
  br i1 %exitcond922.not, label %._crit_edge769, label %.lr.ph768, !llvm.loop !355

._crit_edge769:                                   ; preds = %.lr.ph768, %middle.block1480, %vec.epilog.middle.block1496, %.preheader719
  %i.ads = getelementptr inbounds i8, ptr %.6543773, i64 %i.sh
  store i8 -1, ptr %i.ads, align 1
  %i.adt = getelementptr inbounds i8, ptr %.6585772, i64 %i.sh ; 2 uses
  %i.adu = getelementptr inbounds i8, ptr %.6543773, i64 %9
  %i.adv = getelementptr inbounds i8, ptr %.5534774, i64 %9
  %.4571 = add i32 %.4571775, -1                  ; 2 uses
  %.not618 = icmp eq i32 %.4571, 0
  br i1 %.not618, label %.loopexit736, label %.preheader719

.preheader720:                                    ; preds = %.preheader720.lr.ph, %._crit_edge760
  %.5572765 = phi i32 [ %.6573753, %.preheader720.lr.ph ], [ %.5572, %._crit_edge760 ]
  %.7544764 = phi ptr [ %.1538, %.preheader720.lr.ph ], [ %i.afn, %._crit_edge760 ] ; 12 uses
  %.7586763 = phi ptr [ %.1580, %.preheader720.lr.ph ], [ %i.afm, %._crit_edge760 ] ; 6 uses
  br i1 %i.cy, label %iter.check1530, label %._crit_edge760

iter.check1530:                                   ; preds = %.preheader720
  %brmerge1693 = select i1 %min.iters.check1515, i1 true, i1 %conflict.rdx1514
  br i1 %brmerge1693, label %.lr.ph759.preheader, label %vector.main.loop.iter.check1516

vector.main.loop.iter.check1516:                  ; preds = %iter.check1530
  br i1 %min.iters.check1517, label %vec.epilog.ph1534, label %vector.body1520

vector.body1520:                                  ; preds = %vector.main.loop.iter.check1516, %vector.body1520
  %index1521 = phi i64 [ %index.next1526, %vector.body1520 ], [ 0, %vector.main.loop.iter.check1516 ] ; 4 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.7586763, i64 %index1521 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %wide.load1522 = load <16 x i8>, ptr %i.adw, align 1, !alias.scope !396
  %wide.load1523 = load <16 x i8>, ptr %i.adx, align 1, !alias.scope !396
  %i.ady = sub nsw i64 %index1521, %9
  %i.adz = getelementptr inbounds i8, ptr %.7544764, i64 %i.ady ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  %wide.load1524 = load <16 x i8>, ptr %i.adz, align 1, !alias.scope !397
  %wide.load1525 = load <16 x i8>, ptr %i.aea, align 1, !alias.scope !397
  %i.aeb = lshr <16 x i8> %wide.load1524, splat (i8 1)
  %i.aec = lshr <16 x i8> %wide.load1525, splat (i8 1)
  %i.aed = add <16 x i8> %i.aeb, %wide.load1522
  %i.aee = add <16 x i8> %i.aec, %wide.load1523
  %i.aef = getelementptr inbounds nuw i8, ptr %.7544764, i64 %index1521 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  store <16 x i8> %i.aed, ptr %i.aef, align 1, !alias.scope !398, !noalias !399
  store <16 x i8> %i.aee, ptr %i.aeg, align 1, !alias.scope !398, !noalias !399
  %index.next1526 = add nuw i64 %index1521, 32    ; 2 uses
  %i.aeh = icmp eq i64 %index.next1526, %n.vec1519
  br i1 %i.aeh, label %middle.block1527, label %vector.body1520, !llvm.loop !360

middle.block1527:                                 ; preds = %vector.body1520
  br i1 %cmp.n1528, label %._crit_edge760, label %vec.epilog.iter.check1532

vec.epilog.iter.check1532:                        ; preds = %middle.block1527
  br i1 %min.epilog.iters.check1533, label %.lr.ph759.preheader, label %vec.epilog.ph1534, !prof !16

vec.epilog.ph1534:                                ; preds = %vector.main.loop.iter.check1516, %vec.epilog.iter.check1532
  %vec.epilog.resume.val1529 = phi i64 [ %n.vec1519, %vec.epilog.iter.check1532 ], [ 0, %vector.main.loop.iter.check1516 ]
  br label %vec.epilog.vector.body1536

vec.epilog.vector.body1536:                       ; preds = %vec.epilog.vector.body1536, %vec.epilog.ph1534
  %index1537 = phi i64 [ %vec.epilog.resume.val1529, %vec.epilog.ph1534 ], [ %index.next1540, %vec.epilog.vector.body1536 ] ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.7586763, i64 %index1537
  %wide.load1538 = load <4 x i8>, ptr %i.aei, align 1, !alias.scope !396
  %i.aej = sub nsw i64 %index1537, %9
  %i.aek = getelementptr inbounds i8, ptr %.7544764, i64 %i.aej
  %wide.load1539 = load <4 x i8>, ptr %i.aek, align 1, !alias.scope !397
  %i.ael = lshr <4 x i8> %wide.load1539, splat (i8 1)
  %i.aem = add <4 x i8> %i.ael, %wide.load1538
  %i.aen = getelementptr inbounds nuw i8, ptr %.7544764, i64 %index1537
  store <4 x i8> %i.aem, ptr %i.aen, align 1, !alias.scope !398, !noalias !399
  %index.next1540 = add nuw i64 %index1537, 4     ; 2 uses
  %i.aeo = icmp eq i64 %index.next1540, %n.vec1535
  br i1 %i.aeo, label %vec.epilog.middle.block1541, label %vec.epilog.vector.body1536, !llvm.loop !361

vec.epilog.middle.block1541:                      ; preds = %vec.epilog.vector.body1536
  br i1 %cmp.n1542, label %._crit_edge760, label %.lr.ph759.preheader

.lr.ph759.preheader:                              ; preds = %iter.check1530, %vec.epilog.iter.check1532, %vec.epilog.middle.block1541
  %indvars.iv913.ph = phi i64 [ 0, %iter.check1530 ], [ %n.vec1535, %vec.epilog.middle.block1541 ], [ %n.vec1519, %vec.epilog.iter.check1532 ] ; 6 uses
  br i1 %lcmp.mod1638.not, label %.lr.ph759.prol.loopexit, label %.lr.ph759.prol

.lr.ph759.prol:                                   ; preds = %.lr.ph759.preheader
  %i.aep = getelementptr inbounds nuw i8, ptr %.7586763, i64 %indvars.iv913.ph
  %i.aeq = load i8, ptr %i.aep, align 1
  %i.aer = sub nsw i64 %indvars.iv913.ph, %9
  %i.aes = getelementptr inbounds i8, ptr %.7544764, i64 %i.aer
  %i.aet = load i8, ptr %i.aes, align 1
  %i.aeu = lshr i8 %i.aet, 1
  %.narrow617.prol = add i8 %i.aeu, %i.aeq
  %i.aev = getelementptr inbounds nuw i8, ptr %.7544764, i64 %indvars.iv913.ph
  store i8 %.narrow617.prol, ptr %i.aev, align 1
  %indvars.iv.next914.prol = or disjoint i64 %indvars.iv913.ph, 1
  br label %.lr.ph759.prol.loopexit

.lr.ph759.prol.loopexit:                          ; preds = %.lr.ph759.prol, %.lr.ph759.preheader
  %indvars.iv913.unr = phi i64 [ %indvars.iv913.ph, %.lr.ph759.preheader ], [ %indvars.iv.next914.prol, %.lr.ph759.prol ]
  %i.aew = icmp eq i64 %indvars.iv913.ph, %i.sg
  br i1 %i.aew, label %._crit_edge760, label %.lr.ph759

.lr.ph759:                                        ; preds = %.lr.ph759.prol.loopexit, %.lr.ph759
  %indvars.iv913 = phi i64 [ %indvars.iv.next914.1, %.lr.ph759 ], [ %indvars.iv913.unr, %.lr.ph759.prol.loopexit ] ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.7586763, i64 %indvars.iv913
  %i.aey = load i8, ptr %i.aex, align 1
  %i.aez = sub nsw i64 %indvars.iv913, %9
  %i.afa = getelementptr inbounds i8, ptr %.7544764, i64 %i.aez
  %i.afb = load i8, ptr %i.afa, align 1
  %i.afc = lshr i8 %i.afb, 1
  %.narrow617 = add i8 %i.afc, %i.aey
  %i.afd = getelementptr inbounds nuw i8, ptr %.7544764, i64 %indvars.iv913
  store i8 %.narrow617, ptr %i.afd, align 1
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 1 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.7586763, i64 %indvars.iv.next914
  %i.aff = load i8, ptr %i.afe, align 1
  %i.afg = sub nsw i64 %indvars.iv.next914, %9
  %i.afh = getelementptr inbounds i8, ptr %.7544764, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1
  %i.afj = lshr i8 %i.afi, 1
  %.narrow617.1 = add i8 %i.afj, %i.aff
  %i.afk = getelementptr inbounds nuw i8, ptr %.7544764, i64 %indvars.iv.next914
  store i8 %.narrow617.1, ptr %i.afk, align 1
  %indvars.iv.next914.1 = add nuw nsw i64 %indvars.iv913, 2 ; 2 uses
  %exitcond917.not.1 = icmp eq i64 %indvars.iv.next914.1, %wide.trip.count916
  br i1 %exitcond917.not.1, label %._crit_edge760, label %.lr.ph759, !llvm.loop !362

._crit_edge760:                                   ; preds = %.lr.ph759.prol.loopexit, %.lr.ph759, %middle.block1527, %vec.epilog.middle.block1541, %.preheader720
  %i.afl = getelementptr inbounds i8, ptr %.7544764, i64 %i.sa
  store i8 -1, ptr %i.afl, align 1
  %i.afm = getelementptr inbounds i8, ptr %.7586763, i64 %i.sa ; 2 uses
  %i.afn = getelementptr inbounds i8, ptr %.7544764, i64 %9
  %.5572 = add i32 %.5572765, -1                  ; 2 uses
  %.not615 = icmp eq i32 %.5572, 0
  br i1 %.not615, label %.loopexit736, label %.preheader720

.preheader721:                                    ; preds = %.preheader721.lr.ph, %._crit_edge752
  %.6573757 = phi i32 [ %.6573753, %.preheader721.lr.ph ], [ %.6573, %._crit_edge752 ]
  %.8545756 = phi ptr [ %.1538, %.preheader721.lr.ph ], [ %i.agz, %._crit_edge752 ] ; 12 uses
  %.8587755 = phi ptr [ %.1580, %.preheader721.lr.ph ], [ %i.agy, %._crit_edge752 ] ; 6 uses
  br i1 %i.cy, label %iter.check1575, label %._crit_edge752

iter.check1575:                                   ; preds = %.preheader721
  %brmerge1694 = select i1 %min.iters.check1560, i1 true, i1 %conflict.rdx1559
  br i1 %brmerge1694, label %.lr.ph751.preheader, label %vector.main.loop.iter.check1561

vector.main.loop.iter.check1561:                  ; preds = %iter.check1575
  br i1 %min.iters.check1562, label %vec.epilog.ph1579, label %vector.body1565

vector.body1565:                                  ; preds = %vector.main.loop.iter.check1561, %vector.body1565
  %index1566 = phi i64 [ %index.next1571, %vector.body1565 ], [ 0, %vector.main.loop.iter.check1561 ] ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.8587755, i64 %index1566 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %wide.load1567 = load <16 x i8>, ptr %i.afo, align 1, !alias.scope !400
  %wide.load1568 = load <16 x i8>, ptr %i.afp, align 1, !alias.scope !400
  %i.afq = sub nsw i64 %index1566, %9
  %i.afr = getelementptr inbounds i8, ptr %.8545756, i64 %i.afq ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %wide.load1569 = load <16 x i8>, ptr %i.afr, align 1, !alias.scope !401
  %wide.load1570 = load <16 x i8>, ptr %i.afs, align 1, !alias.scope !401
  %i.aft = add <16 x i8> %wide.load1569, %wide.load1567
  %i.afu = add <16 x i8> %wide.load1570, %wide.load1568
  %i.afv = getelementptr inbounds nuw i8, ptr %.8545756, i64 %index1566 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  store <16 x i8> %i.aft, ptr %i.afv, align 1, !alias.scope !402, !noalias !403
  store <16 x i8> %i.afu, ptr %i.afw, align 1, !alias.scope !402, !noalias !403
  %index.next1571 = add nuw i64 %index1566, 32    ; 2 uses
  %i.afx = icmp eq i64 %index.next1571, %n.vec1564
  br i1 %i.afx, label %middle.block1572, label %vector.body1565, !llvm.loop !367

middle.block1572:                                 ; preds = %vector.body1565
  br i1 %cmp.n1573, label %._crit_edge752, label %vec.epilog.iter.check1577

vec.epilog.iter.check1577:                        ; preds = %middle.block1572
  br i1 %min.epilog.iters.check1578, label %.lr.ph751.preheader, label %vec.epilog.ph1579, !prof !16

vec.epilog.ph1579:                                ; preds = %vector.main.loop.iter.check1561, %vec.epilog.iter.check1577
  %vec.epilog.resume.val1574 = phi i64 [ %n.vec1564, %vec.epilog.iter.check1577 ], [ 0, %vector.main.loop.iter.check1561 ]
  br label %vec.epilog.vector.body1581

vec.epilog.vector.body1581:                       ; preds = %vec.epilog.vector.body1581, %vec.epilog.ph1579
  %index1582 = phi i64 [ %vec.epilog.resume.val1574, %vec.epilog.ph1579 ], [ %index.next1585, %vec.epilog.vector.body1581 ] ; 4 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.8587755, i64 %index1582
  %wide.load1583 = load <4 x i8>, ptr %i.afy, align 1, !alias.scope !400
  %i.afz = sub nsw i64 %index1582, %9
  %i.aga = getelementptr inbounds i8, ptr %.8545756, i64 %i.afz
  %wide.load1584 = load <4 x i8>, ptr %i.aga, align 1, !alias.scope !401
  %i.agb = add <4 x i8> %wide.load1584, %wide.load1583
  %i.agc = getelementptr inbounds nuw i8, ptr %.8545756, i64 %index1582
  store <4 x i8> %i.agb, ptr %i.agc, align 1, !alias.scope !402, !noalias !403
  %index.next1585 = add nuw i64 %index1582, 4     ; 2 uses
  %i.agd = icmp eq i64 %index.next1585, %n.vec1580
  br i1 %i.agd, label %vec.epilog.middle.block1586, label %vec.epilog.vector.body1581, !llvm.loop !368

vec.epilog.middle.block1586:                      ; preds = %vec.epilog.vector.body1581
  br i1 %cmp.n1587, label %._crit_edge752, label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %iter.check1575, %vec.epilog.iter.check1577, %vec.epilog.middle.block1586
  %indvars.iv908.ph = phi i64 [ 0, %iter.check1575 ], [ %n.vec1580, %vec.epilog.middle.block1586 ], [ %n.vec1564, %vec.epilog.iter.check1577 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph751.prol.loopexit, label %.lr.ph751.prol

.lr.ph751.prol:                                   ; preds = %.lr.ph751.preheader
  %i.age = getelementptr inbounds nuw i8, ptr %.8587755, i64 %indvars.iv908.ph
  %i.agf = load i8, ptr %i.age, align 1
  %i.agg = sub nsw i64 %indvars.iv908.ph, %9
  %i.agh = getelementptr inbounds i8, ptr %.8545756, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1
  %.narrow.prol = add i8 %i.agi, %i.agf
  %i.agj = getelementptr inbounds nuw i8, ptr %.8545756, i64 %indvars.iv908.ph
  store i8 %.narrow.prol, ptr %i.agj, align 1
  %indvars.iv.next909.prol = or disjoint i64 %indvars.iv908.ph, 1
  br label %.lr.ph751.prol.loopexit

.lr.ph751.prol.loopexit:                          ; preds = %.lr.ph751.prol, %.lr.ph751.preheader
  %indvars.iv908.unr = phi i64 [ %indvars.iv908.ph, %.lr.ph751.preheader ], [ %indvars.iv.next909.prol, %.lr.ph751.prol ]
  %i.agk = icmp eq i64 %indvars.iv908.ph, %i.rz
  br i1 %i.agk, label %._crit_edge752, label %.lr.ph751

.lr.ph751:                                        ; preds = %.lr.ph751.prol.loopexit, %.lr.ph751
  %indvars.iv908 = phi i64 [ %indvars.iv.next909.1, %.lr.ph751 ], [ %indvars.iv908.unr, %.lr.ph751.prol.loopexit ] ; 5 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.8587755, i64 %indvars.iv908
  %i.agm = load i8, ptr %i.agl, align 1
  %i.agn = sub nsw i64 %indvars.iv908, %9
  %i.ago = getelementptr inbounds i8, ptr %.8545756, i64 %i.agn
  %i.agp = load i8, ptr %i.ago, align 1
  %.narrow = add i8 %i.agp, %i.agm
  %i.agq = getelementptr inbounds nuw i8, ptr %.8545756, i64 %indvars.iv908
  store i8 %.narrow, ptr %i.agq, align 1
  %indvars.iv.next909 = add nuw nsw i64 %indvars.iv908, 1 ; 3 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.8587755, i64 %indvars.iv.next909
  %i.ags = load i8, ptr %i.agr, align 1
  %i.agt = sub nsw i64 %indvars.iv.next909, %9
  %i.agu = getelementptr inbounds i8, ptr %.8545756, i64 %i.agt
  %i.agv = load i8, ptr %i.agu, align 1
  %.narrow.1 = add i8 %i.agv, %i.ags
  %i.agw = getelementptr inbounds nuw i8, ptr %.8545756, i64 %indvars.iv.next909
  store i8 %.narrow.1, ptr %i.agw, align 1
  %indvars.iv.next909.1 = add nuw nsw i64 %indvars.iv908, 2 ; 2 uses
  %exitcond912.not.1 = icmp eq i64 %indvars.iv.next909.1, %wide.trip.count911
  br i1 %exitcond912.not.1, label %._crit_edge752, label %.lr.ph751, !llvm.loop !369

._crit_edge752:                                   ; preds = %.lr.ph751.prol.loopexit, %.lr.ph751, %middle.block1572, %vec.epilog.middle.block1586, %.preheader721
  %i.agx = getelementptr inbounds i8, ptr %.8545756, i64 %i.rt
  store i8 -1, ptr %i.agx, align 1
  %i.agy = getelementptr inbounds i8, ptr %.8587755, i64 %i.rt ; 2 uses
  %i.agz = getelementptr inbounds i8, ptr %.8545756, i64 %9
  %.6573 = add i32 %.6573757, -1                  ; 2 uses
  %.not614 = icmp eq i32 %.6573, 0
  br i1 %.not614, label %.loopexit736, label %.preheader721

.loopexit736:                                     ; preds = %._crit_edge752, %._crit_edge760, %._crit_edge769, %._crit_edge779, %._crit_edge789, %._crit_edge799, %._crit_edge808, %.preheader747, %.preheader745, %.preheader743, %.preheader741, %.preheader739, %.preheader737, %.preheader735, %bb.ag
  %.9588 = phi ptr [ %.1580, %bb.ag ], [ %i.xy, %._crit_edge789 ], [ %i.aav, %._crit_edge779 ], [ %i.adt, %._crit_edge769 ], [ %i.afm, %._crit_edge760 ], [ %i.uu, %._crit_edge808 ], [ %i.wg, %._crit_edge799 ], [ %.1580, %.preheader735 ], [ %.1580, %.preheader737 ], [ %.1580, %.preheader739 ], [ %.1580, %.preheader741 ], [ %.1580, %.preheader743 ], [ %.1580, %.preheader745 ], [ %.1580, %.preheader747 ], [ %i.agy, %._crit_edge752 ] ; 3 uses
  br i1 %brmerge.not, label %.lr.ph818, label %.loopexit734

.lr.ph818:                                        ; preds = %.loopexit736
  %i.aha = load ptr, ptr %i.t, align 8
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 %i.co ; 2 uses
  %i.ahc = sext i32 %.0551833 to i64              ; 9 uses
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph818.new

.lr.ph818.new:                                    ; preds = %.lr.ph818, %.lr.ph818.new
  %.9546816 = phi ptr [ %i.aia, %.lr.ph818.new ], [ %i.ahb, %.lr.ph818 ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph818.new ], [ 0, %.lr.ph818 ]
  %i.ahd = getelementptr i8, ptr %.9546816, i64 %i.ahc
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 1
  store i8 -1, ptr %i.ahe, align 1
  %i.ahf = getelementptr inbounds i8, ptr %.9546816, i64 %9 ; 2 uses
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 %i.ahc
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 1
  store i8 -1, ptr %i.ahh, align 1
  %i.ahi = getelementptr inbounds i8, ptr %i.ahf, i64 %9 ; 2 uses
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 %i.ahc
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 1
  store i8 -1, ptr %i.ahk, align 1
  %i.ahl = getelementptr inbounds i8, ptr %i.ahi, i64 %9 ; 2 uses
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 %i.ahc
  %i.ahn = getelementptr i8, ptr %i.ahm, i64 1
  store i8 -1, ptr %i.ahn, align 1
  %i.aho = getelementptr inbounds i8, ptr %i.ahl, i64 %9 ; 2 uses
  %i.ahp = getelementptr i8, ptr %i.aho, i64 %i.ahc
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 1
  store i8 -1, ptr %i.ahq, align 1
  %i.ahr = getelementptr inbounds i8, ptr %i.aho, i64 %9 ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 %i.ahc
  %i.aht = getelementptr i8, ptr %i.ahs, i64 1
  store i8 -1, ptr %i.aht, align 1
  %i.ahu = getelementptr inbounds i8, ptr %i.ahr, i64 %9 ; 2 uses
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 %i.ahc
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 1
  store i8 -1, ptr %i.ahw, align 1
  %i.ahx = getelementptr inbounds i8, ptr %i.ahu, i64 %9 ; 2 uses
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 %i.ahc
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 1
  store i8 -1, ptr %i.ahz, align 1
  %i.aia = getelementptr inbounds i8, ptr %i.ahx, i64 %9 ; 2 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit734.loopexit.unr-lcssa, label %.lr.ph818.new

.loopexit734.loopexit.unr-lcssa:                  ; preds = %.lr.ph818.new
  br i1 %lcmp.mod1650.not, label %.loopexit734, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit734.loopexit.unr-lcssa, %.lr.ph818
  %.9546816.epil.init = phi ptr [ %i.ahb, %.lr.ph818 ], [ %i.aia, %.loopexit734.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1651)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %.9546816.epil = phi ptr [ %.9546816.epil.init, %.epil.preheader ], [ %i.aid, %bb.ah ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.aib = getelementptr i8, ptr %.9546816.epil, i64 %i.ahc
  %i.aic = getelementptr i8, ptr %i.aib, i64 1
  store i8 -1, ptr %i.aic, align 1
  %i.aid = getelementptr inbounds i8, ptr %.9546816.epil, i64 %9
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1649
  br i1 %epil.iter.cmp.not, label %.loopexit734, label %bb.ah, !llvm.loop !370

.loopexit734:                                     ; preds = %.loopexit734.loopexit.unr-lcssa, %bb.ah, %.loopexit736, %.loopexit723
  %.11590 = phi ptr [ %.9588, %.loopexit736 ], [ %i.rs, %.loopexit723 ], [ %.9588, %bb.ah ], [ %.9588, %.loopexit734.loopexit.unr-lcssa ]
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 1 ; 2 uses
  %exitcond978.not = icmp eq i64 %indvars.iv.next975, %wide.trip.count977
  br i1 %exitcond978.not, label %._crit_edge837, label %bb.k

._crit_edge837:                                   ; preds = %.loopexit734
  %i.aie = icmp slt i32 %6, 8
  br i1 %i.aie, label %.lr.ph874, label %bb.ax

._crit_edge837.thread:                            ; preds = %bb.j
  br i1 %i.a, label %bb.ay, label %.loopexit713

.lr.ph874:                                        ; preds = %._crit_edge837
  %i.aif = zext i32 %i.c to i64
  %i.aig = zext nneg i32 %i.ae to i64
  %i.aih = sub nsw i64 0, %i.aig
  %i.aii = icmp eq i32 %7, 0
  %18 = sext i32 %6 to i64
  %i.aij = getelementptr inbounds i8, ptr @_m3dstbi__depth_scale_table, i64 %18
  %i.aik = icmp sgt i32 %i.x, 7
  %i.ail = icmp sgt i32 %i.x, 3
  %i.aim = icmp sgt i32 %i.x, 1
  %.not611 = icmp eq i32 %i.g, %3
  %i.ain = icmp eq i32 %i.g, 1
  %.1867 = add i32 %4, -1                         ; 4 uses
  %i.aio = icmp sgt i32 %.1867, -1                ; 2 uses
  %i.aip = zext i32 %.1867 to i64                 ; 8 uses
  %wide.trip.count989 = zext i32 %5 to i64
  %i.aiq = add i32 %i.x, -2                       ; 2 uses
  %i.air = add nuw nsw i64 %i.aip, 1
  %i.ais = and i32 %i.aiq, 2
  %lcmp.mod1668.not.not = icmp eq i32 %i.ais, 0
  %i.ait = add nsw i32 %i.x, -2                   ; 2 uses
  %i.aiu = icmp ult i32 %i.aiq, 2
  %i.aiv = and i64 %i.aip, 1
  %lcmp.mod1671.not.not = icmp eq i64 %i.aiv, 0
  %i.aiw = shl nuw nsw i64 %i.aip, 2
  %i.aix = mul nuw nsw i64 %i.aip, 3
  %indvars.iv.next981.prol = add nsw i64 %i.aip, -1
  %i.aiy = icmp eq i32 %.1867, 0
  %xtraiter1673 = and i64 %i.air, 3               ; 2 uses
  %lcmp.mod1674.not = icmp eq i64 %xtraiter1673, 0
  %i.aiz = icmp ult i32 %.1867, 3
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph874, %.loopexit
  %indvars.iv986 = phi i64 [ 0, %.lr.ph874 ], [ %indvars.iv.next987, %.loopexit ] ; 2 uses
  %i.aja = load ptr, ptr %i.t, align 8
  %i.ajb = trunc nuw i64 %indvars.iv986 to i32
  %i.ajc = mul i32 %i.e, %i.ajb
  %i.ajd = zext i32 %i.ajc to i64                 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 %i.ajd ; 10 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 %i.aif
  %i.ajg = getelementptr inbounds i8, ptr %i.ajf, i64 %i.aih ; 9 uses
  br i1 %i.aii, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ajh = load i8, ptr %i.aij, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.aji = phi i8 [ %i.ajh, %bb.aj ], [ 1, %bb.ai ] ; 30 uses
  switch i32 %6, label %.thread681 [
    i32 4, label %.preheader709
    i32 2, label %.preheader710
    i32 1, label %.preheader711
  ]

.preheader711:                                    ; preds = %bb.ak
  br i1 %i.aik, label %.lr.ph846, label %._crit_edge847

.preheader710:                                    ; preds = %bb.ak
  br i1 %i.ail, label %.lr.ph854.preheader, label %._crit_edge855

.lr.ph854.preheader:                              ; preds = %.preheader710
  %i.ajj = insertelement <4 x i8> poison, i8 %i.aji, i64 0
  %i.ajk = shufflevector <4 x i8> %i.ajj, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %.lr.ph854

.preheader709:                                    ; preds = %bb.ak
  br i1 %i.aim, label %.lr.ph862.preheader, label %._crit_edge863

.lr.ph862.preheader:                              ; preds = %.preheader709
  br i1 %lcmp.mod1668.not.not, label %.lr.ph862.prol, label %.lr.ph862.prol.loopexit

.lr.ph862.prol:                                   ; preds = %.lr.ph862.preheader
  %i.ajl = load i8, ptr %i.ajg, align 1
  %i.ajm = lshr i8 %i.ajl, 4
  %i.ajn = mul i8 %i.ajm, %i.aji
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aje, i64 1
  store i8 %i.ajn, ptr %i.aje, align 1
  %i.ajp = load i8, ptr %i.ajg, align 1
  %i.ajq = and i8 %i.ajp, 15
  %i.ajr = mul i8 %i.ajq, %i.aji
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.aje, i64 2 ; 2 uses
  store i8 %i.ajr, ptr %i.ajo, align 1
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajg, i64 1 ; 2 uses
  br label %.lr.ph862.prol.loopexit

.lr.ph862.prol.loopexit:                          ; preds = %.lr.ph862.prol, %.lr.ph862.preheader
  %.0523861.unr = phi ptr [ %i.ajg, %.lr.ph862.preheader ], [ %i.ajt, %.lr.ph862.prol ]
  %.0525860.unr = phi ptr [ %i.aje, %.lr.ph862.preheader ], [ %i.ajs, %.lr.ph862.prol ]
  %.14859.unr = phi i32 [ %i.x, %.lr.ph862.preheader ], [ %i.ait, %.lr.ph862.prol ]
  %.lcssa1618.unr = phi ptr [ poison, %.lr.ph862.preheader ], [ %i.ajs, %.lr.ph862.prol ]
  %.lcssa1616.unr = phi ptr [ poison, %.lr.ph862.preheader ], [ %i.ajt, %.lr.ph862.prol ]
  br i1 %i.aiu, label %._crit_edge863, label %.lr.ph862

.lr.ph862:                                        ; preds = %.lr.ph862.prol.loopexit, %.lr.ph862
  %.0523861 = phi ptr [ %i.akm, %.lr.ph862 ], [ %.0523861.unr, %.lr.ph862.prol.loopexit ] ; 4 uses
  %.0525860 = phi ptr [ %i.akk, %.lr.ph862 ], [ %.0525860.unr, %.lr.ph862.prol.loopexit ] ; 5 uses
  %.14859 = phi i32 [ %i.akl, %.lr.ph862 ], [ %.14859.unr, %.lr.ph862.prol.loopexit ] ; 2 uses
  %i.aju = load i8, ptr %.0523861, align 1
  %i.ajv = lshr i8 %i.aju, 4
  %i.ajw = mul i8 %i.ajv, %i.aji
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0525860, i64 1
  store i8 %i.ajw, ptr %.0525860, align 1
  %i.ajy = load i8, ptr %.0523861, align 1
  %i.ajz = and i8 %i.ajy, 15
  %i.aka = mul i8 %i.ajz, %i.aji
  %i.akb = getelementptr inbounds nuw i8, ptr %.0525860, i64 2
  store i8 %i.aka, ptr %i.ajx, align 1
  %i.akc = getelementptr inbounds nuw i8, ptr %.0523861, i64 1 ; 2 uses
  %i.akd = load i8, ptr %i.akc, align 1
  %i.ake = lshr i8 %i.akd, 4
  %i.akf = mul i8 %i.ake, %i.aji
  %i.akg = getelementptr inbounds nuw i8, ptr %.0525860, i64 3
  store i8 %i.akf, ptr %i.akb, align 1
  %i.akh = load i8, ptr %i.akc, align 1
  %i.aki = and i8 %i.akh, 15
  %i.akj = mul i8 %i.aki, %i.aji
  %i.akk = getelementptr inbounds nuw i8, ptr %.0525860, i64 4 ; 2 uses
  store i8 %i.akj, ptr %i.akg, align 1
  %i.akl = add nsw i32 %.14859, -4                ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.0523861, i64 2 ; 2 uses
  %i.akn = icmp sgt i32 %.14859, 5
  br i1 %i.akn, label %.lr.ph862, label %._crit_edge863

._crit_edge863:                                   ; preds = %.lr.ph862.prol.loopexit, %.lr.ph862, %.preheader709
  %.14.lcssa = phi i32 [ %i.x, %.preheader709 ], [ %i.ait, %.lr.ph862.prol.loopexit ], [ %i.akl, %.lr.ph862 ]
  %.0525.lcssa = phi ptr [ %i.aje, %.preheader709 ], [ %.lcssa1618.unr, %.lr.ph862.prol.loopexit ], [ %i.akk, %.lr.ph862 ]
  %.0523.lcssa = phi ptr [ %i.ajg, %.preheader709 ], [ %.lcssa1616.unr, %.lr.ph862.prol.loopexit ], [ %i.akm, %.lr.ph862 ]
  %i.ako = icmp eq i32 %.14.lcssa, 1
  br i1 %i.ako, label %bb.al, label %.thread681

bb.al:                                            ; preds = %._crit_edge863
  %i.akp = load i8, ptr %.0523.lcssa, align 1
  %i.akq = lshr i8 %i.akp, 4
  %i.akr = mul i8 %i.akq, %i.aji
  store i8 %i.akr, ptr %.0525.lcssa, align 1
  br label %.thread681

.lr.ph854:                                        ; preds = %.lr.ph854.preheader, %.lr.ph854.rtcont
  %.1524853 = phi ptr [ %.rtmerge1609, %.lr.ph854.rtcont ], [ %i.ajg, %.lr.ph854.preheader ] ; 7 uses
  %.1526852 = phi ptr [ %.rtmerge, %.lr.ph854.rtcont ], [ %i.aje, %.lr.ph854.preheader ] ; 7 uses
  %.15851 = phi i32 [ %.rtmerge1608, %.lr.ph854.rtcont ], [ %i.x, %.lr.ph854.preheader ] ; 2 uses
  %.15248531606 = ptrtoaddr ptr %.1524853 to i64  ; 2 uses
  %i.aks = add i64 %.15248531606, 1
  %.15268521607 = ptrtoaddr ptr %.1526852 to i64  ; 2 uses
  %i.akt = add i64 %.15268521607, 4
  %rt.bound0 = icmp ugt i64 %i.aks, %.15268521607
  %rt.bound1 = icmp ugt i64 %i.akt, %.15248531606
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph854.rtscalar, label %.lr.ph854.rtvec, !prof !14

._crit_edge855:                                   ; preds = %.lr.ph854.rtcont, %.preheader710
  %.15.lcssa = phi i32 [ %i.x, %.preheader710 ], [ %.rtmerge1608, %.lr.ph854.rtcont ] ; 3 uses
  %.1526.lcssa = phi ptr [ %i.aje, %.preheader710 ], [ %.rtmerge, %.lr.ph854.rtcont ] ; 3 uses
  %.1524.lcssa = phi ptr [ %i.ajg, %.preheader710 ], [ %.rtmerge1609, %.lr.ph854.rtcont ] ; 3 uses
  %i.aku = icmp sgt i32 %.15.lcssa, 0
  br i1 %i.aku, label %bb.am, label %.thread681

bb.am:                                            ; preds = %._crit_edge855
  %i.akv = load i8, ptr %.1524.lcssa, align 1
  %i.akw = lshr i8 %i.akv, 6
  %i.akx = mul i8 %i.akw, %i.aji
  store i8 %i.akx, ptr %.1526.lcssa, align 1
  %.not703 = icmp eq i32 %.15.lcssa, 1
  br i1 %.not703, label %.thread681, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aky = getelementptr inbounds nuw i8, ptr %.1526.lcssa, i64 1
  %i.akz = load i8, ptr %.1524.lcssa, align 1
  %i.ala = lshr i8 %i.akz, 4
  %i.alb = and i8 %i.ala, 3
  %i.alc = mul i8 %i.alb, %i.aji
  store i8 %i.alc, ptr %i.aky, align 1
  %i.ald = icmp eq i32 %.15.lcssa, 3
  br i1 %i.ald, label %bb.ao, label %.thread681

bb.ao:                                            ; preds = %bb.an
  %i.ale = getelementptr inbounds nuw i8, ptr %.1526.lcssa, i64 2
  %i.alf = load i8, ptr %.1524.lcssa, align 1
  %i.alg = lshr i8 %i.alf, 2
  %i.alh = and i8 %i.alg, 3
  %i.ali = mul i8 %i.alh, %i.aji
  store i8 %i.ali, ptr %i.ale, align 1
  br label %.thread681

.lr.ph846:                                        ; preds = %.preheader711, %.lr.ph846
  %.2845 = phi ptr [ %i.amp, %.lr.ph846 ], [ %i.ajg, %.preheader711 ] ; 9 uses
  %.4844 = phi ptr [ %i.amn, %.lr.ph846 ], [ %i.aje, %.preheader711 ] ; 9 uses
  %.16843 = phi i32 [ %i.amo, %.lr.ph846 ], [ %i.x, %.preheader711 ] ; 2 uses
  %i.alj = load i8, ptr %.2845, align 1
  %isneg604 = icmp slt i8 %i.alj, 0
  %i.alk = select i1 %isneg604, i8 %i.aji, i8 0
  %i.all = getelementptr inbounds nuw i8, ptr %.4844, i64 1
  store i8 %i.alk, ptr %.4844, align 1
  %i.alm = load i8, ptr %.2845, align 1
  %i.aln = and i8 %i.alm, 64
  %.not605 = icmp eq i8 %i.aln, 0
  %i.alo = select i1 %.not605, i8 0, i8 %i.aji
  %i.alp = getelementptr inbounds nuw i8, ptr %.4844, i64 2
  store i8 %i.alo, ptr %i.all, align 1
  %i.alq = load i8, ptr %.2845, align 1
  %i.alr = and i8 %i.alq, 32
  %.not606 = icmp eq i8 %i.alr, 0
  %i.als = select i1 %.not606, i8 0, i8 %i.aji
  %i.alt = getelementptr inbounds nuw i8, ptr %.4844, i64 3
  store i8 %i.als, ptr %i.alp, align 1
  %i.alu = load i8, ptr %.2845, align 1
  %i.alv = and i8 %i.alu, 16
  %.not607 = icmp eq i8 %i.alv, 0
  %i.alw = select i1 %.not607, i8 0, i8 %i.aji
  %i.alx = getelementptr inbounds nuw i8, ptr %.4844, i64 4
  store i8 %i.alw, ptr %i.alt, align 1
  %i.aly = load i8, ptr %.2845, align 1
  %i.alz = and i8 %i.aly, 8
  %.not608 = icmp eq i8 %i.alz, 0
  %i.ama = select i1 %.not608, i8 0, i8 %i.aji
  %i.amb = getelementptr inbounds nuw i8, ptr %.4844, i64 5
  store i8 %i.ama, ptr %i.alx, align 1
  %i.amc = load i8, ptr %.2845, align 1
  %i.amd = and i8 %i.amc, 4
  %.not609 = icmp eq i8 %i.amd, 0
  %i.ame = select i1 %.not609, i8 0, i8 %i.aji
  %i.amf = getelementptr inbounds nuw i8, ptr %.4844, i64 6
  store i8 %i.ame, ptr %i.amb, align 1
  %i.amg = load i8, ptr %.2845, align 1
  %i.amh = and i8 %i.amg, 2
  %.not610 = icmp eq i8 %i.amh, 0
  %i.ami = select i1 %.not610, i8 0, i8 %i.aji
  %i.amj = getelementptr inbounds nuw i8, ptr %.4844, i64 7
end_hunk_2
