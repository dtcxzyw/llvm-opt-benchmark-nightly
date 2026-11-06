Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/stream?download=true
inline.NumInlined: 374
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@STREAM_hashLastCommit_xxh3low32:bb.a
  %i.al = tail call i64 @NUMOP_sumArray32(ptr noundef nonnull %i.ak, i64 noundef %i.v) #17 ; 2 uses
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = sub i64 0, %i.al
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  br label %STREAM_lastCommittedBufferContent.exit.us

bb.f:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  br label %STREAM_lastCommittedBufferContent.exit.us

STREAM_lastCommittedBufferContent.exit.us:        ; preds = %bb.f, %bb.e, %bb.d
  %.pn16.i.us = phi ptr [ %i.as, %bb.f ], [ %i.ar, %bb.e ], [ %i.ah, %bb.d ]
  %.pn14.i.us = phi i64 [ %i.au, %bb.f ], [ %i.al, %bb.e ], [ %i.ai, %bb.d ]
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %4, ptr noundef captures(address) %.pn16.i.us, i64 noundef %.pn14.i.us)
  %i.av = add nuw i64 %.049167.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !72

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.049167 = phi i64 [ %i.ct, %bb.n ], [ 0, %.lr.ph ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.049167 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 11 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !41
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %.thread, label %bb.g, !prof !38

.thread:                                          ; preds = %.lr.ph.split.us, %.lr.ph.split
  %i.ba = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @STREAM_hashLastCommit_xxh3low32.__zl_static_error_info.81, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.78, i32 noundef 769, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.83) #17 ; 2 uses
  %i.bb = extractvalue { i32, ptr } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { i32, ptr } %i.ba, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bb, ptr %i.bc, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #17
  %i.bd = ptrtoint ptr %i.bc to i64
  br label %bb.az

bb.g:                                             ; preds = %.lr.ph.split
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !44
  br label %STREAM_lastCommittedBufferContent.exit

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bo = icmp eq i32 %i.bn, 8
  %i.bp = sub i64 %i.bh, %i.bf                    ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %.val.i.i = load ptr, ptr %i.bq, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.bp
  %i.bs = tail call i64 @NUMOP_sumArray32(ptr noundef nonnull %i.br, i64 noundef %i.bf) #17 ; 2 uses
  %i.bt = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = sub i64 0, %i.bs
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  br label %STREAM_lastCommittedBufferContent.exit

bb.k:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !36 ; 2 uses
  %i.cc = mul i64 %i.cb, %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = mul i64 %i.cb, %i.bf
  br label %STREAM_lastCommittedBufferContent.exit

STREAM_lastCommittedBufferContent.exit:           ; preds = %bb.h, %bb.j, %bb.k
  %.pn16.i = phi ptr [ %i.bj, %bb.h ], [ %i.by, %bb.j ], [ %i.cd, %bb.k ]
  %.pn14.i = phi i64 [ %i.bl, %bb.h ], [ %i.bs, %bb.j ], [ %i.ce, %bb.k ]
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %4, ptr noundef captures(address) %.pn16.i, i64 noundef %.pn14.i)
  %i.cf = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34
  %i.ci = icmp eq i32 %i.ch, 8
  br i1 %i.ci, label %bb.l, label %bb.n

bb.l:                                             ; preds = %STREAM_lastCommittedBufferContent.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %STREAM_lastCommittedStringLens.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !45 ; 2 uses
  %i.cq = sub i64 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = shl i64 %i.cp, 2
  br label %STREAM_lastCommittedStringLens.exit

STREAM_lastCommittedStringLens.exit:              ; preds = %bb.l, %bb.m
  %.sroa.0.0.i = phi ptr [ %i.cr, %bb.m ], [ null, %bb.l ]
  %.sroa.3.0.i = phi i64 [ %i.cs, %bb.m ], [ 0, %bb.l ]
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %4, ptr noundef captures(address) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
  br label %bb.n

bb.n:                                             ; preds = %STREAM_lastCommittedStringLens.exit, %STREAM_lastCommittedBufferContent.exit
  %i.ct = add nuw i64 %.049167, 1                 ; 2 uses
  %exitcond183.not = icmp eq i64 %i.ct, %1
  br i1 %exitcond183.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !72

._crit_edge:                                      ; preds = %STREAM_lastCommittedBufferContent.exit.us, %bb.n, %bb.a
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !58  ; 34 uses
  %i.cv = icmp eq ptr %i.cu, null                 ; 33 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cx = select i1 %i.cv, ptr %i.cw, ptr %i.cu   ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 528
  %i.cz = load i64, ptr %i.cy, align 16, !tbaa !61 ; 44 uses
  %i.da = icmp ugt i64 %i.cz, 240
  br i1 %i.da, label %bb.o, label %bb.s

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %4, align 64 ; 3 uses
  %.sroa.13.0.copyload.i = load <2 x i64>, ptr %i.f, align 16 ; 3 uses
  %.sroa.23.0.copyload.i = load <2 x i64>, ptr %i.h, align 32 ; 3 uses
  %.sroa.33.0.copyload.i = load <2 x i64>, ptr %i.j, align 16 ; 3 uses
  %i.db = load i32, ptr %i.d, align 64, !tbaa !62 ; 6 uses
  %i.dc = icmp ugt i32 %i.db, 63
  br i1 %i.dc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dd = add i32 %i.db, -1
  %i.de = lshr i32 %i.dd, 6
  %i.df = zext nneg i32 %i.de to i64              ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 520
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !90 ; 2 uses
  %i.di = load i64, ptr %i.o, align 8, !tbaa !60  ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 3 uses
  %i.dk = shl i64 %i.dh, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dk ; 2 uses
  %i.dm = sub i64 %i.di, %i.dh                    ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.dm, %i.df
  br i1 %.not.i.i.i, label %.loopexit.i, label %.preheader48.i

