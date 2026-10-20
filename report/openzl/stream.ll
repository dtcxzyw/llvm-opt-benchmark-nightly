Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/stream?download=true
inline.NumInlined: 374
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@STREAM_hashLastCommit_xxh3low32:bb.a
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
end_hunk_0
begin_hunk_1_@XXH3_update_regular:bb.a
  %.not74.i = icmp eq i32 %i.m, 0
  br i1 %.not74.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.x = zext nneg i32 %i.m to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %1, i64 %i.p, i1 false), !alias.scope !135
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !60, !alias.scope !134 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ae = load i64, ptr %i.ad, align 32, !tbaa !59, !alias.scope !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !47, !alias.scope !137, !noalias !133 ; 3 uses
  %i.ag = shl i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ag ; 2 uses
  %i.ai = sub i64 %i.ac, %i.af                    ; 2 uses
  %.not.i3 = icmp ugt i64 %i.ai, 4
  %.pre74.pre = load <2 x i64>, ptr %0, align 64, !tbaa !50, !noalias !133 ; 2 uses
  %.phi.trans.insert79.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %.not.i3, label %..thread_crit_edge, label %.preheader36

..thread_crit_edge:                               ; preds = %bb.f
  %.phi.trans.insert75.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre76.pre = load <2 x i64>, ptr %.phi.trans.insert75.phi.trans.insert, align 16, !tbaa !50, !alias.scope !138, !noalias !139
  %.phi.trans.insert77.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre78.pre = load <2 x i64>, ptr %.phi.trans.insert77.phi.trans.insert, align 32, !tbaa !50, !alias.scope !138, !noalias !139
  %.pre80.pre = load <2 x i64>, ptr %.phi.trans.insert79.phi.trans.insert, align 16, !tbaa !50, !alias.scope !138, !noalias !139
  br label %.thread

.preheader36:                                     ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !133
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  br label %bb.g

bb.g:                                             ; preds = %.preheader36, %XXH3_accumulate_sse2.exit47.i9
  %.pre68 = phi <2 x i64> [ %i.dm, %XXH3_accumulate_sse2.exit47.i9 ], [ %.pre74.pre, %.preheader36 ] ; 2 uses
  %.038.i4 = phi i64 [ %i.ew, %XXH3_accumulate_sse2.exit47.i9 ], [ 4, %.preheader36 ]
  %.036.i5 = phi ptr [ %i.ev, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.w, %.preheader36 ] ; 2 uses
  %.035.i6 = phi ptr [ %i.h, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.ah, %.preheader36 ]
  %.0.i7 = phi i64 [ %i.ac, %XXH3_accumulate_sse2.exit47.i9 ], [ %i.ai, %.preheader36 ] ; 4 uses
  %.not = icmp eq i64 %.0.i7, 0
  br i1 %.not, label %.XXH3_accumulate_sse2.exit47.i9_crit_edge, label %.lr.ph

.XXH3_accumulate_sse2.exit47.i9_crit_edge:        ; preds = %bb.g
  %.pre = load <2 x i64>, ptr %.phi.trans.insert69, align 16, !tbaa !50, !alias.scope !140, !noalias !133
  %.pre71 = load <2 x i64>, ptr %.phi.trans.insert70, align 32, !tbaa !50, !alias.scope !140, !noalias !133
  %.pre73 = load <2 x i64>, ptr %.phi.trans.insert72, align 16, !tbaa !50, !alias.scope !140, !noalias !133
  br label %XXH3_accumulate_sse2.exit47.i9

.lr.ph:                                           ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !139
  %.pre63 = load <2 x i64>, ptr %.phi.trans.insert, align 16, !tbaa !50, !alias.scope !141, !noalias !139
  %.pre65 = load <2 x i64>, ptr %.phi.trans.insert64, align 32, !tbaa !50, !alias.scope !141, !noalias !139
  %.pre67 = load <2 x i64>, ptr %.phi.trans.insert79.phi.trans.insert, align 16, !tbaa !50, !alias.scope !141, !noalias !139
  br label %XXH3_accumulate_512_sse2.exit

XXH3_accumulate_512_sse2.exit:                    ; preds = %.lr.ph, %XXH3_accumulate_512_sse2.exit
  %i.aq = phi <2 x i64> [ %.pre67, %.lr.ph ], [ %i.cw, %XXH3_accumulate_512_sse2.exit ]
  %i.ar = phi <2 x i64> [ %.pre65, %.lr.ph ], [ %i.cj, %XXH3_accumulate_512_sse2.exit ]
  %i.as = phi <2 x i64> [ %.pre63, %.lr.ph ], [ %i.bw, %XXH3_accumulate_512_sse2.exit ]
  %i.at = phi <2 x i64> [ %.pre68, %.lr.ph ], [ %i.bj, %XXH3_accumulate_512_sse2.exit ]
  %.0.i46.i841 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %XXH3_accumulate_512_sse2.exit ] ; 3 uses
  %i.au = shl i64 %.0.i46.i841, 6
  %i.av = getelementptr inbounds nuw i8, ptr %.036.i5, i64 %i.au ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aw, i32 0, i32 3, i32 1), !noalias !139
  %i.ax = shl i64 %.0.i46.i841, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.035.i6, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.az = load <2 x i64>, ptr %i.av, align 1, !tbaa !50, !noalias !142 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 1, !tbaa !50, !noalias !142
  %i.bb = xor <2 x i64> %i.ba, %i.az              ; 2 uses
  %i.bc = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.bd = and <2 x i64> %i.bb, splat (i64 4294967295)
  %i.be = and <4 x i32> %i.bc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bf = bitcast <4 x i32> %.inner to <2 x i64>
  %i.bg = mul nuw <2 x i64> %i.bd, %i.bf
  %i.bh = shufflevector <2 x i64> %i.az, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = add <2 x i64> %i.at, %i.bh
  %i.bj = add <2 x i64> %i.bi, %i.bg              ; 3 uses
  store <2 x i64> %i.bj, ptr %0, align 64, !tbaa !50, !alias.scope !141, !noalias !139
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bl = load <2 x i64>, ptr %i.bk, align 1, !tbaa !50, !noalias !142 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bn = load <2 x i64>, ptr %i.bm, align 1, !tbaa !50, !noalias !142
  %i.bo = xor <2 x i64> %i.bn, %i.bl              ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = and <2 x i64> %i.bo, splat (i64 4294967295)
  %i.br = and <4 x i32> %i.bp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner16 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bs = bitcast <4 x i32> %.inner16 to <2 x i64>
  %i.bt = mul nuw <2 x i64> %i.bq, %i.bs
  %i.bu = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = add <2 x i64> %i.as, %i.bu
  %i.bw = add <2 x i64> %i.bv, %i.bt              ; 3 uses
  store <2 x i64> %i.bw, ptr %.phi.trans.insert, align 16, !tbaa !50, !alias.scope !141, !noalias !139
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.by = load <2 x i64>, ptr %i.bx, align 1, !tbaa !50, !noalias !142 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ca = load <2 x i64>, ptr %i.bz, align 1, !tbaa !50, !noalias !142
  %i.cb = xor <2 x i64> %i.ca, %i.by              ; 2 uses
  %i.cc = bitcast <2 x i64> %i.cb to <4 x i32>
  %i.cd = and <2 x i64> %i.cb, splat (i64 4294967295)
  %i.ce = and <4 x i32> %i.cc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner17 = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cf = bitcast <4 x i32> %.inner17 to <2 x i64>
  %i.cg = mul nuw <2 x i64> %i.cd, %i.cf
  %i.ch = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = add <2 x i64> %i.ar, %i.ch
  %i.cj = add <2 x i64> %i.ci, %i.cg              ; 3 uses
  store <2 x i64> %i.cj, ptr %.phi.trans.insert64, align 32, !tbaa !50, !alias.scope !141, !noalias !139
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.cl = load <2 x i64>, ptr %i.ck, align 1, !tbaa !50, !noalias !142 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.cn = load <2 x i64>, ptr %i.cm, align 1, !tbaa !50, !noalias !142
  %i.co = xor <2 x i64> %i.cn, %i.cl              ; 2 uses
  %i.cp = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cq = and <2 x i64> %i.co, splat (i64 4294967295)
  %i.cr = and <4 x i32> %i.cp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner18 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cs = bitcast <4 x i32> %.inner18 to <2 x i64>
  %i.ct = mul nuw <2 x i64> %i.cq, %i.cs
  %i.cu = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = add <2 x i64> %i.aq, %i.cu
  %i.cw = add <2 x i64> %i.cv, %i.ct              ; 3 uses
  store <2 x i64> %i.cw, ptr %.phi.trans.insert79.phi.trans.insert, align 16, !tbaa !50, !alias.scope !141, !noalias !139
  %i.cx = add nuw i64 %.0.i46.i841, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %.0.i7
  br i1 %exitcond.not, label %XXH3_accumulate_sse2.exit47.i9, label %XXH3_accumulate_512_sse2.exit, !llvm.loop !0