.preheader48.i:                                   ; preds = %bb.p
  %i.dn = load i64, ptr %i.n, align 32, !tbaa !59
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dn ; 4 uses
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !50, !noalias !91
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = load <2 x i64>, ptr %i.dq, align 1, !tbaa !50, !noalias !91
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !50, !noalias !91
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dv = load <2 x i64>, ptr %i.du, align 1, !tbaa !50, !noalias !91
  br label %bb.q

bb.q:                                             ; preds = %XXH3_accumulate_sse2.exit47.i.i.i, %.preheader48.i
  %.sroa.33.0.i = phi <2 x i64> [ %.sroa.33.0.copyload.i, %.preheader48.i ], [ %i.hn, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.23.0.i = phi <2 x i64> [ %.sroa.23.0.copyload.i, %.preheader48.i ], [ %i.hd, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.13.0.i = phi <2 x i64> [ %.sroa.13.0.copyload.i, %.preheader48.i ], [ %i.gt, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.0.0.i55 = phi <2 x i64> [ %.sroa.0.0.copyload.i, %.preheader48.i ], [ %i.gj, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.038.i.i.i = phi i64 [ %i.df, %.preheader48.i ], [ %i.hq, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.036.i.i.i = phi ptr [ %i.dj, %.preheader48.i ], [ %i.hp, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.035.i.i.i = phi ptr [ %i.dl, %.preheader48.i ], [ %i.cx, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.0.i.i.i = phi i64 [ %i.dm, %.preheader48.i ], [ %i.di, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 4 uses
  %.not56.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not56.i, label %XXH3_accumulate_sse2.exit47.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.sroa.33.1.i = phi <2 x i64> [ %i.fy, %.lr.ph.i ], [ %.sroa.33.0.i, %bb.q ]
  %.sroa.23.1.i = phi <2 x i64> [ %i.fl, %.lr.ph.i ], [ %.sroa.23.0.i, %bb.q ]
  %.sroa.13.1.i = phi <2 x i64> [ %i.ey, %.lr.ph.i ], [ %.sroa.13.0.i, %bb.q ]
  %.sroa.0.1.i = phi <2 x i64> [ %i.el, %.lr.ph.i ], [ %.sroa.0.0.i55, %bb.q ]
  %.0.i46.i.i51.i = phi i64 [ %i.fz, %.lr.ph.i ], [ 0, %bb.q ] ; 3 uses
  %i.dw = shl i64 %.0.i46.i.i51.i, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 %i.dw ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %i.dy, i32 0, i32 3, i32 1), !noalias !92
  %i.dz = shl i64 %.0.i46.i.i51.i, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 %i.dz ; 4 uses
  %i.eb = load <2 x i64>, ptr %i.dx, align 1, !tbaa !50, !noalias !93 ; 2 uses
  %i.ec = load <2 x i64>, ptr %i.ea, align 1, !tbaa !50, !noalias !93
  %i.ed = xor <2 x i64> %i.ec, %i.eb              ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ed to <4 x i32>
  %i.ef = and <2 x i64> %i.ed, splat (i64 4294967295)
  %i.eg = and <4 x i32> %i.ee, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.eg, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.eh = bitcast <4 x i32> %.inner to <2 x i64>
  %i.ei = mul nuw <2 x i64> %i.ef, %i.eh
  %i.ej = shufflevector <2 x i64> %i.eb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = add <2 x i64> %.sroa.0.1.i, %i.ej
  %i.el = add <2 x i64> %i.ek, %i.ei              ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.en = load <2 x i64>, ptr %i.em, align 1, !tbaa !50, !noalias !93 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ep = load <2 x i64>, ptr %i.eo, align 1, !tbaa !50, !noalias !93
  %i.eq = xor <2 x i64> %i.ep, %i.en              ; 2 uses
  %i.er = bitcast <2 x i64> %i.eq to <4 x i32>
  %i.es = and <2 x i64> %i.eq, splat (i64 4294967295)
  %i.et = and <4 x i32> %i.er, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner230 = shufflevector <4 x i32> %i.et, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.eu = bitcast <4 x i32> %.inner230 to <2 x i64>
  %i.ev = mul nuw <2 x i64> %i.es, %i.eu
  %i.ew = shufflevector <2 x i64> %i.en, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ex = add <2 x i64> %.sroa.13.1.i, %i.ew
  %i.ey = add <2 x i64> %i.ex, %i.ev              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.fa = load <2 x i64>, ptr %i.ez, align 1, !tbaa !50, !noalias !93 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !50, !noalias !93
  %i.fd = xor <2 x i64> %i.fc, %i.fa              ; 2 uses
  %i.fe = bitcast <2 x i64> %i.fd to <4 x i32>
  %i.ff = and <2 x i64> %i.fd, splat (i64 4294967295)
  %i.fg = and <4 x i32> %i.fe, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner231 = shufflevector <4 x i32> %i.fg, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fh = bitcast <4 x i32> %.inner231 to <2 x i64>
  %i.fi = mul nuw <2 x i64> %i.ff, %i.fh
  %i.fj = shufflevector <2 x i64> %i.fa, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fk = add <2 x i64> %.sroa.23.1.i, %i.fj
  %i.fl = add <2 x i64> %i.fk, %i.fi              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.fn = load <2 x i64>, ptr %i.fm, align 1, !tbaa !50, !noalias !93 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.fp = load <2 x i64>, ptr %i.fo, align 1, !tbaa !50, !noalias !93
  %i.fq = xor <2 x i64> %i.fp, %i.fn              ; 2 uses
  %i.fr = bitcast <2 x i64> %i.fq to <4 x i32>
  %i.fs = and <2 x i64> %i.fq, splat (i64 4294967295)
  %i.ft = and <4 x i32> %i.fr, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner232 = shufflevector <4 x i32> %i.ft, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fu = bitcast <4 x i32> %.inner232 to <2 x i64>
  %i.fv = mul nuw <2 x i64> %i.fs, %i.fu
  %i.fw = shufflevector <2 x i64> %i.fn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fx = add <2 x i64> %.sroa.33.1.i, %i.fw
  %i.fy = add <2 x i64> %i.fx, %i.fv              ; 2 uses
  %i.fz = add nuw i64 %.0.i46.i.i51.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fz, %.0.i.i.i
  br i1 %exitcond.not.i, label %XXH3_accumulate_sse2.exit47.i.i.i, label %.lr.ph.i, !llvm.loop !0

XXH3_accumulate_sse2.exit47.i.i.i:                ; preds = %.lr.ph.i, %bb.q
  %.sroa.33.2.i = phi <2 x i64> [ %.sroa.33.0.i, %bb.q ], [ %i.fy, %.lr.ph.i ] ; 2 uses
  %.sroa.23.2.i = phi <2 x i64> [ %.sroa.23.0.i, %bb.q ], [ %i.fl, %.lr.ph.i ] ; 2 uses
  %.sroa.13.2.i = phi <2 x i64> [ %.sroa.13.0.i, %bb.q ], [ %i.ey, %.lr.ph.i ] ; 2 uses
  %.sroa.0.2.i = phi <2 x i64> [ %.sroa.0.0.i55, %bb.q ], [ %i.el, %.lr.ph.i ] ; 2 uses
  %i.ga = lshr <2 x i64> %.sroa.0.2.i, splat (i64 47)
  %i.gb = xor <2 x i64> %i.dp, %i.ga
  %i.gc = xor <2 x i64> %i.gb, %.sroa.0.2.i       ; 2 uses
  %i.gd = bitcast <2 x i64> %i.gc to <4 x i32>
  %i.ge = shufflevector <4 x i32> %i.gd, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gf = bitcast <4 x i32> %i.ge to <2 x i64>
  %i.gg = and <2 x i64> %i.gc, splat (i64 4294967295)
  %i.gh = mul nuw <2 x i64> %i.gg, splat (i64 2654435761)
  %i.gi = mul <2 x i64> %i.gf, splat (i64 -7046029290881679360)
  %i.gj = add <2 x i64> %i.gi, %i.gh              ; 2 uses
  %i.gk = lshr <2 x i64> %.sroa.13.2.i, splat (i64 47)
  %i.gl = xor <2 x i64> %i.dr, %i.gk
  %i.gm = xor <2 x i64> %i.gl, %.sroa.13.2.i      ; 2 uses
  %i.gn = bitcast <2 x i64> %i.gm to <4 x i32>
  %i.go = shufflevector <4 x i32> %i.gn, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gp = bitcast <4 x i32> %i.go to <2 x i64>
  %i.gq = and <2 x i64> %i.gm, splat (i64 4294967295)
  %i.gr = mul nuw <2 x i64> %i.gq, splat (i64 2654435761)
  %i.gs = mul <2 x i64> %i.gp, splat (i64 -7046029290881679360)
  %i.gt = add <2 x i64> %i.gs, %i.gr              ; 2 uses
  %i.gu = lshr <2 x i64> %.sroa.23.2.i, splat (i64 47)
  %i.gv = xor <2 x i64> %i.dt, %i.gu
  %i.gw = xor <2 x i64> %i.gv, %.sroa.23.2.i      ; 2 uses
  %i.gx = bitcast <2 x i64> %i.gw to <4 x i32>
  %i.gy = shufflevector <4 x i32> %i.gx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gz = bitcast <4 x i32> %i.gy to <2 x i64>
  %i.ha = and <2 x i64> %i.gw, splat (i64 4294967295)
  %i.hb = mul nuw <2 x i64> %i.ha, splat (i64 2654435761)
  %i.hc = mul <2 x i64> %i.gz, splat (i64 -7046029290881679360)
  %i.hd = add <2 x i64> %i.hc, %i.hb              ; 2 uses
  %i.he = lshr <2 x i64> %.sroa.33.2.i, splat (i64 47)
  %i.hf = xor <2 x i64> %i.dv, %i.he
  %i.hg = xor <2 x i64> %i.hf, %.sroa.33.2.i      ; 2 uses
  %i.hh = bitcast <2 x i64> %i.hg to <4 x i32>
  %i.hi = shufflevector <4 x i32> %i.hh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hj = bitcast <4 x i32> %i.hi to <2 x i64>
  %i.hk = and <2 x i64> %i.hg, splat (i64 4294967295)
  %i.hl = mul nuw <2 x i64> %i.hk, splat (i64 2654435761)
  %i.hm = mul <2 x i64> %i.hj, splat (i64 -7046029290881679360)
  %i.hn = add <2 x i64> %i.hm, %i.hl              ; 2 uses
  %i.ho = shl i64 %.0.i.i.i, 6
  %i.hp = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 %i.ho ; 2 uses
  %i.hq = sub i64 %.038.i.i.i, %.0.i.i.i          ; 3 uses
  %.not44.i.i.i = icmp ult i64 %i.hq, %i.di
  br i1 %.not44.i.i.i, label %.loopexit.i, label %bb.q, !llvm.loop !1

.loopexit.i:                                      ; preds = %XXH3_accumulate_sse2.exit47.i.i.i, %bb.p
  %.sroa.33.3.i = phi <2 x i64> [ %.sroa.33.0.copyload.i, %bb.p ], [ %i.hn, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.23.3.i = phi <2 x i64> [ %.sroa.23.0.copyload.i, %bb.p ], [ %i.hd, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.13.3.i = phi <2 x i64> [ %.sroa.13.0.copyload.i, %bb.p ], [ %i.gt, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.0.3.i = phi <2 x i64> [ %.sroa.0.0.copyload.i, %bb.p ], [ %i.gj, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.139.i.i.i = phi i64 [ %i.df, %bb.p ], [ %i.hq, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.137.i.i.i = phi ptr [ %i.dj, %bb.p ], [ %i.hp, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.dl, %bb.p ], [ %i.cx, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.not45.i.i.i = icmp eq i64 %.139.i.i.i, 0
  br i1 %.not45.i.i.i, label %XXH3_consumeStripes.exit.i.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.i
  %.sroa.33.4.i = phi <2 x i64> [ %i.jt, %.preheader.i ], [ %.sroa.33.3.i, %.loopexit.i ]
  %.sroa.23.4.i = phi <2 x i64> [ %i.jg, %.preheader.i ], [ %.sroa.23.3.i, %.loopexit.i ]
  %.sroa.13.4.i = phi <2 x i64> [ %i.it, %.preheader.i ], [ %.sroa.13.3.i, %.loopexit.i ]
  %.sroa.0.4.i = phi <2 x i64> [ %i.ig, %.preheader.i ], [ %.sroa.0.3.i, %.loopexit.i ]
  %.0.i.i.i54.i = phi i64 [ %i.ju, %.preheader.i ], [ 0, %.loopexit.i ] ; 3 uses
  %i.hr = shl i64 %.0.i.i.i54.i, 6
  %i.hs = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 %i.hr ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %i.ht, i32 0, i32 3, i32 1), !noalias !92
  %i.hu = shl i64 %.0.i.i.i54.i, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 %i.hu ; 4 uses
  %i.hw = load <2 x i64>, ptr %i.hs, align 1, !tbaa !50, !noalias !94 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hv, align 1, !tbaa !50, !noalias !94
  %i.hy = xor <2 x i64> %i.hx, %i.hw              ; 2 uses
  %i.hz = bitcast <2 x i64> %i.hy to <4 x i32>
  %i.ia = and <2 x i64> %i.hy, splat (i64 4294967295)
  %i.ib = and <4 x i32> %i.hz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner233 = shufflevector <4 x i32> %i.ib, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ic = bitcast <4 x i32> %.inner233 to <2 x i64>
  %i.id = mul nuw <2 x i64> %i.ia, %i.ic
  %i.ie = shufflevector <2 x i64> %i.hw, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.if = add <2 x i64> %.sroa.0.4.i, %i.ie
  %i.ig = add <2 x i64> %i.if, %i.id              ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ii = load <2 x i64>, ptr %i.ih, align 1, !tbaa !50, !noalias !94 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ik = load <2 x i64>, ptr %i.ij, align 1, !tbaa !50, !noalias !94
  %i.il = xor <2 x i64> %i.ik, %i.ii              ; 2 uses
  %i.im = bitcast <2 x i64> %i.il to <4 x i32>
  %i.in = and <2 x i64> %i.il, splat (i64 4294967295)
  %i.io = and <4 x i32> %i.im, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner234 = shufflevector <4 x i32> %i.io, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ip = bitcast <4 x i32> %.inner234 to <2 x i64>
  %i.iq = mul nuw <2 x i64> %i.in, %i.ip
  %i.ir = shufflevector <2 x i64> %i.ii, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.is = add <2 x i64> %.sroa.13.4.i, %i.ir
  %i.it = add <2 x i64> %i.is, %i.iq              ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.iv = load <2 x i64>, ptr %i.iu, align 1, !tbaa !50, !noalias !94 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.ix = load <2 x i64>, ptr %i.iw, align 1, !tbaa !50, !noalias !94
  %i.iy = xor <2 x i64> %i.ix, %i.iv              ; 2 uses
  %i.iz = bitcast <2 x i64> %i.iy to <4 x i32>
  %i.ja = and <2 x i64> %i.iy, splat (i64 4294967295)
  %i.jb = and <4 x i32> %i.iz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner235 = shufflevector <4 x i32> %i.jb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jc = bitcast <4 x i32> %.inner235 to <2 x i64>
  %i.jd = mul nuw <2 x i64> %i.ja, %i.jc
  %i.je = shufflevector <2 x i64> %i.iv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = add <2 x i64> %.sroa.23.4.i, %i.je
  %i.jg = add <2 x i64> %i.jf, %i.jd              ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.ji = load <2 x i64>, ptr %i.jh, align 1, !tbaa !50, !noalias !94 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.jk = load <2 x i64>, ptr %i.jj, align 1, !tbaa !50, !noalias !94
  %i.jl = xor <2 x i64> %i.jk, %i.ji              ; 2 uses
  %i.jm = bitcast <2 x i64> %i.jl to <4 x i32>
  %i.jn = and <2 x i64> %i.jl, splat (i64 4294967295)
  %i.jo = and <4 x i32> %i.jm, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner236 = shufflevector <4 x i32> %i.jo, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jp = bitcast <4 x i32> %.inner236 to <2 x i64>
  %i.jq = mul nuw <2 x i64> %i.jn, %i.jp
  %i.jr = shufflevector <2 x i64> %i.ji, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.js = add <2 x i64> %.sroa.33.4.i, %i.jr
  %i.jt = add <2 x i64> %i.js, %i.jq              ; 2 uses
  %i.ju = add nuw i64 %.0.i.i.i54.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.ju, %.139.i.i.i
  br i1 %exitcond60.not.i, label %XXH3_consumeStripes.exit.i.i, label %.preheader.i, !llvm.loop !0

XXH3_consumeStripes.exit.i.i:                     ; preds = %.preheader.i, %.loopexit.i
  %.sroa.33.5.i = phi <2 x i64> [ %.sroa.33.3.i, %.loopexit.i ], [ %i.jt, %.preheader.i ]
  %.sroa.23.5.i = phi <2 x i64> [ %.sroa.23.3.i, %.loopexit.i ], [ %i.jg, %.preheader.i ]
  %.sroa.13.5.i = phi <2 x i64> [ %.sroa.13.3.i, %.loopexit.i ], [ %i.it, %.preheader.i ]
  %.sroa.0.5.i = phi <2 x i64> [ %.sroa.0.3.i, %.loopexit.i ], [ %i.ig, %.preheader.i ]
  %i.jv = zext i32 %i.db to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -64
  br label %XXH3_digest_long.exit.i

bb.r:                                             ; preds = %bb.o
  %i.jy = sub nuw nsw i32 64, %i.db
  %i.jz = zext nneg i32 %i.jy to i64              ; 3 uses
  %i.ka = icmp ne i32 %i.db, 0
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.kc = sub nsw i64 0, %i.jz
  %i.kd = getelementptr inbounds i8, ptr %i.d, i64 %i.kc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.kd, i64 %i.jz, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jz
  %i.kf = zext nneg i32 %i.db to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ke, ptr nonnull readonly align 64 %i.kb, i64 %i.kf, i1 false)
  br label %XXH3_digest_long.exit.i

XXH3_digest_long.exit.i:                          ; preds = %bb.r, %XXH3_consumeStripes.exit.i.i
  %.sroa.33.6.i = phi <2 x i64> [ %.sroa.33.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.33.0.copyload.i, %bb.r ]
  %.sroa.23.6.i = phi <2 x i64> [ %.sroa.23.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.23.0.copyload.i, %bb.r ]
  %.sroa.13.6.i = phi <2 x i64> [ %.sroa.13.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.13.0.copyload.i, %bb.r ]
  %.sroa.0.6.i = phi <2 x i64> [ %.sroa.0.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.0.0.copyload.i, %bb.r ]
  %.0.i.i = phi ptr [ %i.jx, %XXH3_consumeStripes.exit.i.i ], [ %i.a, %bb.r ] ; 4 uses
  %i.kg = load i64, ptr %i.n, align 32, !tbaa !59
  %i.kh = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.kg ; 4 uses
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -7
  %i.kj = load <2 x i64>, ptr %.0.i.i, align 1, !tbaa !50, !noalias !95 ; 2 uses
  %i.kk = load <2 x i64>, ptr %i.ki, align 1, !tbaa !50, !noalias !95
  %i.kl = xor <2 x i64> %i.kk, %i.kj              ; 2 uses
  %i.km = bitcast <2 x i64> %i.kl to <4 x i32>
  %i.kn = and <2 x i64> %i.kl, splat (i64 4294967295)
  %i.ko = and <4 x i32> %i.km, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner237 = shufflevector <4 x i32> %i.ko, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.kp = bitcast <4 x i32> %.inner237 to <2 x i64>
  %i.kq = mul nuw <2 x i64> %i.kn, %i.kp
  %i.kr = shufflevector <2 x i64> %i.kj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ks = add <2 x i64> %.sroa.0.6.i, %i.kr
  %i.kt = add <2 x i64> %i.ks, %i.kq              ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.kv = load <2 x i64>, ptr %i.ku, align 1, !tbaa !50, !noalias !95 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kh, i64 9
  %i.kx = load <2 x i64>, ptr %i.kw, align 1, !tbaa !50, !noalias !95
  %i.ky = xor <2 x i64> %i.kx, %i.kv              ; 2 uses
  %i.kz = bitcast <2 x i64> %i.ky to <4 x i32>
  %i.la = and <2 x i64> %i.ky, splat (i64 4294967295)
  %i.lb = and <4 x i32> %i.kz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner238 = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lc = bitcast <4 x i32> %.inner238 to <2 x i64>
  %i.ld = mul nuw <2 x i64> %i.la, %i.lc
  %i.le = shufflevector <2 x i64> %i.kv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.lf = add <2 x i64> %.sroa.13.6.i, %i.le
  %i.lg = add <2 x i64> %i.lf, %i.ld              ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.li = load <2 x i64>, ptr %i.lh, align 1, !tbaa !50, !noalias !95 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kh, i64 25
  %i.lk = load <2 x i64>, ptr %i.lj, align 1, !tbaa !50, !noalias !95
  %i.ll = xor <2 x i64> %i.lk, %i.li              ; 2 uses
  %i.lm = bitcast <2 x i64> %i.ll to <4 x i32>
  %i.ln = and <2 x i64> %i.ll, splat (i64 4294967295)
  %i.lo = and <4 x i32> %i.lm, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner239 = shufflevector <4 x i32> %i.lo, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lp = bitcast <4 x i32> %.inner239 to <2 x i64>
  %i.lq = mul nuw <2 x i64> %i.ln, %i.lp
  %i.lr = shufflevector <2 x i64> %i.li, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ls = add <2 x i64> %.sroa.23.6.i, %i.lr
  %i.lt = add <2 x i64> %i.ls, %i.lq              ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.lv = load <2 x i64>, ptr %i.lu, align 1, !tbaa !50, !noalias !95 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kh, i64 41
  %i.lx = load <2 x i64>, ptr %i.lw, align 1, !tbaa !50, !noalias !95
  %i.ly = xor <2 x i64> %i.lx, %i.lv              ; 2 uses
  %i.lz = bitcast <2 x i64> %i.ly to <4 x i32>
  %i.ma = and <2 x i64> %i.ly, splat (i64 4294967295)
  %i.mb = and <4 x i32> %i.lz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner240 = shufflevector <4 x i32> %i.mb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.mc = bitcast <4 x i32> %.inner240 to <2 x i64>
  %i.md = mul nuw <2 x i64> %i.ma, %i.mc
  %i.me = shufflevector <2 x i64> %i.lv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mf = add <2 x i64> %.sroa.33.6.i, %i.me
  %i.mg = add <2 x i64> %i.mf, %i.md              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.sroa.gep127 = getelementptr inbounds nuw i8, ptr %4, i64 75
  %.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.cu, i64 11
  %.sroa.sel129 = select i1 %i.cv, ptr %.sroa.gep127, ptr %.sroa.gep128
  %i.mh = mul i64 %i.cz, -7046029288634856825
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.kt, i64 0
  %.val.i.i.i = load i64, ptr %.sroa.sel129, align 1, !tbaa !47, !alias.scope !96
  %i.mi = xor i64 %.val.i.i.i, %.sroa.0.0.vec.extract.i
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.kt, i64 1
  %.sroa.gep130 = getelementptr inbounds nuw i8, ptr %4, i64 83
  %.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.cu, i64 19
  %.sroa.sel132 = select i1 %i.cv, ptr %.sroa.gep130, ptr %.sroa.gep131
  %.val9.i.i.i = load i64, ptr %.sroa.sel132, align 1, !tbaa !47, !alias.scope !96
  %i.mj = xor i64 %.val9.i.i.i, %.sroa.0.8.vec.extract.i
  %i.mk = zext i64 %i.mi to i128
  %i.ml = zext i64 %i.mj to i128
  %i.mm = mul nuw i128 %i.ml, %i.mk               ; 2 uses
  %i.mn = lshr i128 %i.mm, 64
  %i.mo = xor i128 %i.mn, %i.mm
  %i.mp = trunc i128 %i.mo to i64
  %i.mq = add i64 %i.mh, %i.mp
  %.sroa.gep133 = getelementptr inbounds nuw i8, ptr %4, i64 91
  %.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.cu, i64 27
  %.sroa.sel135 = select i1 %i.cv, ptr %.sroa.gep133, ptr %.sroa.gep134
  %.sroa.13.16.vec.extract.i = extractelement <2 x i64> %i.lg, i64 0
  %.val.1.i.i.i = load i64, ptr %.sroa.sel135, align 1, !tbaa !47, !alias.scope !96
  %i.mr = xor i64 %.val.1.i.i.i, %.sroa.13.16.vec.extract.i
  %.sroa.13.24.vec.extract.i = extractelement <2 x i64> %i.lg, i64 1
  %.sroa.gep136 = getelementptr inbounds nuw i8, ptr %4, i64 99
  %.sroa.gep137 = getelementptr inbounds nuw i8, ptr %i.cu, i64 35
  %.sroa.sel138 = select i1 %i.cv, ptr %.sroa.gep136, ptr %.sroa.gep137
  %.val9.1.i.i.i = load i64, ptr %.sroa.sel138, align 1, !tbaa !47, !alias.scope !96
  %i.ms = xor i64 %.val9.1.i.i.i, %.sroa.13.24.vec.extract.i
  %i.mt = zext i64 %i.mr to i128
  %i.mu = zext i64 %i.ms to i128
  %i.mv = mul nuw i128 %i.mu, %i.mt               ; 2 uses
  %i.mw = lshr i128 %i.mv, 64
  %i.mx = xor i128 %i.mw, %i.mv
  %i.my = trunc i128 %i.mx to i64
  %i.mz = add i64 %i.mq, %i.my
  %.sroa.gep139 = getelementptr inbounds nuw i8, ptr %4, i64 107
  %.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.cu, i64 43
  %.sroa.sel141 = select i1 %i.cv, ptr %.sroa.gep139, ptr %.sroa.gep140
  %.sroa.23.32.vec.extract.i = extractelement <2 x i64> %i.lt, i64 0
  %.val.2.i.i.i = load i64, ptr %.sroa.sel141, align 1, !tbaa !47, !alias.scope !96
  %i.na = xor i64 %.val.2.i.i.i, %.sroa.23.32.vec.extract.i
  %.sroa.23.40.vec.extract.i = extractelement <2 x i64> %i.lt, i64 1
  %.sroa.gep142 = getelementptr inbounds nuw i8, ptr %4, i64 115
  %.sroa.gep143 = getelementptr inbounds nuw i8, ptr %i.cu, i64 51
  %.sroa.sel144 = select i1 %i.cv, ptr %.sroa.gep142, ptr %.sroa.gep143
  %.val9.2.i.i.i = load i64, ptr %.sroa.sel144, align 1, !tbaa !47, !alias.scope !96
  %i.nb = xor i64 %.val9.2.i.i.i, %.sroa.23.40.vec.extract.i
  %i.nc = zext i64 %i.na to i128
  %i.nd = zext i64 %i.nb to i128
  %i.ne = mul nuw i128 %i.nd, %i.nc               ; 2 uses
  %i.nf = lshr i128 %i.ne, 64
  %i.ng = xor i128 %i.nf, %i.ne
  %i.nh = trunc i128 %i.ng to i64
  %i.ni = add i64 %i.mz, %i.nh
  %.sroa.gep145 = getelementptr inbounds nuw i8, ptr %4, i64 123
  %.sroa.gep146 = getelementptr inbounds nuw i8, ptr %i.cu, i64 59
  %.sroa.sel147 = select i1 %i.cv, ptr %.sroa.gep145, ptr %.sroa.gep146
  %.sroa.33.48.vec.extract.i = extractelement <2 x i64> %i.mg, i64 0
  %.val.3.i.i.i = load i64, ptr %.sroa.sel147, align 1, !tbaa !47, !alias.scope !96
  %i.nj = xor i64 %.val.3.i.i.i, %.sroa.33.48.vec.extract.i
  %.sroa.33.56.vec.extract.i = extractelement <2 x i64> %i.mg, i64 1
  %.sroa.gep148 = getelementptr inbounds nuw i8, ptr %4, i64 131
  %.sroa.gep149 = getelementptr inbounds nuw i8, ptr %i.cu, i64 67
  %.sroa.sel150 = select i1 %i.cv, ptr %.sroa.gep148, ptr %.sroa.gep149
  %.val9.3.i.i.i = load i64, ptr %.sroa.sel150, align 1, !tbaa !47, !alias.scope !96
  %i.nk = xor i64 %.val9.3.i.i.i, %.sroa.33.56.vec.extract.i
  %i.nl = zext i64 %i.nj to i128
  %i.nm = zext i64 %i.nk to i128
  %i.nn = mul nuw i128 %i.nm, %i.nl               ; 2 uses
  %i.no = lshr i128 %i.nn, 64
  %i.np = xor i128 %i.no, %i.nn
  %i.nq = trunc i128 %i.np to i64
  %i.nr = add i64 %i.ni, %i.nq                    ; 2 uses
  %i.ns = lshr i64 %i.nr, 37
  %i.nt = xor i64 %i.ns, %i.nr
  %i.nu = mul i64 %i.nt, 1609587791953885689      ; 2 uses
  %i.nv = lshr i64 %i.nu, 32
  %i.nw = xor i64 %i.nv, %i.nu
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.s:                                             ; preds = %._crit_edge
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 516
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !97
  %.not.i = icmp eq i32 %i.ny, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 26 uses
  br i1 %.not.i, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.oa = load i64, ptr %i.l, align 8, !tbaa !87  ; 11 uses
  %i.ob = icmp samesign ult i64 %i.cz, 17
  br i1 %i.ob, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.oc = icmp samesign ugt i64 %i.cz, 8
  br i1 %i.oc, label %bb.v, label %bb.w, !prof !35

bb.v:                                             ; preds = %bb.u
  %i.od = add i64 %i.oa, 7458650908927343033
  %i.oe = sub i64 -5812251307325107654, %i.oa
  %.val37.i.i = load i64, ptr %i.nz, align 64, !tbaa !47
  %i.of = xor i64 %.val37.i.i, %i.od              ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.cz
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 -8
  %.val36.i.i = load i64, ptr %i.oh, align 1, !tbaa !47
  %i.oi = xor i64 %.val36.i.i, %i.oe              ; 2 uses
  %i.oj = tail call noundef i64 @llvm.bswap.i64(i64 %i.of)
  %i.ok = add i64 %i.oj, %i.cz
  %i.ol = add i64 %i.ok, %i.oi
  %i.om = zext i64 %i.of to i128
  %i.on = zext i64 %i.oi to i128
  %i.oo = mul nuw i128 %i.on, %i.om               ; 2 uses
  %i.op = lshr i128 %i.oo, 64
  %i.oq = xor i128 %i.op, %i.oo
  %i.or = trunc i128 %i.oq to i64
  %i.os = add i64 %i.ol, %i.or                    ; 2 uses
  %i.ot = lshr i64 %i.os, 37
  %i.ou = xor i64 %i.ot, %i.os
  %i.ov = mul i64 %i.ou, 1609587791953885689      ; 2 uses
  %i.ow = lshr i64 %i.ov, 32
  %i.ox = xor i64 %i.ow, %i.ov
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.w:                                             ; preds = %bb.u
  %i.oy = icmp samesign ugt i64 %i.cz, 3
  br i1 %i.oy, label %bb.x, label %bb.y, !prof !35

bb.x:                                             ; preds = %bb.w
  %i.oz = trunc i64 %i.oa to i32
  %i.pa = tail call noundef i32 @llvm.bswap.i32(i32 %i.oz)
  %i.pb = zext i32 %i.pa to i64
  %i.pc = shl nuw i64 %i.pb, 32
  %i.pd = xor i64 %i.pc, %i.oa
  %.val44.i.i = load i32, ptr %i.nz, align 64, !tbaa !14
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.cz
  %i.pf = getelementptr inbounds i8, ptr %i.pe, i64 -4
  %.val45.i.i = load i32, ptr %i.pf, align 1, !tbaa !14
  %i.pg = sub i64 -4090762196417718878, %i.pd
  %i.ph = zext i32 %.val45.i.i to i64
  %i.pi = zext i32 %.val44.i.i to i64
  %i.pj = shl nuw i64 %i.pi, 32
  %i.pk = or disjoint i64 %i.pj, %i.ph
  %i.pl = xor i64 %i.pk, %i.pg                    ; 5 uses
  %i.pm = tail call i64 @llvm.fshl.i64(i64 %i.pl, i64 %i.pl, i64 49)
  %i.pn = tail call i64 @llvm.fshl.i64(i64 %i.pl, i64 %i.pl, i64 24)
  %i.po = xor i64 %i.pm, %i.pn
  %i.pp = xor i64 %i.po, %i.pl
  %i.pq = mul i64 %i.pp, -6939452855193903323     ; 2 uses
  %i.pr = lshr i64 %i.pq, 35
  %i.ps = add nuw nsw i64 %i.pr, %i.cz
  %i.pt = xor i64 %i.ps, %i.pq
  %i.pu = mul i64 %i.pt, -6939452855193903323     ; 2 uses
  %i.pv = lshr i64 %i.pu, 28
  %i.pw = xor i64 %i.pv, %i.pu
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.y:                                             ; preds = %bb.w
  %.not.i.i21.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i21.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.px = load i8, ptr %i.nz, align 64, !tbaa !50
  %i.py = lshr i64 %i.cz, 1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !50
  %i.qb = getelementptr i8, ptr %i.nz, i64 %i.cz
  %i.qc = getelementptr i8, ptr %i.qb, i64 -1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !50
  %i.qe = zext i8 %i.px to i64
  %i.qf = shl nuw nsw i64 %i.qe, 16
  %i.qg = zext i8 %i.qa to i64
  %i.qh = shl nuw nsw i64 %i.qg, 24
  %i.qi = zext i8 %i.qd to i64
  %i.qj = shl nuw nsw i64 %i.cz, 8
  %i.qk = or disjoint i64 %i.qf, %i.qj
  %i.ql = or disjoint i64 %i.qk, %i.qh
  %i.qm = or disjoint i64 %i.ql, %i.qi
  %i.qn = add i64 %i.oa, 2267503259
  %i.qo = xor i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = lshr i64 %i.qo, 33
  %i.qq = xor i64 %i.qp, %i.qo
  %i.qr = mul i64 %i.qq, -4417276706812531889     ; 2 uses
  %i.qs = lshr i64 %i.qr, 29
  %i.qt = xor i64 %i.qs, %i.qr
  %i.qu = mul i64 %i.qt, 1609587929392839161      ; 2 uses
  %i.qv = lshr i64 %i.qu, 32
  %i.qw = xor i64 %i.qv, %i.qu
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.aa:                                            ; preds = %bb.y
  %i.qx = xor i64 %i.oa, -8707998980786479652     ; 2 uses
  %i.qy = lshr i64 %i.qx, 33
  %i.qz = xor i64 %i.qy, %i.qx
  %i.ra = mul i64 %i.qz, -4417276706812531889     ; 2 uses
  %i.rb = lshr i64 %i.ra, 29
end_hunk_0