XXH3_accumulate_sse2.exit47.i9:                   ; preds = %XXH3_accumulate_512_sse2.exit, %.XXH3_accumulate_sse2.exit47.i9_crit_edge
  %i.cy = phi <2 x i64> [ %.pre73, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.cw, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.cz = phi <2 x i64> [ %.pre71, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.cj, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.da = phi <2 x i64> [ %.pre, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.bw, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.db = phi <2 x i64> [ %.pre68, %.XXH3_accumulate_sse2.exit47.i9_crit_edge ], [ %i.bj, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143), !noalias !133
  %i.dc = lshr <2 x i64> %i.db, splat (i64 47)
  %i.dd = load <2 x i64>, ptr %i.aj, align 1, !tbaa !50, !noalias !144
  %i.de = xor <2 x i64> %i.dd, %i.dc
  %i.df = xor <2 x i64> %i.de, %i.db              ; 2 uses
  %i.dg = bitcast <2 x i64> %i.df to <4 x i32>
  %i.dh = shufflevector <4 x i32> %i.dg, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.di = bitcast <4 x i32> %i.dh to <2 x i64>
  %i.dj = and <2 x i64> %i.df, splat (i64 4294967295)
  %i.dk = mul nuw <2 x i64> %i.dj, splat (i64 2654435761)
  %i.dl = mul <2 x i64> %i.di, splat (i64 -7046029290881679360)
  %i.dm = add <2 x i64> %i.dl, %i.dk              ; 3 uses
  store <2 x i64> %i.dm, ptr %0, align 64, !tbaa !50, !alias.scope !140, !noalias !133
  %i.dn = lshr <2 x i64> %i.da, splat (i64 47)
  %i.do = load <2 x i64>, ptr %i.al, align 1, !tbaa !50, !noalias !144
  %i.dp = xor <2 x i64> %i.do, %i.dn
  %i.dq = xor <2 x i64> %i.dp, %i.da              ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dq to <4 x i32>
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dt = bitcast <4 x i32> %i.ds to <2 x i64>
  %i.du = and <2 x i64> %i.dq, splat (i64 4294967295)
  %i.dv = mul nuw <2 x i64> %i.du, splat (i64 2654435761)
  %i.dw = mul <2 x i64> %i.dt, splat (i64 -7046029290881679360)
  %i.dx = add <2 x i64> %i.dw, %i.dv              ; 2 uses
  store <2 x i64> %i.dx, ptr %i.ak, align 16, !tbaa !50, !alias.scope !140, !noalias !133
  %i.dy = lshr <2 x i64> %i.cz, splat (i64 47)
  %i.dz = load <2 x i64>, ptr %i.an, align 1, !tbaa !50, !noalias !144
  %i.ea = xor <2 x i64> %i.dz, %i.dy
  %i.eb = xor <2 x i64> %i.ea, %i.cz              ; 2 uses
  %i.ec = bitcast <2 x i64> %i.eb to <4 x i32>
  %i.ed = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ee = bitcast <4 x i32> %i.ed to <2 x i64>
  %i.ef = and <2 x i64> %i.eb, splat (i64 4294967295)
  %i.eg = mul nuw <2 x i64> %i.ef, splat (i64 2654435761)
  %i.eh = mul <2 x i64> %i.ee, splat (i64 -7046029290881679360)
  %i.ei = add <2 x i64> %i.eh, %i.eg              ; 2 uses
  store <2 x i64> %i.ei, ptr %i.am, align 32, !tbaa !50, !alias.scope !140, !noalias !133
  %i.ej = lshr <2 x i64> %i.cy, splat (i64 47)
  %i.ek = load <2 x i64>, ptr %i.ap, align 1, !tbaa !50, !noalias !144
  %i.el = xor <2 x i64> %i.ek, %i.ej
  %i.em = xor <2 x i64> %i.el, %i.cy              ; 2 uses
  %i.en = bitcast <2 x i64> %i.em to <4 x i32>
  %i.eo = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ep = bitcast <4 x i32> %i.eo to <2 x i64>
  %i.eq = and <2 x i64> %i.em, splat (i64 4294967295)
  %i.er = mul nuw <2 x i64> %i.eq, splat (i64 2654435761)
  %i.es = mul <2 x i64> %i.ep, splat (i64 -7046029290881679360)
  %i.et = add <2 x i64> %i.es, %i.er              ; 2 uses
  store <2 x i64> %i.et, ptr %i.ao, align 16, !tbaa !50, !alias.scope !140, !noalias !133
  %i.eu = shl i64 %.0.i7, 6
  %i.ev = getelementptr inbounds nuw i8, ptr %.036.i5, i64 %i.eu ; 2 uses
  %i.ew = sub i64 %.038.i4, %.0.i7                ; 4 uses
  %.not44.i12 = icmp ult i64 %i.ew, %i.ac
  br i1 %.not44.i12, label %bb.h, label %bb.g, !llvm.loop !1

bb.h:                                             ; preds = %XXH3_accumulate_sse2.exit47.i9
  store i64 0, ptr %i.aa, align 8, !tbaa !47, !alias.scope !137, !noalias !133
  %.not45.i16 = icmp eq i64 %i.ew, 0
  br i1 %.not45.i16, label %XXH3_consumeStripes.exit20, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.h
  %.pre80 = phi <2 x i64> [ %i.et, %bb.h ], [ %.pre80.pre, %..thread_crit_edge ]
  %.pre78 = phi <2 x i64> [ %i.ei, %bb.h ], [ %.pre78.pre, %..thread_crit_edge ]
  %.pre76 = phi <2 x i64> [ %i.dx, %bb.h ], [ %.pre76.pre, %..thread_crit_edge ]
  %.pre74 = phi <2 x i64> [ %i.dm, %bb.h ], [ %.pre74.pre, %..thread_crit_edge ]
  %i.ex = phi i64 [ 0, %bb.h ], [ %i.af, %..thread_crit_edge ]
  %.1.i1534 = phi ptr [ %i.h, %bb.h ], [ %i.ah, %..thread_crit_edge ]
  %.137.i1433 = phi ptr [ %i.ev, %bb.h ], [ %i.w, %..thread_crit_edge ]
  %.139.i1332 = phi i64 [ %i.ew, %bb.h ], [ 4, %..thread_crit_edge ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !139
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %XXH3_accumulate_512_sse2.exit23

XXH3_accumulate_512_sse2.exit23:                  ; preds = %.thread, %XXH3_accumulate_512_sse2.exit23
  %i.ey = phi <2 x i64> [ %.pre80, %.thread ], [ %i.he, %XXH3_accumulate_512_sse2.exit23 ]
  %i.ez = phi <2 x i64> [ %.pre78, %.thread ], [ %i.gr, %XXH3_accumulate_512_sse2.exit23 ]
  %i.fa = phi <2 x i64> [ %.pre76, %.thread ], [ %i.ge, %XXH3_accumulate_512_sse2.exit23 ]
  %i.fb = phi <2 x i64> [ %.pre74, %.thread ], [ %i.fr, %XXH3_accumulate_512_sse2.exit23 ]
  %.0.i.i1744 = phi i64 [ 0, %.thread ], [ %i.hf, %XXH3_accumulate_512_sse2.exit23 ] ; 3 uses
  %i.fc = shl i64 %.0.i.i1744, 6
  %i.fd = getelementptr inbounds nuw i8, ptr %.137.i1433, i64 %i.fc ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fe, i32 0, i32 3, i32 1), !noalias !139
  %i.ff = shl i64 %.0.i.i1744, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.1.i1534, i64 %i.ff ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.fh = load <2 x i64>, ptr %i.fd, align 1, !tbaa !50, !noalias !145 ; 2 uses
  %i.fi = load <2 x i64>, ptr %i.fg, align 1, !tbaa !50, !noalias !145
  %i.fj = xor <2 x i64> %i.fi, %i.fh              ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = and <2 x i64> %i.fj, splat (i64 4294967295)
  %i.fm = and <4 x i32> %i.fk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner19 = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fn = bitcast <4 x i32> %.inner19 to <2 x i64>
  %i.fo = mul nuw <2 x i64> %i.fl, %i.fn
  %i.fp = shufflevector <2 x i64> %i.fh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = add <2 x i64> %i.fb, %i.fp
  %i.fr = add <2 x i64> %i.fq, %i.fo              ; 2 uses
  store <2 x i64> %i.fr, ptr %0, align 64, !tbaa !50, !alias.scope !138, !noalias !139
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !50, !noalias !145 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fv = load <2 x i64>, ptr %i.fu, align 1, !tbaa !50, !noalias !145
  %i.fw = xor <2 x i64> %i.fv, %i.ft              ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.fy = and <2 x i64> %i.fw, splat (i64 4294967295)
  %i.fz = and <4 x i32> %i.fx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner20 = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ga = bitcast <4 x i32> %.inner20 to <2 x i64>
  %i.gb = mul nuw <2 x i64> %i.fy, %i.ga
  %i.gc = shufflevector <2 x i64> %i.ft, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = add <2 x i64> %i.fa, %i.gc
  %i.ge = add <2 x i64> %i.gd, %i.gb              ; 2 uses
  store <2 x i64> %i.ge, ptr %.phi.trans.insert75, align 16, !tbaa !50, !alias.scope !138, !noalias !139
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.gg = load <2 x i64>, ptr %i.gf, align 1, !tbaa !50, !noalias !145 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.gi = load <2 x i64>, ptr %i.gh, align 1, !tbaa !50, !noalias !145
  %i.gj = xor <2 x i64> %i.gi, %i.gg              ; 2 uses
  %i.gk = bitcast <2 x i64> %i.gj to <4 x i32>
  %i.gl = and <2 x i64> %i.gj, splat (i64 4294967295)
  %i.gm = and <4 x i32> %i.gk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner21 = shufflevector <4 x i32> %i.gm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gn = bitcast <4 x i32> %.inner21 to <2 x i64>
  %i.go = mul nuw <2 x i64> %i.gl, %i.gn
  %i.gp = shufflevector <2 x i64> %i.gg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gq = add <2 x i64> %i.ez, %i.gp
  %i.gr = add <2 x i64> %i.gq, %i.go              ; 2 uses
  store <2 x i64> %i.gr, ptr %.phi.trans.insert77, align 32, !tbaa !50, !alias.scope !138, !noalias !139
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.gt = load <2 x i64>, ptr %i.gs, align 1, !tbaa !50, !noalias !145 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.gv = load <2 x i64>, ptr %i.gu, align 1, !tbaa !50, !noalias !145
  %i.gw = xor <2 x i64> %i.gv, %i.gt              ; 2 uses
  %i.gx = bitcast <2 x i64> %i.gw to <4 x i32>
  %i.gy = and <2 x i64> %i.gw, splat (i64 4294967295)
  %i.gz = and <4 x i32> %i.gx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner22 = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ha = bitcast <4 x i32> %.inner22 to <2 x i64>
  %i.hb = mul nuw <2 x i64> %i.gy, %i.ha
  %i.hc = shufflevector <2 x i64> %i.gt, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = add <2 x i64> %i.ey, %i.hc
  %i.he = add <2 x i64> %i.hd, %i.hb              ; 2 uses
  store <2 x i64> %i.he, ptr %.phi.trans.insert79, align 16, !tbaa !50, !alias.scope !138, !noalias !139
  %i.hf = add nuw i64 %.0.i.i1744, 1              ; 2 uses
  %exitcond57.not = icmp eq i64 %i.hf, %.139.i1332
  br i1 %exitcond57.not, label %XXH3_accumulate_sse2.exit.i18, label %XXH3_accumulate_512_sse2.exit23, !llvm.loop !0

XXH3_accumulate_sse2.exit.i18:                    ; preds = %XXH3_accumulate_512_sse2.exit23
  %i.hg = add i64 %i.ex, %.139.i1332
  store i64 %i.hg, ptr %i.aa, align 8, !tbaa !47, !alias.scope !137, !noalias !133
  br label %XXH3_consumeStripes.exit20

XXH3_consumeStripes.exit20:                       ; preds = %bb.h, %XXH3_accumulate_sse2.exit.i18
  store i32 0, ptr %i.l, align 64, !tbaa !62, !alias.scope !134
  br label %bb.i

bb.i:                                             ; preds = %XXH3_consumeStripes.exit20, %bb.e
  %.067.i = phi ptr [ %i.z, %XXH3_consumeStripes.exit20 ], [ %1, %bb.e ] ; 5 uses
  %i.hh = icmp ult ptr %.067.i, %i.c
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.hj = ptrtoint ptr %.067.i to i64             ; 2 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 2 uses
  %i.hl = icmp sgt i64 %i.hk, 256
  br i1 %i.hl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.hm = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.hj
  %i.hp = lshr i64 %i.ho, 6                       ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !60, !alias.scope !134 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hu = load i64, ptr %i.ht, align 32, !tbaa !59, !alias.scope !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.hv = load i64, ptr %i.hq, align 8, !tbaa !47, !alias.scope !147 ; 3 uses
  %i.hw = shl i64 %i.hv, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hw ; 2 uses
  %i.hy = sub i64 %i.hs, %i.hv                    ; 2 uses
  %.not.i2 = icmp ult i64 %i.hp, %i.hy
  br i1 %.not.i2, label %bb.m, label %.preheader35

.preheader35:                                     ; preds = %bb.j
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hu ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ]
  %.pre88.pre = load <2 x i64>, ptr %0, align 64, !tbaa !50
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  br label %bb.k

bb.k:                                             ; preds = %.preheader35, %XXH3_accumulate_sse2.exit47.i
  %.pre88 = phi <2 x i64> [ %i.lc, %XXH3_accumulate_sse2.exit47.i ], [ %.pre88.pre, %.preheader35 ] ; 2 uses
  %.038.i = phi i64 [ %i.mm, %XXH3_accumulate_sse2.exit47.i ], [ %i.hp, %.preheader35 ]
  %.036.i = phi ptr [ %i.ml, %XXH3_accumulate_sse2.exit47.i ], [ %.067.i, %.preheader35 ] ; 2 uses
  %.035.i = phi ptr [ %i.h, %XXH3_accumulate_sse2.exit47.i ], [ %i.hx, %.preheader35 ]
  %.0.i = phi i64 [ %i.hs, %XXH3_accumulate_sse2.exit47.i ], [ %i.hy, %.preheader35 ] ; 4 uses
  %.not51 = icmp eq i64 %.0.i, 0
  br i1 %.not51, label %.XXH3_accumulate_sse2.exit47.i_crit_edge, label %.lr.ph47

.XXH3_accumulate_sse2.exit47.i_crit_edge:         ; preds = %bb.k
  %.pre90 = load <2 x i64>, ptr %.phi.trans.insert89, align 16, !tbaa !50, !alias.scope !148
  %.pre92 = load <2 x i64>, ptr %.phi.trans.insert91, align 32, !tbaa !50, !alias.scope !148
  %.pre94 = load <2 x i64>, ptr %.phi.trans.insert93, align 16, !tbaa !50, !alias.scope !148
  br label %XXH3_accumulate_sse2.exit47.i

.lr.ph47:                                         ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !147
  %.pre83 = load <2 x i64>, ptr %.phi.trans.insert82, align 16, !tbaa !50, !alias.scope !149, !noalias !147
  %.pre85 = load <2 x i64>, ptr %.phi.trans.insert84, align 32, !tbaa !50, !alias.scope !149, !noalias !147
  %.pre87 = load <2 x i64>, ptr %.phi.trans.insert86, align 16, !tbaa !50, !alias.scope !149, !noalias !147
  br label %XXH3_accumulate_512_sse2.exit25

XXH3_accumulate_512_sse2.exit25:                  ; preds = %.lr.ph47, %XXH3_accumulate_512_sse2.exit25
  %i.ig = phi <2 x i64> [ %.pre87, %.lr.ph47 ], [ %i.km, %XXH3_accumulate_512_sse2.exit25 ]
  %i.ih = phi <2 x i64> [ %.pre85, %.lr.ph47 ], [ %i.jz, %XXH3_accumulate_512_sse2.exit25 ]
  %i.ii = phi <2 x i64> [ %.pre83, %.lr.ph47 ], [ %i.jm, %XXH3_accumulate_512_sse2.exit25 ]
  %i.ij = phi <2 x i64> [ %.pre88, %.lr.ph47 ], [ %i.iz, %XXH3_accumulate_512_sse2.exit25 ]
  %.0.i46.i46 = phi i64 [ 0, %.lr.ph47 ], [ %i.kn, %XXH3_accumulate_512_sse2.exit25 ] ; 3 uses
  %i.ik = shl i64 %.0.i46.i46, 6
  %i.il = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.ik ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.im, i32 0, i32 3, i32 1), !noalias !147
  %i.in = shl i64 %.0.i46.i46, 3
  %i.io = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.in ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ip = load <2 x i64>, ptr %i.il, align 1, !tbaa !50, !noalias !150 ; 2 uses
  %i.iq = load <2 x i64>, ptr %i.io, align 1, !tbaa !50, !noalias !150
  %i.ir = xor <2 x i64> %i.iq, %i.ip              ; 2 uses
  %i.is = bitcast <2 x i64> %i.ir to <4 x i32>
  %i.it = and <2 x i64> %i.ir, splat (i64 4294967295)
  %i.iu = and <4 x i32> %i.is, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner23 = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.iv = bitcast <4 x i32> %.inner23 to <2 x i64>
  %i.iw = mul nuw <2 x i64> %i.it, %i.iv
  %i.ix = shufflevector <2 x i64> %i.ip, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.iy = add <2 x i64> %i.ij, %i.ix
  %i.iz = add <2 x i64> %i.iy, %i.iw              ; 3 uses
  store <2 x i64> %i.iz, ptr %0, align 64, !tbaa !50, !alias.scope !149, !noalias !147
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.jb = load <2 x i64>, ptr %i.ja, align 1, !tbaa !50, !noalias !150 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.jd = load <2 x i64>, ptr %i.jc, align 1, !tbaa !50, !noalias !150
  %i.je = xor <2 x i64> %i.jd, %i.jb              ; 2 uses
  %i.jf = bitcast <2 x i64> %i.je to <4 x i32>
  %i.jg = and <2 x i64> %i.je, splat (i64 4294967295)
  %i.jh = and <4 x i32> %i.jf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner24 = shufflevector <4 x i32> %i.jh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ji = bitcast <4 x i32> %.inner24 to <2 x i64>
  %i.jj = mul nuw <2 x i64> %i.jg, %i.ji
  %i.jk = shufflevector <2 x i64> %i.jb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jl = add <2 x i64> %i.ii, %i.jk
  %i.jm = add <2 x i64> %i.jl, %i.jj              ; 3 uses
  store <2 x i64> %i.jm, ptr %.phi.trans.insert82, align 16, !tbaa !50, !alias.scope !149, !noalias !147
  %i.jn = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.jo = load <2 x i64>, ptr %i.jn, align 1, !tbaa !50, !noalias !150 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.jq = load <2 x i64>, ptr %i.jp, align 1, !tbaa !50, !noalias !150
  %i.jr = xor <2 x i64> %i.jq, %i.jo              ; 2 uses
  %i.js = bitcast <2 x i64> %i.jr to <4 x i32>
  %i.jt = and <2 x i64> %i.jr, splat (i64 4294967295)
  %i.ju = and <4 x i32> %i.js, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner25 = shufflevector <4 x i32> %i.ju, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jv = bitcast <4 x i32> %.inner25 to <2 x i64>
  %i.jw = mul nuw <2 x i64> %i.jt, %i.jv
  %i.jx = shufflevector <2 x i64> %i.jo, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = add <2 x i64> %i.ih, %i.jx
  %i.jz = add <2 x i64> %i.jy, %i.jw              ; 3 uses
  store <2 x i64> %i.jz, ptr %.phi.trans.insert84, align 32, !tbaa !50, !alias.scope !149, !noalias !147
  %i.ka = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.kb = load <2 x i64>, ptr %i.ka, align 1, !tbaa !50, !noalias !150 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.kd = load <2 x i64>, ptr %i.kc, align 1, !tbaa !50, !noalias !150
  %i.ke = xor <2 x i64> %i.kd, %i.kb              ; 2 uses
  %i.kf = bitcast <2 x i64> %i.ke to <4 x i32>
  %i.kg = and <2 x i64> %i.ke, splat (i64 4294967295)
  %i.kh = and <4 x i32> %i.kf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner26 = shufflevector <4 x i32> %i.kh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ki = bitcast <4 x i32> %.inner26 to <2 x i64>
  %i.kj = mul nuw <2 x i64> %i.kg, %i.ki
  %i.kk = shufflevector <2 x i64> %i.kb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = add <2 x i64> %i.ig, %i.kk
  %i.km = add <2 x i64> %i.kl, %i.kj              ; 3 uses
  store <2 x i64> %i.km, ptr %.phi.trans.insert86, align 16, !tbaa !50, !alias.scope !149, !noalias !147
  %i.kn = add nuw i64 %.0.i46.i46, 1              ; 2 uses
  %exitcond59.not = icmp eq i64 %i.kn, %.0.i
  br i1 %exitcond59.not, label %XXH3_accumulate_sse2.exit47.i, label %XXH3_accumulate_512_sse2.exit25, !llvm.loop !0

XXH3_accumulate_sse2.exit47.i:                    ; preds = %XXH3_accumulate_512_sse2.exit25, %.XXH3_accumulate_sse2.exit47.i_crit_edge
  %i.ko = phi <2 x i64> [ %.pre94, %.XXH3_accumulate_sse2.exit47.i_crit_edge ], [ %i.km, %XXH3_accumulate_512_sse2.exit25 ] ; 2 uses
  %i.kp = phi <2 x i64> [ %.pre92, %.XXH3_accumulate_sse2.exit47.i_crit_edge ], [ %i.jz, %XXH3_accumulate_512_sse2.exit25 ] ; 2 uses
  %i.kq = phi <2 x i64> [ %.pre90, %.XXH3_accumulate_sse2.exit47.i_crit_edge ], [ %i.jm, %XXH3_accumulate_512_sse2.exit25 ] ; 2 uses
  %i.kr = phi <2 x i64> [ %.pre88, %.XXH3_accumulate_sse2.exit47.i_crit_edge ], [ %i.iz, %XXH3_accumulate_512_sse2.exit25 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.ks = lshr <2 x i64> %i.kr, splat (i64 47)
  %i.kt = load <2 x i64>, ptr %i.hz, align 1, !tbaa !50, !noalias !152
  %i.ku = xor <2 x i64> %i.kt, %i.ks
  %i.kv = xor <2 x i64> %i.ku, %i.kr              ; 2 uses
  %i.kw = bitcast <2 x i64> %i.kv to <4 x i32>
  %i.kx = shufflevector <4 x i32> %i.kw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ky = bitcast <4 x i32> %i.kx to <2 x i64>
  %i.kz = and <2 x i64> %i.kv, splat (i64 4294967295)
  %i.la = mul nuw <2 x i64> %i.kz, splat (i64 2654435761)
  %i.lb = mul <2 x i64> %i.ky, splat (i64 -7046029290881679360)
  %i.lc = add <2 x i64> %i.lb, %i.la              ; 2 uses
  store <2 x i64> %i.lc, ptr %0, align 64, !tbaa !50, !alias.scope !148
  %i.ld = lshr <2 x i64> %i.kq, splat (i64 47)
  %i.le = load <2 x i64>, ptr %i.ib, align 1, !tbaa !50, !noalias !152
  %i.lf = xor <2 x i64> %i.le, %i.ld
  %i.lg = xor <2 x i64> %i.lf, %i.kq              ; 2 uses
  %i.lh = bitcast <2 x i64> %i.lg to <4 x i32>
  %i.li = shufflevector <4 x i32> %i.lh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lj = bitcast <4 x i32> %i.li to <2 x i64>
  %i.lk = and <2 x i64> %i.lg, splat (i64 4294967295)
  %i.ll = mul nuw <2 x i64> %i.lk, splat (i64 2654435761)
  %i.lm = mul <2 x i64> %i.lj, splat (i64 -7046029290881679360)
  %i.ln = add <2 x i64> %i.lm, %i.ll
  store <2 x i64> %i.ln, ptr %i.ia, align 16, !tbaa !50, !alias.scope !148
  %i.lo = lshr <2 x i64> %i.kp, splat (i64 47)
  %i.lp = load <2 x i64>, ptr %i.id, align 1, !tbaa !50, !noalias !152
  %i.lq = xor <2 x i64> %i.lp, %i.lo
  %i.lr = xor <2 x i64> %i.lq, %i.kp              ; 2 uses
  %i.ls = bitcast <2 x i64> %i.lr to <4 x i32>
  %i.lt = shufflevector <4 x i32> %i.ls, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lu = bitcast <4 x i32> %i.lt to <2 x i64>
  %i.lv = and <2 x i64> %i.lr, splat (i64 4294967295)
  %i.lw = mul nuw <2 x i64> %i.lv, splat (i64 2654435761)
  %i.lx = mul <2 x i64> %i.lu, splat (i64 -7046029290881679360)
  %i.ly = add <2 x i64> %i.lx, %i.lw
  store <2 x i64> %i.ly, ptr %i.ic, align 32, !tbaa !50, !alias.scope !148
  %i.lz = lshr <2 x i64> %i.ko, splat (i64 47)
  %i.ma = load <2 x i64>, ptr %i.if, align 1, !tbaa !50, !noalias !152
  %i.mb = xor <2 x i64> %i.ma, %i.lz
  %i.mc = xor <2 x i64> %i.mb, %i.ko              ; 2 uses
  %i.md = bitcast <2 x i64> %i.mc to <4 x i32>
  %i.me = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.mf = bitcast <4 x i32> %i.me to <2 x i64>
  %i.mg = and <2 x i64> %i.mc, splat (i64 4294967295)
  %i.mh = mul nuw <2 x i64> %i.mg, splat (i64 2654435761)
  %i.mi = mul <2 x i64> %i.mf, splat (i64 -7046029290881679360)
  %i.mj = add <2 x i64> %i.mi, %i.mh
  store <2 x i64> %i.mj, ptr %i.ie, align 16, !tbaa !50, !alias.scope !148
  %i.mk = shl i64 %.0.i, 6
  %i.ml = getelementptr inbounds nuw i8, ptr %.036.i, i64 %i.mk ; 2 uses
  %i.mm = sub i64 %.038.i, %.0.i                  ; 3 uses
  %.not44.i = icmp ult i64 %i.mm, %i.hs
  br i1 %.not44.i, label %bb.l, label %bb.k, !llvm.loop !1

bb.l:                                             ; preds = %XXH3_accumulate_sse2.exit47.i
  store i64 0, ptr %i.hq, align 8, !tbaa !47, !alias.scope !147
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.mn = phi i64 [ 0, %bb.l ], [ %i.hv, %bb.j ]
  %.139.i = phi i64 [ %i.mm, %bb.l ], [ %i.hp, %bb.j ] ; 4 uses
  %.137.i = phi ptr [ %i.ml, %bb.l ], [ %.067.i, %bb.j ] ; 3 uses
  %.1.i = phi ptr [ %i.h, %bb.l ], [ %i.hx, %bb.j ]
  %.not45.i = icmp eq i64 %.139.i, 0
  br i1 %.not45.i, label %XXH3_consumeStripes.exit, label %.preheader

.preheader:                                       ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !147
  %.pre95 = load <2 x i64>, ptr %0, align 64, !tbaa !50, !alias.scope !153, !noalias !147
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre97 = load <2 x i64>, ptr %.phi.trans.insert96, align 16, !tbaa !50, !alias.scope !153, !noalias !147
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre99 = load <2 x i64>, ptr %.phi.trans.insert98, align 32, !tbaa !50, !alias.scope !153, !noalias !147
  %.phi.trans.insert100 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre101 = load <2 x i64>, ptr %.phi.trans.insert100, align 16, !tbaa !50, !alias.scope !153, !noalias !147
  br label %XXH3_accumulate_512_sse2.exit27

XXH3_accumulate_512_sse2.exit27:                  ; preds = %.preheader, %XXH3_accumulate_512_sse2.exit27
  %i.mo = phi <2 x i64> [ %.pre101, %.preheader ], [ %i.ou, %XXH3_accumulate_512_sse2.exit27 ]
  %i.mp = phi <2 x i64> [ %.pre99, %.preheader ], [ %i.oh, %XXH3_accumulate_512_sse2.exit27 ]
  %i.mq = phi <2 x i64> [ %.pre97, %.preheader ], [ %i.nu, %XXH3_accumulate_512_sse2.exit27 ]
  %i.mr = phi <2 x i64> [ %.pre95, %.preheader ], [ %i.nh, %XXH3_accumulate_512_sse2.exit27 ]
  %.0.i.i50 = phi i64 [ 0, %.preheader ], [ %i.ov, %XXH3_accumulate_512_sse2.exit27 ] ; 3 uses
  %i.ms = shl i64 %.0.i.i50, 6
  %i.mt = getelementptr inbounds nuw i8, ptr %.137.i, i64 %i.ms ; 5 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.mu, i32 0, i32 3, i32 1), !noalias !147
  %i.mv = shl i64 %.0.i.i50, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.mv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.mx = load <2 x i64>, ptr %i.mt, align 1, !tbaa !50, !noalias !154 ; 2 uses
  %i.my = load <2 x i64>, ptr %i.mw, align 1, !tbaa !50, !noalias !154
  %i.mz = xor <2 x i64> %i.my, %i.mx              ; 2 uses
  %i.na = bitcast <2 x i64> %i.mz to <4 x i32>
  %i.nb = and <2 x i64> %i.mz, splat (i64 4294967295)
  %i.nc = and <4 x i32> %i.na, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner27 = shufflevector <4 x i32> %i.nc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.nd = bitcast <4 x i32> %.inner27 to <2 x i64>
  %i.ne = mul nuw <2 x i64> %i.nb, %i.nd
  %i.nf = shufflevector <2 x i64> %i.mx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ng = add <2 x i64> %i.mr, %i.nf
  %i.nh = add <2 x i64> %i.ng, %i.ne              ; 2 uses
  store <2 x i64> %i.nh, ptr %0, align 64, !tbaa !50, !alias.scope !153, !noalias !147
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.nj = load <2 x i64>, ptr %i.ni, align 1, !tbaa !50, !noalias !154 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nl = load <2 x i64>, ptr %i.nk, align 1, !tbaa !50, !noalias !154
  %i.nm = xor <2 x i64> %i.nl, %i.nj              ; 2 uses
  %i.nn = bitcast <2 x i64> %i.nm to <4 x i32>
  %i.no = and <2 x i64> %i.nm, splat (i64 4294967295)
  %i.np = and <4 x i32> %i.nn, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner28 = shufflevector <4 x i32> %i.np, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.nq = bitcast <4 x i32> %.inner28 to <2 x i64>
  %i.nr = mul nuw <2 x i64> %i.no, %i.nq
  %i.ns = shufflevector <2 x i64> %i.nj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.nt = add <2 x i64> %i.mq, %i.ns
  %i.nu = add <2 x i64> %i.nt, %i.nr              ; 2 uses
  store <2 x i64> %i.nu, ptr %.phi.trans.insert96, align 16, !tbaa !50, !alias.scope !153, !noalias !147
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.nw = load <2 x i64>, ptr %i.nv, align 1, !tbaa !50, !noalias !154 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  %i.ny = load <2 x i64>, ptr %i.nx, align 1, !tbaa !50, !noalias !154
  %i.nz = xor <2 x i64> %i.ny, %i.nw              ; 2 uses
  %i.oa = bitcast <2 x i64> %i.nz to <4 x i32>
  %i.ob = and <2 x i64> %i.nz, splat (i64 4294967295)
  %i.oc = and <4 x i32> %i.oa, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner29 = shufflevector <4 x i32> %i.oc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.od = bitcast <4 x i32> %.inner29 to <2 x i64>
  %i.oe = mul nuw <2 x i64> %i.ob, %i.od
  %i.of = shufflevector <2 x i64> %i.nw, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.og = add <2 x i64> %i.mp, %i.of
  %i.oh = add <2 x i64> %i.og, %i.oe              ; 2 uses
  store <2 x i64> %i.oh, ptr %.phi.trans.insert98, align 32, !tbaa !50, !alias.scope !153, !noalias !147
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.oj = load <2 x i64>, ptr %i.oi, align 1, !tbaa !50, !noalias !154 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.ol = load <2 x i64>, ptr %i.ok, align 1, !tbaa !50, !noalias !154
  %i.om = xor <2 x i64> %i.ol, %i.oj              ; 2 uses
  %i.on = bitcast <2 x i64> %i.om to <4 x i32>
  %i.oo = and <2 x i64> %i.om, splat (i64 4294967295)
  %i.op = and <4 x i32> %i.on, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner30 = shufflevector <4 x i32> %i.op, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.oq = bitcast <4 x i32> %.inner30 to <2 x i64>
  %i.or = mul nuw <2 x i64> %i.oo, %i.oq
  %i.os = shufflevector <2 x i64> %i.oj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ot = add <2 x i64> %i.mo, %i.os
  %i.ou = add <2 x i64> %i.ot, %i.or              ; 2 uses
  store <2 x i64> %i.ou, ptr %.phi.trans.insert100, align 16, !tbaa !50, !alias.scope !153, !noalias !147
  %i.ov = add nuw i64 %.0.i.i50, 1                ; 2 uses
  %exitcond62.not = icmp eq i64 %i.ov, %.139.i
  br i1 %exitcond62.not, label %XXH3_accumulate_sse2.exit.i, label %XXH3_accumulate_512_sse2.exit27, !llvm.loop !0

XXH3_accumulate_sse2.exit.i:                      ; preds = %XXH3_accumulate_512_sse2.exit27
  %i.ow = shl i64 %.139.i, 6
  %i.ox = getelementptr inbounds nuw i8, ptr %.137.i, i64 %i.ow
  %i.oy = add i64 %i.mn, %.139.i
  store i64 %i.oy, ptr %i.hq, align 8, !tbaa !47, !alias.scope !147
  br label %XXH3_consumeStripes.exit

XXH3_consumeStripes.exit:                         ; preds = %bb.m, %XXH3_accumulate_sse2.exit.i
  %.2.i = phi ptr [ %i.ox, %XXH3_accumulate_sse2.exit.i ], [ %.137.i, %bb.m ] ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.pa = getelementptr inbounds i8, ptr %.2.i, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.oz, ptr noundef nonnull align 1 dereferenceable(64) %i.pa, i64 64, i1 false)
  %.pre108 = ptrtoint ptr %.2.i to i64
  %.pre109 = sub i64 %i.hi, %.pre108
  br label %bb.n

bb.n:                                             ; preds = %XXH3_consumeStripes.exit, %bb.i
  %.pre-phi110 = phi i64 [ %.pre109, %XXH3_consumeStripes.exit ], [ %i.hk, %bb.i ] ; 3 uses
  %.168.i = phi ptr [ %.2.i, %XXH3_consumeStripes.exit ], [ %.067.i, %bb.i ] ; 2 uses
  %i.pb = icmp ult ptr %.168.i, %i.c
  tail call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp slt i64 %.pre-phi110, 257
  tail call void @llvm.assume(i1 %i.pc)
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.pd, ptr align 1 %.168.i, i64 %.pre-phi110, i1 false)
  %i.pe = trunc i64 %.pre-phi110 to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d
  %storemerge.i = phi i32 [ %i.pe, %bb.n ], [ %i.v, %bb.d ]
  store i32 %storemerge.i, ptr %i.l, align 64, !tbaa !62, !alias.scope !134
  br label %XXH3_update.exit

XXH3_update.exit:                                 ; preds = %bb.b, %bb.o
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #14 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = load <16 x i64>, ptr %0, align 1, !tbaa !47 ; 2 uses
  %i.c = load <16 x i64>, ptr %2, align 1, !tbaa !47 ; 2 uses
  %i.d = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.e = insertelement <8 x i64> poison, i64 %3, i64 0
  %i.f = shufflevector <8 x i64> %i.e, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = add <8 x i64> %i.d, %i.f
  %i.h = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.i = xor <8 x i64> %i.g, %i.h
  %i.j = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = sub <8 x i64> %i.j, %i.f
  %i.l = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.m = xor <8 x i64> %i.k, %i.l
  %i.n = zext <8 x i64> %i.i to <8 x i128>
  %i.o = zext <8 x i64> %i.m to <8 x i128>
  %i.p = mul nuw <8 x i128> %i.o, %i.n            ; 2 uses
  %i.q = lshr <8 x i128> %i.p, splat (i128 64)
  %i.r = xor <8 x i128> %i.q, %i.p
  %i.s = trunc <8 x i128> %i.r to <8 x i64>
  %i.t = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.s)
  %op.rdx = add i64 %i.t, %i.a                    ; 2 uses
  %i.u = trunc nuw nsw i64 %1 to i32
  %i.v = lshr i32 %i.u, 4                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 119
  %.val41 = load i64, ptr %i.x, align 1, !tbaa !47
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.val40 = load i64, ptr %i.z, align 1, !tbaa !47
  %.val39 = load i64, ptr %i.y, align 1, !tbaa !47
  %i.aa = add i64 %.val39, %3
  %i.ab = xor i64 %i.aa, %.val41
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 127
  %.val38 = load i64, ptr %i.ac, align 1, !tbaa !47
  %i.ad = sub i64 %.val38, %3
  %i.ae = xor i64 %i.ad, %.val40
  %i.af = zext i64 %i.ab to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 2 uses
  %i.al = lshr i64 %op.rdx, 37
  %i.am = xor i64 %i.al, %op.rdx
  %i.an = mul i64 %i.am, 1609587791953885689      ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = xor i64 %i.ao, %i.an                    ; 2 uses
  %.not = icmp eq i32 %i.v, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03249 = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ]
  %.13448 = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.aq = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.13448) #20, !srcloc !156 ; 2 uses
  %i.ar = shl nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -125
  %.val45 = load i64, ptr %i.as, align 1, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val44 = load i64, ptr %i.av, align 1, !tbaa !47
  %.val43 = load i64, ptr %i.au, align 1, !tbaa !47
  %i.aw = add i64 %.val43, %3
  %i.ax = xor i64 %i.aw, %.val45
  %i.ay = getelementptr i8, ptr %i.at, i64 -117
  %.val42 = load i64, ptr %i.ay, align 1, !tbaa !47
  %i.az = sub i64 %.val42, %3
  %i.ba = xor i64 %i.az, %.val44
  %i.bb = zext i64 %i.ax to i128
  %i.bc = zext i64 %i.ba to i128
  %i.bd = mul nuw i128 %i.bc, %i.bb               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = xor i128 %i.be, %i.bd
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = add i64 %.03249, %i.bg                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.134.lcssa = phi i64 [ %i.ap, %bb.a ], [ %i.aq, %.lr.ph ]
  %.032.lcssa = phi i64 [ %i.ak, %bb.a ], [ %i.bh, %.lr.ph ]
  %i.bi = add i64 %.032.lcssa, %.134.lcssa        ; 2 uses
  %i.bj = lshr i64 %i.bi, 37
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, 1609587791953885689      ; 2 uses
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = xor i64 %i.bm, %i.bl
  ret i64 %i.bn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind memory(none) }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !51}
!1 = distinct !{!1, !51}
!2 = distinct !{!2, !51}
!3 = !{i32 7, !"Dwarf Version", i32 5}
end_hunk_1
